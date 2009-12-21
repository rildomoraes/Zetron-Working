inherited fmDisplayGaji2: TfmDisplayGaji2
  Caption = 'Display Gaji'
  ExplicitWidth = 600
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object btnOK: TcxButton
      Left = 203
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = ActOK
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 4
    end
  end
  object cgDisplay: TcxGrid [1]
    Left = 0
    Top = 129
    Width = 592
    Height = 238
    Align = alClient
    TabOrder = 1
    object cgvDisplayGaji: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDisplayGaji
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = 'Bruto = ,0.00;(,0.00)'
          Kind = skSum
          FieldName = 'brutodet'
          Column = cgvDisplayGajibrutodet
          DisplayText = 'Bruto'
        end
        item
          Format = 'Pot = ,0.00;(,0.00)'
          Kind = skSum
          FieldName = 'potongandet'
          Column = cgvDisplayGajipotongandet
          DisplayText = 'Pot'
        end
        item
          Format = 'Netto = ,0.00;(,0.00)'
          Kind = skSum
          FieldName = 'nettodet'
          Column = cgvDisplayGajinettodet
          DisplayText = 'Netto'
        end
        item
          Format = 'Ambil = ,0.00;(,0.00)'
          Kind = skSum
          FieldName = 'jumlahambildet'
          Column = cgvDisplayGajijumlahambildet
          DisplayText = 'Ambil'
        end
        item
          Format = 'Saldo = ,0.00;(,0.00)'
          Kind = skSum
          FieldName = 'saldodet'
          Column = cgvDisplayGajisaldodet
          DisplayText = 'Saldo'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'brutodet'
          Column = cgvDisplayGajibrutodet
          DisplayText = 'Bruto'
        end
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'potongandet'
          Column = cgvDisplayGajipotongandet
          DisplayText = 'Pot'
        end
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'nettodet'
          Column = cgvDisplayGajinettodet
          DisplayText = 'Netto'
        end
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'jumlahambildet'
          Column = cgvDisplayGajijumlahambildet
          DisplayText = 'Ambil'
        end
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'saldodet'
          Column = cgvDisplayGajisaldodet
          DisplayText = 'Saldo'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cgvDisplayGajikodejabatan: TcxGridDBColumn
        Caption = 'Kode Jabatan'
        DataBinding.FieldName = 'kodejabatan'
        Width = 73
      end
      object cgvDisplayGajinamajabatan: TcxGridDBColumn
        Caption = 'Nama Jabatan'
        DataBinding.FieldName = 'namajabatan'
        Visible = False
        GroupIndex = 0
        SortIndex = 0
        SortOrder = soAscending
      end
      object cgvDisplayGajinopeg: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'nopeg'
      end
      object cgvDisplayGajipayrolltype: TcxGridDBColumn
        Caption = 'Komponen'
        DataBinding.FieldName = 'payrolltype'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevPayrollType
        Properties.KeyFieldNames = 'payrolltype'
        Properties.ListFieldItem = dmGeneral.cgvPrevPayrollTypepayrolltypename
        Visible = False
        GroupIndex = 2
        Width = 112
      end
      object cgvDisplayGajinama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        Visible = False
        GroupIndex = 1
        SortIndex = 2
        SortOrder = soAscending
      end
      object cgvDisplayGajirupiah: TcxGridDBColumn
        Caption = '@ Rupiah'
        DataBinding.FieldName = 'rupiah'
      end
      object cgvDisplayGajijumlah: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'jumlah'
      end
      object cgvDisplayGajibruto: TcxGridDBColumn
        Caption = 'Bruto'
        DataBinding.FieldName = 'bruto'
      end
      object cgvDisplayGajipotongan: TcxGridDBColumn
        Caption = 'Potongan'
        DataBinding.FieldName = 'potongan'
      end
      object cgvDisplayGajinetto: TcxGridDBColumn
        Caption = 'Netto'
        DataBinding.FieldName = 'netto'
      end
      object cgvDisplayGajitgl: TcxGridDBColumn
        Caption = 'Tgl Payroll'
        DataBinding.FieldName = 'tgl'
        Visible = False
        GroupIndex = 3
        SortIndex = 1
        SortOrder = soAscending
      end
      object cgvDisplayGajimasuk1: TcxGridDBColumn
        Caption = 'Masuk'
        DataBinding.FieldName = 'masuk1'
      end
      object cgvDisplayGajikeluar1: TcxGridDBColumn
        Caption = 'Keluar'
        DataBinding.FieldName = 'keluar1'
      end
      object cgvDisplayGajinosyarat: TcxGridDBColumn
        Caption = 'Syarat'
        DataBinding.FieldName = 'nosyarat'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvSyaratHd
        Properties.KeyFieldNames = 'nosyarat'
        Properties.ListFieldItem = dmGeneral.cgvSyaratHdnamasyarat
        Width = 62
      end
      object cgvDisplayGajikodeabsen: TcxGridDBColumn
        DataBinding.FieldName = 'kodeabsen'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevKodeAbsen
        Properties.KeyFieldNames = 'kodeabsen'
        Properties.ListFieldItem = dmGeneral.cgvPrevKodeAbsenketerangan
        Width = 100
      end
      object cgvDisplayGajibrutodet: TcxGridDBColumn
        Caption = 'Bruto Det'
        DataBinding.FieldName = 'brutodet'
      end
      object cgvDisplayGajipotongandet: TcxGridDBColumn
        Caption = 'Potongan Det'
        DataBinding.FieldName = 'potongandet'
      end
      object cgvDisplayGajinettodet: TcxGridDBColumn
        Caption = 'Netto Det'
        DataBinding.FieldName = 'nettodet'
      end
      object cgvDisplayGajiambildet: TcxGridDBColumn
        Caption = 'Ambil Det'
        DataBinding.FieldName = 'ambildet'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
      end
      object cgvDisplayGajijumlahambildet: TcxGridDBColumn
        Caption = 'Jumlah Ambil Det'
        DataBinding.FieldName = 'jumlahambildet'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayGajisaldodet: TcxGridDBColumn
        Caption = 'Saldo Det'
        DataBinding.FieldName = 'saldodet'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayGajitglpengambilanpayrolldet: TcxGridDBColumn
        Caption = 'Tgl Ambil Det'
        DataBinding.FieldName = 'tglpengambilanpayrolldet'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvDisplayGajishiftdet: TcxGridDBColumn
        Caption = 'Shift Det'
        DataBinding.FieldName = 'shiftdet'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Pagi'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Siang'
            Value = '2'
          end
          item
            Description = 'Malam'
            Value = '3'
          end>
      end
      object cgvDisplayGajitglberlaku: TcxGridDBColumn
        Caption = 'Tgl Berlaku'
        DataBinding.FieldName = 'tglberlaku'
        PropertiesClassName = 'TcxDateEditProperties'
      end
    end
    object cgDisplayLevel1: TcxGridLevel
      GridView = cgvDisplayGaji
    end
  end
  object pnlCustom: TPanel [2]
    Left = 0
    Top = 50
    Width = 592
    Height = 79
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 10
      Top = 10
      Width = 38
      Height = 13
      Caption = 'Tanggal'
      Transparent = True
    end
    object Label3: TLabel
      Left = 10
      Top = 32
      Width = 22
      Height = 13
      Caption = 'Shift'
      Transparent = True
    end
    object Label2: TLabel
      Left = 188
      Top = 10
      Width = 17
      Height = 13
      Caption = 'S/D'
      Transparent = True
    end
    object Label4: TLabel
      Left = 188
      Top = 32
      Width = 17
      Height = 13
      Caption = 'S/D'
      Transparent = True
    end
    object Label5: TLabel
      Left = 10
      Top = 54
      Width = 149
      Height = 13
      Caption = 'Batas Tgl Pengambilan Terakhir'
      Transparent = True
    end
    object dtTgl1: TcxDateEdit
      Left = 61
      Top = 7
      TabOrder = 0
      Width = 121
    end
    object dbimgShift1: TcxImageComboBox
      Left = 61
      Top = 29
      Properties.Items = <
        item
          Description = 'Pagi'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Siang'
          Value = '2'
        end
        item
          Description = 'Malam'
          Value = '3'
        end>
      TabOrder = 1
      Width = 121
    end
    object dtTgl2: TcxDateEdit
      Left = 211
      Top = 7
      TabOrder = 2
      Width = 121
    end
    object dbimgShift2: TcxImageComboBox
      Left = 211
      Top = 29
      Properties.Items = <
        item
          Description = 'Pagi'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Siang'
          Value = '2'
        end
        item
          Description = 'Malam'
          Value = '3'
        end>
      TabOrder = 3
      Width = 121
    end
    object dtTglAmbil: TcxDateEdit
      Left = 211
      Top = 51
      TabOrder = 4
      Width = 121
    end
  end
  inherited ActionList1: TActionList
    Left = 240
    Top = 192
    object ActOK: TAction
      Caption = 'OK'
      ImageIndex = 0
      OnExecute = ActOKExecute
    end
    object ActPrintSummary: TAction
      Caption = 'Summary'
      ImageIndex = 3
      OnExecute = ActPrintSummaryExecute
    end
    object ActPrintDetail1: TAction
      Caption = 'Detail 1'
      ImageIndex = 3
      OnExecute = ActPrintDetail1Execute
    end
    object ActPrintDetail2: TAction
      Caption = 'Detail 2'
      ImageIndex = 3
      OnExecute = ActPrintDetail2Execute
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 272
    Top = 192
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 304
    Top = 192
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 240
    Top = 224
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dsDisplayGaji: TDataSource
    DataSet = qryDisplayGaji
    Left = 200
    Top = 256
  end
  object qryDisplayGaji: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'shift1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'shift2'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        Size = -1
        Value = Null
      end
      item
        Name = 'shift1'
        Size = -1
        Value = Null
      end
      item
        Name = 'shift2'
        Size = -1
        Value = Null
      end
      item
        Name = 'Shift1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tglambil'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        Size = -1
        Value = Null
      end
      item
        Name = 'shift1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        Size = -1
        Value = Null
      end
      item
        Name = 'shift2'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        Size = -1
        Value = Null
      end
      item
        Name = 'shift1'
        Size = -1
        Value = Null
      end
      item
        Name = 'shift2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.*,b.tgl,b.masuk1,b.keluar1,b.nosyarat,b.kodeabsen,b.bru' +
        'todet,b.potongandet,b.nettodet,b.tglpengambilanpayrolldet,b.ambi' +
        'ldet,b.jumlahambildet,b.saldodet,b.shiftdet from'
      '('
      'select'
      
        ' e.tglberlaku,c.kodejabatan,c.namajabatan,b.nopeg,d.payrolltype,' +
        'b.nama,d.amount as rupiah,count(*) as jumlah,'
      ' case'
      '   when sum(d.total)>0 then sum(d.total)'
      '   else 0'
      ' end as bruto,'
      ' case'
      '   when sum(d.total)<0 then sum(d.total)'
      '   else 0'
      ' end as potongan,'
      ' sum(d.total) as netto'
      'from transaksipayrollhd a'
      'left join transaksipayrolldt d on a.nopayroll=d.nopayroll'
      'left join pegawai b on a.pegawaiid=b.pegawaiid'
      'left join jabatan c on b.kodejabatan=c.kodejabatan'
      
        'left join settinggajinominal e on a.kodegroupgaji=e.kodegroupgaj' +
        'i and d.payrolltype=e.payrolltype and e.tglberlaku='
      '('
      ' select max(tglberlaku) from'
      ' settinggajinominal'
      
        ' where kodegroupgaji=a.kodegroupgaji and payrolltype=d.payrollty' +
        'pe and tglberlaku<=a.tglpayroll'
      ')'
      'where'
      '('
      
        '(a.shift >=:shift1 and a.tglpayroll between dbo.fnGetDate(:tgl1)' +
        ' and dbo.fnGetDate(:tgl2)) or'
      
        '(a.shift <=:shift2 and a.tglpayroll between dbo.fnGetDate(:tgl1 ' +
        'as datewithouttime) and dbo.fnGetDate(:tgl2)) or'
      
        '(dbo.fnGetDate(:tgl1)=dbo.fnGetDate(:tgl2) and b.shift between :' +
        'shift1 and :shift2 )'
      ')'
      
        'group by e.tglberlaku,c.kodejabatan,c.namajabatan,b.nama,b.nopeg' +
        ',d.payrolltype,d.amount'
      
        'order by e.tglberlaku,c.kodejabatan,c.namajabatan,b.nama,b.nopeg' +
        ',d.payrolltype,d.amount'
      ') a'
      'left join'
      '('
      'select'
      
        ' h.tglberlaku,c.kodejabatan,b.nopeg,d.payrolltype,e.tgl,e.masuk1' +
        ',e.keluar1,d.nosyarat,e.kodeabsen,'
      ' case'
      '   when d.total>0 then d.total'
      '   else 0'
      ' end as brutodet,'
      ' case'
      '   when d.total<0 then d.total'
      '   else 0'
      ' end as potongandet,'
      
        ' d.total as nettodet,g.tglpengambilanpayroll as tglpengambilanpa' +
        'yrolldet,g.shift as shiftdet,'
      ' case'
      '   when g.tglpengambilanpayroll is null then '#39'0'#39
      '   else :Shift1'
      ' end as ambildet,'
      ' case'
      '   when g.tglpengambilanpayroll is null then 0'
      '   else d.total'
      ' end as JumlahAmbildet,'
      ' case'
      '   when g.tglpengambilanpayroll is null then d.total'
      '   else 0'
      ' end as Saldodet'
      'from transaksipayrollhd a'
      'left join pegawai b on a.pegawaiid=b.pegawaiid'
      'left join jabatan c on b.kodejabatan=c.kodejabatan'
      ','
      'absen e,'
      'transaksipayrolldt d'
      'left join transaksipayrollhd i on d.nopayroll=i.nopayroll'
      
        'left join transaksipengambilanpayrolldt f on d.nopayroll=f.nopay' +
        'roll and d.payrolltype=f.payrolltype and d.nosyarat=f.nosyarat'
      
        'left join transaksipengambilanpayrollhd g on f.notransaksipengam' +
        'bilan=g.notransaksipengambilan and g.tglpengambilanpayroll<=:tgl' +
        'ambil'
      
        'left join settinggajinominal h on i.kodegroupgaji=h.kodegroupgaj' +
        'i and d.payrolltype=h.payrolltype and h.tglberlaku='
      '('
      ' select max(tglberlaku) from'
      ' settinggajinominal'
      
        ' where kodegroupgaji=i.kodegroupgaji and payrolltype=d.payrollty' +
        'pe and tglberlaku<=i.tglpayroll'
      ')'
      
        'where a.tglpayroll between dbo.fnGetDate(:tgl1) and dbo.fnGetDat' +
        'e(:tgl2)'
      'and ('
      
        '(a.shift >=:shift1 and a.tglpayroll between dbo.fnGetDate(:tgl1)' +
        ' and dbo.fnGetDate(:tgl2)) or'
      
        '(a.shift <=:shift2 and a.tglpayroll between dbo.fnGetDate(:tgl1)' +
        ' and dbo.fnGetDate(:tgl2)) or'
      
        '(dbo.fnGetDate(:tgl1)=dbo.fnGetDate(:tgl2) and b.shift between :' +
        'shift1 and :shift2 )'
      ')'
      
        'and a.nopayroll=d.nopayroll and a.pegawaiid=e.pegawaiid and a.tg' +
        'lpayroll=e.tgl and a.kodegroupshiftid=e.kodegroupshiftid and a.s' +
        'hift=e.shift'
      
        'group by h.tglberlaku,c.kodejabatan,b.nopeg,d.payrolltype,e.tgl,' +
        'e.masuk1,e.keluar1,d.nosyarat,e.kodeabsen,brutodet,potongandet,n' +
        'ettodet,g.tglpengambilanpayroll,ambildet,g.shift'
      
        'order by h.tglberlaku,c.kodejabatan,b.nopeg,d.payrolltype,e.tgl,' +
        'e.masuk1,e.keluar1,d.nosyarat,e.kodeabsen,brutodet,potongandet,n' +
        'ettodet,g.tglpengambilanpayroll,ambildet,g.shift'
      
        ') b on a.kodejabatan=b.kodejabatan and a.nopeg=b.nopeg and a.pay' +
        'rolltype=b.payrolltype and a.tglberlaku=b.tglberlaku'
      '')
    Left = 168
    Top = 256
  end
end
