inherited fmTallySquareEntry: TfmTallySquareEntry
  Caption = 'fmTallySquareEntry'
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
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvEntryTallySheetCode: TcxGridDBColumn
        DataBinding.FieldName = 'TallySheetCode'
      end
      object cgvEntryNo: TcxGridDBColumn
        DataBinding.FieldName = 'No'
        PropertiesClassName = 'TcxSpinEditProperties'
        Width = 30
      end
      object cgvEntryT: TcxGridDBColumn
        DataBinding.FieldName = 'T'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvEntryL: TcxGridDBColumn
        DataBinding.FieldName = 'L'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvEntryP: TcxGridDBColumn
        DataBinding.FieldName = 'P'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvEntryQty: TcxGridDBColumn
        DataBinding.FieldName = 'Qty'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvEntryColumn6: TcxGridDBColumn
        Caption = 'M2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
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
    Filename = 'Setting Tally Square Entry.cfg'
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Filename = 'Setting Tally Square Entry.cfg'
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from TallySheetDt')
    Left = 136
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 200
    Top = 112
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 168
    Top = 112
  end
end
