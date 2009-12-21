inherited fmDaftarMuatKapal: TfmDaftarMuatKapal
  Caption = 'Daftar Muat Kapal'
  ExplicitTop = -20
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCustom: TPanel
    inherited cbMonth: TcxComboBox
      ExplicitHeight = 19
    end
    inherited cbYear: TcxComboBox
      ExplicitHeight = 19
    end
    inherited dblcStatusApprove: TcxDBImageComboBox
      ExplicitHeight = 19
    end
    inherited dbeCounterPrint: TcxDBTextEdit
      ExplicitHeight = 19
    end
    inherited dblcEmployeeId: TcxDBExtLookupComboBox
      ExplicitHeight = 19
    end
  end
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
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 177
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 393
            Top = 0
            Height = 177
            ExplicitLeft = 402
            ExplicitTop = -2
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 393
            Height = 177
            Align = alLeft
            TabOrder = 0
            object Label1: TLabel
              Left = 9
              Top = 12
              Width = 121
              Height = 13
              Caption = 'Kode Daftar Muat Kapal *'
              Transparent = True
            end
            object Label2: TLabel
              Left = 8
              Top = 30
              Width = 135
              Height = 13
              Caption = 'Tanggal Daftar Muat Kapal *'
              Transparent = True
            end
            object Label3: TLabel
              Left = 9
              Top = 48
              Width = 65
              Height = 13
              Caption = 'Nama Kapal *'
              Transparent = True
            end
            object Label5: TLabel
              Left = 9
              Top = 66
              Width = 51
              Height = 13
              Caption = 'Nahkoda *'
              Transparent = True
            end
            object Label8: TLabel
              Left = 9
              Top = 84
              Width = 91
              Height = 13
              Caption = 'Tanggal Berangkat'
              Transparent = True
            end
            object Label6: TLabel
              Left = 9
              Top = 102
              Width = 74
              Height = 13
              Caption = 'Tanggal Buka *'
              Transparent = True
            end
            object Label7: TLabel
              Left = 9
              Top = 120
              Width = 77
              Height = 13
              Caption = 'Tanggal Tutup *'
              Transparent = True
            end
            object Label9: TLabel
              Left = 9
              Top = 138
              Width = 49
              Height = 13
              Caption = 'Total M3 *'
              Transparent = True
            end
            object Label10: TLabel
              Left = 9
              Top = 156
              Width = 53
              Height = 13
              Caption = 'Total Ton *'
              Transparent = True
            end
            object dbeDaftarMuatKapalCode: TcxDBTextEdit
              Left = 176
              Top = 9
              DataBinding.DataField = 'DaftarMuatKapalCode'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.OnEditValueChanged = dbeDaftarMuatKapalCodePropertiesEditValueChanged
              TabOrder = 0
              Width = 172
            end
            object dbeDaftarMuatKapalDate: TcxDBDateEdit
              Left = 176
              Top = 27
              DataBinding.DataField = 'DaftarMuatKapalDate'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Width = 121
            end
            object dblcShipCrewId: TcxDBExtLookupComboBox
              Left = 176
              Top = 63
              DataBinding.DataField = 'ShipCrewId'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.View = dmEkspedisi.cgvPrevShipNahkoda
              Properties.KeyFieldNames = 'ShipCrewId'
              Properties.ListFieldItem = dmEkspedisi.cgvPrevShipNahkodaShipCrewName
              TabOrder = 3
              Width = 145
            end
            object dbeDateGo: TcxDBDateEdit
              Left = 176
              Top = 81
              DataBinding.DataField = 'DaftarMuatKapalDateGo'
              DataBinding.DataSource = dsDefault
              TabOrder = 4
              Width = 121
            end
            object dbeDateOpen: TcxDBDateEdit
              Left = 176
              Top = 99
              DataBinding.DataField = 'DaftarMuatKapalOpen'
              DataBinding.DataSource = dsDefault
              TabOrder = 5
              Width = 121
            end
            object dbcTotalTon: TcxDBCalcEdit
              Left = 176
              Top = 153
              DataBinding.DataField = 'TotalTon'
              DataBinding.DataSource = dsDefault
              TabOrder = 6
              Width = 121
            end
            object dbcTotalM3: TcxDBCalcEdit
              Left = 176
              Top = 135
              DataBinding.DataField = 'TotalM3'
              DataBinding.DataSource = dsDefault
              TabOrder = 7
              Width = 121
            end
            object dbeDateClose: TcxDBDateEdit
              Left = 176
              Top = 117
              DataBinding.DataField = 'DaftarMuatKapalClose'
              DataBinding.DataSource = dsDefault
              TabOrder = 8
              Width = 121
            end
            object BtnTutup: TButton
              Left = 311
              Top = 117
              Width = 75
              Height = 25
              Caption = 'Buka'
              TabOrder = 9
              OnClick = BtnTutupClick
            end
            object dblcShipId: TcxDBExtLookupComboBox
              Left = 176
              Top = 45
              DataBinding.DataField = 'ShipId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmEkspedisi.cgvPrevShip
              Properties.KeyFieldNames = 'ShipId'
              Properties.ListFieldItem = dmEkspedisi.cgvPrevShipShipName
              Properties.OnEditValueChanged = dblcShipIdPropertiesEditValueChanged
              TabOrder = 2
              Width = 145
            end
          end
          object Panel2: TPanel
            Left = 396
            Top = 0
            Width = 344
            Height = 177
            Align = alClient
            Caption = 'Panel2'
            TabOrder = 1
            object cgDaftarMuatKapalRoute: TcxGrid
              Left = 1
              Top = 1
              Width = 342
              Height = 175
              Align = alClient
              TabOrder = 0
              object cgvDaftarMuatKapalRoute: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Append.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Cancel.Visible = True
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                OnFocusedRecordChanged = cgvDaftarMuatKapalRouteFocusedRecordChanged
                DataController.DataSource = dsDaftarMuatKapalRoute
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDaftarMuatKapalRouteDaftarMuatKapalRouteCode: TcxGridDBColumn
                  Caption = 'No Jurusan Daftar Muat Kapal '
                  DataBinding.FieldName = 'DaftarMuatKapalRouteCode'
                  Width = 169
                end
                object cgvDaftarMuatKapalRouteRouteId: TcxGridDBColumn
                  Caption = 'Jurusan'
                  DataBinding.FieldName = 'RouteId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmEkspedisi.cgvPrevRoute
                  Properties.KeyFieldNames = 'RouteId'
                  Properties.ListFieldItem = dmEkspedisi.cgvPrevRouteRouteName
                end
                object cgvDaftarMuatKapalRouteTotalM3: TcxGridDBColumn
                  Caption = 'Total M3'
                  DataBinding.FieldName = 'TotalM3'
                  Options.Editing = False
                end
                object cgvDaftarMuatKapalRouteTotalTon: TcxGridDBColumn
                  Caption = 'Total Ton'
                  DataBinding.FieldName = 'TotalTon'
                  Options.Editing = False
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cgvDaftarMuatKapalRoute
              end
            end
          end
        end
        object pnlOther: TPanel
          Left = 0
          Top = 177
          Width = 740
          Height = 210
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pcBody: TcxPageControl
            Left = 0
            Top = 0
            Width = 740
            Height = 135
            ActivePage = tsShowKonosemen
            Align = alClient
            Images = dmGlobal.imgIconTabSheet
            NavigatorPosition = npLeftBottom
            Options = [pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
            Rotate = True
            TabOrder = 0
            TabPosition = tpRight
            ClientRectBottom = 129
            ClientRectLeft = 3
            ClientRectRight = 700
            ClientRectTop = 3
            object tsInternalMemo: TcxTabSheet
              Hint = 'Memo Internal'
              ImageIndex = 2
              object dbmInternalMemo: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'internalmemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 126
                Width = 697
              end
            end
            object tsStatementMemo: TcxTabSheet
              Hint = 'Memo Tercetak'
              ImageIndex = 3
              object dbmStatementMemo: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'statementmemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 126
                Width = 697
              end
            end
            object tsDipendencies: TcxTabSheet
              Hint = 'Ketergantungan'
              ImageIndex = 4
              object cgDependencies: TcxGrid
                Left = 0
                Top = 0
                Width = 697
                Height = 126
                Align = alClient
                TabOrder = 0
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
                  DataController.DataSource = dsLogDaftarMuatKapal
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.Navigator = True
                  OptionsView.GroupByBox = False
                  object cgvDependenciesUser: TcxGridDBColumn
                    DataBinding.FieldName = 'User'
                  end
                  object cgvDependenciesTransactionDate: TcxGridDBColumn
                    DataBinding.FieldName = 'TransactionDate'
                  end
                  object cgvDependenciesAction: TcxGridDBColumn
                    DataBinding.FieldName = 'Action'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cgvDependenciesTableName: TcxGridDBColumn
                    DataBinding.FieldName = 'TableName'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cgvDependenciesDescription: TcxGridDBColumn
                    DataBinding.FieldName = 'Description'
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
            object tsShowKonosemen: TcxTabSheet
              ImageIndex = 4
              object cgShowKonosemen: TcxGrid
                Left = 0
                Top = 0
                Width = 697
                Height = 126
                Align = alClient
                TabOrder = 0
                object cgvShowKonosemen: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  DataController.DataSource = dsShowKonosemen
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skSum
                      FieldName = 'totalberat'
                      Column = cgvShowKonosementotalberat
                    end
                    item
                      Kind = skSum
                      FieldName = 'totalcolie'
                      Column = cgvShowKonosementotalcolie
                    end
                    item
                      Kind = skSum
                      FieldName = 'totalm3'
                      Column = cgvShowKonosementotalm3
                    end
                    item
                      Kind = skSum
                      FieldName = 'totalm3berat'
                      Column = cgvShowKonosementotalm3berat
                    end>
                  DataController.Summary.SummaryGroups = <>
                  DataController.Summary.OnAfterSummary = cgvShowKonosemenDataControllerSummaryAfterSummary
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  OptionsView.GroupFooters = gfVisibleWhenExpanded
                  object cgvShowKonosemenKonosemenCode: TcxGridDBColumn
                    Caption = 'No Konosemen'
                    DataBinding.FieldName = 'KonosemenCode'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.CharCase = ecUpperCase
                    Properties.ReadOnly = True
                    Options.Editing = False
                    Width = 79
                  end
                  object cgvShowKonosemenMerekId: TcxGridDBColumn
                    Caption = 'Merek'
                    DataBinding.FieldName = 'MerekId'
                    PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                    Options.Editing = False
                    Width = 107
                  end
                  object cgvShowKonosemenKonosemenDate: TcxGridDBColumn
                    Caption = 'Tanggal Konosemen'
                    DataBinding.FieldName = 'KonosemenDate'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Properties.ReadOnly = True
                    Options.Editing = False
                    Width = 117
                  end
                  object cgvShowKonosemenTarifKonosemen: TcxGridDBColumn
                    Caption = 'Tarif Konosemen'
                    DataBinding.FieldName = 'TarifKonosemen'
                    Options.Editing = False
                    Width = 105
                  end
                  object cgvShowKonosemenStatementMemo: TcxGridDBColumn
                    Caption = 'Statement Memo'
                    DataBinding.FieldName = 'StatementMemo'
                    Visible = False
                    Options.Editing = False
                    Width = 94
                  end
                  object cgvShowKonosemenInternalMemo: TcxGridDBColumn
                    Caption = 'Internal Memo'
                    DataBinding.FieldName = 'InternalMemo'
                    Visible = False
                    Options.Editing = False
                    Width = 88
                  end
                  object cgvShowKonosemenEmployeeId: TcxGridDBColumn
                    Caption = 'Employee'
                    DataBinding.FieldName = 'EmployeeId'
                    PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                    Properties.View = dmGlobal.cgvPrevEmployee
                    Properties.KeyFieldNames = 'EmployeeId'
                    Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
                    Options.Editing = False
                    Width = 70
                  end
                  object cgvShowKonosemenCounterPrint: TcxGridDBColumn
                    Caption = 'Counter Print'
                    DataBinding.FieldName = 'CounterPrint'
                    Visible = False
                    Options.Editing = False
                  end
                  object cgvShowKonosemenStatusApprove: TcxGridDBColumn
                    Caption = 'Status Approve'
                    DataBinding.FieldName = 'StatusApprove'
                    Visible = False
                    Options.Editing = False
                  end
                  object cgvShowKonosemenCustomerId: TcxGridDBColumn
                    Caption = 'Customer'
                    DataBinding.FieldName = 'CustomerId'
                    PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                    Properties.View = dmEkspedisi.cgvPrevCustomer
                    Properties.KeyFieldNames = 'CustomerId'
                    Properties.ListFieldItem = dmEkspedisi.cgvPrevCustomerCustomerName
                  end
                  object cgvShowKonosementotalm3: TcxGridDBColumn
                    Caption = 'Total M3'
                    DataBinding.FieldName = 'totalm3'
                  end
                  object cgvShowKonosementotalberat: TcxGridDBColumn
                    Caption = 'Total Ton'
                    DataBinding.FieldName = 'totalberat'
                  end
                  object cgvShowKonosementotalcolie: TcxGridDBColumn
                    Caption = 'Total Colie'
                    DataBinding.FieldName = 'totalcolie'
                  end
                  object cgvShowKonosementotalm3berat: TcxGridDBColumn
                    Caption = 'Total M3/Ton'
                    DataBinding.FieldName = 'totalm3berat'
                  end
                end
                object cgvKonosemenDt: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  DataController.DataSource = dsPrevKonosemenDt
                  DataController.DetailKeyFieldNames = 'KonosemenCode'
                  DataController.KeyFieldNames = 'KonosemenCode'
                  DataController.MasterKeyFieldNames = 'KonosemenCode'
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.GroupByBox = False
                  object cgvKonosemenDtKonosemenCode: TcxGridDBColumn
                    DataBinding.FieldName = 'KonosemenCode'
                    Visible = False
                    Options.Editing = False
                  end
                  object cgvKonosemenDtKonosemenNo: TcxGridDBColumn
                    Caption = 'No'
                    DataBinding.FieldName = 'KonosemenNo'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtItemReceiveCode: TcxGridDBColumn
                    Caption = 'PSJ'
                    DataBinding.FieldName = 'ItemReceiveCode'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtNo: TcxGridDBColumn
                    Caption = 'No PSJ'
                    DataBinding.FieldName = 'No'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtPackingTransactionCode: TcxGridDBColumn
                    Caption = 'Kode Packing'
                    DataBinding.FieldName = 'PackingTransactionCode'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtSuppliesCode: TcxGridDBColumn
                    Caption = 'Supplies Code'
                    DataBinding.FieldName = 'SuppliesCode'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtSuppliesName: TcxGridDBColumn
                    Caption = 'Supplies Name'
                    DataBinding.FieldName = 'SuppliesName'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtQty: TcxGridDBColumn
                    Caption = 'Jumlah'
                    DataBinding.FieldName = 'Qty'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Options.Editing = False
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
                  object cgvKonosemenDtUnitMeasureId: TcxGridDBColumn
                    Caption = 'Unit'
                    DataBinding.FieldName = 'UnitMeasureId'
                    PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                    Properties.View = dmEkspedisi.cgvPrevUnitMeasure
                    Properties.KeyFieldNames = 'UnitMeasureId'
                    Properties.ListFieldItem = dmEkspedisi.cgvPrevUnitMeasureUnitMeasureName
                    Options.Editing = False
                  end
                  object cgvKonosemenDtTotalM3: TcxGridDBColumn
                    Caption = 'Total M3'
                    DataBinding.FieldName = 'TotalM3'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtTotalBerat: TcxGridDBColumn
                    Caption = 'Total Berat'
                    DataBinding.FieldName = 'TotalBerat'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtTarifTypeId: TcxGridDBColumn
                    Caption = 'Tipe Tarif'
                    DataBinding.FieldName = 'TarifTypeId'
                    PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtPrice: TcxGridDBColumn
                    Caption = 'OPP'
                    DataBinding.FieldName = 'Price'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtPriceFra: TcxGridDBColumn
                    Caption = 'Freight'
                    DataBinding.FieldName = 'PriceFra'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtPricePort: TcxGridDBColumn
                    Caption = 'OPT / Door'
                    DataBinding.FieldName = 'PricePort'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtPricePacking: TcxGridDBColumn
                    Caption = 'Price Packing'
                    DataBinding.FieldName = 'PricePacking'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtTotalAmount: TcxGridDBColumn
                    AlternateCaption = 's'
                    Caption = 'Total Amount'
                    DataBinding.FieldName = 'TotalAmount'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Options.Editing = False
                  end
                  object cgvKonosemenDtModeCY: TcxGridDBColumn
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
                    Options.Editing = False
                  end
                end
                object cgShowKonosemenLevel1: TcxGridLevel
                  GridView = cgvShowKonosemen
                  object cgShowKonosemenLevel2: TcxGridLevel
                    GridView = cgvKonosemenDt
                  end
                end
              end
            end
          end
          object pnlSummary: TPanel
            Left = 0
            Top = 135
            Width = 740
            Height = 75
            Align = alBottom
            TabOrder = 1
            object Label19: TLabel
              Left = 13
              Top = 11
              Width = 52
              Height = 13
              Caption = 'Total Collie'
              Transparent = True
            end
            object Label20: TLabel
              Left = 242
              Top = 11
              Width = 42
              Height = 13
              Caption = 'Total M3'
              Transparent = True
            end
            object Label21: TLabel
              Left = 242
              Top = 29
              Width = 46
              Height = 13
              Caption = 'Total Ton'
              Transparent = True
            end
            object Label22: TLabel
              Left = 242
              Top = 47
              Width = 73
              Height = 13
              Caption = 'Total M3 + Ton'
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
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 391
      ExplicitLeft = 0
      ExplicitHeight = 391
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDaftarMuatKapal: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        object cgvPrevDaftarMuatKapal: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevDaftarMuatKapalDaftarMuatKapalCode: TcxGridDBColumn
            Caption = 'Kode Daftar Muat Kapal'
            DataBinding.FieldName = 'DaftarMuatKapalCode'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Width = 132
          end
          object cgvPrevDaftarMuatKapalDaftarMuatKapalDate: TcxGridDBColumn
            Caption = 'Tanggal Daftar Muat Kapal'
            DataBinding.FieldName = 'DaftarMuatKapalDate'
            Width = 148
          end
          object cgvPrevDaftarMuatKapalShipId: TcxGridDBColumn
            Caption = 'Kapal'
            DataBinding.FieldName = 'ShipId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.CharCase = ecUpperCase
          end
          object cgvPrevDaftarMuatKapalShipCrewId: TcxGridDBColumn
            DataBinding.FieldName = 'ShipCrewId'
            Visible = False
          end
          object cgvPrevDaftarMuatKapalEmployeeId: TcxGridDBColumn
            DataBinding.FieldName = 'EmployeeId'
            Visible = False
          end
          object cgvPrevDaftarMuatKapalDaftarMuatKapalOpen: TcxGridDBColumn
            DataBinding.FieldName = 'DaftarMuatKapalOpen'
            Visible = False
          end
          object cgvPrevDaftarMuatKapalDaftarMuatKapalClose: TcxGridDBColumn
            DataBinding.FieldName = 'DaftarMuatKapalClose'
            Visible = False
          end
          object cgvPrevDaftarMuatKapalDaftarMuatKapalDateGo: TcxGridDBColumn
            DataBinding.FieldName = 'DaftarMuatKapalDateGo'
            Visible = False
          end
          object cgvPrevDaftarMuatKapalStatementMemo: TcxGridDBColumn
            DataBinding.FieldName = 'StatementMemo'
            Visible = False
          end
          object cgvPrevDaftarMuatKapalInternalMemo: TcxGridDBColumn
            DataBinding.FieldName = 'InternalMemo'
            Visible = False
          end
          object cgvPrevDaftarMuatKapalCounterPrint: TcxGridDBColumn
            DataBinding.FieldName = 'CounterPrint'
            Visible = False
          end
          object cgvPrevDaftarMuatKapalStatusApprove: TcxGridDBColumn
            DataBinding.FieldName = 'StatusApprove'
            Visible = False
          end
          object cgvPrevDaftarMuatKapalTotalM3: TcxGridDBColumn
            DataBinding.FieldName = 'TotalM3'
            Visible = False
          end
          object cgvPrevDaftarMuatKapalTotalTon: TcxGridDBColumn
            DataBinding.FieldName = 'TotalTon'
            Visible = False
          end
        end
        object cgPrevDaftarMuatKapalLevel1: TcxGridLevel
          GridView = cgvPrevDaftarMuatKapal
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 616
    Top = 16
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 648
    Top = 16
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 680
    Top = 16
  end
  inherited dsDefault: TDataSource
    DataSet = qryDaftarMuatKapal
    Left = 240
    Top = 289
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 712
    Top = 16
  end
  inherited pmPrint: TPopupMenu
    Left = 648
    Top = 48
  end
  object qryDaftarMuatKapal: TADOQuery
    Active = True
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryDaftarMuatKapalBeforeInsert
    BeforePost = qryDaftarMuatKapalBeforePost
    AfterPost = qryDaftarMuatKapalAfterPost
    BeforeDelete = qryDaftarMuatKapalBeforeDelete
    AfterDelete = qryDaftarMuatKapalAfterDelete
    OnNewRecord = qryDaftarMuatKapalNewRecord
    Parameters = <
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from DaftarMuatKapal'
      'where DaftarMuatKapalDate between :StartDate and :EndDate'
      'order by DaftarMuatKapalCode')
    Left = 200
    Top = 289
  end
  object IvSearchBoxADO1: TIvSearchBoxADO
    About = 'Created by Ivan Handoyo'
    Connection = dmGlobal.conGlobal
    ColumnOptions = <
      item
        ColumnName = 'ShipName'
        Caption = 'Nama Kapal'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = True
      end
      item
        ColumnName = 'ShipCrewName'
        Caption = 'Nahkoda'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = True
      end
      item
        ColumnName = 'RouteName'
        Caption = 'Jurusan'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = True
      end
      item
        ColumnName = 'ShipId'
        Caption = 'ShipId'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end
      item
        ColumnName = 'ShipCrewId'
        Caption = 'ShipCrewId'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end
      item
        ColumnName = 'ShipId'
        Caption = 'ShipId'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end
      item
        ColumnName = 'RouteId'
        Caption = 'RouteId'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end
      item
        ColumnName = 'RouteCode'
        Caption = 'RouteCode'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end
      item
        ColumnName = 'ShipCrewCode'
        Caption = 'ShipCrewCode'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end
      item
        ColumnName = 'ShipCode'
        Caption = 'ShipCode'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Parameters = <>
    ShowKeyword = True
    SQL.Strings = (
      
        'Select Ship.ShipName, ShipCrew.ShipCrewName, Route.RouteName, Sh' +
        'ip.ShipId,'
      
        '  Route.RouteCode, Route.RouteName, ShipCrew.ShipCrewCode, Route' +
        '.RouteId,'
      '  ShipCrew.ShipCrewId, Ship.ShipCode'
      'From Ship Inner Join'
      
        '  ShipCrew On ShipCrew.StorageLocationId = Ship.StorageLocationI' +
        'd, Route')
    Version = '1.0'
    SettingFilename = 'Setting Supplies Receive.cfg'
    Left = 696
    Top = 120
  end
  object qryLogDaftarMuatKapal: TADOQuery
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
      
        'where TableName='#39'DaftarMuatKapal'#39' or TableName='#39'DaftarMuatKapalR' +
        'oute'#39
      'and keyfield=:keyfield'
      'order by TransactionDate desc')
    Left = 200
    Top = 352
  end
  object dsLogDaftarMuatKapal: TDataSource
    DataSet = qryLogDaftarMuatKapal
    Left = 240
    Top = 352
  end
  object qryPrevKonosemen: TADOQuery
    Active = True
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dsDaftarMuatKapalRoute
    Parameters = <
      item
        Name = 'DaftarMuatKapalRouteCode'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select *,'
      
        '(select sum(totalm3) from konosemendt where konosemencode=konose' +
        'men.konosemencode) as totalm3,'
      
        '(select sum(totalberat) from konosemendt where konosemencode=kon' +
        'osemen.konosemencode) as totalberat,'
      
        '(select sum(qty) from konosemendt where konosemencode=konosemen.' +
        'konosemencode) as totalcolie,'
      '(select sum(totalm3berat)'
      '  from'
      '  (select'
      '    case'
      '     when totalm3>totalberat then totalm3'
      '     else totalberat'
      '    end as totalm3berat'
      '  from'
      '  konosemendt where konosemencode=konosemen.konosemencode) a'
      '  )  as totalm3berat'
      'from Konosemen'
      'where DaftarMuatKapalRouteCode = :DaftarMuatKapalRouteCode'
      '')
    Left = 200
    Top = 384
  end
  object dsShowKonosemen: TDataSource
    DataSet = qryPrevKonosemen
    Left = 240
    Top = 384
  end
  object qryPrevKonosemenDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from KonosemenDt')
    Left = 200
    Top = 416
  end
  object dsPrevKonosemenDt: TDataSource
    DataSet = qryPrevKonosemenDt
    Left = 240
    Top = 416
  end
  object dsDaftarMuatKapalRoute: TDataSource
    DataSet = qryDaftarMuatKapalRoute
    OnStateChange = dsDefaultStateChange
    Left = 240
    Top = 321
  end
  object qryDaftarMuatKapalRoute: TADODataSet
    Active = True
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryDaftarMuatKapalRouteBeforeInsert
    BeforePost = qryDaftarMuatKapalRouteBeforePost
    AfterPost = qryDaftarMuatKapalRouteAfterPost
    BeforeDelete = qryDaftarMuatKapalRouteBeforeDelete
    OnNewRecord = qryDaftarMuatKapalRouteNewRecord
    CommandText = 'select * '#13#10'from DaftarMuatKapalRoute'
    DataSource = dsDefault
    IndexFieldNames = 'DaftarMuatKapalCode'
    MasterFields = 'DaftarMuatKapalCode'
    Parameters = <>
    Left = 200
    Top = 321
  end
end
