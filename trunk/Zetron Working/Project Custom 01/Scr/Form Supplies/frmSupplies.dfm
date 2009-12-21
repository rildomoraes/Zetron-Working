inherited fmSupplies: TfmSupplies
  Caption = 'Barang'
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
        object pnlEntry: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 73
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblIdSupplies: TLabel
            Left = 8
            Top = 29
            Width = 62
            Height = 13
            Caption = 'Kode Barang'
            Transparent = True
          end
          object Kategori: TLabel
            Left = 8
            Top = 10
            Width = 39
            Height = 13
            Caption = 'Kategori'
            Transparent = True
          end
          object lblSuppliesName: TLabel
            Left = 8
            Top = 47
            Width = 65
            Height = 13
            Caption = 'Nama Barang'
            Transparent = True
          end
          object dbeIdSupplies: TcxDBTextEdit
            Left = 104
            Top = 26
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdSupplies'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 185
          end
          object dblcSuppliesCategory: TcxDBExtLookupComboBox
            Left = 104
            Top = 8
            BeepOnEnter = False
            DataBinding.DataField = 'vcIdSuppliesCategory'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvSuppliesCategory
            Properties.KeyFieldNames = 'vcIdSuppliesCategory'
            Properties.ListFieldItem = dmInventory.cgvSuppliesCategoryvcSuppliesCategoryCode
            TabOrder = 0
            Width = 185
          end
          object dbeSuppliesName: TcxDBTextEdit
            Left = 104
            Top = 44
            BeepOnEnter = False
            DataBinding.DataField = 'vcSuppliesName'
            DataBinding.DataSource = dsDefault
            TabOrder = 2
            Width = 313
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 73
          Width = 560
          Height = 239
          ActivePage = tsDetail
          Align = alClient
          TabOrder = 1
          ClientRectBottom = 233
          ClientRectLeft = 3
          ClientRectRight = 554
          ClientRectTop = 26
          object tsDetail: TcxTabSheet
            Caption = 'Detail'
            ImageIndex = 2
            object lblUnitOfMeasure: TLabel
              Left = 8
              Top = 29
              Width = 34
              Height = 13
              Caption = 'Satuan'
              Transparent = True
            end
            object lblMerk: TLabel
              Left = 8
              Top = 46
              Width = 30
              Height = 13
              Caption = 'Merek'
              Transparent = True
            end
            object lblType: TLabel
              Left = 8
              Top = 64
              Width = 21
              Height = 13
              Caption = 'Tipe'
              Transparent = True
            end
            object lblMinStockOverAll: TLabel
              Left = 8
              Top = 82
              Width = 75
              Height = 13
              Caption = 'Min Stok (Total)'
              Transparent = True
            end
            object lblEmployeeName: TLabel
              Left = 8
              Top = 101
              Width = 41
              Height = 13
              Caption = 'Pegawai'
              Transparent = True
            end
            object dbeMerk: TcxDBTextEdit
              Left = 104
              Top = 44
              BeepOnEnter = False
              DataBinding.DataField = 'vcMerk'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Width = 185
            end
            object dbeType: TcxDBTextEdit
              Left = 104
              Top = 62
              BeepOnEnter = False
              DataBinding.DataField = 'vcType'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Width = 185
            end
            object dbeMinStock: TcxDBCurrencyEdit
              Left = 104
              Top = 80
              BeepOnEnter = False
              DataBinding.DataField = 'inMinStock'
              DataBinding.DataSource = dsDefault
              TabOrder = 2
              Width = 185
            end
            object dbchkFlagService: TcxDBCheckBox
              Left = 104
              Top = 120
              Caption = 'Barang Non Stock'
              DataBinding.DataField = 'chFlagService'
              DataBinding.DataSource = dsDefault
              Enabled = False
              ParentColor = False
              Properties.Alignment = taRightJustify
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 3
              Transparent = True
              Width = 117
            end
            object dbeEmployeeName: TcxDBTextEdit
              Left = 104
              Top = 98
              TabStop = False
              BeepOnEnter = False
              DataBinding.DataField = 'vcEmployeeName'
              DataBinding.DataSource = dsDefault
              Properties.ReadOnly = True
              Style.Color = clWindow
              TabOrder = 4
              Width = 185
            end
            object dblcUnitOfMeasure: TcxDBTextEdit
              Left = 104
              Top = 26
              BeepOnEnter = False
              DataBinding.DataField = 'vcIdUnitOfMeasure'
              DataBinding.DataSource = dsDefault
              TabOrder = 5
              Width = 185
            end
          end
          object tsPrice: TcxTabSheet
            Caption = 'Harga'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label1: TLabel
              Left = 8
              Top = 10
              Width = 34
              Height = 13
              Caption = 'Eceran'
              Transparent = True
            end
            object Label2: TLabel
              Left = 167
              Top = 10
              Width = 31
              Height = 13
              Caption = 'Dealer'
              Transparent = True
            end
            object Label3: TLabel
              Left = 322
              Top = 10
              Width = 37
              Height = 13
              Caption = 'Cabang'
              Transparent = True
            end
            object dbePrice1: TcxDBCalcEdit
              Left = 48
              Top = 26
              BeepOnEnter = False
              DataBinding.DataField = 'dcPrice1'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Width = 105
            end
            object dbePrice2: TcxDBCalcEdit
              Left = 204
              Top = 26
              BeepOnEnter = False
              DataBinding.DataField = 'dcPrice2'
              DataBinding.DataSource = dsDefault
              TabOrder = 3
              Width = 105
            end
            object dbePrice3: TcxDBCalcEdit
              Left = 365
              Top = 26
              BeepOnEnter = False
              DataBinding.DataField = 'dcPrice3'
              DataBinding.DataSource = dsDefault
              TabOrder = 5
              Width = 105
            end
            object dbcStatusCurrency1: TcxDBImageComboBox
              Left = 48
              Top = 8
              BeepOnEnter = False
              DataBinding.DataField = 'chStatusCurrency1'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'RP'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'USD'
                  Value = '1'
                end
                item
                  Description = 'YEN'
                  Value = '2'
                end>
              TabOrder = 0
              Width = 105
            end
            object dbcStatusCurrency2: TcxDBImageComboBox
              Left = 204
              Top = 8
              BeepOnEnter = False
              DataBinding.DataField = 'chStatusCurrency2'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'RP'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'USD'
                  Value = '1'
                end
                item
                  Description = 'YEN'
                  Value = '2'
                end>
              TabOrder = 2
              Width = 105
            end
            object dbcStatusCurrency3: TcxDBImageComboBox
              Left = 365
              Top = 8
              BeepOnEnter = False
              DataBinding.DataField = 'chStatusCurrency3'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'RP'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'USD'
                  Value = '1'
                end
                item
                  Description = 'YEN'
                  Value = '2'
                end>
              TabOrder = 4
              Width = 105
            end
          end
          object tsMinStock: TcxTabSheet
            Caption = 'Min Stock'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGrid1: TcxGrid
              Left = 0
              Top = 0
              Width = 551
              Height = 207
              Align = alClient
              TabOrder = 0
              object cgvSuppliesMinStock: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Post.Visible = True
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsSuppliesMinStock
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvSuppliesMinStockvcIdSupplies: TcxGridDBColumn
                  Caption = 'Barang'
                  DataBinding.FieldName = 'vcIdSupplies'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cgvSuppliesMinStockvcIdWarehouse: TcxGridDBColumn
                  Caption = 'Gudang'
                  DataBinding.FieldName = 'vcIdWarehouse'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmInventory.cgvWarehouse
                  Properties.KeyFieldNames = 'vcIdWarehouse'
                  Properties.ListFieldItem = dmInventory.cgvWarehousevcWarehouseName
                end
                object cgvSuppliesMinStockinMinStock: TcxGridDBColumn
                  Caption = 'Qty Min'
                  DataBinding.FieldName = 'inMinStock'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cgvSuppliesMinStock
              end
            end
          end
          object tsNotes: TcxTabSheet
            Caption = 'Notes'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object dbmNotes: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'vcNotes'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Height = 207
              Width = 551
            end
          end
          object tsImage: TcxTabSheet
            Caption = 'Image'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object dbiImage1: TcxDBImage
              Left = 0
              Top = -1
              DataBinding.DataField = 'blImage1'
              DataBinding.DataSource = dsSuppliesImage
              Properties.GraphicClassName = 'TJPEGImage'
              TabOrder = 0
              Height = 229
              Width = 264
            end
            object dbiImage2: TcxDBImage
              Left = 270
              Top = 0
              DataBinding.DataField = 'blImage2'
              DataBinding.DataSource = dsSuppliesImage
              Properties.GraphicClassName = 'TJPEGImage'
              TabOrder = 1
              Height = 229
              Width = 264
            end
          end
          object cxTabSheet1: TcxTabSheet
            Caption = 'Assembly'
            ImageIndex = 5
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cgSuppliesDetail: TcxGrid
              Left = 0
              Top = 26
              Width = 551
              Height = 181
              Align = alClient
              TabOrder = 0
              object cgvSuppliesDetail: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsSuppliesDt
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvSuppliesDetailvcIdSuppliesParent: TcxGridDBColumn
                  DataBinding.FieldName = 'vcIdSuppliesParent'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cgvSuppliesDetailvcIdSupplies: TcxGridDBColumn
                  Caption = 'Kode'
                  DataBinding.FieldName = 'vcIdSupplies'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevSuppliesDt
                  Properties.KeyFieldNames = 'vcIdSupplies'
                  Properties.ListFieldItem = cgvPrevSuppliesDtvcIdSupplies
                end
                object cgvSuppliesDetailvcIdSupplies2: TcxGridDBColumn
                  Caption = 'Bahan'
                  DataBinding.FieldName = 'vcIdSupplies'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevSuppliesDt
                  Properties.KeyFieldNames = 'vcIdSupplies'
                  Properties.ListFieldItem = cgvPrevSuppliesDtvcSuppliesName
                end
                object cgvSuppliesDetailvcIdSupplies3: TcxGridDBColumn
                  Caption = 'Kategori'
                  DataBinding.FieldName = 'vcIdSupplies'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevSuppliesDt
                  Properties.KeyFieldNames = 'vcIdSupplies'
                  Properties.ListFieldItem = cgvPrevSuppliesDtvcIdSuppliesCategory
                end
                object cgvSuppliesDetailvcIdSupplies4: TcxGridDBColumn
                  Caption = 'Tipe'
                  DataBinding.FieldName = 'vcIdSupplies'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = cgvPrevSuppliesDt
                  Properties.KeyFieldNames = 'vcIdSupplies'
                  Properties.ListFieldItem = cgvPrevSuppliesDtvcType
                end
                object cgvSuppliesDetailinQty: TcxGridDBColumn
                  Caption = 'Qty'
                  DataBinding.FieldName = 'inQty'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
              end
              object cgSuppliesDetailLevel1: TcxGridLevel
                GridView = cgvSuppliesDetail
              end
            end
            object pnlCoupleHeader: TPanel
              Left = 0
              Top = 0
              Width = 551
              Height = 26
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object dbchkCouple: TcxDBCheckBox
                Left = 4
                Top = 5
                Caption = 'Barang Master Couple / Assemby'
                DataBinding.DataField = 'flagcouple'
                DataBinding.DataSource = dsDefault
                ParentColor = False
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                TabOrder = 0
                Transparent = True
                Width = 196
              end
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      ExplicitLeft = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvSupplies: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvSuppliesvcIdSupplies: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdSupplies'
            Width = 87
          end
          object cgvSuppliesvcSuppliesName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcSuppliesName'
          end
          object cgvSuppliesvcIdSuppliesCategory: TcxGridDBColumn
            Caption = 'Kategori'
            DataBinding.FieldName = 'vcIdSuppliesCategory'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Width = 135
          end
          object cgvSuppliesvcMerk: TcxGridDBColumn
            Caption = 'Merek'
            DataBinding.FieldName = 'vcMerk'
            Visible = False
          end
          object cgvSuppliesvcType: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'vcType'
            Visible = False
          end
          object cgvSuppliesinMinStock: TcxGridDBColumn
            Caption = 'Min Stok'
            DataBinding.FieldName = 'inMinStock'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Width = 64
          end
          object cgvSuppliesvcNotes: TcxGridDBColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'vcNotes'
            PropertiesClassName = 'TcxMemoProperties'
            Visible = False
          end
          object cgvSupplieschFlagService: TcxGridDBColumn
            Caption = 'Barang Non Stok'
            DataBinding.FieldName = 'chFlagService'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Visible = False
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvSupplies
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmInventory.qrySupplies
    OnDataChange = dsDefaultDataChange
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  object qrySuppliesMinStock: TADODataSet [6]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qrySuppliesMinStockBeforePost
    CommandText = 'select *'#13#10'from tbIMSuppliesMinStock'
    DataSource = dsDefault
    IndexFieldNames = 'vcIdSupplies'
    MasterFields = 'vcIdSupplies'
    Parameters = <>
    Left = 136
    Top = 176
  end
  object dsSuppliesMinStock: TDataSource [7]
    DataSet = qrySuppliesMinStock
    Left = 168
    Top = 176
  end
  object qrySuppliesImage: TADODataSet [8]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 'select * from tbIMSuppliesImage'
    DataSource = dsDefault
    IndexFieldNames = 'vcIdSupplies'
    MasterFields = 'vcIdSupplies'
    Parameters = <>
    Left = 136
    Top = 144
  end
  object dsSuppliesImage: TDataSource [9]
    DataSet = qrySuppliesImage
    Left = 168
    Top = 144
  end
  object qrySuppliesDt: TADODataSet [10]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qrySuppliesDtBeforePost
    OnNewRecord = qrySuppliesDtNewRecord
    CommandText = 'select *'#13#10'from tbIMSuppliesDt'
    DataSource = dsDefault
    IndexFieldNames = 'vcIdSuppliesParent'
    MasterFields = 'vcIdSupplies'
    Parameters = <>
    Left = 136
    Top = 208
  end
  object dsSuppliesDt: TDataSource [11]
    DataSet = qrySuppliesDt
    Left = 168
    Top = 208
  end
  object qryPrevSuppliesDt: TADOQuery [12]
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  vcIdSupplies, vcSuppliesName, '
      '  vcIdSuppliesCategory, vcType'
      'from tbIMSupplies'
      'where FlagCouple <> '#39'1'#39
      'order by vcIdSupplies')
    Left = 136
    Top = 240
  end
  object dsPrevSuppliesDt: TDataSource [13]
    DataSet = qryPrevSuppliesDt
    Left = 168
    Top = 240
  end
  object cxGridViewRepository1: TcxGridViewRepository [14]
    Left = 104
    Top = 240
    object cgvPrevSuppliesDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevSuppliesDt
      DataController.KeyFieldNames = 'vcIdSupplies'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevSuppliesDtvcIdSupplies: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vcIdSupplies'
      end
      object cgvPrevSuppliesDtvcSuppliesName: TcxGridDBColumn
        Caption = 'Barang'
        DataBinding.FieldName = 'vcSuppliesName'
      end
      object cgvPrevSuppliesDtvcIdSuppliesCategory: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'vcIdSuppliesCategory'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvSuppliesCategory
        Properties.KeyFieldNames = 'vcIdSuppliesCategory'
        Properties.ListFieldItem = dmInventory.cgvSuppliesCategoryvcIdSuppliesCategory
      end
      object cgvPrevSuppliesDtvcType: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'vcType'
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [15]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [16]
  end
end
