/*---------------------------------------------------------------------------
PROJECT      : Zetron Payroll
DESCRIPTION  : CREATE DEFAULT VALUE, MUST BE RUN FOR FIRST TIME ONLY !!!
---------------------------------------------------------------------------*/

delete from City;
delete from Province;
delete from Country;
delete from Report;
delete from Employee;
delete from JobPosition;
delete from Department;
delete from Company;
delete from Departemen;
delete from Divisi;
delete from Perusahaan;
delete from StatusKaryawan;
delete from groupshiftdt2;
delete from groupshiftdt1;
delete from groupshifthd;
delete from Shift;
delete from masterjamkerja;
delete from kodeabsen;
delete from jabatan;
delete from outsourcing;


insert into StatusKaryawan (KodeStatus, NamaStatus, Warna, UangMakan, UangTransport) 
values ('1','Staff',16752787,0,0);
insert into StatusKaryawan (KodeStatus, NamaStatus, Warna, UangMakan, UangTransport) 
values ('2','Harian',16777215,0,0);
insert into StatusKaryawan (KodeStatus, NamaStatus, Warna, UangMakan, UangTransport) 
values ('3','Training',4227327,0,0);
insert into StatusKaryawan (KodeStatus, NamaStatus, Warna, UangMakan, UangTransport) 
values ('4','KKWT',16752787,0,0);
insert into StatusKaryawan (KodeStatus, NamaStatus, Warna, UangMakan, UangTransport) 
values ('5','Kontrak Hasil',16777215,0,0);
insert into StatusKaryawan (KodeStatus, NamaStatus, Warna, UangMakan, UangTransport) 
values ('6','Borongan',16787215,0,0);

-- Insert fixed Company
insert into Company (CompanyId, CompanyName, Address, Telephone, Website, FlagFix) 
values ('COMPANY', 'Rename To Your Company Name', '', '', 'http://www.YourCompany.Com', 1);

-- Insert fixed Department
insert into Department (CompanyId, DepartmentId, DepartmentName, FlagFix) 
values ('COMPANY', 'IT', 'Information Technology', 1);

-- Insert fixed JobPosition
insert into JobPosition (DepartmentId, PositionId, PositionName, FlagFix) 
values ('IT', 'MNG', 'Manager IT', 1);
insert into JobPosition (DepartmentId, PositionId, PositionName, FlagFix) 
values ('IT', 'SPV', 'Supervisor', 1);

-- Insert Perusahaan
INSERT INTO Perusahaan (kodeperusahaan, namaperusahaan, alamat1, alamat2, kota, kodepos, phone, fax, npwp, corebusiness, director)
VALUES ('001', 'Rename To Your Company Name', '', '', '', '', '', '', '', '', '');

-- Insert Divisi
INSERT INTO Divisi (kodedivisi, namadivisi)
VALUES ('001', 'Furniture');

-- Insert Departemen
INSERT INTO Departemen (kodedepartemen, kodedivisi, namadepartemen, urutreport, groupreport)
VALUES ('001', '001', 'Pembahanan', 1, 1);
INSERT INTO Departemen (kodedepartemen, kodedivisi, namadepartemen, urutreport, groupreport)
VALUES ('002', '001', 'Proses', 2, 2);

-- Insert fixed Employee
insert into Employee (PositionId, EmployeeId, EmployeeName, UserName, FlagFix) 
values ('MNG', 'USER', 'Superuser', 'SUPERUSER', 1);

-- Insert Country
insert into Country (CountryId, CountryName, CountryExt)
values ('ID','Indonesia','62');

-- Insert Province
insert into Province (CountryId, ProvinceId, ProvinceName)
values ('ID','JABAR','Jawa Barat');
insert into Province (CountryId, ProvinceId, ProvinceName)
values ('ID','JATENG','Jawa Tengah');
insert into Province (CountryId, ProvinceId, ProvinceName)
values ('ID','JATIM','Jawa Timur');

