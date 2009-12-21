inherited fmRoughSize: TfmRoughSize
  Caption = 'Rough Size'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 316
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
        object lblCode: TLabel
          Left = 8
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object Label1: TLabel
          Left = 8
          Top = 42
          Width = 30
          Height = 13
          Caption = 'Tebal '
          Transparent = True
        end
        object Label2: TLabel
          Left = 152
          Top = 42
          Width = 16
          Height = 13
          Caption = 's/d'
          Transparent = True
        end
        object Label3: TLabel
          Left = 152
          Top = 60
          Width = 16
          Height = 13
          Caption = 's/d'
          Transparent = True
        end
        object Label4: TLabel
          Left = 8
          Top = 60
          Width = 39
          Height = 13
          Caption = 'Panjang'
          Transparent = True
        end
        object Label5: TLabel
          Left = 8
          Top = 6
          Width = 37
          Height = 13
          Caption = 'Material'
          Transparent = True
        end
        object dbeMin_T: TcxDBCalcEdit
          Left = 57
          Top = 40
          DataBinding.DataField = 'Min_T'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 90
        end
        object dbeMax_T: TcxDBCalcEdit
          Left = 174
          Top = 40
          DataBinding.DataField = 'Max_T'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 90
        end
        object dbeMin_P: TcxDBCalcEdit
          Left = 57
          Top = 58
          DataBinding.DataField = 'Min_P'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 90
        end
        object dbeMax_P: TcxDBCalcEdit
          Left = 174
          Top = 58
          DataBinding.DataField = 'Max_P'
          DataBinding.DataSource = dsDefault
          TabOrder = 5
          Width = 90
        end
        object dblcMaterialCategoryId: TcxDBExtLookupComboBox
          Left = 57
          Top = 4
          DataBinding.DataField = 'MaterialId'
          DataBinding.DataSource = dsDefault
          TabOrder = 0
          Width = 272
        end
        object dbeRoughSizeName: TcxDBTextEdit
          Left = 57
          Top = 22
          DataBinding.DataField = 'RoughSizeName'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 207
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevDisplayRoughSizeId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'RoughSizeId'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevDisplayMaterialCategoryId: TcxGridDBColumn
            Caption = 'Material'
            DataBinding.FieldName = 'MaterialId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
            GroupIndex = 0
          end
          object cgvPrevDisplayRoughSizeName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'RoughSizeName'
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
    Left = 232
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
    Left = 200
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmTimber.qryRoughSize
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [6]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [7]
  end
end
