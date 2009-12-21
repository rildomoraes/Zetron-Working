inherited fmKayuMuatLog: TfmKayuMuatLog
  Caption = 'Kayu Muat Log'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 391
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
        ExplicitLeft = 0
        ExplicitTop = 0
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        inherited pnlTop: TPanel
          ExplicitLeft = 0
          ExplicitTop = 0
          inherited dbeNoMuat: TcxDBTextEdit
            Properties.OnEditValueChanged = dbeNoMuatPropertiesEditValueChanged
          end
        end
        object cgKayuMuat: TcxGrid [1]
          Left = 0
          Top = 81
          Width = 740
          Height = 223
          Align = alClient
          TabOrder = 1
          object cgvKayuMuat: TcxGridDBTableView
            OnDblClick = cgvKayuMuatDblClick
            NavigatorButtons.OnButtonClick = cgvKayuMuatNavigatorButtonsButtonClick
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Append.Visible = False
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = True
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsDefaultDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'TallySheetGradeId'
                Column = cgvKayuMuatTallySheetGradeId
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvKayuMuatTallySheetGradeId: TcxGridDBColumn
              Caption = 'Hasil Grade'
              DataBinding.FieldName = 'TallySheetGradeCode'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevTallySheetGrade
              Properties.KeyFieldNames = 'TallySheetGradeCode'
              Properties.ListFieldItem = cgvPrevTallySheetGradeGradeResultCode
            end
            object cgvKayuMuatTallySheetGradeId2: TcxGridDBColumn
              Caption = 'No Log'
              DataBinding.FieldName = 'TallySheetGradeCode'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevTallySheetGrade
              Properties.KeyFieldNames = 'TallySheetGradeCode'
              Properties.ListFieldItem = cgvPrevTallySheetGradeTallySheetGradeCode
              Width = 73
            end
            object cgvKayuMuatTallySheetGradeId3: TcxGridDBColumn
              Caption = 'M3 (Inv)'
              DataBinding.FieldName = 'TallySheetGradeCode'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevTallySheetGrade
              Properties.KeyFieldNames = 'TallySheetGradeCode'
              Properties.ListFieldItem = cgvPrevTallySheetGradeTotalVolumeInv
              Width = 76
            end
          end
          object cgKayuMuatLevel1: TcxGridLevel
            Caption = 'Muat'
            GridView = cgvKayuMuat
          end
        end
        inherited cxPageControl1: TcxPageControl
          TabOrder = 2
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  inherited qryKayuMuatHd: TADODataSet
    OnNewRecord = qryKayuMuatHdNewRecord
  end
  inherited cxGridViewRepository1: TcxGridViewRepository
    inherited cgvPrevTallySheetGrade: TcxGridDBTableView
      DataController.KeyFieldNames = 'TallySheetGradeCode'
    end
  end
  inherited qryPrevTallySheetGrade: TADODataSet
    DataSource = dsDefault
  end
end