-- Insert City
insert into City (ProvinceId, CityId, CityName, CityExt)
values ('JATIM','MLG','Malang','');
insert into City (ProvinceId, CityId, CityName, CityExt)
values ('JATIM','SBY','Surabaya','031');

-- Insert Shift
INSERT INTO Shift (shift, namashift, warna)
VALUES ('1', 'Pagi', 16777215);
INSERT INTO Shift (shift, namashift, warna)
VALUES ('2', 'Sore', 12615935);
INSERT INTO Shift (shift, namashift, warna)
VALUES ('3', 'Malam', 8454143);

-- Insert Master Jam Kerja
INSERT INTO MasterJamKerja (kodejamkerja, jamkerjaawal, jamkerjaakhir, overday, aktif, jambataslembur, jumlahsetengahhari, toleransiterlambat)
VALUES ('S1', '07:00:00', '15:00:00', '0', '1', NULL, 0, 0);
INSERT INTO MasterJamKerja (kodejamkerja, jamkerjaawal, jamkerjaakhir, overday, aktif, jambataslembur, jumlahsetengahhari, toleransiterlambat)
VALUES ('S2', '15:00:00', '22:30:00', '0', '1', NULL, 0, 0);
INSERT INTO MasterJamKerja (kodejamkerja, jamkerjaawal, jamkerjaakhir, overday, aktif, jambataslembur, jumlahsetengahhari, toleransiterlambat)
VALUES ('S3', '22:30:00', '07:00:00', '1', '1', NULL, 0, 0);
INSERT INTO MasterJamKerja (kodejamkerja, jamkerjaawal, jamkerjaakhir, overday, aktif)
VALUES ('P1', '07:30:00', '15:30:00', '0', '1');
INSERT INTO MasterJamKerja (kodejamkerja, jamkerjaawal, jamkerjaakhir, overday, aktif)
VALUES ('P2', '15:30:00', '23:00:00', '0', '1');
INSERT INTO MasterJamKerja (kodejamkerja, jamkerjaawal, jamkerjaakhir, overday, aktif)
VALUES ('P3', '23:00:00', '07:30:00', '1', '1');

-- Insert groupshifthd
insert into groupshifthd (kodegroupshiftid, namagroupshift)
values ('ST','Staff');
insert into groupshifthd (kodegroupshiftid, namagroupshift)
values ('SP','Satpam');
insert into groupshifthd (kodegroupshiftid, namagroupshift)
values ('BO','Boiler');

-- Insert groupshiftdt1
insert into groupshiftdt1 (kodegroupshiftid, shift,warna)
values ('SP','1',16777215);
insert into groupshiftdt1 (kodegroupshiftid, shift,warna)
values ('SP','2',12615935);
insert into groupshiftdt1 (kodegroupshiftid, shift,warna)
values ('SP','3',8454143);
insert into groupshiftdt1 (kodegroupshiftid, shift,warna)
values ('BO','1',16777215);
insert into groupshiftdt1 (kodegroupshiftid, shift,warna)
values ('BO','2',12615935);
insert into groupshiftdt1 (kodegroupshiftid, shift,warna)
values ('BO','3',8454143);

-- Insert groupshiftdt2
INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 1, '1', 'S1', '1');
INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 1, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 1, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 2, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 2, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 2, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 3, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 3, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 3, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 4, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 4, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 4, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 5, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 5, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 5, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 6, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 6, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('ST', 6, '3', 'S3', '1');


-- Insert groupshiftdt2
INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 1, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 1, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 1, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 2, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 2, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 2, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 3, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 3, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 3, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 4, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 4, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 4, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 5, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 5, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 5, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 6, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 6, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('SP', 6, '3', 'S3', '1');

-- Insert groupshiftdt2
INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 1, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 1, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 1, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 2, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 2, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 2, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 3, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 3, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 3, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 4, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 4, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 4, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 5, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 5, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 5, '3', 'S3', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 6, '1', 'S1', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 6, '2', 'S2', '1');

INSERT INTO groupshiftdt2 (kodegroupshiftid, kodehari, shift, kodejamkerja, spl)
VALUES ('BO', 6, '3', 'S3', '1');



