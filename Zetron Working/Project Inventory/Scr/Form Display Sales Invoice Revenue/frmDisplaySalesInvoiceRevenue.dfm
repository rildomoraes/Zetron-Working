inherited fmDisplaySalesInvoiceRevenue: TfmDisplaySalesInvoiceRevenue
  Caption = 'Display Laba per Nota Penjualan'
  ClientHeight = 516
  ClientWidth = 742
  ExplicitWidth = 750
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 742
    ExplicitWidth = 742
  end
  inherited pnlCustom: TPanel
    Width = 742
    ExplicitLeft = 0
    ExplicitWidth = 742
    inherited cbMonth: TcxComboBox
      ExplicitHeight = 19
    end
    inherited cbYear: TcxComboBox
      ExplicitHeight = 19
    end
  end
  object cgDisplay: TcxGrid [2]
    Left = 0
    Top = 75
    Width = 742
    Height = 198
    Align = alTop
    TabOrder = 2
    object cgvDisplay: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = cgvDisplayFocusedRecordChanged
      DataController.DataSource = dsDisplay
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'margin'
          Column = cgvDisplaymargin
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'totalmargin'
          Column = cgvDisplaytotalmargin
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          FieldName = 'totalmargin'
          Column = cgvDisplaytotalmargin
        end
        item
          Format = '0 Nota'
          Kind = skCount
          Position = spFooter
          FieldName = 'statusapprove'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0 Nota'
          Kind = skCount
          FieldName = 'Salesinvoiceid'
          Column = cgvDisplaySalesinvoiceid
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          FieldName = 'TotalAmount'
          Column = cgvDisplayTotalAmount
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          FieldName = 'Margin'
          Column = cgvDisplaymargin
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          FieldName = 'TotalMargin'
          Column = cgvDisplaytotalmargin
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cgvDisplaysalesinvoicedate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'salesinvoicedate'
      end
      object cgvDisplaySalesinvoiceid: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'Salesinvoiceid'
        SortIndex = 0
        SortOrder = soAscending
        Width = 100
      end
      object cgvDisplaysalesinvoiceidinternal: TcxGridDBColumn
        Caption = 'Id Internal'
        DataBinding.FieldName = 'salesinvoiceidinternal'
        Visible = False
      end
      object cgvDisplayCustomername: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'Customername'
        Width = 125
      end
      object cgvDisplayCityName: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'CityName'
        Visible = False
      end
      object cgvDisplayProvinceName: TcxGridDBColumn
        Caption = 'Provinsi'
        DataBinding.FieldName = 'ProvinceName'
        Visible = False
      end
      object cgvDisplayCountryName: TcxGridDBColumn
        Caption = 'Negara'
        DataBinding.FieldName = 'CountryName'
        Visible = False
      end
      object cgvDisplaywarehousename: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'warehousename'
        Visible = False
        Width = 120
      end
      object cgvDisplayoutletname: TcxGridDBColumn
        Caption = 'Outlet'
        DataBinding.FieldName = 'outletname'
        Visible = False
        Width = 100
      end
      object cgvDisplayprojectname: TcxGridDBColumn
        Caption = 'Proyek'
        DataBinding.FieldName = 'projectname'
        Visible = False
        Width = 100
      end
      object cgvDisplaySalesman: TcxGridDBColumn
        Caption = 'Salesman '
        DataBinding.FieldName = 'Salesman'
        Visible = False
        Width = 100
      end
      object cgvDisplayAmount: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'Amount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplayDisc: TcxGridDBColumn
        Caption = 'Disc %'
        DataBinding.FieldName = 'Disc'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayDiscAmount: TcxGridDBColumn
        Caption = 'Disc'
        DataBinding.FieldName = 'DiscAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplayDisc2: TcxGridDBColumn
        Caption = 'Disc 2 %'
        DataBinding.FieldName = 'Disc2'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayDiscAmount2: TcxGridDBColumn
        Caption = 'Disc 2'
        DataBinding.FieldName = 'DiscAmount2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplaytax: TcxGridDBColumn
        Caption = 'Tax %'
        DataBinding.FieldName = 'tax'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
        Width = 51
      end
      object cgvDisplaytaxamount: TcxGridDBColumn
        Caption = 'Tax'
        DataBinding.FieldName = 'taxamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplayvoucher: TcxGridDBColumn
        Caption = 'Voucher No'
        DataBinding.FieldName = 'voucher'
        Visible = False
      end
      object cgvDisplayvoucheramount: TcxGridDBColumn
        Caption = 'Voucher'
        DataBinding.FieldName = 'voucheramount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplayTotalAmount: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'TotalAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvDisplayOutstandingTotalAmount: TcxGridDBColumn
        Caption = 'Sisa Tagihan'
        DataBinding.FieldName = 'OutstandingTotalAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplaymargin: TcxGridDBColumn
        Caption = 'Laba (Penjualan Saja)'
        DataBinding.FieldName = 'margin'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplaypercent: TcxGridDBColumn
        Caption = '% (Penjualan Saja)'
        DataBinding.FieldName = 'Percent'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
      end
      object cgvDisplaytotalmargin: TcxGridDBColumn
        Caption = 'Laba Total'
        DataBinding.FieldName = 'totalmargin'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvDisplaytotalpercent: TcxGridDBColumn
        Caption = '% (Total)'
        DataBinding.FieldName = 'totalpercent'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object cgDisplayLevel1: TcxGridLevel
      GridView = cgvDisplay
    end
  end
  object cxSplitter1: TcxSplitter [3]
    Left = 0
    Top = 273
    Width = 742
    Height = 4
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salTop
    Control = cgDisplay
  end
  object pcDetail: TcxPageControl [4]
    Left = 0
    Top = 277
    Width = 742
    Height = 239
    ActivePage = tsSimple
    Align = alClient
    TabOrder = 4
    OnChange = pcDetailChange
    ClientRectBottom = 233
    ClientRectLeft = 3
    ClientRectRight = 736
    ClientRectTop = 26
    object tsSimple: TcxTabSheet
      Caption = 'Simple'
      ImageIndex = 0
      object cgDisplaySimple: TcxGrid
        Left = 0
        Top = 0
        Width = 733
        Height = 207
        Align = alClient
        TabOrder = 0
        RootLevelOptions.DetailTabsPosition = dtpTop
        object cgvDisplaySimpleData: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDisplayDtSimple
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'qty'
              Column = cgvDisplaySimpleDataqty
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'totalcogs'
              Column = cgvDisplaySimpleDatatotalcogs
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'totalsales'
              Column = cgvDisplaySimpleDatatotalsales
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'totalmargin'
              Column = cgvDisplaySimpleDatatotalmargin
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              FieldName = 'totalcogs'
              Column = cgvDisplaySimpleDatatotalcogs
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              FieldName = 'totalsales'
              Column = cgvDisplaySimpleDatatotalsales
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              FieldName = 'totalmargin'
              Column = cgvDisplaySimpleDatatotalmargin
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellMultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cgvDisplaySimpleDataitemidexternal: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'itemidexternal'
            Width = 100
          end
          object cgvDisplaySimpleDataitemname: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'itemname'
            Width = 100
          end
          object cgvDisplaySimpleDatatype: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'type'
            Visible = False
          end
          object cgvDisplaySimpleDataitemnamechinese: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'itemnamechinese'
            Visible = False
          end
          object cgvDisplaySimpleDataqty: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplaySimpleDataqtyreturn: TcxGridDBColumn
            Caption = 'Qty Retur'
            DataBinding.FieldName = 'qtyreturn'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplaySimpleDatacogs: TcxGridDBColumn
            Caption = 'HPP'
            DataBinding.FieldName = 'cogs'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplaySimpleDatatotalcogs: TcxGridDBColumn
            Caption = 'Total HPP'
            DataBinding.FieldName = 'totalcogs'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplaySimpleDatasaleprice: TcxGridDBColumn
            Caption = 'Harga Jual'
            DataBinding.FieldName = 'saleprice'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplaySimpleDatatotalsales: TcxGridDBColumn
            Caption = 'Total Jual'
            DataBinding.FieldName = 'totalsales'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplaySimpleDatamargin: TcxGridDBColumn
            Caption = 'Laba (Penjualan)'
            DataBinding.FieldName = 'margin'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvDisplaySimpleDatapercent: TcxGridDBColumn
            Caption = '% (Laba Penj)'
            DataBinding.FieldName = 'percent'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvDisplaySimpleDatatotalmargin: TcxGridDBColumn
            Caption = 'Laba'
            DataBinding.FieldName = 'totalmargin'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplaySimpleDatapercenttotal: TcxGridDBColumn
            Caption = '%'
            DataBinding.FieldName = 'percenttotal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object cgvDisplaySimpleChart: TcxGridDBChartView
          Categories.DataBinding.FieldName = 'itemname'
          DataController.DataSource = dsDisplayDtSimple
          DiagramPie.Active = True
          DiagramPie.Legend.Position = cppRight
          Legend.Border = lbSingle
          Legend.Position = cppBottom
          object cxGridDBChartSeries1: TcxGridDBChartSeries
            DataBinding.FieldName = 'qty'
            DisplayText = 'Qty'
            ValueCaptionFormat = ',0.00;-,0.00'
          end
          object cxGridDBChartSeries2: TcxGridDBChartSeries
            DataBinding.FieldName = 'totalsales'
            DisplayText = 'Penjualan'
            ValueCaptionFormat = ',0.00;-,0.00'
          end
          object cxGridDBChartSeries3: TcxGridDBChartSeries
            DataBinding.FieldName = 'totalmargin'
            DisplayText = 'Laba'
            ValueCaptionFormat = ',0.00;-,0.00'
          end
        end
        object cgvDisplaySimpleChart2: TcxGridDBChartView
          Categories.DataBinding.FieldName = 'itemname'
          Categories.SortOrder = soAscending
          DataController.DataSource = dsDisplayDtSimple
          DiagramLine.Active = True
          DiagramLine.Legend.Position = cppTop
          DiagramLine.AxisValue.TickMarkLabelFormat = ',0.00;-,0.00'
          DiagramLine.Values.LineWidth = 2
          DiagramLine.Values.MarkerSize = 5
          DiagramLine.Values.MarkerStyle = cmsDiamond
          object cgvDisplaySimpleChart2Series1: TcxGridDBChartSeries
            DataBinding.FieldName = 'totalcogs'
            DisplayText = 'Total HPP'
          end
          object cgvDisplaySimpleChart2Series2: TcxGridDBChartSeries
            DataBinding.FieldName = 'totalsales'
            DisplayText = 'Total Jual'
          end
          object cgvDisplaySimpleChart2Series3: TcxGridDBChartSeries
            DataBinding.FieldName = 'totalmargin'
            DisplayText = 'Laba'
          end
        end
        object cgDisplaySimpleLevel1: TcxGridLevel
          Caption = 'Data'
          GridView = cgvDisplaySimpleData
        end
        object cgDisplaySimpleLevel2: TcxGridLevel
          Caption = 'Grafik'
          GridView = cgvDisplaySimpleChart
        end
        object cgDisplaySimpleLevel3: TcxGridLevel
          Caption = 'Grafik 2'
          GridView = cgvDisplaySimpleChart2
        end
      end
    end
    object tsGroup: TcxTabSheet
      Caption = 'Grup'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cgDisplayGroup: TcxGrid
        Left = 0
        Top = 0
        Width = 733
        Height = 207
        Align = alClient
        TabOrder = 0
        RootLevelOptions.DetailTabsPosition = dtpTop
        object cgvDisplayGroupData: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDisplayDtGroup
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'qty'
              Column = cgvDisplayGroupDataqty
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'totalcogs'
              Column = cgvDisplayGroupDatatotalcogs
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'totalsales'
              Column = cgvDisplayGroupDatatotalsales
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'totalmargin'
              Column = cgvDisplayGroupDatatotalmargin
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              FieldName = 'totalcogs'
              Column = cgvDisplayGroupDatatotalcogs
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              FieldName = 'totalsales'
              Column = cgvDisplayGroupDatatotalsales
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              FieldName = 'totalmargin'
              Column = cgvDisplayGroupDatatotalmargin
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellMultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cgvDisplayGroupDataItemIdExternal: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'ItemIdExternal'
            Width = 100
          end
          object cgvDisplayGroupDataitemname: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'itemname'
            Width = 100
          end
          object cgvDisplayGroupDatastatusitem: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'statusitem'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Service'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Stock Item'
                Value = '1'
              end
              item
                Description = 'Non Stock'
                Value = '2'
              end
              item
                Description = 'Konsinyasi'
                Value = '3'
              end>
            Visible = False
          end
          object cgvDisplayGroupDatatype: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'type'
            Visible = False
          end
          object cgvDisplayGroupDataitemnamechinese: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'itemnamechinese'
            Visible = False
          end
          object cgvDisplayGroupDataqty: TcxGridDBColumn
            Caption = ' Qty'
            DataBinding.FieldName = 'qty'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayGroupDataqtyreturn: TcxGridDBColumn
            Caption = 'Qty Retur'
            DataBinding.FieldName = 'qtyreturn'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayGroupDatacogs: TcxGridDBColumn
            Caption = 'HPP'
            DataBinding.FieldName = 'cogs'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayGroupDatatotalcogs: TcxGridDBColumn
            Caption = 'Total HPP'
            DataBinding.FieldName = 'totalcogs'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayGroupDatasaleprice: TcxGridDBColumn
            Caption = 'Harga Jual '
            DataBinding.FieldName = 'saleprice'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayGroupDatatotalsales: TcxGridDBColumn
            Caption = 'Total Jual'
            DataBinding.FieldName = 'totalsales'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayGroupDatamargin: TcxGridDBColumn
            Caption = 'Laba (Penjualan)'
            DataBinding.FieldName = 'margin'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvDisplayGroupDatapercent: TcxGridDBColumn
            Caption = '% (Laba Penj)'
            DataBinding.FieldName = 'percent'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvDisplayGroupDatatotalmargin: TcxGridDBColumn
            Caption = 'Laba'
            DataBinding.FieldName = 'totalmargin'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayGroupDatatotalpercent: TcxGridDBColumn
            Caption = '%'
            DataBinding.FieldName = 'percenttotal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object cgvDisplayGroupChart: TcxGridDBChartView
          Categories.DataBinding.FieldName = 'itemname'
          DataController.DataSource = dsDisplayDtGroup
          DiagramPie.Active = True
          DiagramPie.Legend.Position = cppRight
          Legend.Border = lbSingle
          Legend.Position = cppBottom
          object cgvDisplayGroupChartSeries3: TcxGridDBChartSeries
            DataBinding.FieldName = 'qty'
            DisplayText = 'Qty'
            ValueCaptionFormat = ',0.00;-,0.00'
          end
          object cgvDisplayGroupChartSeries2: TcxGridDBChartSeries
            DataBinding.FieldName = 'totalsales'
            DisplayText = 'Penjualan'
            ValueCaptionFormat = ',0.00;-,0.00'
          end
          object cgvDisplayGroupChartSeries1: TcxGridDBChartSeries
            DataBinding.FieldName = 'totalmargin'
            DisplayText = 'Laba'
            ValueCaptionFormat = ',0.00;-,0.00'
          end
        end
        object cgDisplayGroupLevel2: TcxGridLevel
          Caption = 'Data'
          GridView = cgvDisplayGroupData
        end
        object cgDisplayGroupLevel3: TcxGridLevel
          Caption = 'Grafik'
          GridView = cgvDisplayGroupChart
        end
      end
    end
    object tsDetail: TcxTabSheet
      Caption = 'Detail'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cgDisplayDetail: TcxGrid
        Left = 0
        Top = 0
        Width = 733
        Height = 207
        Align = alClient
        TabOrder = 0
        object cgvDisplayDetail: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDisplayDt
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'qty'
              Column = cgvDisplayDetailqty
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'totalcogs'
              Column = cgvDisplayDetailtotalcogs
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'totalsales'
              Column = cgvDisplayDetailtotalsales
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'totalmargin'
              Column = cgvDisplayDetailtotalmargin
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              FieldName = 'totalcogs'
              Column = cgvDisplayDetailtotalcogs
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              FieldName = 'totalsales'
              Column = cgvDisplayDetailtotalsales
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              FieldName = 'totalmargin'
              Column = cgvDisplayDetailtotalmargin
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellMultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.OnGetContentStyle = cgvDisplayDetailStylesGetContentStyle
          object cgvDisplayDetailitemidexternal: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'itemidexternal'
            Width = 100
          end
          object cgvDisplayDetailitemname: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'itemname'
            Width = 100
          end
          object cgvDisplayDetailtype: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'type'
            Visible = False
          end
          object cgvDisplayDetailitemnamechinese: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'itemnamechinese'
            Visible = False
          end
          object cgvDisplayDetaildatecogs: TcxGridDBColumn
            Caption = 'Tgl HPP'
            DataBinding.FieldName = 'datecogs'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cgvDisplayDetailqty: TcxGridDBColumn
            Caption = ' Qty '
            DataBinding.FieldName = 'qty'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayDetailqtyreturn: TcxGridDBColumn
            Caption = 'Qty Return'
            DataBinding.FieldName = 'qtyreturn'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayDetailcogs: TcxGridDBColumn
            Caption = 'HPP'
            DataBinding.FieldName = 'cogs'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayDetailtotalcogs: TcxGridDBColumn
            Caption = 'Total HPP'
            DataBinding.FieldName = 'totalcogs'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayDetailsaleprice: TcxGridDBColumn
            Caption = 'Harga Jual'
            DataBinding.FieldName = 'saleprice'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayDetailtotalsales: TcxGridDBColumn
            Caption = 'Total Jual'
            DataBinding.FieldName = 'totalsales'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayDetailmargin: TcxGridDBColumn
            Caption = 'Laba (Penjualan)'
            DataBinding.FieldName = 'margin'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvDisplayDetailpercent: TcxGridDBColumn
            Caption = '% (Laba Penj)'
            DataBinding.FieldName = 'percent'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cgvDisplayDetailtotalmargin: TcxGridDBColumn
            Caption = 'Laba'
            DataBinding.FieldName = 'totalmargin'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayDetailtotalpercent: TcxGridDBColumn
            Caption = '%'
            DataBinding.FieldName = 'totalpercent'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvDisplayDetailstatusitem: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'statusitem'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          Caption = 'Detail'
          GridView = cgvDisplayDetail
        end
      end
    end
  end
  object dsDisplay: TDataSource [8]
    DataSet = qryDisplay
    Left = 200
    Top = 144
  end
  object dsDisplayDtSimple: TDataSource [9]
    DataSet = qryDisplayDtSimple
    Left = 200
    Top = 176
  end
  object dsDisplayDtGroup: TDataSource [10]
    DataSet = qryDisplayDtGroup
    Left = 264
    Top = 176
  end
  object dsDisplayDt: TDataSource [11]
    DataSet = qryDisplayDt
    Left = 328
    Top = 176
  end
  object qryDisplay: TUniQuery [12]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from vwSalesRevenue(:Year, :Month)')
    Left = 168
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'Month'
      end>
  end
  object qryDisplayDtSimple: TUniQuery [13]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from vwSalesRevenueDtSimple(:ReferenceId)')
    Left = 168
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ReferenceId'
      end>
  end
  object qryDisplayDtGroup: TUniQuery [14]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from vwSalesRevenueDtGroup(:ReferenceId)')
    Left = 232
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ReferenceId'
      end>
  end
  object qryDisplayDt: TUniQuery [15]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from vwSalesRevenueDt(:ReferenceId)')
    Left = 296
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ReferenceId'
      end>
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
