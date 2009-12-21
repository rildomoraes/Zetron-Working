inherited fmTarifType: TfmTarifType
  Caption = 'Tipe Tarif'
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
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 73
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label1: TLabel
            Left = 9
            Top = 6
            Width = 32
            Height = 13
            Caption = 'Kode *'
            Transparent = True
          end
          object Label2: TLabel
            Left = 9
            Top = 24
            Width = 35
            Height = 13
            Caption = 'Nama *'
            Transparent = True
          end
          object Label3: TLabel
            Left = 9
            Top = 42
            Width = 37
            Height = 13
            Caption = 'Status *'
            Transparent = True
          end
          object cxDBImageComboBox1: TcxDBImageComboBox
            Left = 65
            Top = 39
            DataBinding.DataField = 'StatusDimensi'
            DataBinding.DataSource = dsDefault
            Properties.Items = <
              item
                Description = 'Kubikasi'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Berat'
                Value = '1'
              end
              item
                Description = 'Kuantiti'
                Value = '2'
              end
              item
                Description = 'Lain'
                Value = '3'
              end>
            TabOrder = 0
            Width = 88
          end
          object dbeTarifTypeCode: TcxDBTextEdit
            Left = 65
            Top = 3
            DataBinding.DataField = 'TarifTypeCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 121
          end
          object dbeTarifTypeName: TcxDBTextEdit
            Left = 65
            Top = 21
            DataBinding.DataField = 'TarifTypeName'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 152
          end
        end
        object pnlDetail: TPanel
          Left = 0
          Top = 73
          Width = 560
          Height = 239
          Align = alClient
          TabOrder = 1
          object cgTariffItem: TcxGrid
            Left = 1
            Top = 1
            Width = 558
            Height = 237
            Align = alClient
            TabOrder = 0
            object cgvTariffItem: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.Insert.Visible = True
              NavigatorButtons.Append.Visible = False
              NavigatorButtons.Post.Visible = True
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.DataSource = dsTariffItem
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.GroupByBox = False
              object cgvTariffItemTarifTypeId: TcxGridDBColumn
                DataBinding.FieldName = 'TarifTypeId'
                Visible = False
              end
              object cgvTariffItemRouteId: TcxGridDBColumn
                Caption = 'Jurusan *'
                DataBinding.FieldName = 'RouteId'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.CharCase = ecUpperCase
                Properties.View = cgvPrevRoute
                Properties.KeyFieldNames = 'RouteId'
                Properties.ListFieldItem = cgvPrevRouteRouteName
                Width = 115
              end
              object cgvTariffItemPrice: TcxGridDBColumn
                Caption = 'Ekspedisi *'
                DataBinding.FieldName = 'Price'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = 'Rp,0.00;(Rp,0.00)'
                Properties.UseThousandSeparator = True
                Width = 116
              end
              object cgvTariffItemPriceFra: TcxGridDBColumn
                Caption = 'Freight *'
                DataBinding.FieldName = 'PriceFra'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = 'Rp,0.00;(Rp,0.00)'
                Properties.UseThousandSeparator = True
                Width = 114
              end
            end
            object cgvPrevRoute: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dmEkspedisi.dsPrevRoute
              DataController.KeyFieldNames = 'RouteId'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.GroupByBox = False
              object cgvPrevRouteRouteId: TcxGridDBColumn
                DataBinding.FieldName = 'RouteId'
                Visible = False
              end
              object cgvPrevRouteRouteCode: TcxGridDBColumn
                DataBinding.FieldName = 'RouteCode'
                Visible = False
              end
              object cgvPrevRouteRouteName: TcxGridDBColumn
                Caption = 'Jurusan'
                DataBinding.FieldName = 'RouteName'
              end
              object cgvPrevRouteDepatureCityId: TcxGridDBColumn
                DataBinding.FieldName = 'DepatureCityId'
                Visible = False
              end
              object cgvPrevRouteDestinationCityId: TcxGridDBColumn
                DataBinding.FieldName = 'DestinationCityId'
                Visible = False
              end
            end
            object cgTariffItemLevel1: TcxGridLevel
              GridView = cgvTariffItem
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 316
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
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
          object cxGrid1DBTableView1TarifTypeId: TcxGridDBColumn
            DataBinding.FieldName = 'TarifTypeId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TarifTypeCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'TarifTypeCode'
          end
          object cxGrid1DBTableView1TarifTypeName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'TarifTypeName'
          end
          object cxGrid1DBTableView1StatusDimensi: TcxGridDBColumn
            Caption = 'Dimensi'
            DataBinding.FieldName = 'StatusDimensi'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Kubikasi'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Berat'
                Value = '1'
              end
              item
                Description = 'Kuantiti'
                Value = '2'
              end>
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 432
    Top = 56
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 464
    Top = 56
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 496
    Top = 56
  end
  inherited dsDefault: TDataSource
    DataSet = dmEkspedisi.qryTarifType
    Left = 432
    Top = 88
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 528
    Top = 56
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 464
    Top = 88
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryTariffItem: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'TarifTypeId'
        Attributes = [paSigned]
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from TarifItem'
      'where TarifTypeId=:TarifTypeId')
    Left = 400
    Top = 56
  end
  object dsTariffItem: TDataSource
    DataSet = qryTariffItem
    Left = 400
    Top = 88
  end
end
