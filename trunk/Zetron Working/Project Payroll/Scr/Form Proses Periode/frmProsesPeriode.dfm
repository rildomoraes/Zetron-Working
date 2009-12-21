inherited fmProsesPeriode: TfmProsesPeriode
  Caption = 'Proses Periode'
  ClientHeight = 505
  ClientWidth = 792
  ExplicitLeft = -54
  ExplicitWidth = 800
  ExplicitHeight = 539
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
    Height = 95
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 9
      Top = 6
      Width = 36
      Height = 13
      Caption = 'Periode'
      Transparent = True
    end
    object Label3: TLabel
      Left = 9
      Top = 42
      Width = 40
      Height = 13
      Caption = 'Pegawai'
      Transparent = True
    end
    object Label4: TLabel
      Left = 9
      Top = 24
      Width = 50
      Height = 13
      Caption = 'Group Gaji'
      Transparent = True
    end
    object lcbPegawai: TcxExtLookupComboBox
      Left = 76
      Top = 39
      Properties.View = dmGeneral.cgvPrevPegawai
      Properties.KeyFieldNames = 'pegawaiid'
      Properties.ListFieldItem = dmGeneral.cgvPrevPegawainamadepartemen
      Properties.MaxLength = 0
      TabOrder = 3
      Width = 148
    end
    object cbPegawai: TcxCheckBox
      Left = 230
      Top = 42
      Caption = 'Semua'
      ParentColor = False
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsChecked
      TabOrder = 4
      Transparent = True
      Width = 67
    end
    object BProses: TcxButton
      Left = 371
      Top = 14
      Width = 98
      Height = 51
      Action = ActProses
      Layout = blGlyphTop
      TabOrder = 5
    end
    object BBatal: TcxButton
      Left = 475
      Top = 14
      Width = 98
      Height = 51
      Action = ActBatal
      Layout = blGlyphTop
      TabOrder = 6
    end
    object lcbGroupGaji: TcxExtLookupComboBox
      Left = 76
      Top = 21
      Properties.View = dmGeneral.cgvPrevGroupGaji
      Properties.KeyFieldNames = 'kodegroupgaji'
      Properties.ListFieldItem = dmGeneral.cgvPrevGroupGajinamagroupgaji
      Properties.MaxLength = 0
      TabOrder = 1
      Width = 148
    end
    object cbGroupGaji: TcxCheckBox
      Left = 230
      Top = 22
      Caption = 'Semua'
      ParentColor = False
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsChecked
      TabOrder = 2
      Transparent = True
      Width = 67
    end
    object lcbPeriode: TcxExtLookupComboBox
      Left = 76
      Top = 3
      Properties.View = dmGeneral.cgvPrevPeriode
      Properties.KeyFieldNames = 'kodeperiode'
      Properties.ListFieldItem = dmGeneral.cgvPrevPeriodenamaperiode
      Properties.MaxLength = 0
      TabOrder = 0
      Width = 148
    end
  end
  object cgTransaksiPayrollPeriode: TcxGrid [2]
    Left = 0
    Top = 145
    Width = 792
    Height = 360
    Align = alClient
    TabOrder = 2
    object cgvTransaksiPayrollHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsTransaksiPayrollHd2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvTransaksiPayrollHdnopayroll: TcxGridDBColumn
        Caption = 'No Payroll'
        DataBinding.FieldName = 'nopayroll'
      end
      object cgvTransaksiPayrollHdtglpayroll: TcxGridDBColumn
        Caption = 'Tgl Payroll'
        DataBinding.FieldName = 'tglpayroll'
      end
      object cgvTransaksiPayrollHdnopeg: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevPegawai
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPrevPegawainopeg
        Width = 74
      end
      object cgvTransaksiPayrollHdpegawaiid: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevPegawai
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPrevPegawainama
      end
      object cgvTransaksiPayrollHdnamadivisi: TcxGridDBColumn
        Caption = 'Divisi'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevPegawai
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPrevPegawainamadivisi
      end
      object cgvTransaksiPayrollHdnamadepatemen: TcxGridDBColumn
        Caption = 'Departemen'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevPegawai
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPrevPegawainamadepartemen
      end
      object cgvTransaksiPayrollHdkodegroupshiftid: TcxGridDBColumn
        Caption = 'Group Shift'
        DataBinding.FieldName = 'kodegroupshiftid'
      end
      object cgvTransaksiPayrollHdshift: TcxGridDBColumn
        Caption = 'Shift'
        DataBinding.FieldName = 'shift'
      end
      object cgvTransaksiPayrollHdkodegroupgaji: TcxGridDBColumn
        Caption = 'Group Gaji'
        DataBinding.FieldName = 'kodegroupgaji'
      end
      object cgvTransaksiPayrollHdtotal: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'total'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvTransaksiPayrollHdstatus: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'status'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Automatic'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Manual'
            Value = '1'
          end>
      end
      object cgvTransaksiPayrollHdcounterprint: TcxGridDBColumn
        Caption = 'Counter Print'
        DataBinding.FieldName = 'counterprint'
      end
      object cgvTransaksiPayrollHdstatusapprove: TcxGridDBColumn
        Caption = 'Status Approve'
        DataBinding.FieldName = 'statusapprove'
      end
      object cgvTransaksiPayrollHdEMPLOYEEID: TcxGridDBColumn
        DataBinding.FieldName = 'EMPLOYEEID'
      end
    end
    object cgvTransaksiPayrollDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsTransaksiPayrollDt2
      DataController.DetailKeyFieldNames = 'nopayroll'
      DataController.KeyFieldNames = 'nopayroll'
      DataController.MasterKeyFieldNames = 'nopayroll'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvTransaksiPayrollDtnopayroll: TcxGridDBColumn
        DataBinding.FieldName = 'nopayroll'
      end
      object cgvTransaksiPayrollDtpayrolltype: TcxGridDBColumn
        DataBinding.FieldName = 'payrolltype'
      end
      object cgvTransaksiPayrollDtnosyarat: TcxGridDBColumn
        DataBinding.FieldName = 'nosyarat'
      end
      object cgvTransaksiPayrollDtkoefisien: TcxGridDBColumn
        DataBinding.FieldName = 'koefisien'
      end
      object cgvTransaksiPayrollDtamount: TcxGridDBColumn
        DataBinding.FieldName = 'amount'
      end
      object cgvTransaksiPayrollDttotal: TcxGridDBColumn
        DataBinding.FieldName = 'total'
      end
    end
    object cgTransaksiPayrollPeriodeLevel1: TcxGridLevel
      GridView = cgvTransaksiPayrollHd
    end
  end
  inherited ActionList1: TActionList
    Left = 160
    Top = 8
    object ActBatal: TAction
      Caption = 'Batal Proses'
      ImageIndex = 7
      OnExecute = ActBatalExecute
    end
    object ActProses: TAction
      Caption = 'Proses Periode'
      ImageIndex = 0
      OnExecute = ActProsesExecute
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 192
    Top = 8
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 224
    Top = 8
  end
  object dsTransaksiPayrollHd2: TDataSource
    DataSet = qryTransaksiPayrollHd2
    Left = 656
    Top = 64
  end
  object dsTransaksiPayrollDt2: TDataSource
    DataSet = qryTransaksiPayrollDt2
    Left = 656
    Top = 98
  end
  object qryProsesPeriode: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'APeriode'
        DataType = ftFMTBcd
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
        Name = 'APegawaiid'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select spprosesperiode(cast(:APeriode as character varying),cast' +
        '(:AGroupGaji as character varying),cast(:APegawaiid as character' +
        ' varying))')
    Left = 720
    Top = 64
  end
  object qryProsesBatalPeriode: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'APeriode'
        DataType = ftFMTBcd
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
        Name = 'APegawaiid'
        DataType = ftFMTBcd
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select spprosesbatalperiode(cast(:APeriode as character varying)' +
        ',cast(:AGroupGaji as character varying),cast(:APegawaiid as char' +
        'acter varying))'
      '')
    Left = 720
    Top = 96
  end
  object qryTransaksiPayrollHd2: TADOQuery
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
        Name = 'pegawaiid'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'status'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from transaksipayrollhd  '
      
        'where tglpayroll between cast(:tgl1 as datetime) and cast(:tgl2 ' +
        'as datetime)'
      'and kodegroupgaji like :kodegroupgaji'
      'and cast(pegawaiid as character varying) like :pegawaiid'
      'and status=:status')
    Left = 622
    Top = 64
  end
  object qryTransaksiPayrollDt2: TADOQuery
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
    Left = 622
    Top = 98
  end
end