-- Insert Kode Absen
INSERT INTO kodeabsen (kodeabsen, keterangan)
VALUES ('A', 'Mangkir');

INSERT INTO kodeabsen (kodeabsen, keterangan)
VALUES ('CK', 'Cuti Khusus');

INSERT INTO kodeabsen (kodeabsen, keterangan)
VALUES ('CT', 'Cuti Tahunan');

INSERT INTO kodeabsen (kodeabsen, keterangan)
VALUES ('H2', 'Hadir 1/2 Hari');

INSERT INTO kodeabsen (kodeabsen, keterangan)
VALUES ('H', 'Hadir hari kerja');

INSERT INTO kodeabsen (kodeabsen, keterangan)
VALUES ('IS', 'Ijin Surat Dokter');

INSERT INTO kodeabsen (kodeabsen, keterangan)
VALUES ('IT', 'Ijin Tanpa Surat');

INSERT INTO kodeabsen (kodeabsen, keterangan)
VALUES ('IV', 'Ijin Via Telp');

INSERT INTO kodeabsen (kodeabsen, keterangan)
VALUES ('S', 'Sakit tidak dibayar');

INSERT INTO kodeabsen (kodeabsen, keterangan)
VALUES ('SD', 'Sakit dengan surat Dokter');

-- Insert Jabatan
INSERT INTO jabatan (kodejabatan, namajabatan, statuslevel, jmlpegawai, induk, deskripsi)
VALUES ('0001', 'Direktur Utama', '1', 0, NULL, NULL);

INSERT INTO jabatan (kodejabatan, namajabatan, statuslevel, jmlpegawai, induk, deskripsi)
VALUES ('0002', 'General Manager', '2', 0, '1001', NULL);

INSERT INTO jabatan (kodejabatan, namajabatan, statuslevel, jmlpegawai, induk, deskripsi)
VALUES ('0003', 'Staff Accounting', '3', 0, '2001', NULL);

INSERT INTO jabatan (kodejabatan, namajabatan, statuslevel, jmlpegawai, induk, deskripsi)
VALUES ('0004', 'Kabag Produksi', '3', 0, '2001', NULL);

INSERT INTO jabatan (kodejabatan, namajabatan, statuslevel, jmlpegawai, induk, deskripsi)
VALUES ('0005', 'Staff Purchasing', '3', 0, '2001', NULL);

INSERT INTO jabatan (kodejabatan, namajabatan, statuslevel, jmlpegawai, induk, deskripsi)
VALUES ('0006', 'Kabag KD', '3', 0, '2001', NULL);

INSERT INTO jabatan (kodejabatan, namajabatan, statuslevel, jmlpegawai, induk, deskripsi)
VALUES ('0007', 'Kabag PPC', '3', 0, '2001', NULL);

INSERT INTO jabatan (kodejabatan, namajabatan, statuslevel, jmlpegawai, induk, deskripsi)
VALUES ('0008', 'Kabag Personalia', '3', 0, '2001', NULL);

INSERT INTO jabatan (kodejabatan, namajabatan, statuslevel, jmlpegawai, induk, deskripsi)
VALUES ('0009', 'Kabag Pembahanan', '4', 0, '3002', NULL);


-- Insert OutSourcing

INSERT INTO outsourcing (kodeoutsourcing, namaoutsourcing, warna)
VALUES ('001', 'CANDRA', 16776960);

INSERT INTO outsourcing (kodeoutsourcing, namaoutsourcing, warna)
VALUES ('002', 'ENO ', 255);

INSERT INTO outsourcing (kodeoutsourcing, namaoutsourcing, warna)
VALUES ('003', 'JUNAIDI', 4259584);

INSERT INTO outsourcing (kodeoutsourcing, namaoutsourcing, warna)
VALUES ('004', 'MILYAN ', 1108719);

INSERT INTO outsourcing (kodeoutsourcing, namaoutsourcing, warna)
VALUES ('005', 'KAYAN  ', 16777215);