inherited fmDisplayGaji: TfmDisplayGaji
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
    object btnSummary: TcxButton
      Left = 375
      Top = 1
      Width = 62
      Height = 48
      Align = alLeft
      Action = ActPrintDetail2
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 5
    end
    object cxButton1: TcxButton
      Left = 251
      Top = 1
      Width = 62
      Height = 48
      Align = alLeft
      Action = ActPrintSummary
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 6
    end
    object cxButton2: TcxButton
      Left = 313
      Top = 1
      Width = 62
      Height = 48
      Align = alLeft
      Action = ActPrintDetail1
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 7
    end
  end
  object cgDisplay: TcxGrid [1]
    Left = 0
    Top = 105
    Width = 592
    Height = 262
    Align = alClient
    TabOrder = 1
    object cgvDisplaySummary: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSummary
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          FieldName = 'nopeg'
          Column = cgvDisplaySummarykodejabatan
        end
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'jumtotal'
          Column = cgvDisplaySummaryjumtotal
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object cgvDisplaySummarykodejabatan: TcxGridDBColumn
        Caption = 'Kode Jabatan'
        DataBinding.FieldName = 'kodejabatan'
        Width = 84
      end
      object cgvDisplaySummarynamajabatan: TcxGridDBColumn
        Caption = 'Nama Jabatan'
        DataBinding.FieldName = 'namajabatan'
        Width = 207
      end
      object cgvDisplaySummaryjumtotal: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'jumtotal'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 133
      end
    end
    object cgvDisplayDetail1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDetail1
      DataController.DetailKeyFieldNames = 'kodejabatan'
      DataController.MasterKeyFieldNames = 'kodejabatan'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'netto'
          Column = cgvDisplayDetail1netto
          DisplayText = 'Netto'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'jumlah'
          Column = cgvDisplayDetail1jumlah
        end
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'potongan'
          Column = cgvDisplayDetail1potongan
        end
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'netto'
          Column = cgvDisplayDetail1netto
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      object cgvDisplayDetail1kodejabatan: TcxGridDBColumn
        Caption = 'Kode Jabatan'
        DataBinding.FieldName = 'kodejabatan'
        Visible = False
      end
      object cgvDisplayDetail1nama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
      end
      object cgvDisplayDetail1nopeg: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'nopeg'
        Visible = False
        GroupIndex = 0
        SortIndex = 0
        SortOrder = soAscending
      end
      object cgvDisplayDetail1payrolltype: TcxGridDBColumn
        Caption = 'Komponen'
        DataBinding.FieldName = 'payrolltype'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevPayrollType
        Properties.KeyFieldNames = 'payrolltype'
        Properties.ListFieldItem = dmGeneral.cgvPrevPayrollTypepayrolltypename
      end
      object cgvDisplayDetail1amount: TcxGridDBColumn
        Caption = '@ Rupiah'
        DataBinding.FieldName = 'amount'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayDetail1count: TcxGridDBColumn
        Caption = 'JML'
        DataBinding.FieldName = 'count'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayDetail1jumlah: TcxGridDBColumn
        Caption = 'Bruto'
        DataBinding.FieldName = 'jumlah'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayDetail1potongan: TcxGridDBColumn
        Caption = 'Potongan'
        DataBinding.FieldName = 'potongan'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayDetail1netto: TcxGridDBColumn
        Caption = 'Netto'
        DataBinding.FieldName = 'netto'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayDetail1COLUMN1: TcxGridDBColumn
        DataBinding.FieldName = 'COLUMN1'
      end
    end
    object cgvDisplayDetail2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDetail2
      DataController.DetailKeyFieldNames = 'kodejabatan;nopeg;payrolltype'
      DataController.MasterKeyFieldNames = 'kodejabatan;nopeg;payrolltype'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'jumlah'
          Column = cgvDisplayDetail2jumlah
        end
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'potongan'
          Column = cgvDisplayDetail2potongan
        end
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'netto'
          Column = cgvDisplayDetail2netto
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cgvDisplayDetail2kodejabatan: TcxGridDBColumn
        Caption = 'Kode Jabatan'
        DataBinding.FieldName = 'kodejabatan'
        Visible = False
      end
      object cgvDisplayDetail2nopeg: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'nopeg'
        Visible = False
      end
      object cgvDisplayDetail2tgl: TcxGridDBColumn
        Caption = 'Tgl'
        DataBinding.FieldName = 'tgl'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvDisplayDetail2masuk1: TcxGridDBColumn
        Caption = 'Masuk'
        DataBinding.FieldName = 'masuk1'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cgvDisplayDetail2keluar1: TcxGridDBColumn
        Caption = 'Keluar'
        DataBinding.FieldName = 'keluar1'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cgvDisplayDetail2nosyarat: TcxGridDBColumn
        Caption = 'No Syarat'
        DataBinding.FieldName = 'nosyarat'
      end
      object cgvDisplayDetail2kodeabsen: TcxGridDBColumn
        Caption = 'Kode Absen'
        DataBinding.FieldName = 'kodeabsen'
      end
      object cgvDisplayDetail2amount: TcxGridDBColumn
        Caption = '@ Rupiah'
        DataBinding.FieldName = 'amount'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayDetail2jumlah: TcxGridDBColumn
        Caption = 'Bruto'
        DataBinding.FieldName = 'jumlah'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayDetail2potongan: TcxGridDBColumn
        Caption = 'Potongan'
        DataBinding.FieldName = 'potongan'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayDetail2netto: TcxGridDBColumn
        Caption = 'Netto'
        DataBinding.FieldName = 'netto'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object cgDisplayLevel1: TcxGridLevel
      GridView = cgvDisplaySummary
      object cgDisplayLevel2: TcxGridLevel
        GridView = cgvDisplayDetail1
        object cgDisplayLevel3: TcxGridLevel
          GridView = cgvDisplayDetail2
        end
      end
    end
  end
  object pnlCustom: TPanel [2]
    Left = 0
    Top = 50
    Width = 592
    Height = 55
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 7
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Tanggal'
      Transparent = True
    end
    object Label3: TLabel
      Left = 23
      Top = 30
      Width = 22
      Height = 13
      Caption = 'Shift'
      Transparent = True
    end
    object Label2: TLabel
      Left = 182
      Top = 8
      Width = 17
      Height = 13
      Caption = 'S/D'
      Transparent = True
    end
    object Label4: TLabel
      Left = 182
      Top = 30
      Width = 17
      Height = 13
      Caption = 'S/D'
      Transparent = True
    end
    object Label5: TLabel
      Left = 342
      Top = 6
      Width = 17
      Height = 13
      Caption = 'S/D'
      Transparent = True
    end
    object dtTgl1: TcxDateEdit
      Left = 55
      Top = 5
      TabOrder = 0
      Width = 121
    end
    object dbimgShift1: TcxImageComboBox
      Left = 55
      Top = 27
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
      Left = 205
      Top = 5
      TabOrder = 2
      Width = 121
    end
    object dbimgShift2: TcxImageComboBox
      Left = 205
      Top = 27
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
  object dsSummary: TDataSource
    DataSet = qrySummary
    Left = 200
    Top = 144
  end
  object dsDetail1: TDataSource
    DataSet = qryDetail1
    Left = 200
    Top = 176
  end
  object dsDetail2: TDataSource
    DataSet = qryDetail2
    Left = 200
    Top = 216
  end
  object dsDisplayGaji: TDataSource
    DataSet = qryDisplayGaji
    Left = 200
    Top = 256
  end
  object qrySummary: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tgl1'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'tgl2'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'shift1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'shift2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select  c.kodejabatan,c.namajabatan,sum(a.total) as jumtotal'
      'from transaksipayrollhd a'
      'left join pegawai b on a.pegawaiid=b.pegawaiid'
      'left join jabatan c on b.kodejabatan=c.kodejabatan'
      
        'where a.tglpayroll between dbo.fnGetDate(:tgl1) and dbo.fnGetDat' +
        'e(:tgl2)'
      'and a.shift between :shift1 and :shift2'
      'group by c.kodejabatan,c.namajabatan'
      '')
    Left = 168
    Top = 144
  end
  object qryDetail1: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tgl1'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'tgl2'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'shift1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'shift2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'select c.kodejabatan,b.nama,b.nopeg,d.payrolltype,d.amount,count' +
        '(*),'
      ' case  '
      '   when sum(d.total)>0 then sum(d.total)'
      '   else 0'
      ' end as jumlah,  '
      ' case  '
      '   when sum(d.total)<0 then sum(d.total)'
      '   else 0'
      ' end as potongan,  '
      ' sum(d.total) as netto'
      'from transaksipayrollhd a'
      'left join transaksipayrolldt d on a.nopayroll=d.nopayroll'
      'left join pegawai b on a.pegawaiid=b.pegawaiid'
      'left join jabatan c on b.kodejabatan=c.kodejabatan'
      
        'where a.tglpayroll between dbo.fnGetDate(:tgl1) and dbo.fnGetDat' +
        'e(:tgl2)'
      'and a.shift between :shift1 and :shift2'
      'group by c.kodejabatan,b.nama,b.nopeg,d.payrolltype,d.amount'
      'order by c.kodejabatan,b.nama,b.nopeg,d.payrolltype,d.amount'
      '')
    Left = 168
    Top = 176
  end
  object qryDetail2: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tgl1'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'tgl2'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'shift1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'shift2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from'
      '('
      
        'select  c.kodejabatan,b.nopeg,e.tgl,e.masuk1,e.keluar1,d.payroll' +
        'type,d.nosyarat,e.kodeabsen,d.amount,'
      ' case'
      '   when d.total>0 then d.total'
      '   else 0'
      ' end as jumlah,'
      ' case'
      '   when d.total<0 then d.total'
      '   else 0'
      ' end as potongan,d.total,'
      ' d.total as netto'
      'from transaksipayrollhd a'
      'left join pegawai b on a.pegawaiid=b.pegawaiid'
      'left join jabatan c on b.kodejabatan=c.kodejabatan'
      ','
      'absen e,'
      'transaksipayrolldt d'
      
        'where a.tglpayroll between dbo.fnGetDate(:tgl1) and dbo.fnGetDat' +
        'e(:tgl2)'
      'and a.shift between :shift1 and :shift2'
      
        'and a.nopayroll=d.nopayroll and a.pegawaiid=e.pegawaiid and a.tg' +
        'lpayroll=e.tgl and a.kodegroupshiftid=e.kodegroupshiftid and a.s' +
        'hift=e.shift'
      ') g'
      
        'group by kodejabatan,nopeg,payrolltype,tgl,masuk1,keluar1,nosyar' +
        'at,kodeabsen,amount,jumlah,potongan,total,netto'
      
        'order by kodejabatan,nopeg,payrolltype,tgl,masuk1,keluar1,nosyar' +
        'at,kodeabsen,amount,jumlah,potongan,total,netto')
    Left = 168
    Top = 216
  end
  object qryDisplayGaji: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tgl1'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'tgl2'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'shift1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'shift2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from'
      '('
      
        'select  c.kodejabatan,b.nopeg,e.tgl,e.masuk1,e.keluar1,d.payroll' +
        'type,d.nosyarat,e.kodeabsen,d.amount,'
      ' case'
      '   when d.total>0 then d.total'
      '   else 0'
      ' end as jumlah,'
      ' case'
      '   when d.total<0 then d.total'
      '   else 0'
      ' end as potongan,d.total,'
      ' d.total as netto'
      'from transaksipayrollhd a'
      'left join pegawai b on a.pegawaiid=b.pegawaiid'
      'left join jabatan c on b.kodejabatan=c.kodejabatan'
      ','
      'absen e,'
      'transaksipayrolldt d'
      
        'where a.tglpayroll between dbo.fnGetDate(:tgl1) and dbo.fnGetDat' +
        'e(:tgl2)'
      'and a.shift between :shift1 and :shift2'
      
        'and a.nopayroll=d.nopayroll and a.pegawaiid=e.pegawaiid and a.tg' +
        'lpayroll=e.tgl and a.kodegroupshiftid=e.kodegroupshiftid and a.s' +
        'hift=e.shift'
      ') g'
      
        'group by kodejabatan,nopeg,payrolltype,tgl,masuk1,keluar1,nosyar' +
        'at,kodeabsen,amount,jumlah,potongan,total,netto'
      
        'order by kodejabatan,nopeg,payrolltype,tgl,masuk1,keluar1,nosyar' +
        'at,kodeabsen,amount,jumlah,potongan,total,netto')
    Left = 168
    Top = 256
  end
end
