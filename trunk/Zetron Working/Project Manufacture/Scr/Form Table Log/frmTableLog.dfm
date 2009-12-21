inherited fmTableLog: TfmTableLog
  Caption = 'Tabel Log'
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
        object cgTableLogMaterial: TcxGrid
          Left = 0
          Top = 49
          Width = 217
          Height = 263
          Align = alLeft
          TabOrder = 1
          object cgvTableLogMaterial: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsTableLogMaterial
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvTableLogMaterialTableLogId: TcxGridDBColumn
              DataBinding.FieldName = 'TableLogId'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvTableLogMaterialMaterialId: TcxGridDBColumn
              Caption = 'Material'
              DataBinding.FieldName = 'MaterialId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevMaterial
              Properties.KeyFieldNames = 'MaterialId'
              Properties.ListFieldItem = dmInventory.cgvPrevMaterialMaterialName
            end
          end
          object cgTableLogMaterialLevel1: TcxGridLevel
            GridView = cgvTableLogMaterial
          end
        end
        object cgTableLogDt: TcxGrid
          Left = 217
          Top = 49
          Width = 343
          Height = 263
          Align = alClient
          TabOrder = 2
          object cgvTableLogDt: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsTableLogDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvTableLogDtTableLogId: TcxGridDBColumn
              DataBinding.FieldName = 'TableLogId'
              Visible = False
              VisibleForCustomization = False
            end
            object cgvTableLogDtD: TcxGridDBColumn
              Caption = 'Diameter'
              DataBinding.FieldName = 'D'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvTableLogDtDConstanta: TcxGridDBColumn
              Caption = 'Satuan D'
              DataBinding.FieldName = 'DConstanta'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'M'
                  ImageIndex = 0
                  Value = 1.000000000000000000
                end
                item
                  Description = 'CM'
                  Value = 0.010000000000000000
                end
                item
                  Description = 'MM'
                  Value = 0.001000000000000000
                end>
              Options.Filtering = False
              Options.Grouping = False
            end
            object cgvTableLogDtP: TcxGridDBColumn
              Caption = 'Panjang'
              DataBinding.FieldName = 'P'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvTableLogDtPConstanta: TcxGridDBColumn
              Caption = 'Satuan P'
              DataBinding.FieldName = 'PConstanta'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'M'
                  ImageIndex = 0
                  Value = 1.000000000000000000
                end
                item
                  Description = 'CM'
                  Value = 0.010000000000000000
                end
                item
                  Description = 'MM'
                  Value = 0.001000000000000000
                end>
              Options.Filtering = False
              Options.Grouping = False
            end
            object cgvTableLogDtM3: TcxGridDBColumn
              DataBinding.FieldName = 'M3'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
          end
          object cgTableLogDtLevel1: TcxGridLevel
            GridView = cgvTableLogDt
          end
        end
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 49
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblCode: TLabel
            Left = 8
            Top = 6
            Width = 58
            Height = 13
            Caption = 'Nama Tabel'
            Transparent = True
          end
          object Label1: TLabel
            Left = 8
            Top = 30
            Width = 46
            Height = 13
            Caption = 'Material'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label2: TLabel
            Left = 231
            Top = 30
            Width = 121
            Height = 13
            Caption = 'Perhitungan Kubikasi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object dbeTableLogName: TcxDBTextEdit
            Left = 74
            Top = 4
            DataBinding.DataField = 'TableLogName'
            DataBinding.DataSource = dsDefault
            TabOrder = 0
            Width = 207
          end
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
          OptionsView.GroupByBox = False
          object cgvPrevDisplayTableLogId: TcxGridDBColumn
            Caption = 'Id'
            DataBinding.FieldName = 'TableLogId'
            Visible = False
          end
          object cgvPrevDisplayTableLogName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'TableLogName'
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
    DataSet = dmTimber.qryTableLogHd
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  object dsTableLogMaterial: TDataSource [6]
    DataSet = qryTableLogMaterial
    Left = 168
    Top = 144
  end
  object dsTableLogDt: TDataSource [7]
    DataSet = qryTableLogDt
    Left = 168
    Top = 176
  end
  object qryTableLogMaterial: TADOQuery [8]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryTableLogMaterialBeforeInsert
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'TableLogId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from TableLogMaterial'
      'where TableLogId = :TableLogId')
    Left = 136
    Top = 144
  end
  object qryTableLogDt: TADOQuery [9]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryTableLogDtBeforeInsert
    OnNewRecord = qryTableLogDtNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'TableLogId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from TableLogDt'
      'where TableLogId = :TableLogId')
    Left = 136
    Top = 176
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [10]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [11]
  end
end
