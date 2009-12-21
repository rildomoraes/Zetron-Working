inherited fmProsesHarian: TfmProsesHarian
  Caption = 'Proses Harian'
  ClientHeight = 471
  ClientWidth = 792
  ExplicitWidth = 800
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 792
    ExplicitWidth = 792
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 50
    Width = 792
    Height = 167
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 6
      Width = 41
      Height = 13
      Caption = 'Tgl Mulai'
      Transparent = True
    end
    object Label2: TLabel
      Left = 9
      Top = 24
      Width = 41
      Height = 13
      Caption = 'Tgl Akhir'
      Transparent = True
    end
    object lblGroupShift: TLabel
      Left = 9
      Top = 60
      Width = 54
      Height = 13
      Caption = 'Group Shift'
      Transparent = True
    end
    object lblShift: TLabel
      Left = 9
      Top = 78
      Width = 22
      Height = 13
      Caption = 'Shift'
      Transparent = True
    end
    object Label3: TLabel
      Left = 9
      Top = 96
      Width = 40
      Height = 13
      Caption = 'Pegawai'
      Transparent = True
    end
    object Label4: TLabel
      Left = 9
      Top = 42
      Width = 50
      Height = 13
      Caption = 'Group Gaji'
      Transparent = True
    end
    object dtTglMulai: TcxDateEdit
      Left = 80
      Top = 3
      TabOrder = 0
      Width = 121
    end
    object dtTglAkhir: TcxDateEdit
      Left = 80
      Top = 21
      TabOrder = 1
      Width = 121
    end
    object lcbGroupShift: TcxExtLookupComboBox
      Left = 80
      Top = 57
      Properties.View = dmGeneral.cgvPrevGroupShift
      Properties.KeyFieldNames = 'kodegroupshiftid'
      Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftnamagroupshift
      Properties.MaxLength = 0
      TabOrder = 4
      Width = 148
    end
    object lcbShift: TcxExtLookupComboBox
      Left = 80
      Top = 75
      Properties.View = dmGeneral.cgvPrevGroupShiftDt1
      Properties.KeyFieldNames = 'shift'
      Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftDt1shift
      Properties.MaxLength = 0
      TabOrder = 6
      Width = 148
    end
    object lcbPegawai: TcxExtLookupComboBox
      Left = 80
      Top = 93
      Properties.View = dmGeneral.cgvPrevPegawai
      Properties.KeyFieldNames = 'pegawaiid'
      Properties.ListFieldItem = dmGeneral.cgvPrevPegawainama
      Properties.MaxLength = 0
      TabOrder = 8
      Width = 148
    end
    object cbGroupShift: TcxCheckBox
      Left = 234
      Top = 57
      Caption = 'Semua'
      ParentColor = False
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsChecked
      TabOrder = 5
      Transparent = True
      Width = 121
    end
    object cbShift: TcxCheckBox
      Left = 234
      Top = 75
      Caption = 'Semua'
      ParentColor = False
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsChecked
      TabOrder = 7
      Transparent = True
      Width = 121
    end
    object cbPegawai: TcxCheckBox
      Left = 234
      Top = 93
      Caption = 'Semua'
      ParentColor = False
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsChecked
      TabOrder = 9
      Transparent = True
      Width = 121
    end
    object BProses: TcxButton
      Left = 379
      Top = 14
      Width = 98
      Height = 51
      Action = ActProses
      Layout = blGlyphTop
      TabOrder = 10
    end
    object BBatal: TcxButton
      Left = 379
      Top = 71
      Width = 98
      Height = 51
      Action = ActBatal
      Layout = blGlyphTop
      TabOrder = 11
    end
    object lcbGroupGaji: TcxExtLookupComboBox
      Left = 80
      Top = 39
      Properties.View = dmGeneral.cgvPrevGroupGaji
      Properties.KeyFieldNames = 'kodegroupgaji'
      Properties.ListFieldItem = dmGeneral.cgvPrevGroupGajinamagroupgaji
      Properties.MaxLength = 0
      TabOrder = 2
      Width = 148
    end
    object cbGroupGaji: TcxCheckBox
      Left = 234
      Top = 39
      Caption = 'Semua'
      ParentColor = False
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsChecked
      TabOrder = 3
      Transparent = True
      Width = 121
    end
  end
  object cgTransaksiPayrollHarian: TcxGrid [2]
    Left = 0
    Top = 217
    Width = 792
    Height = 254
    Align = alClient
    TabOrder = 2
    object cgvTransaksiPayrollHarianHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsTransaksiPayrollHd2
      DataController.DetailKeyFieldNames = 'nopayroll'
      DataController.KeyFieldNames = 'nopayroll'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          FieldName = 'total'
          Column = cgvTransaksiPayrollHarianHdtotal
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'total'
          Column = cgvTransaksiPayrollHarianHdtotal
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cgvTransaksiPayrollHarianHdnopayroll: TcxGridDBColumn
        Caption = 'No Payroll'
        DataBinding.FieldName = 'nopayroll'
      end
      object cgvTransaksiPayrollHarianHdtglpayroll: TcxGridDBColumn
        Caption = 'Tgl Payroll'
        DataBinding.FieldName = 'tglpayroll'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvTransaksiPayrollHarianHdpegawaiid: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevPegawai
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPrevPegawainopeg
      end
      object cgvTransaksiPayrollHarianHdNama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevPegawai
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPrevPegawainama
      end
      object cgvTransaksiPayrollHarianHdkodegroupgaji: TcxGridDBColumn
        Caption = 'Group Gaji'
        DataBinding.FieldName = 'kodegroupgaji'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevGroupGaji
        Properties.KeyFieldNames = 'kodegroupgaji'
        Properties.ListFieldItem = dmGeneral.cgvPrevGroupGajinamagroupgaji
        Width = 73
      end
      object cgvTransaksiPayrollHarianHdkodegroupshiftid: TcxGridDBColumn
        Caption = 'Group Shift'
        DataBinding.FieldName = 'kodegroupshiftid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevGroupShift
        Properties.KeyFieldNames = 'kodegroupshiftid'
        Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftnamagroupshift
      end
      object cgvTransaksiPayrollHarianHdshift: TcxGridDBColumn
        Caption = 'Shift'
        DataBinding.FieldName = 'shift'
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
      object cgvTransaksiPayrollHarianHdstatus: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'status'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Harian'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Periode'
            Value = '1'
          end>
      end
      object cgvTransaksiPayrollHarianHdtotal: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'total'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvTransaksiPayrollHarianHdCOUNTERPRINT: TcxGridDBColumn
        DataBinding.FieldName = 'COUNTERPRINT'
      end
      object cgvTransaksiPayrollHarianHdSTATUSAPPROVE: TcxGridDBColumn
        DataBinding.FieldName = 'STATUSAPPROVE'
      end
      object cgvTransaksiPayrollHarianHdEMPLOYEEID: TcxGridDBColumn
        DataBinding.FieldName = 'EMPLOYEEID'
      end
    end
    object cgvTransaksiPayrollHarianDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsTransaksiPayrollDt2
      DataController.DetailKeyFieldNames = 'nopayroll'
      DataController.KeyFieldNames = 'nopayroll'
      DataController.MasterKeyFieldNames = 'nopayroll'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          FieldName = 'total'
          Column = cgvTransaksiPayrollHarianDttotal
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'total'
          Column = cgvTransaksiPayrollHarianDttotal
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cgvTransaksiPayrollHarianDtnopayroll: TcxGridDBColumn
        Caption = 'No Payroll'
        DataBinding.FieldName = 'nopayroll'
      end
      object cgvTransaksiPayrollHarianDtpayrolltype: TcxGridDBColumn
        Caption = 'Komponen'
        DataBinding.FieldName = 'payrolltype'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevPayrollType
        Properties.KeyFieldNames = 'payrolltype'
        Properties.ListFieldItem = dmGeneral.cgvPrevPayrollTypepayrolltypename
      end
      object cgvTransaksiPayrollHarianDtnosyarat: TcxGridDBColumn
        Caption = 'Syarat'
        DataBinding.FieldName = 'nosyarat'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvSyaratHd
        Properties.KeyFieldNames = 'nosyarat'
        Properties.ListFieldItem = dmGeneral.cgvSyaratHdnamasyarat
      end
      object cgvTransaksiPayrollHarianDtamount: TcxGridDBColumn
        Caption = '@ Rupiah'
        DataBinding.FieldName = 'amount'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvTransaksiPayrollHarianDtkoefisien: TcxGridDBColumn
        Caption = 'Koefisien'
        DataBinding.FieldName = 'koefisien'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvTransaksiPayrollHarianDttotal: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'total'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object cgTransaksiPayrollHarianLevel1: TcxGridLevel
      GridView = cgvTransaksiPayrollHarianHd
    end
  end
  inherited ActionList1: TActionList
    Left = 584
    Top = 56
    object ActBatal: TAction
      Caption = 'Batal Proses'
      ImageIndex = 7
      OnExecute = ActBatalExecute
    end
    object ActProses: TAction
      Caption = 'Proses Harian'
      ImageIndex = 0
      OnExecute = ActProsesExecute
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 616
    Top = 56
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 648
    Top = 56
  end
  object dsTransaksiPayrollHd2: TDataSource
    DataSet = qryTransaksiPayrollHd2
    Left = 648
    Top = 152
  end
  object dsTransaksiPayrollDt2: TDataSource
    DataSet = qryTransaksiPayrollDt2
    Left = 648
    Top = 184
  end
  object qryProsesHarian: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'ATgl1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'ATgl2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'AGroupGaji'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end
      item
        Name = 'AGroupShift'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end
      item
        Name = 'AShift'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end
      item
        Name = 'APegawaiid'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select spprosesharian(cast(:ATgl1 as datewithouttime),cast(:ATgl' +
        '2 as datewithouttime),cast(:AGroupGaji as character varying),cas' +
        't(:AGroupShift as character varying),cast(:AShift as character v' +
        'arying),cast(:APegawaiid as character varying))')
    Left = 584
    Top = 152
  end
  object qryProsesBatalHarian: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'ATgl1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'ATgl2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'AGroupGaji'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end
      item
        Name = 'AGroupShift'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end
      item
        Name = 'AShift'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end
      item
        Name = 'APegawaiid'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select spprosesbatalharian(cast(:ATgl1 as datewithouttime),cast(' +
        ':ATgl2 as datewithouttime),cast(:AGroupGaji as character varying' +
        '),cast(:AGroupShift as character varying),cast(:AShift as charac' +
        'ter varying),cast(:APegawaiid as character varying))')
    Left = 584
    Top = 184
  end
  object qryTransaksiPayrollHd2: TADOQuery
    Active = True
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryTransaksiPayrollHd2After
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryTransaksiPayrollHd2After
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
        Name = 'kodegroupgaji'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'kodegroupshiftid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'shift'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from transaksipayrollhd  '
      
        'where tglpayroll between cast(:tgl1 as datetime) and cast(:tgl2 ' +
        'as datetime)'
      'and kodegroupgaji like :kodegroupgaji'
      'and kodegroupshiftid like :kodegroupshiftid'
      'and shift like :shift'
      'and cast(pegawaiid as character varying) like :pegawaiid'
      'and status='#39'0'#39)
    Left = 616
    Top = 152
  end
  object qryTransaksiPayrollDt2: TADOQuery
    Active = True
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryTransaksiPayrollDt2After
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryTransaksiPayrollDt2After
    DataSource = dsTransaksiPayrollHd2
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from transaksipayrollDt')
    Left = 616
    Top = 184
  end
end
