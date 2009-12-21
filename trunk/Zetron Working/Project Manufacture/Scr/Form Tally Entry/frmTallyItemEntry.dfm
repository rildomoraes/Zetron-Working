inherited fmTallyItemEntry: TfmTallyItemEntry
  Caption = 'fmTallyItemEntry'
  PixelsPerInch = 96
  TextHeight = 13
  object cgEntryItemBatch: TcxGrid [2]
    Left = 0
    Top = 100
    Width = 553
    Height = 295
    Align = alClient
    TabOrder = 2
    ExplicitTop = 105
    ExplicitHeight = 290
    object cgvEntry: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvEntryColumn2: TcxGridDBColumn
        Caption = 'No Tally'
      end
      object cgvEntryColumn5: TcxGridDBColumn
        Caption = 'Qty'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object cgEntryItemBatchLevel1: TcxGridLevel
      Caption = 'Square / Sawn Timber'
      GridView = cgvEntry
    end
  end
end
