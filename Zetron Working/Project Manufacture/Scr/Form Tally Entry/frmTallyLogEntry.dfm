inherited fmTallyLogEntry: TfmTallyLogEntry
  Caption = 'fmTallyLogEntry'
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
      object cgvEntryColumn1: TcxGridDBColumn
        Caption = 'No'
        PropertiesClassName = 'TcxSpinEditProperties'
        Width = 30
      end
      object cgvEntryColumn2: TcxGridDBColumn
        Caption = 'D1'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvEntryColumn3: TcxGridDBColumn
        Caption = 'D2'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvEntryColumn4: TcxGridDBColumn
        Caption = 'DRata'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvEntryColumn5: TcxGridDBColumn
        Caption = 'Qty'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvEntryColumn7: TcxGridDBColumn
        Caption = 'M3'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object cgEntryItemBatchLevel1: TcxGridLevel
      Caption = 'Square / Sawn Timber'
      GridView = cgvEntry
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Filename = 'Setting Tally Log Entry.cfg'
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Filename = 'Setting Tally Log Entry.cfg'
  end
end
