inherited fmHasilGradeLog: TfmHasilGradeLog
  Caption = 'Hasil Grade Log'
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
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlLog: TPanel
          Left = 0
          Top = 105
          Width = 740
          Height = 282
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Label4: TLabel
            Left = 0
            Top = 269
            Width = 740
            Height = 13
            Align = alBottom
            Caption = '* Satuan diameter dan panjang dalam centimeter.'
            ExplicitWidth = 232
          end
          object cgHasilGradeLog: TcxGrid
            Left = 0
            Top = 0
            Width = 740
            Height = 269
            Align = alClient
            TabOrder = 0
            object cgvHasilGradeLog: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.Edit.Visible = True
              NavigatorButtons.SaveBookmark.Visible = True
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.DataSource = dsGradeResultInvoiceDt
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.GroupByBox = False
              object cgvHasilGradeLogGradeResultCode: TcxGridDBColumn
                DataBinding.FieldName = 'GradeResultCode'
                Visible = False
                VisibleForCustomization = False
              end
              object cgvHasilGradeLogNo: TcxGridDBColumn
                DataBinding.FieldName = 'No'
                Width = 30
              end
              object cgvHasilGradeLogPaletId: TcxGridDBColumn
                Caption = 'No Log'
                DataBinding.FieldName = 'PaletId'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.View = cgvPrevTallySheetGrade
                Properties.KeyFieldNames = 'TallySheetGradeId'
                Properties.ListFieldItem = cgvTallySheetGradeTallySheetGradeCode
              end
              object cgvHasilGradeLogItemId: TcxGridDBColumn
                Caption = 'Nama'
                DataBinding.FieldName = 'ItemId'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.View = cgvPrevItemPO
                Properties.KeyFieldNames = 'ItemId'
                Properties.ListFieldItem = cgvPrevItemPOItemName
              end
              object cgvHasilGradeLogD1: TcxGridDBColumn
                Caption = ' D1'
                DataBinding.FieldName = 'D1Inv'
                PropertiesClassName = 'TcxCalcEditProperties'
              end
              object cgvHasilGradeLogD2: TcxGridDBColumn
                Caption = ' D2'
                DataBinding.FieldName = 'D2Inv'
                PropertiesClassName = 'TcxCalcEditProperties'
              end
              object cgvHasilGradeLogD3: TcxGridDBColumn
                Caption = ' D3'
                DataBinding.FieldName = 'D3Inv'
                PropertiesClassName = 'TcxCalcEditProperties'
                Visible = False
              end
              object cgvHasilGradeLogD4: TcxGridDBColumn
                Caption = ' D4'
                DataBinding.FieldName = 'D4Inv'
                PropertiesClassName = 'TcxCalcEditProperties'
                Visible = False
              end
              object cgvHasilGradeLogDAvg: TcxGridDBColumn
                Caption = ' D Rata2'
                DataBinding.FieldName = 'DAvgInv'
                PropertiesClassName = 'TcxCalcEditProperties'
              end
              object cgvHasilGradeLogPLog: TcxGridDBColumn
                Caption = ' Panjang'
                DataBinding.FieldName = 'PInv'
                PropertiesClassName = 'TcxCalcEditProperties'
              end
              object cgvHasilGradeLogQty: TcxGridDBColumn
                Caption = ' Qty'
                DataBinding.FieldName = 'Qty'
                PropertiesClassName = 'TcxCalcEditProperties'
                Visible = False
                VisibleForCustomization = False
              end
              object cgvHasilGradeLogM3Log: TcxGridDBColumn
                Caption = ' M3'
                DataBinding.FieldName = 'M3Inv'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Editing = False
              end
            end
            object cgHasilGradeLogLevel1: TcxGridLevel
              GridView = cgvHasilGradeLog
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      inherited cgMasterSetup: TcxGrid
        inherited cgvPrevDisplay: TcxGridDBTableView
          inherited cgvPrevDisplayStatusApprove: TcxGridDBColumn
            Properties.Images = nil
          end
          inherited cgvPrevDisplayTallymanId: TcxGridDBColumn
            Properties.View = nil
            Properties.KeyFieldNames = ''
            Properties.ListFieldItem = nil
          end
          inherited cgvPrevDisplayGraderId: TcxGridDBColumn
            Properties.View = nil
            Properties.KeyFieldNames = ''
            Properties.ListFieldItem = nil
          end
        end
      end
    end
  end
  inherited dsGradeResultInvoiceDt: TDataSource
    OnDataChange = dsGradeResultInvoiceDtDataChange
  end
  inherited cxGridViewRepository1: TcxGridViewRepository [10]
    inherited cgvPrevPurchaseOrder: TcxGridDBTableView
      object cgvPrevPOStatusLogCalculate: TcxGridDBColumn [4]
        DataBinding.FieldName = 'StatusLogCalculate'
        Visible = False
        VisibleForCustomization = False
      end
    end
    inherited cgvPrevItemPO: TcxGridDBTableView
      DataController.KeyFieldNames = 'ItemId'
    end
    inherited cgvPrevTallySheetGrade: TcxGridDBTableView
      DataController.KeyFieldNames = 'TallySheetGradeId'
    end
  end
  inherited dsPrevItemPO: TDataSource [11]
  end
  inherited qryGradeResultHd: TADODataSet
    OnNewRecord = qryGradeResultHdNewRecord
  end
  inherited qryPrevItemPO: TADOQuery
    SQL.Strings = (
      'select '
      '  a.ItemId, b.ItemName'
      'from PurchaseOrderDt a '
      'left join Item b on a.ItemId = b.ItemId'
      'where a.PurchaseOrderId = :PurchaseOrderId')
  end
  inherited qryGradeResultInvoiceDt: TADOQuery
    OnNewRecord = qryGradeResultInvoiceDtNewRecord
  end
end
