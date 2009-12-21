-- Function: spprosesharian(datewithouttime, datewithouttime, character varying, character varying, character varying, character varying)

-- DROP FUNCTION spprosesharian(datewithouttime, datewithouttime, character varying, character varying, character varying, character varying);

CREATE OR REPLACE FUNCTION spprosesharian(atgl1 datewithouttime, atgl2 datewithouttime, aagroupgaji character varying, aagroupshift character varying, ashift character varying, apegawaiid character varying)
  RETURNS void AS
$BODY$
declare
  ATglProses datewithouttime;
  i integer;
  AStr character varying;

  crproses refcursor;
  crsyaratdt refcursor;
  crabsen refcursor;
  crHitPayroll2 refcursor;
  
  acrtgl datewithouttime;
  acrpegawaiid character varying;
  acrnosyarat character varying;

  Acrkodeabsen3 character varying;
  Acrterlambat3 quantityplus;
  
  Acrqtyhari quantityplus;
  Acrterlambat1 quantityplus;
  Acrterlambat2 quantityplus;
  Acrflagexecutequery flag;
  Acrsyntaxquery character varying;
  Acrpayrolltype character varying;
  Acrgrouping character varying;
  Acrflagbayarsesuaitglproses flag;
  Acrflagterlambat flag;
  Acrflagsyarat flag;
  Acrkodeabsen character varying;
  Acrkodegroupgaji character varying;
  Acrterlambat quantityplus;

  AokSyaratDt boolean;
  Aokurut boolean;

  aano character varying;
  amodesyarat status;
  aqtymode quantityplus;
  aurut flag;
  amodeoperator flag;
  aagroup character varying; 

  Ajumterlambat quantityplus;
  AqtyAbsen quantityplus;
  Acrquantityhari quantityplus;
  AKoefisien integer;

  AokTerlambat boolean;
  AokGrouping boolean;
  acrgroup character varying;
  acrok boolean; 
  ASyaratOk  boolean;
  aanominal currencyplus;
  acrkodegroupshiftid character varying; 
  acrshift character varying; 
  aanopayroll character varying; 
  
