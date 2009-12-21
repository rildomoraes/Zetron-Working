inherited fmHasilGradeBalok: TfmHasilGradeBalok
  Caption = 'Hasil Grade Sawn Timber'
  OnActivate = FormActivate
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
        object pnlSawnTimber: TPanel
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
            Caption = '* Satuan tebal, lebar dan panjang dalam centimeter.'
            ExplicitWidth = 244
          end
          object cgHasilGradeCutting: TcxGrid
            Left = 377
            Top = 0
            Width = 363
            Height = 269
            Align = alClient
            TabOrder = 1
            object cgvHasilGradeCutting: TcxGridDBBandedTableView
              NavigatorButtons.OnButtonClick = cgvHasilGradeCuttingNavigatorButtonsButtonClick
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.Refresh.Visible = False
              NavigatorButtons.SaveBookmark.Visible = True
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.DataSource = dsGradeResultCuttingDt
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'M3Cut'
                  Column = cgvHasilGradeCuttingM3Cutting
                end
                item
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'Qty'
                  Column = cgvHasilGradeCuttingQty
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  Column = cgvHasilGradeCuttingNo
                end
                item
                  Kind = skSum
                  Column = cgvHasilGradeCuttingM3Cutting
                end
                item
                  Kind = skSum
                  Column = cgvHasilGradeCuttingQty
                end>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              Bands = <
                item
                  Caption = 'Cutting'
                end>
              object cgvHasilGradeCuttingGradeResultCode: TcxGridDBBandedColumn
                DataBinding.FieldName = 'GradeResultCode'
                Visible = False
                VisibleForCustomization = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingNo: TcxGridDBBandedColumn
                DataBinding.FieldName = 'No'
                Width = 30
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingPaletId: TcxGridDBBandedColumn
                Caption = 'Palet'
                DataBinding.FieldName = 'TallySheetGradeId'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.View = cgvPrevTallySheetGrade
                Properties.KeyFieldNames = 'TallySheetGradeCode'
                Properties.ListFieldItem = cgvTallySheetGradeTallySheetGradeCode
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingItemId: TcxGridDBBandedColumn
                Caption = 'Nama'
                DataBinding.FieldName = 'ItemId'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.View = cgvPrevItemPO
                Properties.KeyFieldNames = 'itemid'
                Properties.ListFieldItem = cgvPrevItemPOItemName
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingTCutting: TcxGridDBBandedColumn
                Caption = 'T'
                DataBinding.FieldName = 'TCut'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingLCutting: TcxGridDBBandedColumn
                Caption = 'L'
                DataBinding.FieldName = 'LCut'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingPCutting: TcxGridDBBandedColumn
                Caption = 'P'
                DataBinding.FieldName = 'PCut'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingM3Cutting: TcxGridDBBandedColumn
                Caption = 'M3'
                DataBinding.FieldName = 'M3Cut'
                PropertiesClassName = 'TcxCalcEditProperties'
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cgvHasilGradeCuttingQty: TcxGridDBBandedColumn
                Caption = ' Qty'
                DataBinding.FieldName = 'Qty'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 40
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
            end
            object cgHasilGradeCuttingLevel1: TcxGridLevel
              GridView = cgvHasilGradeCutting
            end
          end
          object cgHasilGradeInvoice: TcxGrid
            Left = 0
            Top = 0
            Width = 369
            Height = 269
            Align = alLeft
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = -3
            object cgvHasilGradeInvoice: TcxGridDBBandedTableView
              NavigatorButtons.OnButtonClick = cgvHasilGradeInvoiceNavigatorButtonsButtonClick
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.Refresh.Visible = False
              NavigatorButtons.SaveBookmark.Visible = True
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.DataSource = dsGradeResultInvoiceDt
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'M3Inv'
                  Column = cgvHasilGradeInvoiceM3Invoice
                end
                item
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'Qty'
                  Column = cgvHasilGradeInvoiceQty
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'No'
                  Column = cgvHasilGradeInvoiceNo
                end
                item
                  Kind = skSum
                  FieldName = 'M3Inv'
                  Column = cgvHasilGradeInvoiceM3Invoice
                end
                item
                  Kind = skSum
                  FieldName = 'Qty'
                  Column = cgvHasilGradeInvoiceQty
                end>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              Bands = <
                item
                  Caption = 'Invoice'
                end>
              object cgvHasilGradeInvoiceGradeResultCode: TcxGridDBBandedColumn
                DataBinding.FieldName = 'GradeResultCode'
                Visible = False
                VisibleForCustomization = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoiceNo: TcxGridDBBandedColumn
                DataBinding.FieldName = 'No'
                Width = 30
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoicePaletId: TcxGridDBBandedColumn
                Caption = 'Palet'
                DataBinding.FieldName = 'TallySheetGradeId'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.View = cgvPrevTallySheetGrade
                Properties.KeyFieldNames = 'TallySheetGradeCode'
                Properties.ListFieldItem = cgvTallySheetGradeTallySheetGradeCode
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoiceItemId: TcxGridDBBandedColumn
                Caption = 'Nama'
                DataBinding.FieldName = 'ItemId'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.View = cgvPrevItemPO
                Properties.KeyFieldNames = 'itemid'
                Properties.ListFieldItem = cgvPrevItemPOItemName
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoiceTInvoice: TcxGridDBBandedColumn
                Caption = 'T'
                DataBinding.FieldName = 'TInv'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoiceLInvoice: TcxGridDBBandedColumn
                Caption = 'L'
                DataBinding.FieldName = 'LInv'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoicePInvoice: TcxGridDBBandedColumn
                Caption = 'P'
                DataBinding.FieldName = 'PInv'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoiceM3Invoice: TcxGridDBBandedColumn
                Caption = 'M3'
                DataBinding.FieldName = 'M3Inv'
                PropertiesClassName = 'TcxCalcEditProperties'
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cgvHasilGradeInvoiceQty: TcxGridDBBandedColumn
                Caption = ' Qty'
                DataBinding.FieldName = 'Qty'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 40
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
            end
            object cgHasilGradeInvoiceLevel1: TcxGridLevel
              GridView = cgvHasilGradeInvoice
            end
          end
          object cxSplitter1: TcxSplitter
            Left = 369
            Top = 0
            Width = 8
            Height = 269
            HotZoneClassName = 'TcxXPTaskBarStyle'
            Control = cgHasilGradeInvoice
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
          inherited cgvPrevDisplayPurchaseOrderCode: TcxGridDBColumn
            DataBinding.FieldName = 'PurchaseOrderCode'
            Properties.View = nil
            Properties.KeyFieldNames = ''
            Properties.ListFieldItem = nil
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
  inherited dsDefault: TDataSource
    OnDataChange = dsDefaultDataChange
  end
  inherited cxGridViewRepository1: TcxGridViewRepository
    inherited cgvPrevPurchaseOrder: TcxGridDBTableView
      OptionsView.GroupByBox = True
    end
    inherited cgvPrevItemPO: TcxGridDBTableView
      DataController.KeyFieldNames = 'itemid'
      inherited cgvPrevItemPOItemId: TcxGridDBColumn
        Visible = False
      end
    end
    inherited cgvPrevTallySheetGrade: TcxGridDBTableView
      DataController.KeyFieldNames = 'TallySheetGradeCode'
    end
  end
  inherited qryGradeResultHd: TADODataSet
    Active = True
    OnNewRecord = qryGradeResultHdNewRecord
  end
  inherited qryPrevItemPO: TADOQuery [15]
  end
  inherited qryGradeResultInvoiceDt: TADOQuery [16]
  end
  inherited qryCekUkuran: TADOQuery [17]
  end
  inherited qryGradeResultCuttingDt: TADOQuery [18]
  end
  inherited qryPrevPurchaseOrder: TADOQuery [19]
  end
  inherited qryCounter: TADOQuery [20]
  end
  inherited qryPrevTallySheetGrade: TADOQuery
    Parameters = <
      item
        Name = 'GradeResultCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from TallySheetGrade'
      'where GradeResultCode = :GradeResultCode')
  end
end
