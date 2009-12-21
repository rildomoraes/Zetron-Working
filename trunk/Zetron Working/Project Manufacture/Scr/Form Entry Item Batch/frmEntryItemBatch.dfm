inherited fmEntryItemBatch: TfmEntryItemBatch
  Caption = 'Entry Item Batch'
  ClientHeight = 471
  ClientWidth = 731
  ExplicitWidth = 739
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 731
    ExplicitWidth = 731
    object btnProcess: TcxButton
      Left = 107
      Top = 1
      Width = 48
      Height = 48
      Action = actProcess
      Align = alLeft
      TabOrder = 2
      Layout = blGlyphTop
      Spacing = 0
    end
  end
  object pnlTop: TPanel [1]
    Left = 0
    Top = 50
    Width = 731
    Height = 63
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object lblTimberShape: TLabel
      Left = 7
      Top = 6
      Width = 33
      Height = 13
      Caption = 'Bentuk'
      Transparent = True
    end
    object lblTimberMaterial: TLabel
      Left = 7
      Top = 24
      Width = 24
      Height = 13
      Caption = 'Jenis'
      Transparent = True
    end
    object lblTimberCondition: TLabel
      Left = 7
      Top = 42
      Width = 75
      Height = 13
      Caption = 'Kondisi (AD/KD)'
      Transparent = True
    end
    object dblcMaterial: TcxDBExtLookupComboBox
      Left = 88
      Top = 21
      BeepOnEnter = False
      TabOrder = 0
      Width = 202
    end
    object dblcCondition: TcxDBExtLookupComboBox
      Left = 88
      Top = 39
      BeepOnEnter = False
      TabOrder = 1
      Width = 145
    end
    object dbeShape: TcxDBExtLookupComboBox
      Left = 88
      Top = 3
      BeepOnEnter = False
      TabOrder = 2
      Width = 202
    end
  end
  object cgEntryItemBatch: TcxGrid [2]
    Left = 0
    Top = 113
    Width = 731
    Height = 358
    Align = alClient
    TabOrder = 2
    RootLevelOptions.DetailTabsPosition = dtpTop
    object cgvEntrySquare: TcxGridBandedTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cgvEntrySquareKubikasiCutting
        end
        item
          Kind = skSum
          Column = cgvEntrySquareKubikasiInvoice
        end>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.Navigator = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Barang'
        end
        item
          Caption = 'Cutting'
        end
        item
          Caption = 'Invoice'
        end
        item
        end>
      object cgvEntrySquareBatchId: TcxGridBandedColumn
        Caption = 'No Batch'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvEntrySquareGrade: TcxGridBandedColumn
        Caption = 'Grade'
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvEntrySquareTCutting: TcxGridBandedColumn
        Caption = 'T Cut'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvEntrySquareLCutting: TcxGridBandedColumn
        Caption = 'L Cut'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvEntrySquarePCutting: TcxGridBandedColumn
        Caption = 'P Cut'
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cgvEntrySquareKubikasiCutting: TcxGridBandedColumn
        Caption = 'M3 Cut'
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cgvEntrySquareTInvoice: TcxGridBandedColumn
        Caption = 'T Inv'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvEntrySquareLInvoice: TcxGridBandedColumn
        Caption = 'L Inv'
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvEntrySquarePInvoice: TcxGridBandedColumn
        Caption = 'P Inv'
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cgvEntrySquareKubikasiInvoice: TcxGridBandedColumn
        Caption = 'M3 Inv'
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cgvEntrySquareQty: TcxGridBandedColumn
        Caption = 'Qty'
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object cgvEntryLog: TcxGridTableView
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
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cgvEntryLogKubikasiLog
        end>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.Navigator = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cgvEntryLogBatchId: TcxGridColumn
        Caption = 'Batch No'
      end
      object cgvEntryLogGrade: TcxGridColumn
        Caption = ' Grade'
      end
      object cgvEntryLogD1: TcxGridColumn
        Caption = 'D1'
      end
      object cgvEntryLogD2: TcxGridColumn
        Caption = 'D2'
      end
      object cgvEntryLogD3: TcxGridColumn
        Caption = 'D3'
        Visible = False
      end
      object cgvEntryLogD4: TcxGridColumn
        Caption = 'D4'
        Visible = False
      end
      object cgvEntryLogDInv: TcxGridColumn
        Caption = 'D Rata2'
      end
      object cgvEntryLogPInv: TcxGridColumn
        Caption = 'P Log'
      end
      object cgvEntryLogKubikasiLog: TcxGridColumn
        Caption = 'M3'
      end
    end
    object cgEntryItemBatchLevel1: TcxGridLevel
      Caption = 'Square / Sawn Timber'
      GridView = cgvEntrySquare
    end
    object cgEntryItemBatchLevel2: TcxGridLevel
      Caption = 'Log'
      GridView = cgvEntryLog
    end
  end
  inherited ActionList1: TActionList
    object actProcess: TAction
      Caption = 'Process'
      ImageIndex = 0
    end
  end
end