begin

  
  drop table if exists xtemp cascade;
  
  create table xtemp as select * from
  (select kodegroupgaji from groupgaji where kodegroupgaji like aagroupGaji) a,
  (select kodegroupshiftid,shift from GroupShiftDt1 where kodegroupshiftid like aagroupShift and shift like AShift) b,
  (select pegawaiid from pegawai where cast(pegawaiid as character varying) like APegawaiid) c ;

  ATglProses :=ATgl1; 
  -- looping dari tgl1 sampai tgl2

  while ATglProses <= ATgl2 loop 
    -- loop untuk pegawai yang akan diproses sesuai hari itu
 --   if exists(select * 
 --             from absen a 
 --             left join payrolldetail b on a.pegawaiid=b.pegawaiid 
 --             left join xtemp c on a.kodegroupshiftid=c.kodegroupshiftid and a.shift=c.shift and a.pegawaiid=cast(c.pegawaiid as integer) and b.KodeGroupGaji = c.KodeGroupGaji
 --             where a.tgl=Atglproses and a.statusabsen<>'2') then
 --      raise exception '%', '^Ada Data Absen Yang Belum Di Closing^';
 --   else  
      -- cari syarat yang periodenya harian yang ada ditabel xtemp
      open crproses for 
      select distinct a.pegawaiid,d.nosyarat,a.kodegroupshiftid,a.shift 
      from absen a 
      left join payrolldetail b on a.pegawaiid=b.pegawaiid 
      left join xtemp c on a.kodegroupshiftid=c.kodegroupshiftid and a.shift=c.shift and a.pegawaiid=cast(c.pegawaiid as integer) and c.kodegroupgaji=b.kodegroupgaji
      left join settinggajisyarat d on c.kodegroupgaji=d.kodegroupgaji
      left join syarathd e on d.nosyarat=e.nosyarat
      where a.tgl=Atglproses and e.statusproses='0' and a.statusabsen='2'
      order by a.pegawaiid,a.kodegroupshiftid,a.shift,d.nosyarat; 
      loop
        fetch crproses into acrpegawaiid,acrnosyarat,acrkodegroupshiftid,acrshift;
        exit when (acrpegawaiid is null);

        select qtyhari,terlambat1,terlambat2,flagexecutequery,syntaxquery,grouping,flagbayarsesuaitglproses,flagterlambat,flagsyarat
        from 
        syarathd
        where nosyarat=acrnosyarat into Acrqtyhari,Acrterlambat1,Acrterlambat2,Acrflagexecutequery,Acrsyntaxquery,Acrgrouping,Acrflagbayarsesuaitglproses,Acrflagterlambat,Acrflagsyarat;

        Aoksyaratdt:=false;

        if AcrflagSyarat='0' then
           AokSyaratDt:=true;
        else
        -- cek syarat detail
           open crsyaratdt for 
           select ano,modesyarat,qtymode,urut,modeoperator,agroup 
           from syaratdt where nosyarat=acrnosyarat;
           loop
             Aoksyaratdt:=false;  
             Aokurut:='1';  
             fetch crsyaratdt into aano,amodesyarat,aqtymode,aurut,amodeoperator,aagroup;
             exit when (aano is null);
        
	     -- mencari qty absen	
             AqtyAbsen:=0;
             open crabsen for select kodeabsen
             from absen 
             where pegawaiid=cast(acrpegawaiid as integer) and tgl between atglproses-cast(Acrqtyhari as integer)+1 and atglproses and kodegroupshiftid=acrkodegroupshiftid and shift=acrshift 
             order by tgl;
             loop
               fetch crabsen into Acrkodeabsen3; 
               exit when (Acrkodeabsen3 is null);
              
               if Acrkodeabsen3 in (select kodeabsen from syaratdt2 where nosyarat=acrnosyarat and ano=cast(aano as integer)) then
                  AqtyAbsen:=AqtyAbsen+1;
               else
                  Aokurut:='0';
               end if;   
             end loop;
	     close crabsen;

             if amodesyarat='0' then
                if AqtyAbsen>=Aqtymode then
                   AokSyaratDt:=true;  
                end if;                 
             end if;
 	     -- tidak boleh ada
             if amodesyarat='1' then
                if AqtyAbsen<qtymode then
                   AokSyaratDt:=true;  
                end if;                 
             end if;
	     -- lebih besar sama dengan	
             if amodesyarat='2' then
                if AqtyAbsen>=Aqtymode then
                   AokSyaratDt:=true;  
                end if;                 
             end if;
             -- lebih besar 
             if amodesyarat='3' then
                if AqtyAbsen>Aqtymode then
                   AokSyaratDt:=true;  
                end if;                 
             end if;
             -- lebih kecil sama dengan
             if amodesyarat='4' then
                if AqtyAbsen<=Aqtymode then
                   AokSyaratDt:=true;  
                end if;                 
             end if;
             -- lebih kecil
             if amodesyarat='5' then
                if AqtyAbsen<Aqtymode then
                   AokSyaratDt:=true;  
                end if;                 
             end if;

             if aurut='1' then
                aoksyaratdt:=cast(aoksyaratdt as boolean) and cast(aokurut as boolean);
             end if;   

             delete from hitpayroll where tglpayroll=atglproses and pegawaiid=cast(acrpegawaiid as integer) and nosyarat=acrnosyarat and ano=cast(aano as integer) and kodegroupshiftid=acrkodegroupshiftid and shift=acrshift;

             
             insert into hitpayroll (tglpayroll,pegawaiid,nosyarat,ano,modesyarat,modeoperator,agroup,ok,kodegroupshiftid,shift) 
             values (atglproses,cast(acrpegawaiid as integer),acrnosyarat,cast(aano as integer),amodesyarat,amodeoperator,aagroup,aoksyaratdt,acrkodegroupshiftid,acrshift);
            

           end loop;
	   close crsyaratdt;


           open crHitPayroll2 for select agroup,cast(ok as boolean) from hitpayroll2 where tglpayroll=atglproses and pegawaiid=cast(acrpegawaiid as integer) and nosyarat=acrnosyarat and kodegroupshiftid=acrkodegroupshiftid and shift=acrshift;
           loop
             fetch crHitPayroll2 into acrgroup,acrok; 
             exit when (acrgroup is null);
               
             if acrok=true then
                Acrgrouping:=replace(Acrgrouping,acrgroup,'true');
             else
                Acrgrouping:=replace(Acrgrouping,acrgroup,'false');
             end if;
           end loop;
           close crHitPayroll2;

           execute 'select '||Acrgrouping into AOkGrouping;
        end if; 
         
        if AcrflagTerlambat='1' then
           
           select sum(terlambat)  
           from absen where pegawaiid=cast(acrpegawaiid as integer) and tgl between atglproses-cast(Acrqtyhari as integer)+1 and atglproses and kodegroupshiftid=acrkodegroupshiftid and shift=acrshift into AJumterlambat;
           
           if AJumterlambat between Acrterlambat1 and AcrTerlambat2 then
              AokTerlambat:='1';
           else
              AokTerlambat:='0';   
           end if;
        else
           AokTerlambat:='1';
        end if; 

   
        if AcrflagExecuteQuery='1' then
           
        else
        
        end if; 

        ASyaratOk:=AOkGrouping and AOkTerlambat;
        
        delete from hitpayroll3 where tglpayroll=atglproses and pegawaiid=cast(acrpegawaiid as integer) and nosyarat=acrnosyarat and kodegroupshiftid=acrkodegroupshiftid and shift=acrshift;

        insert into hitpayroll3 (tglpayroll,pegawaiid,nosyarat,ok,kodegroupshiftid,shift) 
        values (atglproses,cast(acrpegawaiid as integer),acrnosyarat,ASyaratOK,acrkodegroupshiftid,acrshift);


      --cari dulu syaratnya
         
      -- matchkan dengan tabel gaji yang paling akhir

      -- masukkan ke tabel payroll
      end loop;
      close crproses;


       -- cari kodegroup gaji yang akan dihitung
      open crproses for select distinct a.pegawaiid,a.kodegroupshiftid,a.shift,c.kodegroupgaji,d.payrolltype,d.nosyarat,e.qtyhari
      from absen a 
      left join xtemp b on a.kodegroupshiftid=b.kodegroupshiftid and a.shift=b.shift and a.pegawaiid=cast(b.pegawaiid as integer)
      left join payrolldetail c on a.pegawaiid=c.pegawaiid and c.kodegroupgaji=b.kodegroupgaji
      left join settinggajisyarat d on c.kodegroupgaji=d.kodegroupgaji
      left join syarathd e on d.nosyarat=e.nosyarat
      where a.tgl=Atglproses and e.statusproses='0' and a.statusabsen='2';       
      loop
        fetch crproses into acrpegawaiid,acrkodegroupshiftid,acrshift,acrkodegroupgaji,acrPayrolltype,acrnosyarat,acrqtyhari;
        exit when (acrpegawaiid is null);
        --cek apakah sudah menerima atau belum

   --     if not(exists(select tglpayroll from transaksipayrollhd a,transaksipayrolldt b where a.nopayroll=b.nopayroll and a.pegawaiid=cast(acrpegawaiid as integer) and b.payrolltype=acrpayrolltype and tglpayroll>atglproses-cast(acrqtyhari as integer) and tglpayroll<>atglproses)) then
         
         select nominal 
         from settinggajinominal
         where kodegroupgaji=acrkodegroupgaji and payrolltype=acrPayrolltype and tglberlaku<=atglproses
         order by tglberlaku desc limit 1 into aanominal;

         if aanominal isnull then
            raise exception '%',acrPayrolltype||' Belum Ditentukan !!!';
         end if;

         select a.koefisien
         from settinggajisyarat a 
         left join hitpayroll3 b on b.pegawaiid=cast(acrpegawaiid as integer) and a.nosyarat=b.nosyarat and tglpayroll=Atglproses
         where kodegroupgaji=acrkodegroupgaji and payrolltype=acrpayrolltype and b.ok=true and b.kodegroupshiftid=acrkodegroupshiftid and b.shift=acrshift into AKoefisien;
         
         if not(exists(select nopayroll 
                       from transaksipayrollhd
                       where tglpayroll=ATglProses and pegawaiid=cast(acrpegawaiid as integer) and kodegroupshiftid=acrkodegroupshiftid and shift=acrshift
               )) then
           insert into transaksipayrollhd(tglpayroll,pegawaiid,kodegroupshiftid,shift,kodegroupgaji,total,employeeid,counterprint,statusapprove)
           values (atglproses,cast(acrpegawaiid as integer),acrkodegroupshiftid,acrshift,acrkodegroupgaji,0,null,0,'1');
         else
           select nopayroll 
           from transaksipayrollhd
           where tglpayroll=ATglProses and pegawaiid=cast(acrpegawaiid as integer) and kodegroupshiftid=acrkodegroupshiftid and shift=acrshift into aanopayroll;
           update transaksipayrollhd set kodegroupgaji=acrkodegroupgaji where nopayroll=aanopayroll;
         end if;
         
         select nopayroll 
         from transaksipayrollhd
         where tglpayroll=ATglProses and pegawaiid=cast(acrpegawaiid as integer) and kodegroupshiftid=acrkodegroupshiftid and shift=acrshift into aanopayroll;
         

         if not(exists(select payrolltype from transaksipayrolldt where nopayroll=aanopayroll and payrolltype=acrpayrolltype and nosyarat=acrnosyarat)) then
           insert into transaksipayrolldt(nopayroll,payrolltype,nosyarat)
           values (aanopayroll,acrpayrolltype,acrnosyarat);
         end if;

         update transaksipayrolldt set koefisien=iscurrencynull(AKoefisien,0),amount=iscurrencynull(aanominal,0),total=iscurrencynull(AKoefisien,0)*iscurrencynull(aanominal,0) 
         where nopayroll=aanopayroll and payrolltype=acrpayrolltype and nosyarat=acrnosyarat;

         update transaksipayrollhd set total=(select sum(total) from transaksipayrolldt where nopayroll=aanopayroll) where nopayroll=aanopayroll;

         
 --       end if; 
      end loop;
      close crproses;
      
  --  end if;
    ATglProses:=ATglProses+1;
  end loop;
  -- hapus 
end;

   
$BODY$
  LANGUAGE 'plpgsql' VOLATILE
  COST 100;
ALTER FUNCTION spprosesharian(datewithouttime, datewithouttime, character varying, character varying, character varying, character varying) OWNER TO sa;
