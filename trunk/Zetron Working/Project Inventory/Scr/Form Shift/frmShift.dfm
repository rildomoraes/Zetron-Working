inherited fmShift: TfmShift
  Caption = 'Shift Kerja'
  ExplicitWidth = 600
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
        object lblCategoryId: TLabel
          Left = 8
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Kode '
          Transparent = True
        end
        object lblCategoryName: TLabel
          Left = 8
          Top = 26
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object lblEngineGroup: TLabel
          Left = 8
          Top = 44
          Width = 48
          Height = 13
          Caption = 'Start Time'
          Transparent = True
        end
        object Label1: TLabel
          Left = 8
          Top = 62
          Width = 45
          Height = 13
          Caption = 'End Time'
          Transparent = True
        end
        object dbeShiftCode: TcxDBTextEdit
          Left = 74
          Top = 5
          DataBinding.DataField = 'shiftcode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 119
        end
        object dbeShiftName: TcxDBTextEdit
          Left = 74
          Top = 23
          DataBinding.DataField = 'shiftname'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 185
        end
        object dbeStartTime: TcxDBTimeEdit
          Left = 74
          Top = 41
          DataBinding.DataField = 'starttime'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 71
        end
        object dbeEndTime: TcxDBTimeEdit
          Left = 74
          Top = 59
          DataBinding.DataField = 'endtime'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 71
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
        Height = 290
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
          object cgvPrevDisplayshiftcode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'shiftcode'
          end
          object cgvPrevDisplayshiftname: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'shiftname'
          end
          object cgvPrevDisplaystarttime: TcxGridDBColumn
            Caption = 'Jam Mulai'
            DataBinding.FieldName = 'starttime'
            Visible = False
          end
          object cgvPrevDisplayendtime: TcxGridDBColumn
            Caption = 'Jam Akhir'
            DataBinding.FieldName = 'endtime'
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dmInventory.qryShift
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
