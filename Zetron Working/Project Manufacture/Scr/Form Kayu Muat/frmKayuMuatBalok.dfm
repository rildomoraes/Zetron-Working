inherited fmKayuMuatBalok: TfmKayuMuatBalok
  Caption = 'Kayu Muat Sawn Timber / Square'
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
        object cgKayuMuat: TcxGrid [0]
          Left = 0
          Top = 81
          Width = 740
          Height = 223
          Align = alClient
          TabOrder = 0
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
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
                Position = spFooter
                FieldName = 'totalqtycut'
                Column = cgvKayuMuattotalqtycut
              end
              item
                Kind = skSum
                Position = spFooter
                FieldName = 'totalqtyinv'
                Column = cgvKayuMuattotalqtyinv
              end
              item
                Kind = skSum
                Position = spFooter
                FieldName = 'totalvolumecut'
                Column = cgvKayuMuattotalvolumecut
              end
              item
                Kind = skSum
                Position = spFooter
                FieldName = 'totalvolumeinv'
                Column = cgvKayuMuattotalvolumeinv
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'TallySheetGradeId'
                Column = cgvKayuMuatTallySheetGradeId
              end
              item
                Kind = skSum
                FieldName = 'totalqtycut'
                Column = cgvKayuMuattotalqtycut
              end
              item
                Kind = skSum
                FieldName = 'totalqtyinv'
                Column = cgvKayuMuattotalqtyinv
              end
              item
                Kind = skSum
                FieldName = 'totalvolumecut'
                Column = cgvKayuMuattotalvolumecut
              end
              item
                Kind = skSum
                FieldName = 'totalvolumeinv'
                Column = cgvKayuMuattotalvolumeinv
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupFooters = gfVisibleWhenExpanded
            object cgvKayuMuatTallySheetGradeId: TcxGridDBColumn
              Caption = 'Hasil Grade'
              DataBinding.FieldName = 'TallySheetGradeCode'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevTallySheetGrade
              Properties.KeyFieldNames = 'TallySheetGradeCode'
              Properties.ListFieldItem = cgvPrevTallySheetGradeGradeResultCode
            end
            object cgvKayuMuatTallySheetGradeId2: TcxGridDBColumn
              Caption = 'No Tally'
              DataBinding.FieldName = 'TallySheetGradeCode'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevTallySheetGrade
              Properties.KeyFieldNames = 'TallySheetGradeCode'
              Properties.ListFieldItem = cgvPrevTallySheetGradeTallySheetGradeCode
            end
            object cgvKayuMuatKayuMuatId: TcxGridDBColumn
              DataBinding.FieldName = 'KayuMuatId'
              Visible = False
            end
            object cgvKayuMuattotalvolumecut: TcxGridDBColumn
              Caption = 'M3 (Cut)'
              DataBinding.FieldName = 'totalvolumecut'
            end
            object cgvKayuMuattotalvolumeinv: TcxGridDBColumn
              Caption = 'M3 (Inv)'
              DataBinding.FieldName = 'totalvolumeinv'
            end
            object cgvKayuMuattotalqtycut: TcxGridDBColumn
              Caption = 'Qty (Cut)'
              DataBinding.FieldName = 'totalqtycut'
            end
            object cgvKayuMuattotalqtyinv: TcxGridDBColumn
              Caption = 'Qty (Inv)'
              DataBinding.FieldName = 'totalqtyinv'
            end
          end
          object cgKayuMuatLevel1: TcxGridLevel
            Caption = 'Muat'
            GridView = cgvKayuMuat
          end
        end
        inherited pnlTop: TPanel
          TabOrder = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          inherited dbeNoMuat: TcxDBTextEdit
            Properties.OnEditValueChanged = dbeNoMuatPropertiesEditValueChanged
          end
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
    Parameters = <
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = 39692d
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = 39692d
      end
      item
        Name = 'StatusKayuMuat'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = #39#39
      end>
  end
  inherited cxGridViewRepository1: TcxGridViewRepository
    inherited cgvPrevTallySheetGrade: TcxGridDBTableView
      DataController.KeyFieldNames = 'TallySheetGradeCode'
    end
  end
  inherited qryKayuMuatDt: TADOQuery
    AfterPost = qryKayuMuatDtAfterPost
    BeforeDelete = qryKayuMuatDtBeforeDelete
  end
  object qryUpdateTallySheetGrade: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tallysheetgradeid'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'update tallysheetgrade '
      'set flagmuat='#39'0'#39' '
      'where tallysheetgradeid=:tallysheetgradeid')
    Left = 136
    Top = 240
  end
end
