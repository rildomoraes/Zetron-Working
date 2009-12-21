inherited fmDisplayStockLokasi: TfmDisplayStockLokasi
  Caption = 'Display Stock Lokasi'
  ExplicitWidth = 600
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 14
      Top = 10
      Width = 29
      Height = 13
      Caption = 'Lokasi'
    end
    object lcbStorageLocation: TcxExtLookupComboBox
      Left = 52
      Top = 7
      Properties.OnEditValueChanged = cxExtLookupComboBox1PropertiesEditValueChanged
      TabOrder = 0
      Width = 145
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 91
    Width = 592
    Height = 276
    Align = alClient
    TabOrder = 2
    object cgStockLokasi: TcxGrid
      Left = 1
      Top = 1
      Width = 590
      Height = 274
      Align = alClient
      TabOrder = 0
      object cgvDisplayStockLokasi: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDisplayStockLokasi
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Bands = <
          item
            Caption = 'Lokasi'
          end
          item
            Caption = 'Penerimaan Surat Jalan'
          end
          item
            Caption = 'Barang'
          end
          item
            Caption = 'Packing'
          end
          item
            Caption = 'Bongkaran'
          end>
        object cgvDisplayStockLokasiStorageLocationCode: TcxGridDBBandedColumn
          Caption = 'Kode Lokasi'
          DataBinding.FieldName = 'StorageLocationCode'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiStorageLocationName: TcxGridDBBandedColumn
          Caption = 'Nama Lokasi'
          DataBinding.FieldName = 'StorageLocationName'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiStockId: TcxGridDBBandedColumn
          Caption = 'Kode Stock'
          DataBinding.FieldName = 'StockId'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiItemReceiveCode: TcxGridDBBandedColumn
          Caption = 'No SJ Auto'
          DataBinding.FieldName = 'ItemReceiveCode'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'No'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiPackingTransactionCode: TcxGridDBBandedColumn
          Caption = 'Kode Packing'
          DataBinding.FieldName = 'PackingTransactionCode'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiBeritaAcaraCode: TcxGridDBBandedColumn
          Caption = 'Kode Berita Acara'
          DataBinding.FieldName = 'BeritaAcaraCode'
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiSuppliesCode: TcxGridDBBandedColumn
          Caption = 'Kode Barang'
          DataBinding.FieldName = 'SuppliesCode'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiSuppliesName: TcxGridDBBandedColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'SuppliesName'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiQty: TcxGridDBBandedColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'Qty'
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiP: TcxGridDBBandedColumn
          DataBinding.FieldName = 'P'
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L'
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'T'
          Position.BandIndex = 2
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiBerat: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Berat'
          Position.BandIndex = 2
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiUnitMeasure: TcxGridDBBandedColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'UnitMeasure'
          Position.BandIndex = 2
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiTotalM3: TcxGridDBBandedColumn
          Caption = 'Total M3'
          DataBinding.FieldName = 'TotalM3'
          Position.BandIndex = 2
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiTotalBerat: TcxGridDBBandedColumn
          Caption = 'Total Berat'
          DataBinding.FieldName = 'TotalBerat'
          Position.BandIndex = 2
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiMode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Mode'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <>
          Position.BandIndex = 2
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiReferenceCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ReferenceCode'
          Position.BandIndex = 2
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiStorageInDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StorageInDate'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiItemReceiveDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ItemReceiveDate'
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiNoSuratJalan: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NoSuratJalan'
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiInternalMemo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'InternalMemo'
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiPackingAlias: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PackingAlias'
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiBeritaAcaraDate: TcxGridDBBandedColumn
          Caption = 'Tgl Berita Acara'
          DataBinding.FieldName = 'BeritaAcaraDate'
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiArrivalDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ArrivalDate'
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiRouteCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RouteCode'
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiRouteName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RouteName'
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiEmployeeName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EmployeeName'
          Position.BandIndex = 1
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasimerekcode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'merekcode'
          Position.BandIndex = 2
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasimerekname: TcxGridDBBandedColumn
          DataBinding.FieldName = 'merekname'
          Position.BandIndex = 2
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
      end
      object cgStockLokasiLevel1: TcxGridLevel
        GridView = cgvDisplayStockLokasi
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryDisplayStockLokasi: TADOQuery
    Active = True
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StorageLocationId'
        Attributes = [paSigned, paNullable]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      
        'select b.StorageLocationCode,b.StorageLocationName,a.*,c.ItemRec' +
        'eiveDate,c.NoSuratJalan,c.InternalMemo,'
      
        'd.PackingAlias,e.BeritaAcaraDate,f.ArrivalDate,g.RouteCode,g.Rou' +
        'teName,h.EmployeeName,i.merekcode,i.merekname'
      'from Stock a'
      
        'left join StorageLocation b on a.StorageLocationId=b.StorageLoca' +
        'tionId'
      
        'left join SuppliesReceiveHd c on a.ItemReceiveCode=c.ItemReceive' +
        'Code'
      
        'left join PackingTransactionHd d on a.PackingTransactionCode=d.P' +
        'ackingTransactionCode'
      'left join BeritaAcaraHd e on a.BeritaAcaraCode=e.BeritaAcaraCode'
      'left join BongkaranHd f on e.BongkaranCode=f.BongkaranCode'
      'left join Route g on c.RouteId=g.RouteId'
      'left join Employee h on c.Penerima=h.employeeId'
      'left join Merek i on c.MerekId=i.MerekId'
      'where a.StorageLocationId=:StorageLocationId'
      '')
    Left = 392
    Top = 120
  end
  object dsDisplayStockLokasi: TDataSource
    DataSet = qryDisplayStockLokasi
    Left = 520
    Top = 120
  end
end
