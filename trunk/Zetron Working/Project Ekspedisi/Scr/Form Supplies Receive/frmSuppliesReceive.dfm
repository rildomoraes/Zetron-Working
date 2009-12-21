inherited fmSuppliesReceive: TfmSuppliesReceive
  Caption = 'Penerimaan Surat Jalan'
  ClientHeight = 488
  ClientWidth = 792
  ExplicitLeft = -63
  ExplicitWidth = 800
  ExplicitHeight = 522
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 792
    ExplicitWidth = 792
  end
  inherited pnlCustom: TPanel
    Width = 792
    ExplicitWidth = 792
    inherited cbMonth: TcxComboBox
      ExplicitHeight = 19
    end
    inherited cbYear: TcxComboBox
      ExplicitHeight = 19
    end
    inherited dblcStatusApprove: TcxDBImageComboBox
      Properties.Items = <
        item
          Description = 'Uncheck'
          ImageIndex = 7
          Value = '0'
        end
        item
          Description = 'Approve'
          ImageIndex = 6
          Value = '1'
        end
        item
          Description = 'Void'
          ImageIndex = 8
          Value = '2'
        end>
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
    Width = 792
    Height = 413
    ExplicitWidth = 792
    ExplicitHeight = 413
    DockType = 0
    OriginalWidth = 792
    OriginalHeight = 413
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 764
      Height = 413
      ExplicitWidth = 764
      ExplicitHeight = 413
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 764
        Height = 413
        ExplicitWidth = 764
        ExplicitHeight = 413
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 764
        Height = 413
        ExplicitWidth = 764
        ExplicitHeight = 413
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Splitter1: TSplitter
          Left = 0
          Top = 406
          Width = 760
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 105
          ExplicitWidth = 231
        end
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 760
          Height = 121
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object pnlLeft: TPanel
            Left = 0
            Top = 0
            Width = 760
            Height = 121
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              Left = 9
              Top = 42
              Width = 46
              Height = 13
              Caption = 'Tanggal *'
              Transparent = True
            end
            object Label2: TLabel
              Left = 9
              Top = 96
              Width = 37
              Height = 13
              Caption = 'Merek *'
              Transparent = True
            end
            object Label3: TLabel
              Left = 9
              Top = 24
              Width = 69
              Height = 13
              Caption = 'No Referensi *'
              Transparent = True
            end
            object Label4: TLabel
              Left = 346
              Top = 42
              Width = 79
              Height = 13
              Caption = 'Jenis Kendaraan'
              Transparent = True
            end
            object Label5: TLabel
              Left = 346
              Top = 60
              Width = 41
              Height = 13
              Caption = 'No Polisi'
              Transparent = True
            end
            object Label7: TLabel
              Left = 9
              Top = 6
              Width = 77
              Height = 13
              Caption = 'No Surat Jalan *'
              Transparent = True
            end
            object Label8: TLabel
              Left = 346
              Top = 6
              Width = 47
              Height = 13
              Caption = 'Pengirim *'
              Transparent = True
            end
            object Label9: TLabel
              Left = 346
              Top = 24
              Width = 51
              Height = 13
              Caption = 'Penerima *'
              Transparent = True
            end
            object Label6: TLabel
              Left = 9
              Top = 78
              Width = 30
              Height = 13
              Caption = 'Rute *'
              Transparent = True
            end
            object Label10: TLabel
              Left = 9
              Top = 60
              Width = 51
              Height = 13
              Caption = 'Customer *'
              Transparent = True
            end
            object dbeItemReceiveDate: TcxDBDateEdit
              Left = 101
              Top = 39
              DataBinding.DataField = 'ItemReceiveDate'
              DataBinding.DataSource = dsDefault
              TabOrder = 2
              Width = 189
            end
            object dblcMerekId: TcxDBExtLookupComboBox
              Left = 101
              Top = 93
              DataBinding.DataField = 'MerekId'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.View = dmEkspedisi.cgvPrevMerekByRoute
              Properties.KeyFieldNames = 'MerekId'
              Properties.ListFieldItem = dmEkspedisi.cgvPrevMerekByRouteMerekName
              Properties.MaxLength = 0
              TabOrder = 5
              Width = 189
            end
            object dbeNoSuratJalan: TcxDBTextEdit
              Left = 101
              Top = 21
              DataBinding.DataField = 'NoSuratJalan'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              TabOrder = 1
              Width = 189
            end
            object dbeJenisKendaraan: TcxDBTextEdit
              Left = 432
              Top = 39
              DataBinding.DataField = 'JenisKendaraan'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              TabOrder = 8
              Width = 189
            end
            object dbeNoPolisi: TcxDBTextEdit
              Left = 432
              Top = 57
              DataBinding.DataField = 'NoPolisi'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              TabOrder = 9
              Width = 189
            end
            object dbeItemReceiveCode: TcxDBTextEdit
              Left = 101
              Top = 4
              DataBinding.DataField = 'ItemReceiveCode'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.OnEditValueChanged = dbeItemReceiveCodePropertiesEditValueChanged
              TabOrder = 0
              Width = 189
            end
            object dblcRute: TcxDBExtLookupComboBox
              Left = 101
              Top = 75
              DataBinding.DataField = 'RouteId'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.View = dmEkspedisi.cgvPrevRoute
              Properties.KeyFieldNames = 'RouteId'
              Properties.ListFieldItem = dmEkspedisi.cgvPrevRouteRouteName
              Properties.MaxLength = 0
              TabOrder = 4
              Width = 189
            end
            object dblcPengirim: TcxDBExtLookupComboBox
              Left = 432
              Top = 3
              DataBinding.DataField = 'PengirimId'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.View = dmEkspedisi.cgvPrevPengirim
              Properties.KeyFieldNames = 'CustomerId'
              Properties.ListFieldItem = dmEkspedisi.cgvPrevPengirimCustomerName
              TabOrder = 6
              Width = 189
            end
            object dblcPenerima: TcxDBExtLookupComboBox
              Left = 432
              Top = 21
              DataBinding.DataField = 'Penerima'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.View = dmGlobal.cgvPrevEmployee
              Properties.KeyFieldNames = 'EmployeeId'
              Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
              TabOrder = 7
              Width = 190
            end
            object cxButton1: TcxButton
              Left = 296
              Top = 76
              Width = 44
              Height = 36
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
              TabOrder = 10
              OnClick = cxButton1Click
            end
            object dblcCustomerId: TcxDBExtLookupComboBox
              Left = 101
              Top = 57
              DataBinding.DataField = 'CustomerId'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.View = dmEkspedisi.cgvPrevCustomer
              Properties.KeyFieldNames = 'CustomerId'
              Properties.ListFieldItem = dmEkspedisi.cgvPrevCustomerCustomerName
              TabOrder = 3
              Width = 189
            end
          end
        end
        object pcBody: TcxPageControl
          Left = 0
          Top = 121
          Width = 760
          Height = 210
          ActivePage = tsStatementMemo
          Align = alClient
          Images = dmGlobal.imgIconTabSheet
          NavigatorPosition = npLeftBottom
          Options = [pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
          Rotate = True
          TabOrder = 1
          TabPosition = tpRight
          ClientRectBottom = 204
          ClientRectLeft = 3
          ClientRectRight = 720
          ClientRectTop = 3
          object tsStatementMemo: TcxTabSheet
            Hint = 'Memo Tercetak'
            ImageIndex = 3
            object cgSuppliesReceive: TcxGrid
              Left = 0
              Top = 0
              Width = 717
              Height = 201
              Align = alClient
              TabOrder = 0
              object cgvSuppliesReceive: TcxGridDBTableView
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
                DataController.DataSource = dsSuppliesReceiveDt
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skSum
                    FieldName = 'Qty'
                    Column = cgvSuppliesReceiveQty
                  end
                  item
                    Kind = skSum
                    FieldName = 'TotalM3'
                    Column = cgvSuppliesReceiveTotalM3
                  end
                  item
                    Kind = skCount
                    FieldName = 'No'
                    Column = cgvSuppliesReceiveNo
                  end
                  item
                    Kind = skSum
                    FieldName = 'TotalBerat'
                    Column = cgvSuppliesReceiveTotalBerat
                  end
                  item
                    Kind = skSum
                    FieldName = 'TotM3Ton'
                    Column = cgvSuppliesReceiveTotM3Ton
                  end>
                DataController.Summary.SummaryGroups = <>
                DataController.Summary.OnAfterSummary = cgvSuppliesReceiveDataControllerSummaryAfterSummary
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object cgvSuppliesReceiveItemReceiveCode: TcxGridDBColumn
                  Caption = 'ItemReceiveCode *'
                  DataBinding.FieldName = 'ItemReceiveCode'
                  Visible = False
                end
                object cgvSuppliesReceiveNo: TcxGridDBColumn
                  Caption = 'No *'
                  DataBinding.FieldName = 'No'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.ReadOnly = True
                  Options.Editing = False
                  Styles.Content = dmGlobal.stYellowLight
                  Width = 32
                end
                object cgvSuppliesReceiveSuppliesCode: TcxGridDBColumn
                  Caption = 'Kode *'
                  DataBinding.FieldName = 'SuppliesCode'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.CharCase = ecUpperCase
                  Width = 91
                end
                object cgvSuppliesReceiveSuppliesName: TcxGridDBColumn
                  Caption = 'Nama Barang *'
                  DataBinding.FieldName = 'SuppliesName'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = cgvSuppliesReceiveSuppliesNamePropertiesButtonClick
                  Width = 141
                end
                object cgvSuppliesReceiveStorageLocationId: TcxGridDBColumn
                  Caption = 'Lokasi *'
                  DataBinding.FieldName = 'StorageLocationId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmEkspedisi.cgvPrevStorageLocation
                  Properties.KeyFieldNames = 'StorageLocationId'
                  Properties.ListFieldItem = dmEkspedisi.cgvPrevStorageLocationStorageLocationName
                  Width = 108
                end
                object cgvSuppliesReceiveP: TcxGridDBColumn
                  Caption = 'Panjang'
                  DataBinding.FieldName = 'P'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Width = 66
                end
                object cgvSuppliesReceiveL: TcxGridDBColumn
                  Caption = 'Lebar'
                  DataBinding.FieldName = 'L'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Width = 68
                end
                object cgvSuppliesReceiveT: TcxGridDBColumn
                  Caption = 'Tinggi'
                  DataBinding.FieldName = 'T'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object cgvSuppliesReceiveBerat: TcxGridDBColumn
                  DataBinding.FieldName = 'Berat'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object cgvSuppliesReceiveQty: TcxGridDBColumn
                  Caption = 'Jumlah *'
                  DataBinding.FieldName = 'Qty'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object cgvSuppliesReceiveUnitMeasure: TcxGridDBColumn
                  Caption = 'Satuan'
                  DataBinding.FieldName = 'UnitMeasureId'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmEkspedisi.cgvPrevUnitMeasure
                  Properties.KeyFieldNames = 'UnitMeasureId'
                  Properties.ListFieldItem = dmEkspedisi.cgvPrevUnitMeasureUnitMeasureCode
                end
                object cgvSuppliesReceiveTotalM3: TcxGridDBColumn
                  Caption = 'Total M3'
                  DataBinding.FieldName = 'TotalM3'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                  Options.Focusing = False
                  Styles.Content = dmGlobal.stYellowLight
                end
                object cgvSuppliesReceiveTotalBerat: TcxGridDBColumn
                  Caption = 'Total Berat'
                  DataBinding.FieldName = 'TotalBerat'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                  Options.Focusing = False
                  Styles.Content = dmGlobal.stYellowLight
                end
                object cgvSuppliesReceiveQtyOutStanding: TcxGridDBColumn
                  DataBinding.FieldName = 'QtyOutStanding'
                  Visible = False
                end
                object cgvSuppliesReceiveDaftarMuatKapalCode: TcxGridDBColumn
                  DataBinding.FieldName = 'DaftarMuatKapalCode'
                  Visible = False
                end
                object cgvSuppliesReceiveQtyRetur: TcxGridDBColumn
                  DataBinding.FieldName = 'QtyRetur'
                  Visible = False
                end
                object cgvSuppliesReceiveTotM3Ton: TcxGridDBColumn
                  DataBinding.FieldName = 'TotM3Ton'
                  Visible = False
                  Options.Editing = False
                end
              end
              object cgSuppliesReceiveLevel1: TcxGridLevel
                GridView = cgvSuppliesReceive
              end
            end
          end
          object tsDipendencies: TcxTabSheet
            Hint = 'Ketergantungan'
            ImageIndex = 4
            object cgDependencies: TcxGrid
              Left = 0
              Top = 0
              Width = 717
              Height = 201
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
                DataController.DataSource = dsLogSuppliesReceive
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
              Height = 201
              Width = 717
            end
          end
          object cxTabSheet1: TcxTabSheet
            ImageIndex = 3
            object dbmStatementMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'statementmemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 201
              Width = 717
            end
          end
        end
        object pnlSummary: TPanel
          Left = 0
          Top = 331
          Width = 760
          Height = 75
          Align = alBottom
          TabOrder = 2
          object Label11: TLabel
            Left = 13
            Top = 11
            Width = 52
            Height = 13
            Caption = 'Total Collie'
            Transparent = True
          end
          object Label13: TLabel
            Left = 242
            Top = 11
            Width = 42
            Height = 13
            Caption = 'Total M3'
            Transparent = True
          end
          object Label14: TLabel
            Left = 242
            Top = 29
            Width = 46
            Height = 13
            Caption = 'Total Ton'
            Transparent = True
          end
          object Label15: TLabel
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
    inherited pnlExplorer: TdxDockPanel
      Height = 0
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevSuppliesReceive: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvPrevSuppliesReceive: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevSuppliesReceiveItemReceiveCode: TcxGridDBColumn
            Caption = 'No Surat Jalan'
            DataBinding.FieldName = 'ItemReceiveCode'
            Width = 93
          end
          object cgvPrevSuppliesReceiveItemReceiveDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'ItemReceiveDate'
            Width = 44
          end
          object cgvPrevSuppliesReceiveNoSuratJalan: TcxGridDBColumn
            Caption = 'No Referensi'
            DataBinding.FieldName = 'NoSuratJalan'
            Visible = False
          end
          object cgvPrevSuppliesReceiveCustomerId: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'CustomerId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmEkspedisi.cgvPrevCustomer
            Properties.KeyFieldNames = 'CustomerId'
            Properties.ListFieldItem = dmEkspedisi.cgvPrevCustomerCustomerName
            Visible = False
          end
          object cgvPrevSuppliesReceiveMerekId: TcxGridDBColumn
            Caption = 'Merek'
            DataBinding.FieldName = 'MerekId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          end
          object cgvPrevSuppliesReceiveRouteId: TcxGridDBColumn
            Caption = 'Jurusan'
            DataBinding.FieldName = 'RouteId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmEkspedisi.cgvPrevRoute
            Properties.KeyFieldNames = 'RouteId'
            Properties.ListFieldItem = dmEkspedisi.cgvPrevRouteRouteName
          end
          object cgvPrevSuppliesReceiveJenisKendaraan: TcxGridDBColumn
            Caption = 'Jenis Kendaraan'
            DataBinding.FieldName = 'JenisKendaraan'
            Visible = False
          end
          object cgvPrevSuppliesReceiveNoPolisi: TcxGridDBColumn
            Caption = 'No Polisi'
            DataBinding.FieldName = 'NoPolisi'
            Visible = False
          end
          object cgvPrevSuppliesReceiveNoCont: TcxGridDBColumn
            Caption = 'No Cont'
            DataBinding.FieldName = 'NoCont'
            Visible = False
          end
        end
        object cgPrevSuppliesReceiveLevel1: TcxGridLevel
          GridView = cgvPrevSuppliesReceive
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 224
    Top = 240
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 256
    Top = 240
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 288
    Top = 240
  end
  inherited dsDefault: TDataSource
    DataSet = qrySuppliesReceiveHd
    OnDataChange = dsDefaultDataChange
    Left = 224
    Top = 272
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 320
    Top = 240
  end
  inherited pmPrint: TPopupMenu
    Left = 256
    Top = 272
  end
  object qrySuppliesReceiveHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qrySuppliesReceiveHdBeforeInsert
    BeforePost = qrySuppliesReceiveHdBeforePost
    AfterPost = qrySuppliesReceiveHdAfterPost
    BeforeDelete = qrySuppliesReceiveHdBeforeDelete
    AfterDelete = qrySuppliesReceiveHdAfterDelete
    OnDeleteError = qrySuppliesReceiveHdDeleteError
    OnNewRecord = qrySuppliesReceiveHdNewRecord
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
      'select *'
      'from SuppliesReceiveHd'
      'where ItemReceiveDate between :StartDate and :EndDate'
      'order by ItemReceiveCode;')
    Left = 192
    Top = 272
  end
  object qrySuppliesReceiveDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qrySuppliesReceiveDtBeforeInsert
    BeforePost = qrySuppliesReceiveDtBeforePost
    AfterPost = qrySuppliesReceiveDtAfterPost
    BeforeDelete = qrySuppliesReceiveDtBeforeDelete
    AfterDelete = qrySuppliesReceiveDtAfterDelete
    OnNewRecord = qrySuppliesReceiveDtNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'ItemReceiveCode'
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
      'end as TotM3Ton'
      'from SuppliesReceiveDt'
      'Where ItemReceiveCode=:ItemReceiveCode;')
    Left = 192
    Top = 304
  end
  object dsSuppliesReceiveDt: TDataSource
    DataSet = qrySuppliesReceiveDt
    OnDataChange = dsSuppliesReceiveDtDataChange
    Left = 224
    Top = 304
  end
  object qryPrevDaftarMuatKapal: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.DaftarMuatKapalCode,a.DaftarMuatKapalDateGo, b.ShipName' +
        ', c.ShipCrewName, b.GrossTon'
      'from DaftarMuatKapal a'
      'left join Ship b on a.shipId = b.ShipId'
      
        'left join ShipCrew c on b.StorageLocationId = c.StorageLocationI' +
        'd and c.PositionId=1'
      'where DaftarMuatKapalClose is null'
      '')
    Left = 192
    Top = 336
  end
  object dsPrevDaftarMuatKapal: TDataSource
    DataSet = qryPrevDaftarMuatKapal
    Left = 224
    Top = 336
  end
  object dsLog: TDataSource
    DataSet = dmEkspedisi.qryLog
    Left = 320
    Top = 272
  end
  object IvSearchBoxADO1: TIvSearchBoxADO
    About = 'Created by Ivan Handoyo'
    Connection = dmGlobal.conGlobal
    ColumnOptions = <
      item
        ColumnName = 'CustomerCode'
        Caption = 'Kode Customer'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end
      item
        ColumnName = 'CustomerName'
        Caption = 'Customer'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end
      item
        ColumnName = 'MerekCode'
        Caption = 'Kode Merek'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end
      item
        ColumnName = 'MerekName'
        Caption = 'Merek'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = True
      end
      item
        ColumnName = 'RouteCode'
        Caption = 'Kode Jurusan'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = False
      end
      item
        ColumnName = 'RouteName'
        Caption = 'Jurusan'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = True
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
      end
      item
        ColumnName = 'RouteId'
        Caption = 'RouteId'
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
      'Select Customer.CustomerCode, Customer.CustomerName,'
      
        '  Merek.MerekCode, Merek.MerekName, Route.RouteCode, Route.Route' +
        'Name,'
      '  Customer.CustomerId, Merek.MerekId, Route.RouteId'
      'From Merek Inner Join'
      '  Customer On Customer.CustomerId = Merek.CustomerId Inner Join'
      '  Route On Route.RouteId = Merek.RouteId')
    Version = '1.0'
    SettingFilename = 'Setting Supplies Receive.cfg'
    Left = 440
    Top = 256
  end
  object qryLogSuppliesReceive: TADOQuery
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
      
        'where TableName='#39'SuppliesReceiveHd'#39' or TableName='#39'SuppliesReceiv' +
        'eDt'#39
      'and keyfield=:keyfield'
      'order by TransactionDate')
    Left = 320
    Top = 304
  end
  object dsLogSuppliesReceive: TDataSource
    DataSet = qryLogSuppliesReceive
    Left = 352
    Top = 304
  end
  object IvSearchBoxADO2: TIvSearchBoxADO
    About = 'Created by Ivan Handoyo'
    Connection = dmGlobal.conGlobal
    ColumnOptions = <
      item
        ColumnName = 'ItemName'
        Caption = 'Nama Barang'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = True
      end
      item
        ColumnName = 'T'
        Caption = 'Tinggi'
        PropertiesClass = pcText
        DisplayFormatType = dfPLT
        Visible = True
      end
      item
        ColumnName = 'L'
        Caption = 'Lebar'
        PropertiesClass = pcText
        DisplayFormatType = dfPLT
        Visible = True
      end
      item
        ColumnName = 'P'
        Caption = 'Panjang'
        PropertiesClass = pcText
        DisplayFormatType = dfPLT
        Visible = True
      end
      item
        ColumnName = 'Berat'
        Caption = 'Berat'
        PropertiesClass = pcText
        DisplayFormatType = dfBerat
        Visible = True
      end
      item
        ColumnName = 'TotalM3'
        Caption = 'Tota lM3'
        PropertiesClass = pcText
        DisplayFormatType = dfVolume
        Visible = True
      end
      item
        ColumnName = 'TotalBerat'
        Caption = 'Total Berat'
        PropertiesClass = pcText
        DisplayFormatType = dfBerat
        Visible = True
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Parameters = <>
    ShowKeyword = True
    SQL.Strings = (
      
        'Select ItemList.ItemName, ItemList.T, ItemList.L, ItemList.P, It' +
        'emList.Berat,'
      '  ItemList.TotalM3, ItemList.TotalBerat'
      'From ItemList')
    Version = '1.0'
    SettingFilename = 'Setting Supplies Receive.cfg'
    Left = 552
    Top = 256
  end
end
