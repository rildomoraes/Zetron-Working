inherited fmTransaksiPayroll: TfmTransaksiPayroll
  Caption = 'Transaksi Insidentil'
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    inherited bvlSpacer2: TBevel
      Left = 407
      ExplicitLeft = 407
    end
    inherited bvlSpacer3: TBevel
      Left = 513
      ExplicitLeft = 513
    end
    inherited bvlSpacer4: TBevel
      Left = 619
      ExplicitLeft = 619
    end
    inherited btnPrev: TcxButton
      Left = 523
      ExplicitLeft = 523
    end
    inherited btnNext: TcxButton
      Left = 571
      ExplicitLeft = 571
    end
    inherited btnPost: TcxButton
      Left = 417
      ExplicitLeft = 417
    end
    inherited btnCancel: TcxButton
      Left = 465
      ExplicitLeft = 465
    end
    inherited btnVoid: TcxButton
      Left = 359
      ExplicitLeft = 359
    end
    object btnDelete: TcxButton
      Left = 311
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = ActDelete
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 11
    end
  end
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 391
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Splitter1: TSplitter
          Left = 0
          Top = 241
          Width = 740
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitWidth = 146
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 241
          Align = alTop
          TabOrder = 0
          ExplicitLeft = -1
          ExplicitTop = -2
          object lblPerusahaan: TLabel
            Left = 9
            Top = 24
            Width = 48
            Height = 13
            Caption = 'No Payroll'
            Transparent = True
          end
          object Label6: TLabel
            Left = 9
            Top = 6
            Width = 49
            Height = 13
            Caption = 'Tgl Payroll'
            Transparent = True
          end
          object Label8: TLabel
            Left = 9
            Top = 42
            Width = 36
            Height = 13
            Caption = 'No Peg'
            Transparent = True
          end
          object Label9: TLabel
            Left = 9
            Top = 60
            Width = 28
            Height = 13
            Caption = 'Nama'
            Transparent = True
          end
          object Label10: TLabel
            Left = 9
            Top = 78
            Width = 57
            Height = 13
            Caption = 'Perusahaan'
            Transparent = True
          end
          object Label11: TLabel
            Left = 9
            Top = 96
            Width = 25
            Height = 13
            Caption = 'Divisi'
            Transparent = True
          end
          object Label12: TLabel
            Left = 9
            Top = 114
            Width = 58
            Height = 13
            Caption = 'Departemen'
            Transparent = True
          end
          object Label5: TLabel
            Left = 9
            Top = 132
            Width = 21
            Height = 13
            Caption = 'Shift'
            Transparent = True
          end
          object Label7: TLabel
            Left = 9
            Top = 168
            Width = 24
            Height = 13
            Caption = 'Total'
            Transparent = True
          end
          object dbePerusahaan: TDBText
            Left = 97
            Top = 78
            Width = 75
            Height = 13
            AutoSize = True
            DataField = 'namaperusahaan'
            DataSource = dmGeneral.dsPrevPegawaiActive
            Transparent = True
          end
          object dbeDivisi: TDBText
            Left = 97
            Top = 96
            Width = 43
            Height = 13
            AutoSize = True
            DataField = 'namadivisi'
            DataSource = dmGeneral.dsPrevPegawaiActive
            Transparent = True
          end
          object dbeDepartemen: TDBText
            Left = 97
            Top = 114
            Width = 76
            Height = 13
            AutoSize = True
            DataField = 'namadepartemen'
            DataSource = dmGeneral.dsPrevPegawaiActive
            Transparent = True
          end
          object Label13: TLabel
            Left = 9
            Top = 150
            Width = 30
            Height = 13
            Caption = 'Status'
            Transparent = True
          end
          object Label1: TLabel
            Left = 224
            Top = 4
            Width = 5
            Height = 16
            Caption = '*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 224
            Top = 22
            Width = 5
            Height = 16
            Caption = '*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 248
            Top = 40
            Width = 5
            Height = 16
            Caption = '*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 248
            Top = 58
            Width = 5
            Height = 16
            Caption = '*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 248
            Top = 130
            Width = 5
            Height = 16
            Caption = '*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 224
            Top = 148
            Width = 5
            Height = 16
            Caption = '*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 224
            Top = 166
            Width = 5
            Height = 16
            Caption = '*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object dbeNama: TcxDBExtLookupComboBox
            Left = 97
            Top = 57
            DataBinding.DataField = 'pegawaiid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenama
            TabOrder = 4
            Width = 145
          end
          object dbeNoPeg: TcxDBExtLookupComboBox
            Left = 97
            Top = 39
            DataBinding.DataField = 'pegawaiid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenopeg
            TabOrder = 3
            Width = 145
          end
          object dbeNoPayroll: TcxDBTextEdit
            Left = 97
            Top = 21
            DataBinding.DataField = 'nopayroll'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 121
          end
          object dbeTglPayroll: TcxDBDateEdit
            Left = 97
            Top = 3
            DataBinding.DataField = 'tglpayroll'
            DataBinding.DataSource = dsDefault
            Properties.OnEditValueChanged = dtTglPayrollPropertiesEditValueChanged
            TabOrder = 0
            Width = 121
          end
          object dbeShift: TcxDBExtLookupComboBox
            Left = 97
            Top = 129
            DataBinding.DataField = 'shift'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevGroupShiftDt1
            Properties.KeyFieldNames = 'shift'
            Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftDt1shift
            TabOrder = 5
            Width = 145
          end
          object btnGetId: TcxButton
            Left = 235
            Top = 22
            Width = 19
            Height = 19
            Hint = 'Auto Generate Id'
            Glyph.Data = {
              06030000424D060300000000000036000000280000000F0000000F0000000100
              180000000000D002000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFF579A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF4B934B
              6EA86EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFF4D974F6EA86EFFFFFFFFFFFFFFFFFF4B
              934BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              55A259519E5490BC90FFFFFF4C964C50AC52579A57FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF67C47552A1564C974D58BE5F53
              BF574CA14CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFF5CAE6469CE7761C66B5DC9655FCB6958BF5F4B934BFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF6BCE7C66D2736AD67A62
              B66C61B86C50A754FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFF64B97070D88358A75FFFFFFF84B58461BC6D4C964CFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A75FFFFFFFFF
              FFFFFFFFFF65A56758A55DFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BA15E509B53FFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF4F995163A363FFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C94
              4CFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF579A57FFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000}
            TabOrder = 2
            TabStop = False
            OnClick = btnGetIdClick
          end
          object dbImgStatus: TcxDBImageComboBox
            Left = 97
            Top = 147
            DataBinding.DataField = 'status'
            DataBinding.DataSource = dsDefault
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
            TabOrder = 6
            Width = 121
          end
          object dbeTotal: TcxDBCalcEdit
            Left = 97
            Top = 165
            DataBinding.DataField = 'total'
            DataBinding.DataSource = dsDefault
            Properties.ReadOnly = True
            TabOrder = 7
            Width = 121
          end
        end
        object cgTransaksiPayrollDt: TcxGrid
          Left = 0
          Top = 244
          Width = 740
          Height = 143
          Align = alClient
          TabOrder = 1
          object cgvTransaksiPayrollDt: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.Cancel.Visible = True
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsTransaksiPayrollDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00;(#,##0.00)'
                Kind = skSum
                FieldName = 'total'
                Column = cgvTransaksiPayrollDttotal
                DisplayText = 'Total'
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.InfoText = 'Klik Disini Untuk Menambah Data'
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvTransaksiPayrollDtnopayroll: TcxGridDBColumn
              Caption = 'No Payroll *'
              DataBinding.FieldName = 'nopayroll'
            end
            object cgvTransaksiPayrollDtpayrolltype: TcxGridDBColumn
              Caption = 'Komponen Payroll *'
              DataBinding.FieldName = 'payrolltype'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPrevPayrollType
              Properties.KeyFieldNames = 'payrolltype'
              Properties.ListFieldItem = dmGeneral.cgvPrevPayrollTypepayrolltypename
              Width = 119
            end
            object cgvTransaksiPayrollDtnosyarat: TcxGridDBColumn
              Caption = 'Syarat *'
              DataBinding.FieldName = 'nosyarat'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvSyaratHd
              Properties.KeyFieldNames = 'nosyarat'
              Properties.ListFieldItem = dmGeneral.cgvSyaratHdnamasyarat
              Width = 61
            end
            object cgvTransaksiPayrollDtkoefisien: TcxGridDBColumn
              Caption = 'Koefisien *'
              DataBinding.FieldName = 'koefisien'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 57
            end
            object cgvTransaksiPayrollDtamount: TcxGridDBColumn
              Caption = 'Jumlah *'
              DataBinding.FieldName = 'amount'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvTransaksiPayrollDttotal: TcxGridDBColumn
              Caption = 'Total *'
              DataBinding.FieldName = 'total'
              PropertiesClassName = 'TcxCalcEditProperties'
              Options.Editing = False
            end
          end
          object cgTransaksiPayrollDtLevel1: TcxGridLevel
            GridView = cgvTransaksiPayrollDt
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 391
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgTransaksiPayroll: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvTransaksiPayroll: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Total ,0.;-,0.'
              Kind = skCount
              Position = spFooter
              FieldName = 'pegawaiid'
              Column = cgvTransaksiPayrollNopeg
              DisplayText = 'Total'
            end
            item
              Format = 'Jum ,0.;-,0.'
              Kind = skCount
              FieldName = 'pegawaiid'
              Column = cgvTransaksiPayrollNopeg
              DisplayText = 'Jumlah'
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00;(#,##0.00)'
              Kind = skSum
              FieldName = 'pegawaiid'
              Column = cgvTransaksiPayrolltotal
              DisplayText = 'Grand Total'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cgvTransaksiPayrollnopayroll: TcxGridDBColumn
            Caption = 'No Payroll'
            DataBinding.FieldName = 'nopayroll'
          end
          object cgvTransaksiPayrolltglpayroll: TcxGridDBColumn
            Caption = 'Tgl Payroll'
            DataBinding.FieldName = 'tglpayroll'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cgvTransaksiPayrollNopeg: TcxGridDBColumn
            Caption = 'No Peg'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenopeg
          end
          object cgvTransaksiPayrollNama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenama
          end
          object cgvTransaksiPayrollnamaperusahaan: TcxGridDBColumn
            Caption = 'Nama Perusahaan'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenamaperusahaan
            Width = 92
          end
          object cgvTransaksiPayrollnamadivisi: TcxGridDBColumn
            Caption = 'Nama Divisi'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenamadivisi
            Width = 59
          end
          object cgvTransaksiPayrollnamadepartemen: TcxGridDBColumn
            Caption = 'Nama Departemen'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenamadepartemen
            Width = 94
          end
          object cgvTransaksiPayrollkodegroupgaji: TcxGridDBColumn
            Caption = 'Group Gaji'
            DataBinding.FieldName = 'kodegroupgaji'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevGroupGaji
            Properties.KeyFieldNames = 'kodegroupgaji'
            Properties.ListFieldItem = dmGeneral.cgvPrevGroupGajinamagroupgaji
          end
          object cgvTransaksiPayrollkodegroupshiftid: TcxGridDBColumn
            Caption = 'Group Shift'
            DataBinding.FieldName = 'kodegroupshiftid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevGroupShift
            Properties.KeyFieldNames = 'kodegroupshiftid'
            Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftnamagroupshift
          end
          object cgvTransaksiPayrollshift: TcxGridDBColumn
            Caption = 'Shift'
            DataBinding.FieldName = 'shift'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevGroupShiftDt1
            Properties.KeyFieldNames = 'shift'
            Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftDt1shift
          end
          object cgvTransaksiPayrolltotal: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'total'
          end
          object cgvTransaksiPayrollcounterprint: TcxGridDBColumn
            Caption = 'Jumlah Cetak'
            DataBinding.FieldName = 'counterprint'
          end
          object cgvTransaksiPayrollstatus: TcxGridDBColumn
            Caption = 'Perhitungan'
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
        end
        object cgTransaksiPayrollLevel1: TcxGridLevel
          GridView = cgvTransaksiPayroll
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 600
    Top = 88
    object ActDelete: TAction
      Category = 'Dataset'
      Caption = 'Delete'
      ImageIndex = 7
      OnExecute = ActDeleteExecute
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 632
    Top = 88
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 664
    Top = 88
  end
  inherited dsDefault: TDataSource
    DataSet = qryTransaksiPayrollHd
    OnDataChange = dsDefaultDataChange
    Left = 600
    Top = 120
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 696
    Top = 88
  end
  inherited pmPrint: TPopupMenu
    Left = 632
    Top = 120
  end
  object dsTransaksiPayrollDt: TDataSource
    DataSet = qryTransaksiPayrollDt
    OnStateChange = dsTransaksiPayrollDtStateChange
    OnDataChange = dsTransaksiPayrollDtDataChange
    Left = 600
    Top = 152
  end
  object qryPegawaiGroupGaji: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dmGeneral.dsPrevPegawaiActive
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from payrolldetail')
    Left = 472
    Top = 88
  end
  object qryTransaksiPayrollHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryTransaksiPayrollHdBeforePost
    OnNewRecord = qryTransaksiPayrollHdNewRecord
    Parameters = <
      item
        Name = 'tahun'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'bulan'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from transaksipayrollhd  '
      'where year(tglpayroll)=:tahun'
      'and month(tglpayroll)=:bulan')
    Left = 568
    Top = 120
  end
  object qryTransaksiPayrollDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryTransaksiPayrollDtBeforePost
    AfterPost = qryTransaksiPayrollDtAfterPost
    OnNewRecord = qryTransaksiPayrollDtNewRecord
    DataSource = dsDefault
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from transaksipayrollDt')
    Left = 568
    Top = 154
  end
end
