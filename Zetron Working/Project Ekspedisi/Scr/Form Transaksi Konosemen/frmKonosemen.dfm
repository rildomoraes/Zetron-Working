inherited fmKonosemen: TfmKonosemen
  Caption = 'Konosemen'
  ClientHeight = 499
  ClientWidth = 777
  ExplicitTop = -53
  ExplicitWidth = 785
  ExplicitHeight = 533
  DesignSize = (
    777
    499)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 777
    ExplicitWidth = 777
  end
  inherited pnlCustom: TPanel
    Width = 777
    ExplicitWidth = 777
  end
  inherited dxDockSite1: TdxDockSite
    Width = 777
    Height = 424
    ExplicitWidth = 777
    ExplicitHeight = 424
    DockType = 0
    OriginalWidth = 777
    OriginalHeight = 424
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 749
      Height = 424
      ExplicitWidth = 749
      ExplicitHeight = 424
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 749
        Height = 424
        ExplicitWidth = 749
        ExplicitHeight = 424
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 749
        Height = 424
        ExplicitWidth = 749
        ExplicitHeight = 424
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 745
          Height = 107
          Align = alTop
          TabOrder = 0
          object pnlLeft: TPanel
            Left = 1
            Top = 1
            Width = 743
            Height = 105
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = 2
            ExplicitHeight = 111
            object Label1: TLabel
              Left = 9
              Top = 6
              Width = 91
              Height = 13
              Caption = 'Kode Konosemen *'
              Transparent = True
            end
            object Label3: TLabel
              Left = 9
              Top = 24
              Width = 46
              Height = 13
              Caption = 'Tanggal *'
              Transparent = True
            end
            object Label2: TLabel
              Left = 9
              Top = 42
              Width = 91
              Height = 13
              Caption = 'Kode Daftar Muat *'
              Transparent = True
            end
            object Label6: TLabel
              Left = 9
              Top = 78
              Width = 87
              Height = 13
              Caption = 'Tarif Konosemen *'
              Transparent = True
            end
            object Label7: TLabel
              Left = 316
              Top = 6
              Width = 27
              Height = 13
              Caption = 'Kapal'
              Transparent = True
            end
            object Label8: TLabel
              Left = 315
              Top = 24
              Width = 44
              Height = 13
              Caption = 'Nahkoda'
              Transparent = True
            end
            object Label9: TLabel
              Left = 315
              Top = 43
              Width = 49
              Height = 13
              Caption = 'Gross Ton'
              Transparent = True
            end
            object Label10: TLabel
              Left = 9
              Top = 60
              Width = 37
              Height = 13
              Caption = 'Merek *'
              Transparent = True
            end
            object lblTotalAmount: TLabel
              AlignWithMargins = True
              Left = 730
              Top = 5
              Width = 8
              Height = 95
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Align = alRight
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -27
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Layout = tlBottom
              ExplicitHeight = 32
            end
            object dbeKonosemenDate: TcxDBDateEdit
              Left = 112
              Top = 21
              DataBinding.DataField = 'KonosemenDate'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Width = 121
            end
            object lblShipName: TcxDBLabel
              Left = 398
              Top = 3
              AutoSize = True
              DataBinding.DataField = 'ShipName'
              DataBinding.DataSource = dsPrevTrayek
              ParentColor = False
              Transparent = True
            end
            object lblShipCrewName: TcxDBLabel
              Left = 398
              Top = 21
              AutoSize = True
              DataBinding.DataField = 'ShipCrewName'
              DataBinding.DataSource = dsPrevTrayek
              ParentColor = False
              Transparent = True
            end
            object lblGrossTon: TcxDBLabel
              Left = 400
              Top = 41
              AutoSize = True
              DataBinding.DataField = 'GrossTon'
              DataBinding.DataSource = dsPrevTrayek
              ParentColor = False
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              AnchorX = 458
            end
            object dbeMerekId: TcxDBExtLookupComboBox
              Left = 112
              Top = 57
              DataBinding.DataField = 'MerekId'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.View = cgvPrevMerek
              Properties.KeyFieldNames = 'MerekId'
              Properties.ListFieldItem = cgvPrevMerekMerekName
              Properties.MaxLength = 0
              Properties.OnEditValueChanged = dbeMerekIdPropertiesEditValueChanged
              TabOrder = 3
              Width = 145
            end
            object dbeTarifKonosemen: TcxDBTextEdit
              Left = 112
              Top = 75
              DataBinding.DataField = 'TarifKonosemen'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.OnEditValueChanged = dbeTarifKonosemenPropertiesEditValueChanged
              TabOrder = 4
              Width = 121
            end
            object dbeKonosemenCode: TcxDBButtonEdit
              Left = 112
              Top = 3
              DataBinding.DataField = 'KonosemenCode'
              DataBinding.DataSource = dsDefault
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.CharCase = ecUpperCase
              Properties.OnEditValueChanged = dbeKonosemenCodePropertiesEditValueChanged
              TabOrder = 0
              Width = 145
            end
            object dbeDaftarMuatKapalRouteCode: TcxDBTextEdit
              Left = 112
              Top = 39
              DataBinding.DataField = 'DaftarMuatKapalRouteCode'
              DataBinding.DataSource = dsDefault
              TabOrder = 2
              Width = 121
            end
          end
        end
        object pcBody: TcxPageControl
          Left = 0
          Top = 107
          Width = 745
          Height = 313
          ActivePage = tsDetail
          Align = alClient
          Images = dmGlobal.imgIconTabSheet
          NavigatorPosition = npLeftTop
          Options = [pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
          Rotate = True
          TabOrder = 1
          TabPosition = tpRight
          ExplicitTop = 113
          ExplicitHeight = 307
          ClientRectBottom = 307
          ClientRectLeft = 3
          ClientRectRight = 705
          ClientRectTop = 3
          object tsDetail: TcxTabSheet
            ImageIndex = 3
            ExplicitHeight = 298
            object cgKonosemenDt: TcxGrid
              Left = 0
              Top = 0
              Width = 702
              Height = 229
              Align = alClient
              TabOrder = 0
              ExplicitHeight = 223
              object cgvKonosemenDt: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Enabled = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Enabled = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Enabled = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Insert.Visible = False
                NavigatorButtons.Delete.Visible = False
                NavigatorButtons.Refresh.Visible = True
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsKonosemenDt
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skSum
                    FieldName = 'Price'
                    Column = cgvKonosemenDtPrice
                  end
                  item
                    Kind = skSum
                    FieldName = 'PriceFra'
                    Column = cgvKonosemenDtPriceFra
                  end
                  item
                    Kind = skSum
                    FieldName = 'PricePort'
                    Column = cgvKonosemenDtPricePort
                  end
                  item
                    Kind = skSum
                    FieldName = 'Qty'
                    Column = cgvKonosemenDtQty
                  end
                  item
                    Kind = skSum
                    FieldName = 'TotalAmount'
                    Column = cgvKonosemenDtTotalAmount
                  end
                  item
                    Kind = skSum
                    FieldName = 'PricePacking'
                    Column = cgvKonosemenDtPricePacking
                  end
                  item
                    Kind = skSum
                    FieldName = 'TotM3Ton'
                    Column = cgvKonosemenDtTotM3Ton
                  end
                  item
                    Kind = skSum
                    FieldName = 'TotalM3'
                    Column = cgvKonosemenDtTotalM3
                  end
                  item
                    Kind = skSum
                    FieldName = 'TotalBerat'
                    Column = cgvKonosemenDtTotalBerat
                  end
                  item
                    Kind = skSum
                    FieldName = 'TotalPacking'
                    Column = cgvKonosemenDtTotalPacking
                  end>
                DataController.Summary.SummaryGroups = <>
                DataController.Summary.OnAfterSummary = cgvKonosemenDtDataControllerSummaryAfterSummary
                OptionsView.Navigator = True
                OptionsView.Footer = True
                object cgvKonosemenDtKonosemenCode: TcxGridDBColumn
                  Caption = 'Kode Konosemen *'
                  DataBinding.FieldName = 'KonosemenCode'
                  Visible = False
                  Options.Editing = False
                end
                object cgvKonosemenDtKonosemenNo: TcxGridDBColumn
                  Caption = 'No *'
                  DataBinding.FieldName = 'KonosemenNo'
                  Options.Editing = False
                  Styles.Content = dmGlobal.stYellowLight
                  Width = 34
                end
                object cgvKonosemenDtItemReceiveCode: TcxGridDBColumn
                  Caption = 'PSJ'
                  DataBinding.FieldName = 'ItemReceiveCode'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.CharCase = ecUpperCase
                  Properties.OnButtonClick = cgvKonosemenDtItemReceiveCodePropertiesButtonClick
                  Options.Editing = False
                  Width = 104
                end
                object cgvKonosemenDtNo: TcxGridDBColumn
                  Caption = 'No PSJ'
                  DataBinding.FieldName = 'No'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.ReadOnly = True
                  Options.Editing = False
                  Width = 48
                end
                object cgvKonosemenDtPackingTransactionCode: TcxGridDBColumn
                  Caption = 'Kode Packing'
                  DataBinding.FieldName = 'PackingTransactionCode'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.CharCase = ecUpperCase
                  Properties.OnButtonClick = cgvKonosemenDtPackingTransactionCodePropertiesButtonClick
                  Options.Editing = False
                  Width = 96
                end
                object cgvKonosemenDtSuppliesCode: TcxGridDBColumn
                  Caption = 'Supplies Code *'
                  DataBinding.FieldName = 'SuppliesCode'
                  Options.Editing = False
                  Width = 91
                end
                object cgvKonosemenDtSuppliesName: TcxGridDBColumn
                  Caption = 'Supplies Name *'
                  DataBinding.FieldName = 'SuppliesName'
                  Options.Editing = False
                  Width = 109
                end
                object cgvKonosemenDtQty: TcxGridDBColumn
                  DataBinding.FieldName = 'Qty'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                  Width = 63
                end
                object cgvKonosemenDtP: TcxGridDBColumn
                  DataBinding.FieldName = 'P'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                end
                object cgvKonosemenDtL: TcxGridDBColumn
                  DataBinding.FieldName = 'L'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                end
                object cgvKonosemenDtT: TcxGridDBColumn
                  DataBinding.FieldName = 'T'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                end
                object cgvKonosemenDtBerat: TcxGridDBColumn
                  DataBinding.FieldName = 'Berat'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                end
                object cgvKonosemenDtUnitMeasure: TcxGridDBColumn
                  Caption = 'Unit *'
                  DataBinding.FieldName = 'UnitMeasureId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmEkspedisi.cgvPrevUnitMeasure
                  Properties.KeyFieldNames = 'UnitMeasureId'
                  Properties.ListFieldItem = dmEkspedisi.cgvPrevUnitMeasureUnitMeasureCode
                  Options.Editing = False
                end
                object cgvKonosemenDtTotalM3: TcxGridDBColumn
                  Caption = 'Total M3 *'
                  DataBinding.FieldName = 'TotalM3'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                  Options.Focusing = False
                  Width = 87
                end
                object cgvKonosemenDtTotalBerat: TcxGridDBColumn
                  Caption = 'Total Berat *'
                  DataBinding.FieldName = 'TotalBerat'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                  Options.Focusing = False
                  Width = 82
                end
                object cgvKonosemenDtTotM3Ton: TcxGridDBColumn
                  Caption = 'Total M3/Ton'
                  DataBinding.FieldName = 'TotM3Ton'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Visible = False
                  Options.Editing = False
                  Width = 81
                end
                object cgvKonosemenDtTarifTypeId: TcxGridDBColumn
                  Caption = 'Tipe Tarif *'
                  DataBinding.FieldName = 'TarifTypeId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevTarifType
                  Properties.KeyFieldNames = 'TarifTypeId'
                  Properties.ListFieldItem = cgvPrevTarifTypeTarifTypeName
                  Width = 86
                end
                object cgvKonosemenDtPrice: TcxGridDBColumn
                  Caption = 'OPP'
                  DataBinding.FieldName = 'Price'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                  Width = 78
                end
                object cgvKonosemenDtPriceFra: TcxGridDBColumn
                  Caption = 'Freight'
                  DataBinding.FieldName = 'PriceFra'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                  Width = 91
                end
                object cgvKonosemenDtPricePort: TcxGridDBColumn
                  Caption = 'OPT / Door'
                  DataBinding.FieldName = 'PricePort'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Width = 124
                end
                object cgvKonosemenDtPricePacking: TcxGridDBColumn
                  Caption = 'Price Packing'
                  DataBinding.FieldName = 'PricePacking'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Width = 77
                end
                object cgvKonosemenDtTotalAmount: TcxGridDBColumn
                  Caption = 'Total Amount'
                  DataBinding.FieldName = 'TotalAmount'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                  Width = 76
                end
                object cgvKonosemenDtModeCY: TcxGridDBColumn
                  Caption = 'Mode CY'
                  DataBinding.FieldName = 'ModeCY'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Items = <
                    item
                      Description = 'CYPort'
                      ImageIndex = 0
                      Value = '0'
                    end
                    item
                      Description = 'CYDoor'
                      Value = '1'
                    end>
                  Width = 65
                end
                object cgvKonosemenDtTotalPacking: TcxGridDBColumn
                  DataBinding.FieldName = 'TotalPacking'
                  Visible = False
                  Options.Editing = False
                end
              end
              object cgKonosemenDtLevel1: TcxGridLevel
                GridView = cgvKonosemenDt
              end
            end
            object pnlSummary: TPanel
              Left = 0
              Top = 229
              Width = 702
              Height = 75
              Align = alBottom
              TabOrder = 1
              ExplicitTop = 223
              object Label4: TLabel
                Left = 13
                Top = 11
                Width = 52
                Height = 13
                Caption = 'Total Collie'
                Transparent = True
              end
              object Label5: TLabel
                Left = 13
                Top = 29
                Width = 66
                Height = 13
                Caption = 'Total Packing'
                Transparent = True
              end
              object Label11: TLabel
                Left = 242
                Top = 11
                Width = 42
                Height = 13
                Caption = 'Total M3'
                Transparent = True
              end
              object Label12: TLabel
                Left = 242
                Top = 29
                Width = 46
                Height = 13
                Caption = 'Total Ton'
                Transparent = True
              end
              object Label13: TLabel
                Left = 242
                Top = 47
                Width = 73
                Height = 13
                Caption = 'Total M3 + Ton'
                Transparent = True
              end
              object Label14: TLabel
                Left = 482
                Top = 10
                Width = 49
                Height = 13
                Caption = 'Total OPP'
                Transparent = True
              end
              object Label15: TLabel
                Left = 482
                Top = 28
                Width = 59
                Height = 13
                Caption = 'Total Freight'
                Transparent = True
              end
              object Label16: TLabel
                Left = 482
                Top = 46
                Width = 83
                Height = 13
                Caption = 'Total OPT / Door'
                Transparent = True
              end
              object dbeCollie: TcxCurrencyEdit
                Left = 104
                Top = 7
                Properties.DisplayFormat = '0.00;(0.00)'
                Properties.ReadOnly = True
                TabOrder = 0
                Width = 121
              end
              object dbeM3: TcxCurrencyEdit
                Left = 344
                Top = 7
                Properties.DisplayFormat = '0.00;(0.00)'
                Properties.ReadOnly = True
                TabOrder = 1
                Width = 121
              end
              object dbeTon: TcxCurrencyEdit
                Left = 344
                Top = 25
                Properties.DisplayFormat = '0.00;(0.00)'
                Properties.ReadOnly = True
                TabOrder = 2
                Width = 121
              end
              object dbeM3Ton: TcxCurrencyEdit
                Left = 344
                Top = 43
                Properties.DisplayFormat = '0.00;(0.00)'
                Properties.ReadOnly = True
                TabOrder = 3
                Width = 121
              end
              object dbeOPP: TcxCurrencyEdit
                Left = 571
                Top = 7
                Properties.DisplayFormat = 'Rp,0.00;(Rp,0.00)'
                Properties.ReadOnly = True
                TabOrder = 4
                Width = 121
              end
              object dbeFreight: TcxCurrencyEdit
                Left = 571
                Top = 25
                Properties.DisplayFormat = 'Rp,0.00;(Rp,0.00)'
                Properties.ReadOnly = True
                TabOrder = 5
                Width = 121
              end
              object dbeOPT: TcxCurrencyEdit
                Left = 571
                Top = 43
                Properties.DisplayFormat = 'Rp,0.00;(Rp,0.00)'
                Properties.ReadOnly = True
                TabOrder = 6
                Width = 121
              end
              object dbePacking: TcxCurrencyEdit
                Left = 104
                Top = 25
                Properties.DisplayFormat = '0.00;(0.00)'
                Properties.ReadOnly = True
                TabOrder = 7
                Width = 121
              end
            end
          end
          object tsInternalMemo: TcxTabSheet
            Hint = 'Memo Internal'
            ImageIndex = 2
            ExplicitHeight = 298
            object dbmInternalMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'internalmemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              ExplicitHeight = 298
              Height = 304
              Width = 702
            end
          end
          object tsStatementMemo: TcxTabSheet
            Hint = 'Memo Tercetak'
            ImageIndex = 3
            ExplicitHeight = 298
            object dbmStatementMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'statementmemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              ExplicitHeight = 298
              Height = 304
              Width = 702
            end
          end
          object tsDipendencies: TcxTabSheet
            Hint = 'Ketergantungan'
            ImageIndex = 4
            ExplicitHeight = 298
            object cgDependencies: TcxGrid
              Left = 0
              Top = 0
              Width = 702
              Height = 304
              Align = alClient
              TabOrder = 0
              ExplicitHeight = 298
              object cgvDependencies: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Insert.Visible = False
                NavigatorButtons.Delete.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Post.Visible = False
                NavigatorButtons.Cancel.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsLogKonosemen
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDependenciesUser: TcxGridDBColumn
                  DataBinding.FieldName = 'User'
                  Width = 145
                end
                object cgvDependenciesTransactionDate: TcxGridDBColumn
                  DataBinding.FieldName = 'TransactionDate'
                  Width = 224
                end
                object cgvDependenciesAction: TcxGridDBColumn
                  DataBinding.FieldName = 'Action'
                  Visible = False
                  VisibleForCustomization = False
                  Width = 60
                end
                object cgvDependenciesTableName: TcxGridDBColumn
                  DataBinding.FieldName = 'TableName'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cgvDependenciesDescription: TcxGridDBColumn
                  DataBinding.FieldName = 'Description'
                  Width = 2540
                end
                object cgvDependenciesKeyField: TcxGridDBColumn
                  DataBinding.FieldName = 'KeyField'
                end
              end
              object cgDependenciesLevel1: TcxGridLevel
                GridView = cgvDependencies
              end
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 424
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 402
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Enabled = False
          NavigatorButtons.First.Visible = False
          NavigatorButtons.PriorPage.Enabled = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.Prior.Enabled = False
          NavigatorButtons.Prior.Visible = False
          NavigatorButtons.Next.Visible = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Last.Visible = False
          NavigatorButtons.Refresh.Visible = True
          NavigatorButtons.SaveBookmark.Visible = True
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.Visible = True
          OptionsView.Navigator = True
          OptionsView.Footer = True
          object cgvPrevDisplayKonosemenCode: TcxGridDBColumn
            Caption = 'Kode Konosemen'
            DataBinding.FieldName = 'KonosemenCode'
          end
          object cgvPrevDisplayMerekId: TcxGridDBColumn
            Caption = 'Merek'
            DataBinding.FieldName = 'MerekId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          end
          object cgvPrevDisplayKonosemenDate: TcxGridDBColumn
            Caption = 'Konosemen Date'
            DataBinding.FieldName = 'KonosemenDate'
          end
          object cgvPrevDisplayTarifKonosemen: TcxGridDBColumn
            Caption = 'Tarif Konosemen'
            DataBinding.FieldName = 'TarifKonosemen'
          end
          object cgvPrevDisplayStatementMemo: TcxGridDBColumn
            Caption = 'Statement Memo'
            DataBinding.FieldName = 'StatementMemo'
          end
          object cgvPrevDisplayInternalMemo: TcxGridDBColumn
            Caption = 'Internal Memo'
            DataBinding.FieldName = 'InternalMemo'
          end
          object cgvPrevDisplayEmployeeId: TcxGridDBColumn
            DataBinding.FieldName = 'EmployeeId'
          end
          object cgvPrevDisplayCounterPrint: TcxGridDBColumn
            Caption = 'Counter Print'
            DataBinding.FieldName = 'CounterPrint'
          end
          object cgvPrevDisplayStatusApprove: TcxGridDBColumn
            Caption = 'Status Approve'
            DataBinding.FieldName = 'StatusApprove'
          end
          object cgvPrevDisplayDaftarMuatKapalRouteCode: TcxGridDBColumn
            Caption = 'Kode Jurusan Daftar Muat Kapal '
            DataBinding.FieldName = 'DaftarMuatKapalRouteCode'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 592
    Top = 296
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 624
    Top = 296
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 656
    Top = 296
  end
  inherited dsDefault: TDataSource
    DataSet = qryKonosemen
    Left = 560
    Top = 328
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 688
    Top = 296
  end
  inherited pmPrint: TPopupMenu
    Left = 624
    Top = 328
  end
  object qryKonosemen: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryKonosemenBeforeInsert
    BeforePost = qryKonosemenBeforePost
    AfterPost = qryKonosemenAfterPost
    BeforeDelete = qryKonosemenBeforeDelete
    AfterDelete = qryKonosemenAfterDelete
    OnNewRecord = qryKonosemenNewRecord
    Parameters = <
      item
        Name = 'StartDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from Konosemen'
      'where KonosemenDate between :StartDate and :EndDate'
      'order by KonosemenCode;')
    Left = 560
    Top = 296
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 592
    Top = 328
    object cgvDaftarMuatKapal: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevTrayek
      DataController.KeyFieldNames = 'DaftarMuatKapalCode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvDaftarMuatKapalTrayekCode: TcxGridDBColumn
        Caption = 'Kode Daftar Muat'
        DataBinding.FieldName = 'DaftarMuatKapalCode'
      end
      object cgvDaftarMuatKapalShipName: TcxGridDBColumn
        Caption = 'Kapal'
        DataBinding.FieldName = 'ShipName'
      end
      object cgvDaftarMuatKapalShipCrewName: TcxGridDBColumn
        Caption = 'Nahkoda'
        DataBinding.FieldName = 'ShipCrewName'
      end
      object cgvDaftarMuatKapalGrossTon: TcxGridDBColumn
        Caption = 'Gross Ton'
        DataBinding.FieldName = 'GrossTon'
        Visible = False
      end
      object cgvDaftarMuatKapalTrayekDateGo: TcxGridDBColumn
        Caption = 'Tanggal Berangkat'
        DataBinding.FieldName = 'DaftarMuatKapalDateGo'
      end
    end
    object cgvPrevMerek: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmEkspedisi.dsPrevMerek
      DataController.KeyFieldNames = 'MerekId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevMerekMerekId: TcxGridDBColumn
        DataBinding.FieldName = 'MerekId'
        Visible = False
      end
      object cgvPrevMerekMerekCode: TcxGridDBColumn
        DataBinding.FieldName = 'MerekCode'
      end
      object cgvPrevMerekMerekName: TcxGridDBColumn
        DataBinding.FieldName = 'MerekName'
      end
      object cgvPrevMerekRouteId: TcxGridDBColumn
        DataBinding.FieldName = 'RouteId'
        Visible = False
      end
      object cgvPrevMerekCustomerId: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerId'
        Visible = False
      end
    end
    object cgvPrevPackingTransactionHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.KeyFieldNames = 'PackingTransactionCode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevPackingTransactionHdPackingCode: TcxGridDBColumn
        DataBinding.FieldName = 'PackingCode'
      end
      object cgvPrevPackingTransactionHdPackingName: TcxGridDBColumn
        DataBinding.FieldName = 'PackingName'
      end
      object cgvPrevPackingTransactionHdPackingTransactionCode: TcxGridDBColumn
        DataBinding.FieldName = 'PackingTransactionCode'
      end
      object cgvPrevPackingTransactionHdPackingTransactionDate: TcxGridDBColumn
        DataBinding.FieldName = 'PackingTransactionDate'
      end
      object cgvPrevPackingTransactionHdPackingAlias: TcxGridDBColumn
        DataBinding.FieldName = 'PackingAlias'
      end
      object cgvPrevPackingTransactionHdPrice: TcxGridDBColumn
        DataBinding.FieldName = 'Price'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPackingTransactionHdP: TcxGridDBColumn
        DataBinding.FieldName = 'P'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPackingTransactionHdL: TcxGridDBColumn
        DataBinding.FieldName = 'L'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPackingTransactionHdT: TcxGridDBColumn
        DataBinding.FieldName = 'T'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cgvPrevTarifType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmEkspedisi.dsTarifType
      DataController.KeyFieldNames = 'TarifTypeId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevTarifTypeTarifTypeId: TcxGridDBColumn
        DataBinding.FieldName = 'TarifTypeId'
        Visible = False
      end
      object cgvPrevTarifTypeTarifTypeCode: TcxGridDBColumn
        Caption = 'Kode Tarif'
        DataBinding.FieldName = 'TarifTypeCode'
      end
      object cgvPrevTarifTypeTarifTypeName: TcxGridDBColumn
        Caption = 'Jenis'
        DataBinding.FieldName = 'TarifTypeName'
      end
      object cgvPrevTarifTypeStatusDimensi: TcxGridDBColumn
        DataBinding.FieldName = 'StatusDimensi'
        Visible = False
      end
    end
  end
  object qryKonosemenDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryKonosemenDtBeforeInsert
    BeforePost = qryKonosemenDtBeforePost
    AfterPost = qryKonosemenDtAfterPost
    BeforeDelete = qryKonosemenDtBeforeDelete
    AfterDelete = qryKonosemenDtAfterDelete
    OnNewRecord = qryKonosemenDtNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'KonosemenCode'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select *,'
      'case'
      ' when totalm3>totalberat then totalm3 '
      ' else totalberat '
      'end as TotM3Ton,'
      'case'
      ' when packingtransactioncode is null then 0'
      ' else Qty'
      'end as TotalPacking,'
      '(select max(routeid) from suppliesreceivehd'
      ' where itemreceivecode=konosemendt.itemreceivecode)'
      ' as routeid'
      'from KonosemenDt'
      'where KonosemenCode =:KonosemenCode')
    Left = 528
    Top = 296
  end
  object dsKonosemenDt: TDataSource
    DataSet = qryKonosemenDt
    OnDataChange = dsKonosemenDtDataChange
    Left = 528
    Top = 328
  end
  object qryPrevTrayek: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'konosemencode'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.DaftarMuatKapalCode,a.DaftarMuatKapalDateGo, b.ShipName' +
        ', c.ShipCrewName, b.GrossTon'
      'from DaftarMuatKapal a'
      'left join Ship b on a.shipId = b.ShipId'
      
        'left join ShipCrew c on b.StorageLocationId = c.StorageLocationI' +
        'd and c.positionid=1'
      
        'left join DaftarMuatKapalRoute e on a.DaftarMuatKapalCode = e.Da' +
        'ftarMuatKapalCode'
      
        'left join Konosemen d on e.DaftarMuatKapalRouteCode = d.DaftarMu' +
        'atKapalRouteCode'
      'where DaftarMuatKapalClose is null or'
      
        '(not (d.DaftarMuatKapalRouteCode is null) and d.KonosemenCode=:k' +
        'onosemencode)'
      ''
      '')
    Left = 464
    Top = 296
  end
  object dsPrevTrayek: TDataSource
    DataSet = qryPrevTrayek
    Left = 464
    Top = 328
  end
  object qryPrevTarifKonosemen: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'merekid'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'routeid'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select b.TarifKonosemen '
      'from Merek a '
      'left join CustomerForwarding b on a.Customerid=b.Customerid'
      
        'where cast (a.MerekId as varchar) =:merekid and cast( a.RouteId ' +
        'as varchar )=:routeid')
    Left = 464
    Top = 360
  end
  object qryKonosemenDtPrice: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ItemReceiveCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'No'
        Attributes = [paSigned]
        DataType = ftString
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TarifTypeId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'RouteId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'PackingTransactionCode'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'TarifTypeId'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'RouteId'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select c.t,c.l,c.p,d.price,'
      'case'
      ' when e.StatusDimensi=0 then c.t*c.l*c.p*d.price/1000000'
      ' when e.StatusDimensi=1 then c.berat*d.price'
      ' when e.StatusDimensi=2 then d.price'
      ' when e.StatusDimensi=3 then 0'
      'end'
      'as tarif,'
      'case'
      ' when e.StatusDimensi=0 then c.t*c.l*c.p*d.pricefra/1000000'
      ' when e.StatusDimensi=1 then c.berat*d.pricefra'
      ' when e.StatusDimensi=2 then d.pricefra'
      ' when e.StatusDimensi=3 then 0'
      'end'
      'as tariffra'
      ',*'
      'from SuppliesReceiveDt c, TarifItem d'
      'left join TarifType e on d.TarifTypeId=e.TarifTypeId'
      'where c.ItemReceiveCode=:ItemReceiveCode'
      ' and c.no=:No'
      ' and cast(d.TarifTypeId as varchar) =:TarifTypeId'
      ' and cast(d.routeId as varchar) =:RouteId'
      'union'
      ' select c.t,c.l,c.p,d.price,'
      'case'
      ' when e.StatusDimensi=0 then c.t*c.l*c.p*d.price/1000000'
      ' when e.StatusDimensi=1 then c.berat*d.price'
      ' when e.StatusDimensi=2 then d.price'
      ' when e.StatusDimensi=3 then 0'
      'end'
      'as tarif,'
      'case'
      ' when e.StatusDimensi=0 then c.t*c.l*c.p*d.pricefra/1000000'
      ' when e.StatusDimensi=1 then c.berat*d.pricefra'
      ' when e.StatusDimensi=2 then d.pricefra'
      ' when e.StatusDimensi=3 then 0'
      'end'
      'as tariffra'
      ',*'
      'from PackingTransactionhd c, TarifItem d'
      'left join TarifType e on d.TarifTypeId=e.TarifTypeId'
      'where c.PackingTransactionCode=:PackingTransactionCode'
      ' and cast(d.TarifTypeId as varchar) =:TarifTypeId'
      ' and cast(d.routeId as varchar) =:RouteId')
    Left = 496
    Top = 360
  end
  object isbSuppliesReceive: TIvSearchBoxADO
    About = 'Created by Ivan Handoyo'
    Connection = dmGlobal.conGlobal
    ColumnOptions = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Parameters = <>
    ShowKeyword = True
    Version = '1.0'
    SettingFilename = 'Setting isbSuppliesReceive.cfg'
    Left = 368
    Top = 280
  end
  object qryGenerateCounter: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select dbo.fnGetId('#39'KONOSEMEN'#39','#39#39','#39#39') as GenCounter')
    Left = 656
    Top = 328
  end
  object qryLogKonosemen: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'keyfield'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select * from TransactionLog'
      'where TableName='#39'Konosemen'#39' or TableName='#39'KonosemenDt'#39
      'and keyfield=:keyfield'
      'order by TransactionDate')
    Left = 432
    Top = 296
  end
  object dsLogKonosemen: TDataSource
    DataSet = qryLogKonosemen
    Left = 432
    Top = 328
  end
end
