inherited fmMasterGaji: TfmMasterGaji
  Caption = 'Form Master Gaji'
  ClientHeight = 563
  ClientWidth = 636
  ExplicitWidth = 644
  ExplicitHeight = 597
  DesignSize = (
    636
    563)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 636
    ExplicitWidth = 636
  end
  inherited dxDockSite1: TdxDockSite
    Width = 636
    Height = 513
    ExplicitWidth = 636
    ExplicitHeight = 513
    DockType = 0
    OriginalWidth = 636
    OriginalHeight = 513
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 608
      Height = 513
      ExplicitWidth = 608
      ExplicitHeight = 513
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 608
        Height = 513
        ExplicitWidth = 608
        ExplicitHeight = 513
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 608
        Height = 513
        ExplicitWidth = 608
        ExplicitHeight = 513
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Splitter1: TSplitter
          Left = 0
          Top = 233
          Width = 604
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitTop = 225
          ExplicitWidth = 160
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 604
          Height = 73
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 9
            Top = 6
            Width = 60
            Height = 13
            Caption = 'Kode Group '
            Transparent = True
          end
          object Label2: TLabel
            Left = 9
            Top = 24
            Width = 63
            Height = 13
            Caption = 'Nama Group '
            Transparent = True
          end
          object Label9: TLabel
            Left = 146
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
          object Label3: TLabel
            Left = 279
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
          object dbeKodeGroupGaji: TcxDBTextEdit
            Left = 75
            Top = 3
            BeepOnEnter = False
            DataBinding.DataField = 'kodegroupgaji'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 65
          end
          object dbeNamaGroupGaji: TcxDBTextEdit
            Left = 75
            Top = 21
            BeepOnEnter = False
            DataBinding.DataField = 'namagroupgaji'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 198
          end
          object btnGetId: TcxButton
            Left = 157
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
            TabOrder = 2
            TabStop = False
            OnClick = btnGetIdClick
          end
          object BCopy: TcxButton
            Left = 306
            Top = 6
            Width = 70
            Height = 59
            Action = ActCopy
            TabOrder = 3
          end
          object BOK: TcxButton
            Left = 495
            Top = 6
            Width = 70
            Height = 61
            Action = ActOK
            TabOrder = 4
            Visible = False
          end
          object lcbGroupGaji2: TcxExtLookupComboBox
            Left = 382
            Top = 6
            Properties.View = cgvGroupGaji2
            Properties.KeyFieldNames = 'kodegroupgaji'
            Properties.ListFieldItem = cgvGroupGaji2namagroupgaji
            TabOrder = 5
            Visible = False
            Width = 107
          end
        end
        object cgSettingGajiSyarat: TcxGrid
          Left = 0
          Top = 236
          Width = 604
          Height = 273
          Align = alClient
          TabOrder = 1
          ExplicitLeft = -1
          ExplicitTop = 235
          object cgvSettingGajiSyarat: TcxGridDBTableView
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
            DataController.DataSource = dsSettingGajiSyarat
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            object cgvSettingGajiSyaratkodegroupgaji: TcxGridDBColumn
              Caption = 'Kode Group Gaji *'
              DataBinding.FieldName = 'kodegroupgaji'
              Visible = False
            end
            object cgvSettingGajiSyaratpayrolltype: TcxGridDBColumn
              Caption = 'Komponen *'
              DataBinding.FieldName = 'payrolltype'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPrevPayrollType
              Properties.KeyFieldNames = 'payrolltype'
              Properties.ListFieldItem = dmGeneral.cgvPrevPayrollTypepayrolltypename
              Width = 71
            end
            object cgvSettingGajiSyaratkoefisien: TcxGridDBColumn
              Caption = 'Koefisien'
              DataBinding.FieldName = 'koefisien'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 95
            end
            object cgvSettingGajiSyaratnosyarat: TcxGridDBColumn
              Caption = 'Syarat *'
              DataBinding.FieldName = 'nosyarat'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvSyaratHd
              Properties.KeyFieldNames = 'nosyarat'
              Properties.ListFieldItem = dmGeneral.cgvSyaratHdnosyarat
              Width = 111
            end
          end
          object cgvSyaratHd: TcxGridDBTableView
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
            DataController.DetailKeyFieldNames = 'nosyarat'
            DataController.KeyFieldNames = 'nosyarat'
            DataController.MasterKeyFieldNames = 'nosyarat'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvSyaratHdnosyarat: TcxGridDBColumn
              Caption = 'No Syarat'
              DataBinding.FieldName = 'nosyarat'
              Visible = False
            end
            object cgvSyaratHdnamasyarat: TcxGridDBColumn
              Caption = 'Nama Syarat'
              DataBinding.FieldName = 'namasyarat'
            end
            object cgvSyaratHdqtyhari: TcxGridDBColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'qtyhari'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvSyaratHdterlambat: TcxGridDBColumn
              Caption = 'Terlambat'
              DataBinding.FieldName = 'terlambat'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvSyaratHdkoefisien: TcxGridDBColumn
              Caption = 'Koefisien'
              DataBinding.FieldName = 'koefisien'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvSyaratHdstatusproses: TcxGridDBColumn
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
            object cgvSyaratHdflagexecutequery: TcxGridDBColumn
              Caption = 'Flag Execute Query'
              DataBinding.FieldName = 'flagexecutequery'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
            end
            object cgvSyaratHdsyntaxquery: TcxGridDBColumn
              Caption = 'Query'
              DataBinding.FieldName = 'syntaxquery'
              PropertiesClassName = 'TcxMemoProperties'
            end
            object cgvSyaratHdgrouping: TcxGridDBColumn
              Caption = 'Grouping'
              DataBinding.FieldName = 'grouping'
            end
            object cgvSyaratHdflagbayarsesuaitglproses: TcxGridDBColumn
              Caption = 'Flag Bayar Langsung'
              DataBinding.FieldName = 'flagbayarsesuaitglproses'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
            end
          end
          object cgvSyaratDt: TcxGridDBTableView
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
            DataController.DetailKeyFieldNames = 'nosyarat'
            DataController.KeyFieldNames = 'nosyarat'
            DataController.MasterKeyFieldNames = 'nosyarat'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvSyaratDtnosyarat: TcxGridDBColumn
              Caption = 'No Syarat'
              DataBinding.FieldName = 'nosyarat'
              Visible = False
            end
            object cgvSyaratDtno: TcxGridDBColumn
              Caption = 'No'
              DataBinding.FieldName = 'no'
            end
            object cgvSyaratDtmodesyarat: TcxGridDBColumn
              Caption = 'Mode Syarat'
              DataBinding.FieldName = 'modesyarat'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Harus Ada'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Tidak Boleh Ada'
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
            end
            object cgvSyaratDtqtymode: TcxGridDBColumn
              Caption = 'Jumlah'
              DataBinding.FieldName = 'qtymode'
            end
            object cgvSyaratDturut: TcxGridDBColumn
              Caption = 'Urut'
              DataBinding.FieldName = 'urut'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
            end
            object cgvSyaratDtmodeoperator: TcxGridDBColumn
              Caption = 'Mode Operator'
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
            object cgvSyaratDtGroup: TcxGridDBColumn
              DataBinding.FieldName = 'Group'
            end
          end
          object cgvSyaratDt2: TcxGridDBTableView
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
            DataController.DetailKeyFieldNames = 'nosyarat;no'
            DataController.KeyFieldNames = 'nosyarat;no'
            DataController.MasterKeyFieldNames = 'nosyarat;no'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvSyaratDt2nosyarat: TcxGridDBColumn
              Caption = 'No Syarat'
              DataBinding.FieldName = 'nosyarat'
              Visible = False
            end
            object cgvSyaratDt2no: TcxGridDBColumn
              Caption = 'No'
              DataBinding.FieldName = 'no'
              Visible = False
            end
            object cgvSyaratDt2kodeabsen: TcxGridDBColumn
              Caption = 'Kode Absen'
              DataBinding.FieldName = 'kodeabsen'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPrevKodeAbsen
              Properties.KeyFieldNames = 'kodeabsen'
              Properties.ListFieldItem = dmGeneral.cgvPrevKodeAbsenketerangan
            end
          end
          object cgSettingGajiSyaratLevel1: TcxGridLevel
            GridView = cgvSettingGajiSyarat
          end
        end
        object cgSettingGajiNominal: TcxGrid
          Left = 0
          Top = 73
          Width = 604
          Height = 160
          Align = alTop
          TabOrder = 2
          object cgvSettingGajiNominal: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.Refresh.Visible = True
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsSettingGajiNominal
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            object cgvSettingGajiNominalkodegroupgaji: TcxGridDBColumn
              Caption = 'Kode Group Gaji *'
              DataBinding.FieldName = 'kodegroupgaji'
              Visible = False
              Width = 83
            end
            object cgvSettingGajiNominaltglberlaku: TcxGridDBColumn
              Caption = 'Tgl Berlaku *'
              DataBinding.FieldName = 'tglberlaku'
              PropertiesClassName = 'TcxDateEditProperties'
              Width = 99
            end
            object cgvSettingGajiNominalpayrolltype: TcxGridDBColumn
              Caption = 'Tipe Payroll *'
              DataBinding.FieldName = 'payrolltype'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPrevPayrollType
              Properties.KeyFieldNames = 'payrolltype'
              Properties.ListFieldItem = dmGeneral.cgvPrevPayrollTypepayrolltypename
              Width = 78
            end
            object cgvSettingGajiNominalnominal: TcxGridDBColumn
              Caption = 'Nominal *'
              DataBinding.FieldName = 'nominal'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 102
            end
          end
          object cgvGroupGaji2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsGroupGaji2
            DataController.KeyFieldNames = 'kodegroupgaji'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cgvGroupGaji2kodegroupgaji: TcxGridDBColumn
              Caption = 'Kode Group Gaji'
              DataBinding.FieldName = 'kodegroupgaji'
            end
            object cgvGroupGaji2namagroupgaji: TcxGridDBColumn
              Caption = 'Nama Group Gaji'
              DataBinding.FieldName = 'namagroupgaji'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cgvSettingGajiNominal
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 0
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
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
          object cgvExplorerkodegroupgaji: TcxGridDBColumn
            Caption = 'Kode Group Gaji'
            DataBinding.FieldName = 'kodegroupgaji'
            Width = 131
          end
          object cgvExplorernamagroupgaji: TcxGridDBColumn
            Caption = 'Nama Group Gaji'
            DataBinding.FieldName = 'namagroupgaji'
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvExplorer
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 448
    Top = 192
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
    object ActCopy: TAction
      Caption = 'Copy'
      ImageIndex = 13
      OnExecute = ActCopyExecute
    end
    object ActOK: TAction
      Caption = 'OK'
      ImageIndex = 8
      OnExecute = ActOKExecute
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 480
    Top = 192
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 512
    Top = 192
  end
  inherited dsDefault: TDataSource
    DataSet = qryGroupGaji
    Left = 448
    Top = 224
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 544
    Top = 192
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 480
    Top = 224
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dsSettingGajiNominal: TDataSource
    DataSet = qrySettingGajiNominal
    Left = 264
    Top = 192
  end
  object dsSettingGajiSyarat: TDataSource
    DataSet = qrySettingGajiSyarat
    Left = 272
    Top = 384
  end
  object dsGroupGaji2: TDataSource
    DataSet = qryGroupGaji2
    Left = 451
    Top = 88
  end
  object qryCopyGroupGaji: TADOQuery
    Connection = dmGlobal.conGlobal
    BeforePost = qryBeforePost
    AfterPost = qryCopyGroupGajiAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryCopyGroupGajiAfter
    Parameters = <
      item
        Name = 'GroupGajiAsal'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'GroupGajiTujuan'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'exec spcopygroupgaji :GroupGajiAsal,:GroupGajiTujuan')
    Left = 488
    Top = 88
  end
  object qrySettingGajiSyarat: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qrySettingGajiSyaratAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qrySettingGajiSyaratAfter
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'kodegroupgaji'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from settinggajisyarat'
      'where kodegroupgaji=:kodegroupgaji')
    Left = 236
    Top = 384
  end
  object qrySettingGajiNominal: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qrySettingGajiNominalAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qrySettingGajiNominalAfter
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'kodegroupgaji'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from settinggajinominal'
      'where kodegroupgaji=:kodegroupgaji')
    Left = 228
    Top = 192
  end
  object qryGroupGaji: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryGroupGajiBeforePost
    AfterPost = qryGroupGajiAfterPost
    BeforeDelete = qryGroupGajiBeforeDelete
    AfterDelete = qryGroupGajiAfterDelete
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from groupgaji')
    Left = 416
    Top = 224
  end
  object qryGroupGaji2: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryGroupGaji2After
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryGroupGaji2After
    Parameters = <
      item
        Name = 'kodegroupgaji'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from groupgaji'
      'where kodegroupgaji<>:kodegroupgaji')
    Left = 416
    Top = 88
  end
end
