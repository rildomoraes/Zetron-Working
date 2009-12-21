inherited fmLibur: TfmLibur
  Caption = 'Libur'
  ExplicitHeight = 400
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Top = 75
    Height = 291
    ExplicitTop = 75
    ExplicitHeight = 291
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 291
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 291
      ExplicitHeight = 291
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 291
        ExplicitHeight = 291
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 291
        ExplicitHeight = 291
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object cgLibur1: TcxGrid
          Left = 0
          Top = 0
          Width = 560
          Height = 287
          Align = alClient
          TabOrder = 0
          object cgvLibur1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsDefault
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.InfoText = 'Klik Di sini untuk menambah data'
            NewItemRow.Visible = True
            OptionsData.Appending = True
            object cgvLibur1tgl: TcxGridDBColumn
              Caption = 'Tanggal *'
              DataBinding.FieldName = 'tgl'
            end
            object cgvLibur1keterangan: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
            end
          end
          object cgLibur1Level1: TcxGridLevel
            GridView = cgvLibur1
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgLibur: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 0
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvLibur: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvLiburtgl: TcxGridDBColumn
            Caption = 'Tgl'
            DataBinding.FieldName = 'tgl'
          end
          object cgvLiburketerangan: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
          end
        end
        object cgLiburLevel1: TcxGridLevel
          GridView = cgvLibur
        end
      end
    end
  end
  object pnlCustom: TPanel [2]
    Left = 0
    Top = 50
    Width = 592
    Height = 25
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 7
      Top = 5
      Width = 36
      Height = 13
      Caption = 'Periode'
      Transparent = True
    end
    object cbMonth: TcxComboBox
      Left = 47
      Top = 3
      TabOrder = 0
      Text = 'cbMonth'
      Width = 80
    end
    object cbYear: TcxComboBox
      Left = 126
      Top = 3
      TabOrder = 1
      Text = 'cbYear'
      Width = 70
    end
  end
  inherited ActionList1: TActionList
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
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryLibur
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
