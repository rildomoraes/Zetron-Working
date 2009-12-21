inherited fmTallySheetGrade: TfmTallySheetGrade
  Caption = 'Tally Sheet Grade'
  ClientHeight = 359
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Height = 309
    ExplicitHeight = 309
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 309
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 309
      ExplicitHeight = 309
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 309
        ExplicitHeight = 309
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 309
        ExplicitHeight = 309
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblIdSupplies: TLabel
          Left = 7
          Top = 6
          Width = 102
          Height = 13
          Caption = 'No Tally Sheet Grade'
          Transparent = True
        end
        object Label1: TLabel
          Left = 7
          Top = 25
          Width = 72
          Height = 13
          Caption = 'No Hasil Grade'
          Transparent = True
        end
        object Label2: TLabel
          Left = 7
          Top = 63
          Width = 54
          Height = 13
          Caption = 'Qty Invoice'
          Transparent = True
        end
        object Label3: TLabel
          Left = 7
          Top = 44
          Width = 24
          Height = 13
          Caption = 'Muat'
          Transparent = True
        end
        object Label5: TLabel
          Left = 7
          Top = 81
          Width = 73
          Height = 13
          Caption = 'Volume Invoice'
          Transparent = True
        end
        object Label7: TLabel
          Left = 222
          Top = 66
          Width = 52
          Height = 13
          Caption = 'Qty Cutting'
          Transparent = True
        end
        object Label9: TLabel
          Left = 222
          Top = 82
          Width = 68
          Height = 13
          Caption = 'VolumeCutting'
          Transparent = True
        end
        object dbeTallySheetCode: TcxDBTextEdit
          Left = 116
          Top = 5
          BeepOnEnter = False
          DataBinding.DataField = 'TallySheetGradeCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 241
        end
        object dbeGradeResultId: TcxDBTextEdit
          Left = 116
          Top = 23
          BeepOnEnter = False
          DataBinding.DataField = 'GradeResultCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 241
        end
        object cbFlagMuat: TcxDBCheckBox
          Left = 114
          Top = 43
          Caption = 'Telah di muat'
          DataBinding.DataField = 'FlagMuat'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          TabOrder = 2
          Transparent = True
          Width = 121
        end
        object ceTotalQtyInvoice: TcxDBCalcEdit
          Left = 116
          Top = 61
          BeepOnEnter = False
          DataBinding.DataField = 'TotalQtyInv'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 86
        end
        object ceTotalVolumeInvoice: TcxDBCalcEdit
          Left = 116
          Top = 79
          BeepOnEnter = False
          DataBinding.DataField = 'TotalVolumeInv'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 86
        end
        object ceTotalQtyCutting: TcxDBCalcEdit
          Left = 296
          Top = 61
          BeepOnEnter = False
          DataBinding.DataField = 'TotalQtyCut'
          DataBinding.DataSource = dsDefault
          TabOrder = 5
          Width = 86
        end
        object ceTotalVolumeCutting: TcxDBCalcEdit
          Left = 296
          Top = 79
          BeepOnEnter = False
          DataBinding.DataField = 'TotalVolumeCut'
          DataBinding.DataSource = dsDefault
          TabOrder = 6
          Width = 86
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 309
      ExplicitLeft = -40
      ExplicitTop = 5
      ExplicitHeight = 309
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = qryTallySheetGrade
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  object qryTallySheetGrade: TADODataSet [6]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    OnNewRecord = qryTallySheetGradeNewRecord
    CommandText = 'select * '#13#10'from TallySheetGrade'
    Parameters = <>
    Left = 128
    Top = 112
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [7]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [8]
  end
end
