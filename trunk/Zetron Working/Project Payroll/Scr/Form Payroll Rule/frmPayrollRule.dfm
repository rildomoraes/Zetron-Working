inherited fmPayrollRule: TfmPayrollRule
  Caption = 'Syarat'
  ClientHeight = 504
  ExplicitTop = -64
  ExplicitHeight = 538
  DesignSize = (
    592
    504)
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Height = 454
    ExplicitHeight = 454
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 454
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 454
      ExplicitHeight = 454
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 454
        ExplicitHeight = 454
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 454
        ExplicitHeight = 454
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Splitter1: TSplitter
          Left = 0
          Top = 348
          Width = 560
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitTop = 369
          ExplicitWidth = 81
        end
        object Splitter2: TSplitter
          Left = 0
          Top = 249
          Width = 560
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitTop = 273
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 249
          Align = alTop
          TabOrder = 0
          object lblSuppliesCategory: TLabel
            Left = 9
            Top = 6
            Width = 47
            Height = 13
            Caption = 'No Syarat'
            Transparent = True
          end
          object lblIdSupplies: TLabel
            Left = 9
            Top = 24
            Width = 61
            Height = 13
            Caption = 'Nama Syarat'
            Transparent = True
          end
          object Label1: TLabel
            Left = 9
            Top = 60
            Width = 55
            Height = 13
            Caption = 'Jumlah Hari'
            Transparent = True
          end
          object Label5: TLabel
            Left = 9
            Top = 42
            Width = 65
            Height = 13
            Caption = 'Status Proses'
            Transparent = True
          end
          object Label6: TLabel
            Left = 9
            Top = 132
            Width = 28
            Height = 13
            Caption = 'Query'
            Transparent = True
          end
          object Label8: TLabel
            Left = 9
            Top = 96
            Width = 80
            Height = 13
            Caption = 'Bayar Sesuai Tgl'
            Transparent = True
          end
          object Label3: TLabel
            Left = 201
            Top = 78
            Width = 20
            Height = 13
            Caption = 'S/D'
            Transparent = True
          end
          object Label9: TLabel
            Left = 9
            Top = 78
            Width = 47
            Height = 13
            Caption = 'Terlambat'
            Transparent = True
          end
          object Label10: TLabel
            Left = 9
            Top = 114
            Width = 43
            Height = 13
            Caption = 'Grouping'
            Transparent = True
          end
          object Label11: TLabel
            Left = 9
            Top = 229
            Width = 53
            Height = 13
            Caption = 'Flag Syarat'
            Transparent = True
          end
          object Label2: TLabel
            Left = 278
            Top = 78
            Width = 26
            Height = 13
            Caption = 'Menit'
            Transparent = True
          end
          object Label4: TLabel
            Left = 201
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
          object Label7: TLabel
            Left = 535
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
          object Label12: TLabel
            Left = 201
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
          object Label13: TLabel
            Left = 201
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
            Left = 188
            Top = 76
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
            Left = 267
            Top = 76
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
          object dbeNoSyarat: TcxDBTextEdit
            Left = 119
            Top = 3
            BeepOnEnter = False
            DataBinding.DataField = 'nosyarat'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 76
          end
          object dbeNamaSyarat: TcxDBTextEdit
            Left = 119
            Top = 21
            BeepOnEnter = False
            DataBinding.DataField = 'namasyarat'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 410
          end
          object dbeJumlahHari: TcxDBTextEdit
            Left = 119
            Top = 57
            BeepOnEnter = False
            DataBinding.DataField = 'qtyhari'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            Width = 76
          end
          object dbeTerlambat1: TcxDBTextEdit
            Left = 148
            Top = 75
            BeepOnEnter = False
            DataBinding.DataField = 'terlambat1'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 5
            Width = 34
          end
          object dbeGrouping: TcxDBTextEdit
            Left = 119
            Top = 111
            BeepOnEnter = False
            DataBinding.DataField = 'grouping'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 8
            Width = 410
          end
          object dbckFlagExecuteQuery: TcxDBCheckBox
            Left = 119
            Top = 129
            DataBinding.DataField = 'flagexecutequery'
            ParentColor = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Properties.OnEditValueChanged = dbckFlagExecuteQueryPropertiesEditValueChanged
            TabOrder = 9
            Transparent = True
            Width = 23
          end
          object dbmmQuery: TcxDBMemo
            Left = 148
            Top = 129
            DataBinding.DataField = 'syntaxquery'
            TabOrder = 10
            Height = 98
            Width = 381
          end
          object dbimgStatusProses: TcxDBImageComboBox
            Left = 119
            Top = 39
            DataBinding.DataField = 'statusproses'
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
            Properties.OnEditValueChanged = dbimgStatusProsesPropertiesEditValueChanged
            TabOrder = 2
            Width = 76
          end
          object dbckFlagBayarSesuai: TcxDBCheckBox
            Left = 119
            Top = 92
            DataBinding.DataField = 'flagbayarsesuaitglproses'
            ParentColor = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            TabOrder = 7
            Transparent = True
            Width = 23
          end
          object dbeTerlambat2: TcxDBTextEdit
            Left = 227
            Top = 75
            BeepOnEnter = False
            DataBinding.DataField = 'terlambat2'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 6
            Width = 34
          end
          object dbckFlagTerlambat: TcxDBCheckBox
            Left = 119
            Top = 74
            DataBinding.DataField = 'flagterlambat'
            ParentColor = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Properties.OnEditValueChanged = dbckFlagTerlambatPropertiesEditValueChanged
            TabOrder = 4
            Transparent = True
            Width = 23
          end
          object dbckFlagSyarat: TcxDBCheckBox
            Left = 119
            Top = 225
            DataBinding.DataField = 'flagsyarat'
            ParentColor = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Properties.OnEditValueChanged = dbckFlagSyaratPropertiesEditValueChanged
            TabOrder = 11
            Transparent = True
            Width = 23
          end
          object btnGetId: TcxButton
            Left = 226
            Top = 4
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
            TabOrder = 12
            TabStop = False
            OnClick = btnGetIdClick
          end
        end
        object cgDetailSyarat2: TcxGrid
          Left = 0
          Top = 351
          Width = 560
          Height = 99
          Align = alClient
          TabOrder = 1
          object cgvDetailSyarat2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsSyaratDt2
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvDetailSyarat2nosyarat: TcxGridDBColumn
              Caption = 'No Syarat *'
              DataBinding.FieldName = 'nosyarat'
            end
            object cgvDetailSyarat2no: TcxGridDBColumn
              Caption = 'No *'
              DataBinding.FieldName = 'ano'
            end
            object cgvDetailSyarat2kodeabsen: TcxGridDBColumn
              Caption = 'Kode Absen *'
              DataBinding.FieldName = 'kodeabsen'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPrevKodeAbsen
              Properties.KeyFieldNames = 'kodeabsen'
              Properties.ListFieldItem = dmGeneral.cgvPrevKodeAbsenketerangan
              Width = 79
            end
          end
          object cgDetailSyarat2Level1: TcxGridLevel
            GridView = cgvDetailSyarat2
          end
        end
        object cgDetailSyarat1: TcxGrid
          Left = 0
          Top = 252
          Width = 560
          Height = 96
          Align = alTop
          TabOrder = 2
          object cgvDetailSyarat1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsSyaratDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.InfoText = 'Klik Disini Untuk Menambah Syarat Baru'
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvDetailSyarat1no: TcxGridDBColumn
              Caption = 'No *'
              DataBinding.FieldName = 'ano'
              Width = 39
            end
            object cgvDetailSyarat1nosyarat: TcxGridDBColumn
              Caption = 'No Syarat *'
              DataBinding.FieldName = 'nosyarat'
              Width = 119
            end
            object cgvDetailSyarat1modesyarat: TcxGridDBColumn
              Caption = 'Mode Syarat *'
              DataBinding.FieldName = 'modesyarat'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Sama Dengan'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Tidak Sama Dengan'
                  Value = '1'
                end
                item
                  Description = 'Lebih Besar Sama Dengan'
                  Value = '2'
                end
                item
                  Description = 'Lebih Besar'
                  Value = '3'
                end
                item
                  Description = 'Lebih Kecil Sama Dengan'
                  Value = '4'
                end
                item
                  Description = 'Lebih Kecil'
                  Value = '5'
                end>
              Width = 120
            end
            object cgvDetailSyarat1qtymode: TcxGridDBColumn
              Caption = 'Jumlah *'
              DataBinding.FieldName = 'qtymode'
            end
            object cgvDetailSyarat1urut: TcxGridDBColumn
              Caption = 'Urut *'
              DataBinding.FieldName = 'urut'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
            end
            object cgvDetailSyarat1modeoperator: TcxGridDBColumn
              Caption = 'Operator *'
              DataBinding.FieldName = 'modeoperator'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'And'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Or'
                  Value = '1'
                end>
            end
            object cgvDetailSyarat1Group: TcxGridDBColumn
              Caption = 'Group'
              DataBinding.FieldName = 'agroup'
              Width = 76
            end
          end
          object cgDetailSyarat1Level1: TcxGridLevel
            GridView = cgvDetailSyarat1
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      Height = 454
      Visible = True
      ExplicitLeft = 0
      ExplicitHeight = 454
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 432
        Align = alClient
        TabOrder = 0
        object cgvExplorer: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Jum ,0.;-,0.'
              Kind = skCount
              FieldName = 'pegawaiid'
              DisplayText = 'Jumlah'
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cgvExplorernosyarat: TcxGridDBColumn
            Caption = 'No Syarat'
            DataBinding.FieldName = 'nosyarat'
          end
          object cgvExplorernamasyarat: TcxGridDBColumn
            Caption = 'Nama Syarat'
            DataBinding.FieldName = 'namasyarat'
            Width = 127
          end
          object cgvExplorerqtyhari: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'qtyhari'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvExplorerterlambat: TcxGridDBColumn
            Caption = 'Terlambat'
            DataBinding.FieldName = 'terlambat'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvExplorerkoefisien: TcxGridDBColumn
            Caption = 'Koefisien'
            DataBinding.FieldName = 'koefisien'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvExplorerstatusproses: TcxGridDBColumn
            Caption = 'Status Proses'
            DataBinding.FieldName = 'statusproses'
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
          object cgvExplorerflagexecutequery: TcxGridDBColumn
            Caption = 'Flag Execute Query'
            DataBinding.FieldName = 'flagexecutequery'
            PropertiesClassName = 'TcxCheckBoxProperties'
          end
          object cgvExplorersyntaxquery: TcxGridDBColumn
            Caption = 'Query'
            DataBinding.FieldName = 'syntaxquery'
            PropertiesClassName = 'TcxMemoProperties'
          end
          object cgvExplorergrouping: TcxGridDBColumn
            Caption = 'Grouping'
            DataBinding.FieldName = 'grouping'
          end
          object cgvExplorerflagbayarsesuaitglproses: TcxGridDBColumn
            Caption = 'Flag Bayar Sesuai Proses'
            DataBinding.FieldName = 'flagbayarsesuaitglproses'
            PropertiesClassName = 'TcxCheckBoxProperties'
          end
          object cgvExplorerTERLAMBAT1: TcxGridDBColumn
            DataBinding.FieldName = 'TERLAMBAT1'
          end
          object cgvExplorerTERLAMBAT2: TcxGridDBColumn
            DataBinding.FieldName = 'TERLAMBAT2'
          end
          object cgvExplorerFLAGTERLAMBAT: TcxGridDBColumn
            DataBinding.FieldName = 'FLAGTERLAMBAT'
          end
          object cgvExplorerFLAGSYARAT: TcxGridDBColumn
            DataBinding.FieldName = 'FLAGSYARAT'
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvExplorer
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 456
    Top = 208
    inherited actInsert: TAction
      Enabled = False
    end
    inherited actEdit: TAction
      Enabled = False
    end
    inherited actPost: TAction
      Enabled = False
    end
    inherited actCancel: TAction
      Enabled = False
    end
    inherited actDelete: TAction
      Enabled = False
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 488
    Top = 208
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 520
    Top = 208
  end
  inherited dsDefault: TDataSource
    DataSet = qrySyaratHd
    Left = 456
    Top = 240
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 552
    Top = 208
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 488
    Top = 240
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dsSyaratDt: TDataSource
    DataSet = qrySyaratDt
    Left = 272
    Top = 360
  end
  object dsSyaratDt2: TDataSource
    DataSet = qrySyaratDt2
    Left = 272
    Top = 440
  end
  object qrySyaratHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qrySyaratHdBeforePost
    AfterPost = qrySyaratHdAfterPost
    BeforeDelete = qrySyaratHdBeforeDelete
    AfterDelete = qrySyaratHdAfterDelete
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from syarathd')
    Left = 422
    Top = 240
  end
  object qrySyaratDt: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qrySyaratDtAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qrySyaratDtAfter
    CommandText = 'select * '#13#10'from syaratdt'
    DataSource = dsDefault
    IndexFieldNames = 'NoSyarat'
    MasterFields = 'NoSyarat'
    Parameters = <>
    Left = 238
    Top = 360
  end
  object qrySyaratDt2: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qrySyaratDt2After
    BeforeDelete = qryBeforeDelete
    AfterDelete = qrySyaratDt2After
    CommandText = 'select * '#13#10'from syaratdt2'
    DataSource = dsSyaratDt
    IndexFieldNames = 'NoSyarat;ANo'
    MasterFields = 'NoSyarat;Ano'
    Parameters = <>
    Left = 238
    Top = 440
  end
end
