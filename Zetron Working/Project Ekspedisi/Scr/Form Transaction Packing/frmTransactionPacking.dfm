inherited fmTransactionPacking: TfmTransactionPacking
  Caption = 'Packing Transaction'
  ClientHeight = 480
  ClientWidth = 694
  ExplicitWidth = 702
  ExplicitHeight = 514
  DesignSize = (
    694
    480)
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel [0]
    Left = 423
    Top = 109
    Width = 66
    Height = 13
    Caption = 'Packing Name'
  end
  object Label9: TLabel [1]
    Left = 423
    Top = 128
    Width = 70
    Height = 13
    Caption = 'Lokasi Storage'
  end
  object Label10: TLabel [2]
    Left = 423
    Top = 147
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object Label11: TLabel [3]
    Left = 9
    Top = 121
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object Label12: TLabel [4]
    Left = 9
    Top = 102
    Width = 70
    Height = 13
    Caption = 'Lokasi Storage'
  end
  object Label13: TLabel [5]
    Left = 9
    Top = 83
    Width = 66
    Height = 13
    Caption = 'Packing Name'
  end
  inherited pnlMenu: TPanel
    Width = 694
    ExplicitWidth = 694
  end
  inherited pnlCustom: TPanel
    Width = 694
    ExplicitWidth = 694
  end
  inherited dxDockSite1: TdxDockSite
    Width = 694
    Height = 405
    ExplicitWidth = 694
    ExplicitHeight = 405
    DockType = 0
    OriginalWidth = 694
    OriginalHeight = 405
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 666
      Height = 405
      ExplicitWidth = 666
      ExplicitHeight = 405
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 666
        Height = 405
        ExplicitWidth = 666
        ExplicitHeight = 405
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 666
        Height = 405
        ExplicitWidth = 666
        ExplicitHeight = 405
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 662
          Height = 121
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object pnlLeft: TPanel
            Left = 0
            Top = 0
            Width = 662
            Height = 121
            Align = alClient
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object Label1: TLabel
              Left = 9
              Top = 24
              Width = 46
              Height = 13
              Caption = 'Tanggal *'
              Transparent = True
            end
            object Label7: TLabel
              Left = 9
              Top = 6
              Width = 63
              Height = 13
              Caption = 'No Packing *'
              Transparent = True
            end
            object Label3: TLabel
              Left = 362
              Top = 95
              Width = 22
              Height = 13
              Caption = 'Alias'
              Transparent = True
            end
            object Label4: TLabel
              Left = 9
              Top = 42
              Width = 46
              Height = 13
              Caption = 'Packing *'
              Transparent = True
            end
            object Label5: TLabel
              Left = 9
              Top = 60
              Width = 78
              Height = 13
              Caption = 'Lokasi Storage *'
              Transparent = True
            end
            object Label6: TLabel
              Left = 362
              Top = 77
              Width = 40
              Height = 13
              Caption = 'Jumlah *'
              Transparent = True
            end
            object Label14: TLabel
              Left = 362
              Top = 42
              Width = 36
              Height = 13
              Caption = 'Tinggi *'
              Transparent = True
            end
            object Label15: TLabel
              Left = 362
              Top = 24
              Width = 34
              Height = 13
              Caption = 'Lebar *'
              Transparent = True
            end
            object Label16: TLabel
              Left = 362
              Top = 6
              Width = 46
              Height = 13
              Caption = 'Panjang *'
              Transparent = True
            end
            object Label17: TLabel
              Left = 362
              Top = 60
              Width = 25
              Height = 13
              Caption = 'Berat'
              Transparent = True
            end
            object Label2: TLabel
              Left = 9
              Top = 77
              Width = 30
              Height = 13
              Caption = 'Rute *'
              Transparent = True
            end
            object Label18: TLabel
              Left = 9
              Top = 95
              Width = 31
              Height = 13
              Caption = 'Merk *'
              Transparent = True
            end
            object dbePackingTransactionDate: TcxDBDateEdit
              Left = 109
              Top = 21
              DataBinding.DataField = 'PackingTransactionDate'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Width = 154
            end
            object dbePackingTransactionCode: TcxDBTextEdit
              Left = 109
              Top = 3
              DataBinding.DataField = 'PackingTransactionCode'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.OnEditValueChanged = dbePackingTransactionCodePropertiesEditValueChanged
              TabOrder = 0
              Width = 188
            end
            object dbePackingAlias: TcxDBTextEdit
              Left = 417
              Top = 92
              DataBinding.DataField = 'PackingAlias'
              DataBinding.DataSource = dsDefault
              TabOrder = 11
              Width = 154
            end
            object dbeUnitMeasureId: TcxDBExtLookupComboBox
              Left = 109
              Top = 39
              DataBinding.DataField = 'UnitMeasureId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmEkspedisi.cgvPrevUnitMeasure
              Properties.KeyFieldNames = 'UnitMeasureId'
              Properties.ListFieldItem = dmEkspedisi.cgvPrevUnitMeasureUnitMeasureCode
              TabOrder = 2
              Width = 188
            end
            object dblcStorageLocationId: TcxDBExtLookupComboBox
              Left = 109
              Top = 57
              DataBinding.DataField = 'StorageLocationId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmEkspedisi.cgvPrevStorageLocation
              Properties.KeyFieldNames = 'StorageLocationId'
              Properties.ListFieldItem = dmEkspedisi.cgvPrevStorageLocationStorageLocationName
              Properties.OnEditValueChanged = dblcStorageLocationIdPropertiesEditValueChanged
              TabOrder = 3
              Width = 188
            end
            object dblcRute: TcxDBExtLookupComboBox
              Left = 109
              Top = 74
              DataBinding.DataField = 'RouteId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmEkspedisi.cgvPrevRoute
              Properties.KeyFieldNames = 'RouteId'
              Properties.ListFieldItem = dmEkspedisi.cgvPrevRouteRouteName
              TabOrder = 4
              Width = 188
            end
            object dblcMerk: TcxDBExtLookupComboBox
              Left = 109
              Top = 92
              DataBinding.DataField = 'MerekId'
              DataBinding.DataSource = dsDefault
              Properties.View = dmEkspedisi.cgvPrevMerekByRoute
              Properties.KeyFieldNames = 'MerekId'
              Properties.ListFieldItem = dmEkspedisi.cgvPrevMerekByRouteMerekName
              TabOrder = 5
              Width = 188
            end
            object dbceLebar: TcxDBCurrencyEdit
              Left = 417
              Top = 21
              DataBinding.DataField = 'L'
              DataBinding.DataSource = dsDefault
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.UseThousandSeparator = True
              TabOrder = 7
              Width = 121
            end
            object dbcePanjang: TcxDBCurrencyEdit
              Left = 417
              Top = 3
              DataBinding.DataField = 'P'
              DataBinding.DataSource = dsDefault
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.UseThousandSeparator = True
              TabOrder = 6
              Width = 121
            end
            object dbceTinggi: TcxDBCurrencyEdit
              Left = 417
              Top = 39
              DataBinding.DataField = 'T'
              DataBinding.DataSource = dsDefault
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.UseThousandSeparator = True
              TabOrder = 8
              Width = 121
            end
            object dbceBerat: TcxDBCurrencyEdit
              Left = 417
              Top = 57
              DataBinding.DataField = 'Berat'
              DataBinding.DataSource = dsDefault
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.UseThousandSeparator = True
              TabOrder = 9
              Width = 121
            end
            object dbceJumlah: TcxDBCurrencyEdit
              Left = 417
              Top = 74
              DataBinding.DataField = 'Qty'
              DataBinding.DataSource = dsDefault
              Properties.DisplayFormat = ',0.;(,0.)'
              Properties.UseThousandSeparator = True
              TabOrder = 10
              Width = 121
            end
            object BtnSearchRuteMerk: TcxButton
              Left = 303
              Top = 76
              Width = 33
              Height = 34
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
                000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
                00000000000000FFFFFF000000FFFFFF000000000000000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF000000FFFFFF000000000000000000FFFFFF000000FFFFFF
                000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF0000
                00000000000000FFFFFF000000000000000000000000000000000000000000FF
                FFFF000000000000000000000000000000000000000000FFFFFF000000000000
                FFFFFF000000000000000000000000000000000000FFFFFF0000000000000000
                00000000000000FFFFFF000000000000FFFFFF000000000000000000C6C6C600
                0000000000FFFFFF000000000000000000000000000000FFFFFF000000000000
                FFFFFF000000000000000000C6C6C6000000000000FFFFFF0000000000000000
                00000000000000FFFFFFFFFFFF00000000000000000000000000000000000000
                0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
                000000FFFFFF000000000000000000FFFFFF000000FFFFFF0000000000000000
                00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FF
                FFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFF
                FFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 12
              OnClick = BtnSearchRuteMerkClick
            end
            object btnTutup: TcxButton
              Left = 613
              Top = 6
              Width = 48
              Height = 34
              Caption = 'Buka'
              TabOrder = 13
              OnClick = btnTutupClick
            end
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 121
          Width = 662
          Height = 280
          Align = alClient
          Caption = 'Panel1'
          TabOrder = 1
          object pcBody: TcxPageControl
            Left = 1
            Top = 1
            Width = 660
            Height = 203
            ActivePage = tsDipendencies
            Align = alClient
            Images = dmGlobal.imgIconTabSheet
            NavigatorPosition = npLeftBottom
            Options = [pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
            Rotate = True
            TabOrder = 0
            TabPosition = tpRight
            ClientRectBottom = 203
            ClientRectRight = 622
            ClientRectTop = 0
            object tsDetail: TcxTabSheet
              ImageIndex = 0
              object cgPackingTransaction: TcxGrid
                Left = 0
                Top = 0
                Width = 622
                Height = 203
                Align = alClient
                TabOrder = 0
                object cgvPackingTransactionDt: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.First.Visible = False
                  NavigatorButtons.PriorPage.Visible = False
                  NavigatorButtons.Prior.Visible = False
                  NavigatorButtons.Next.Visible = False
                  NavigatorButtons.NextPage.Visible = False
                  NavigatorButtons.Last.Visible = False
                  NavigatorButtons.Insert.Visible = True
                  NavigatorButtons.Delete.Visible = True
                  NavigatorButtons.Edit.Visible = True
                  NavigatorButtons.Post.Visible = True
                  NavigatorButtons.Cancel.Visible = True
                  NavigatorButtons.SaveBookmark.Visible = False
                  NavigatorButtons.GotoBookmark.Visible = False
                  NavigatorButtons.Filter.Visible = False
                  DataController.DataSource = dsPackingTransactionDt
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skSum
                      FieldName = 'Qty'
                      Column = cgvPackingTransactionDtQty
                    end
                    item
                      Kind = skSum
                      FieldName = 'TotalM3'
                      Column = cgvPackingTransactionDtTotalM3
                    end
                    item
                      Kind = skSum
                      FieldName = 'TotalBerat'
                      Column = cgvPackingTransactionDtTotalBerat
                    end
                    item
                      Kind = skSum
                      FieldName = 'TotM3Ton'
                      Column = cgvPackingTransactionDtTotM3Ton
                    end>
                  DataController.Summary.SummaryGroups = <>
                  DataController.Summary.OnAfterSummary = cgvPackingTransactionDtDataControllerSummaryAfterSummary
                  NewItemRow.Visible = True
                  OptionsView.Navigator = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  object cgvPackingTransactionDtPackingTransactionNo: TcxGridDBColumn
                    Caption = 'No *'
                    DataBinding.FieldName = 'PackingTransactionNo'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                    Options.Editing = False
                    Styles.Content = dmGlobal.stYellowLight
                    Width = 48
                  end
                  object cgvPackingTransactionDtSuppliesCode: TcxGridDBColumn
                    Caption = 'Kode *'
                    DataBinding.FieldName = 'SuppliesCode'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = cgvPackingTransactionDtSuppliesCodePropertiesButtonClick
                    Width = 155
                  end
                  object cgvPackingTransactionDtSuppliesName: TcxGridDBColumn
                    Caption = 'Nama Barang *'
                    DataBinding.FieldName = 'SuppliesName'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                    Width = 197
                  end
                  object cgvPackingTransactionDtQty: TcxGridDBColumn
                    Caption = 'Jumlah'
                    DataBinding.FieldName = 'Qty'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = False
                    Width = 73
                  end
                  object cgvPackingTransactionDtSisa: TcxGridDBColumn
                    Caption = 'Sisa'
                    DataBinding.FieldName = 'QtyOutStanding'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                    Options.Editing = False
                    Styles.Content = dmGlobal.stYellowLight
                  end
                  object cgvPackingTransactionDtItemReceiveCode: TcxGridDBColumn
                    Caption = 'No SJ *'
                    DataBinding.FieldName = 'ItemReceiveCode'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                    Visible = False
                    Options.Editing = False
                    Styles.Content = dmGlobal.stYellowLight
                  end
                  object cgvPackingTransactionDtNo: TcxGridDBColumn
                    Caption = 'No PSJ'
                    DataBinding.FieldName = 'PackingTransactionNo'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                    Visible = False
                    Options.Editing = False
                    Styles.Content = dmGlobal.stYellowLight
                    Width = 73
                  end
                  object cgvPackingTransactionDtPackingTransactionCode: TcxGridDBColumn
                    Caption = 'No Packing'
                    DataBinding.FieldName = 'PackingTransactionCode'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                    Visible = False
                    Options.Editing = False
                    Styles.Content = dmGlobal.stYellowLight
                  end
                  object cgvPackingTransactionDtNo1: TcxGridDBColumn
                    DataBinding.FieldName = 'No'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                    Visible = False
                    Options.Editing = False
                    Styles.Content = dmGlobal.stYellowLight
                  end
                  object cgvPackingTransactionDtP: TcxGridDBColumn
                    DataBinding.FieldName = 'P'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Visible = False
                    Options.Editing = False
                    Styles.Content = dmGlobal.stYellowLight
                  end
                  object cgvPackingTransactionDtL: TcxGridDBColumn
                    DataBinding.FieldName = 'L'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Visible = False
                    Options.Editing = False
                    Styles.Content = dmGlobal.stYellowLight
                  end
                  object cgvPackingTransactionDtT: TcxGridDBColumn
                    DataBinding.FieldName = 'T'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Visible = False
                    Options.Editing = False
                    Styles.Content = dmGlobal.stYellowLight
                  end
                  object cgvPackingTransactionDtBerat: TcxGridDBColumn
                    DataBinding.FieldName = 'Berat'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Visible = False
                    Options.Editing = False
                    Styles.Content = dmGlobal.stYellowLight
                  end
                  object cgvPackingTransactionDtUnitMeasure: TcxGridDBColumn
                    Caption = 'Satuan'
                    DataBinding.FieldName = 'UnitMeasureId'
                    PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                    Properties.View = dmEkspedisi.cgvPrevUnitMeasure
                    Properties.KeyFieldNames = 'UnitMeasureId'
                    Properties.ListFieldItem = dmEkspedisi.cgvPrevUnitMeasureUnitMeasureName
                    Visible = False
                    Options.Editing = False
                    Styles.Content = dmGlobal.stYellowLight
                  end
                  object cgvPackingTransactionDtTotalM3: TcxGridDBColumn
                    Caption = 'Total M3'
                    DataBinding.FieldName = 'TotalM3'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Options.Editing = False
                    Options.Focusing = False
                    Styles.Content = dmGlobal.stYellowLight
                  end
                  object cgvPackingTransactionDtTotalBerat: TcxGridDBColumn
                    Caption = 'Total Ton'
                    DataBinding.FieldName = 'TotalBerat'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Options.Editing = False
                    Options.Focusing = False
                    Styles.Content = dmGlobal.stYellowLight
                  end
                  object cgvPackingTransactionDtQtyTotal: TcxGridDBColumn
                    DataBinding.FieldName = 'QtyTotal'
                    Visible = False
                  end
                  object cgvPackingTransactionDtTotM3Ton: TcxGridDBColumn
                    DataBinding.FieldName = 'TotM3Ton'
                    Visible = False
                    Options.Editing = False
                  end
                end
                object cgPackingTransactionLevel1: TcxGridLevel
                  GridView = cgvPackingTransactionDt
                end
              end
            end
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
                Height = 203
                Width = 622
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
                Height = 203
                Width = 622
              end
            end
            object tsDipendencies: TcxTabSheet
              Hint = 'Ketergantungan'
              ImageIndex = 4
              object cgDependencies: TcxGrid
                Left = 0
                Top = 0
                Width = 622
                Height = 203
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
                  DataController.DataSource = dsLogTransactionPacking
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
          end
          object pnlSummary: TPanel
            Left = 1
            Top = 204
            Width = 660
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
      Height = 405
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 383
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1PackingTransactionCode: TcxGridDBColumn
            Caption = 'No Packing'
            DataBinding.FieldName = 'PackingTransactionCode'
            Width = 83
          end
          object cxGrid1DBTableView1PackingID: TcxGridDBColumn
            Caption = 'Packing'
            DataBinding.FieldName = 'PackingID'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          end
          object cxGrid1DBTableView1StorageLocationId: TcxGridDBColumn
            Caption = 'Lokasi'
            DataBinding.FieldName = 'StorageLocationId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmEkspedisi.cgvPrevStorageLocation
            Properties.KeyFieldNames = 'StorageLocationId'
            Properties.ListFieldItem = dmEkspedisi.cgvPrevStorageLocationStorageLocationName
            Width = 56
          end
          object cxGrid1DBTableView1PackingTransactionDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'PackingTransactionDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 53
          end
          object cxGrid1DBTableView1PackingDelivered: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'PackingDelivered'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Not Delivered'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Delivered'
                Value = '1'
              end>
            Width = 68
          end
          object cxGrid1DBTableView1PackingAlias: TcxGridDBColumn
            Caption = 'Alias'
            DataBinding.FieldName = 'PackingAlias'
            Width = 95
          end
          object cxGrid1DBTableView1Qty: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'Qty'
          end
          object cxGrid1DBTableView1T: TcxGridDBColumn
            DataBinding.FieldName = 'T'
            Visible = False
          end
          object cxGrid1DBTableView1L: TcxGridDBColumn
            DataBinding.FieldName = 'L'
            Visible = False
          end
          object cxGrid1DBTableView1P: TcxGridDBColumn
            DataBinding.FieldName = 'P'
            Visible = False
          end
          object cxGrid1DBTableView1OtyOutStanding: TcxGridDBColumn
            DataBinding.FieldName = 'OtyOutStanding'
            Visible = False
          end
          object cxGrid1DBTableView1Price: TcxGridDBColumn
            DataBinding.FieldName = 'Price'
            Visible = False
          end
          object cxGrid1DBTableView1StatementMemo: TcxGridDBColumn
            DataBinding.FieldName = 'StatementMemo'
            Visible = False
          end
          object cxGrid1DBTableView1InternalMemo: TcxGridDBColumn
            DataBinding.FieldName = 'InternalMemo'
            Visible = False
          end
          object cxGrid1DBTableView1EmployeeId: TcxGridDBColumn
            DataBinding.FieldName = 'EmployeeId'
            Visible = False
          end
          object cxGrid1DBTableView1CounterPrint: TcxGridDBColumn
            DataBinding.FieldName = 'CounterPrint'
            Visible = False
          end
          object cxGrid1DBTableView1StatusApprove: TcxGridDBColumn
            DataBinding.FieldName = 'StatusApprove'
            Visible = False
          end
          object cxGrid1DBTableView1Berat: TcxGridDBColumn
            DataBinding.FieldName = 'Berat'
          end
          object cxGrid1DBTableView1MerekId: TcxGridDBColumn
            DataBinding.FieldName = 'MerekId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          end
          object cxGrid1DBTableView1RouteId: TcxGridDBColumn
            DataBinding.FieldName = 'RouteId'
          end
          object cxGrid1DBTableView1TotalBerat: TcxGridDBColumn
            DataBinding.FieldName = 'TotalBerat'
          end
          object cxGrid1DBTableView1TotalM3: TcxGridDBColumn
            DataBinding.FieldName = 'TotalM3'
          end
          object cxGrid1DBTableView1PackingClose: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'PackingClose'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = 'Tutup'
            Properties.DisplayUnchecked = 'Buka'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 608
    Top = 344
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 640
    Top = 344
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 672
    Top = 344
  end
  inherited dsDefault: TDataSource
    DataSet = qryPackingTransactionHd
    OnDataChange = dsDefaultDataChange
    Left = 576
    Top = 376
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 704
    Top = 344
  end
  inherited pmPrint: TPopupMenu
    Left = 640
    Top = 376
  end
  object qryPackingTransactionHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryPackingTransactionHdBeforeInsert
    BeforePost = qryPackingTransactionHdBeforePost
    AfterPost = qryPackingTransactionHdAfterPost
    BeforeDelete = qryPackingTransactionHdBeforeDelete
    AfterDelete = qryPackingTransactionHdAfterDelete
    OnNewRecord = qryPackingTransactionHdNewRecord
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
      'from PackingTransactionHd'
      'where PackingTransactionDate between :StartDate and :EndDate'
      'order by PackingTransactionCode;')
    Left = 576
    Top = 344
  end
  object qryPackingTransactionDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryPackingTransactionDtBeforePost
    AfterPost = qryPackingTransactionDtAfterPost
    BeforeDelete = qryPackingTransactionDtBeforeDelete
    AfterDelete = qryPackingTransactionDtAfterDelete
    OnNewRecord = qryPackingTransactionDtNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'PackingTransactionCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select *,'
      'case'
      ' when totalm3>totalberat then totalm3 '
      ' else totalberat '
      'end as TotM3Ton '
      'from PackingTransactionDt '
      'where PackingTransactionCode=:PackingTransactionCode')
    Left = 544
    Top = 344
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 576
    Top = 256
    object cgvPrevSuppliesReceiveDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevSuppliesReceiveDt
      DataController.KeyFieldNames = 'No'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevSuppliesReceiveDtItemRecCode: TcxGridDBColumn
        Caption = 'No Surat Jalan'
        DataBinding.FieldName = 'ItemRecCode'
      end
      object cgvPrevSuppliesReceiveDtNo: TcxGridDBColumn
        DataBinding.FieldName = 'No'
      end
      object cgvPrevSuppliesReceiveDtMerekId: TcxGridDBColumn
        Caption = 'Merek'
        DataBinding.FieldName = 'MerekId'
      end
      object cgvPrevSuppliesReceiveDtSuppliesCode: TcxGridDBColumn
        Caption = 'Kode Barang'
        DataBinding.FieldName = 'SuppliesCode'
      end
      object cgvPrevSuppliesReceiveDtSuppliesName: TcxGridDBColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'SuppliesName'
      end
      object cgvPrevSuppliesReceiveDtqty: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'qty'
      end
    end
  end
  object dsPackingTransactionDt: TDataSource
    DataSet = qryPackingTransactionDt
    OnDataChange = dsPackingTransactionDtDataChange
    Left = 544
    Top = 376
  end
  object dsPrevSuppliesReceiveDt: TDataSource
    DataSet = qryPrevSuppliesReceiveDt
    Left = 512
    Top = 376
  end
  object qryPrevSuppliesReceiveDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    OnNewRecord = qryPrevSuppliesReceiveDtNewRecord
    Parameters = <
      item
        Name = 'lokasi'
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
        Name = 'MerekId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.ItemReceiveCode as ItemRecCode, No, MerekId, SuppliesCo' +
        'de, SuppliesName,a.qty,a.qtyoutstanding'
      'from SuppliesReceiveDt a'
      
        'left join SuppliesReceiveHd b on a.ItemReceiveCode=b.ItemReceive' +
        'Code'
      'where cast(a.StorageLocationId as varchar) like :lokasi'
      'and cast(b.RouteId as varchar) like :RouteId'
      'and cast(b.MerekId as varchar) like :MerekId')
    Left = 512
    Top = 344
  end
  object mdPackingItem: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 656
    Top = 160
  end
  object IvSearchBoxADO1: TIvSearchBoxADO
    About = 'Created by Ivan Handoyo'
    Connection = dmGlobal.conGlobal
    ColumnOptions = <
      item
        ColumnName = 'CustomerName'
        Caption = 'CustomerName'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = True
      end
      item
        ColumnName = 'MerekName'
        Caption = 'MerekName'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = True
      end
      item
        ColumnName = 'RouteName'
        Caption = 'RouteName'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = True
      end
      item
        ColumnName = '*'
        Caption = '*'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end
      item
        ColumnName = 'CustomerCode'
        Caption = 'CustomerCode'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end
      item
        ColumnName = 'MerekCode'
        Caption = 'MerekCode'
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
        ColumnName = 'CustomerId'
        Caption = 'CustomerId'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end
      item
        ColumnName = 'MerekId'
        Caption = 'MerekId'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end>
    Parameters = <
      item
        Name = 'storagelocationid'
        DataType = ftWideString
        Size = -1
        Value = Null
      end
      item
        Name = 'storagelocationid'
        Size = -1
        Value = Null
      end>
    ShowKeyword = True
    SQL.Strings = (
      
        'Select Distinct a.CustomerName, a.MerekName, a.RouteName, a.Cust' +
        'omerCode,'
      '  a.MerekCode, a.RouteCode, a.CustomerId, a.MerekId, a.RouteId'
      
        'From (Select e.CustomerCode, e.CustomerName, c.MerekCode, c.Mere' +
        'kName,'
      
        '      d.RouteCode, d.RouteName, e.CustomerId, c.MerekId, d.Route' +
        'Id'
      '    From stock a Left Join'
      
        '      suppliesreceivehd b On a.itemreceivecode = b.itemreceiveco' +
        'de Left Join'
      '      Merek c On b.MerekId = c.MerekId Left Join'
      '      Route d On b.RouteId = d.RouteId Left Join'
      '      Customer e On c.CustomerId = e.CustomerId'
      '    Where a.storagelocationid = :storagelocationid And'
      '      a.PackingTransactionCode Is Null'
      '    union'
      
        '    Select e.CustomerCode, e.CustomerName, c.MerekCode, c.MerekN' +
        'ame,'
      
        '      d.RouteCode, d.RouteName, e.CustomerId, c.MerekId, d.Route' +
        'Id'
      '    From stock a Left Join'
      '      packingtransactionhd b On a.PackingTransactionCode ='
      '        b.PackingTransactionCode Left Join'
      '      Merek c On b.MerekId = c.MerekId Left Join'
      '      Route d On b.RouteId = d.RouteId Left Join'
      '      Customer e On c.CustomerId = e.CustomerId'
      '    Where a.storagelocationid = :storagelocationid And'
      '      Not (a.PackingTransactionCode Is Null)) a')
    Version = '1.0'
    SettingFilename = 'Setting Supplies Receive.cfg'
    Left = 440
    Top = 256
  end
  object qryLogTransactionPacking: TADOQuery
    Active = True
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
      
        'where TableName='#39'PackingTransactionHd'#39' or TableName='#39'PackingTran' +
        'sactionDt'#39
      'and keyfield=:keyfield'
      'order by TransactionDate')
    Left = 480
    Top = 344
  end
  object dsLogTransactionPacking: TDataSource
    DataSet = qryLogTransactionPacking
    Left = 480
    Top = 376
  end
end
