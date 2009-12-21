inherited fmDisplayStockLokasi: TfmDisplayStockLokasi
  Caption = 'Display Stock Lokasi'
  ClientHeight = 404
  ClientWidth = 746
  ExplicitWidth = 754
  ExplicitHeight = 438
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 746
    ExplicitWidth = 746
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 50
    Width = 746
    Height = 31
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 14
      Top = 10
      Width = 29
      Height = 13
      Caption = 'Lokasi'
      Transparent = True
    end
    object lcbStorageLocation: TcxExtLookupComboBox
      Left = 49
      Top = 6
      Properties.View = dmEkspedisi.cgvPrevStorageLocation
      Properties.KeyFieldNames = 'StorageLocationId'
      Properties.ListFieldItem = dmEkspedisi.cgvPrevStorageLocationStorageLocationName
      Properties.OnEditValueChanged = cxExtLookupComboBox1PropertiesEditValueChanged
      TabOrder = 0
      Width = 145
    end
    object crbNone: TcxRadioButton
      Left = 224
      Top = 8
      Width = 60
      Height = 17
      Caption = 'None'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = crbNoneClick
      Transparent = True
    end
    object crbSemuaGudang: TcxRadioButton
      Left = 290
      Top = 8
      Width = 103
      Height = 17
      Caption = 'Semua Gudang'
      TabOrder = 2
      OnClick = crbSemuaGudangClick
      Transparent = True
    end
    object crbSemuaKapal: TcxRadioButton
      Left = 399
      Top = 8
      Width = 106
      Height = 17
      Caption = 'Semua Kapal'
      TabOrder = 3
      OnClick = crbSemuaKapalClick
      Transparent = True
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 81
    Width = 746
    Height = 323
    Align = alClient
    TabOrder = 2
    object cgStockLokasi: TcxGrid
      Left = 1
      Top = 1
      Width = 744
      Height = 249
      Align = alClient
      TabOrder = 0
      object cgvDisplayStockLokasi: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDisplayStockLokasi
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            FieldName = 'TotalM3'
            Column = cgvDisplayStockLokasiTotalM3
          end
          item
            Kind = skSum
            Position = spFooter
            FieldName = 'TotalBerat'
            Column = cgvDisplayStockLokasiTotalBerat
          end
          item
            Format = 'M3 = 0,.0000'
            Kind = skSum
            FieldName = 'TotalM3'
            Column = cgvDisplayStockLokasiTotalM3
          end
          item
            Format = 'Ton = 0,.0000'
            Kind = skSum
            FieldName = 'TotalBerat'
            Column = cgvDisplayStockLokasiTotalBerat
          end
          item
            Format = 'T/M3 = 0,.0000'
            Kind = skSum
            FieldName = 'total tonm3'
            Column = cgvDisplayStockLokasitotaltonm3
          end
          item
            Format = '0'
            Kind = skSum
            Position = spFooter
            FieldName = 'Qty'
            Column = cgvDisplayStockLokasiQty
          end
          item
            Format = '0'
            Kind = skSum
            Position = spFooter
            FieldName = 'Jumlah'
            Column = cgvDisplayStockLokasiJumlah
          end
          item
            Format = 'Collies = 0'
            Kind = skSum
            FieldName = 'Jumlah'
            Column = cgvDisplayStockLokasiJumlah
          end
          item
            Format = '0'
            Kind = skSum
            Position = spFooter
            FieldName = 'Jumlah Packing'
            Column = cgvDisplayStockLokasiJumlahPacking
          end
          item
            Format = 'Packaging = 0'
            Kind = skSum
            FieldName = 'Jumlah Packing'
            Column = cgvDisplayStockLokasiJumlahPacking
          end
          item
            Kind = skSum
            Position = spFooter
            FieldName = 'total tonm3'
            Column = cgvDisplayStockLokasitotaltonm3
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'TotalM3'
            Column = cgvDisplayStockLokasiTotalM3
          end
          item
            Kind = skSum
            FieldName = 'TotalBerat'
            Column = cgvDisplayStockLokasiTotalBerat
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'Qty'
            Column = cgvDisplayStockLokasiQty
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'Jumlah'
            Column = cgvDisplayStockLokasiJumlah
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'Jumlah Packing'
            Column = cgvDisplayStockLokasiJumlahPacking
          end
          item
            Kind = skSum
            FieldName = 'total tonm3'
            Column = cgvDisplayStockLokasitotaltonm3
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        Styles.Group = dmGlobal.stGroup
        Bands = <
          item
            Caption = 'Stock'
          end
          item
            Caption = 'Penerimaan Surat Jalan'
          end
          item
            Caption = 'Packing'
          end
          item
            Caption = 'Bongkaran'
          end>
        object cgvDisplayStockLokasiLamaHari: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Lama Hari'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiKodeLokasi: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Kode Lokasi'
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiNamaLokasi: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Nama Lokasi'
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiNoSJAuto: TcxGridDBBandedColumn
          DataBinding.FieldName = 'No SJ Auto'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiKodeBarang: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Kode Barang'
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiNamaBarang: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Nama Barang'
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiJumlah: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Jumlah'
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiNamaMerek: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Nama Merek'
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiNamaJurusan: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Nama Jurusan'
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiAliasPacking: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Alias Packing'
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiTglBeritaAcara: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tgl Berita Acara'
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiTglKedatanganKapal: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tgl Kedatangan Kapal'
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiKodeJurusan: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Kode Jurusan'
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiEmployeeName: TcxGridDBBandedColumn
          Caption = 'User'
          DataBinding.FieldName = 'EmployeeName'
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiKodeMerek: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Kode Merek'
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiSisa: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Sisa'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiTglPenerimaan: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tgl Penerimaan'
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiNoSuratJalan: TcxGridDBBandedColumn
          DataBinding.FieldName = 'No Surat Jalan'
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiInternalMemo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Internal Memo'
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiPackingTransactionCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PackingTransactionCode'
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiBeritaAcaraCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BeritaAcaraCode'
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiQty: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Qty'
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiP: TcxGridDBBandedColumn
          DataBinding.FieldName = 'P'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'T'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiBerat: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Berat'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiTotalM3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TotalM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiTotalBerat: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TotalBerat'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiMode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Mode'
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiReferenceCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ReferenceCode'
          Position.BandIndex = 0
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiStorageInDate: TcxGridDBBandedColumn
          Caption = 'Tgl Masuk'
          DataBinding.FieldName = 'StorageInDate'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiUnitMeasureName: TcxGridDBBandedColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'unitMeasureName'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiPenerima: TcxGridDBBandedColumn
          Caption = 'Penerima'
          DataBinding.FieldName = 'penerima'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasiJumlahPacking: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Jumlah Packing'
          Position.BandIndex = 0
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object cgvDisplayStockLokasitotaltonm3: TcxGridDBBandedColumn
          Caption = 'Total T/M3'
          DataBinding.FieldName = 'total tonm3'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object cgvDisplayPacking: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDisplayPacking
        DataController.DetailKeyFieldNames = 'PackingTransactionCode'
        DataController.KeyFieldNames = 'PackingTransactionCode'
        DataController.MasterKeyFieldNames = 'PackingTransactionCode'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cgvDisplayPackingPackingTransactionCode: TcxGridDBColumn
          DataBinding.FieldName = 'PackingTransactionCode'
        end
        object cgvDisplayPackingPackingTransactionNo: TcxGridDBColumn
          DataBinding.FieldName = 'PackingTransactionNo'
        end
        object cgvDisplayPackingItemReceiveCode: TcxGridDBColumn
          DataBinding.FieldName = 'ItemReceiveCode'
        end
        object cgvDisplayPackingNo: TcxGridDBColumn
          DataBinding.FieldName = 'No'
        end
        object cgvDisplayPackingQty: TcxGridDBColumn
          DataBinding.FieldName = 'Qty'
        end
        object cgvDisplayPackingSuppliesCode: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'SuppliesCode'
        end
        object cgvDisplayPackingSuppliesName: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'SuppliesName'
        end
        object cgvDisplayPackingP: TcxGridDBColumn
          DataBinding.FieldName = 'P'
        end
        object cgvDisplayPackingL: TcxGridDBColumn
          DataBinding.FieldName = 'L'
        end
        object cgvDisplayPackingT: TcxGridDBColumn
          DataBinding.FieldName = 'T'
        end
        object cgvDisplayPackingBerat: TcxGridDBColumn
          DataBinding.FieldName = 'Berat'
        end
        object cgvDisplayPackingTotalM3: TcxGridDBColumn
          Caption = 'Total M3'
          DataBinding.FieldName = 'TotalM3'
        end
        object cgvDisplayPackingTotalBerat: TcxGridDBColumn
          Caption = 'Total Berat'
          DataBinding.FieldName = 'TotalBerat'
        end
        object cgvDisplayPackingQtyOutStanding: TcxGridDBColumn
          DataBinding.FieldName = 'QtyOutStanding'
        end
        object cgvDisplayPackingUnitMeasureId: TcxGridDBColumn
          DataBinding.FieldName = 'UnitMeasureId'
        end
        object cgvDisplayPackingQtyTotal: TcxGridDBColumn
          DataBinding.FieldName = 'QtyTotal'
        end
      end
      object cgStockLokasiLevel1: TcxGridLevel
        GridView = cgvDisplayStockLokasi
        object cgStockLokasiLevel2: TcxGridLevel
          GridView = cgvDisplayPacking
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 250
      Width = 744
      Height = 72
      Align = alBottom
      TabOrder = 1
      Visible = False
      object Label2: TLabel
        Left = 13
        Top = 11
        Width = 52
        Height = 13
        Caption = 'Total Collie'
        Transparent = True
      end
      object Label3: TLabel
        Left = 13
        Top = 29
        Width = 63
        Height = 13
        Caption = 'Total Packing'
        Transparent = True
      end
      object Label4: TLabel
        Left = 242
        Top = 11
        Width = 41
        Height = 13
        Caption = 'Total M3'
        Transparent = True
      end
      object Label5: TLabel
        Left = 242
        Top = 29
        Width = 45
        Height = 13
        Caption = 'Total Ton'
        Transparent = True
      end
      object Label6: TLabel
        Left = 242
        Top = 47
        Width = 73
        Height = 13
        Caption = 'Total M3 + Ton'
        Transparent = True
      end
      object dbeCollie: TcxDBCurrencyEdit
        Left = 104
        Top = 7
        DataBinding.DataField = 'Total Collie'
        DataBinding.DataSource = dsSumDisplayStockMutasi
        Properties.DisplayFormat = ',0.0000;(,0.0000)'
        Properties.UseThousandSeparator = True
        TabOrder = 0
        Width = 121
      end
      object dbePacking: TcxDBCurrencyEdit
        Left = 104
        Top = 25
        DataBinding.DataField = 'Total Packing'
        DataBinding.DataSource = dsSumDisplayStockMutasi
        Properties.DisplayFormat = ',0.0000;(,0.0000)'
        Properties.UseThousandSeparator = True
        TabOrder = 1
        Width = 121
      end
      object dbeM3: TcxDBCurrencyEdit
        Left = 344
        Top = 7
        DataBinding.DataField = 'Total M3'
        DataBinding.DataSource = dsSumDisplayStockMutasi
        Properties.DisplayFormat = ',0.0000;(,0.0000)'
        Properties.UseThousandSeparator = True
        TabOrder = 2
        Width = 121
      end
      object dbeTon: TcxDBCurrencyEdit
        Left = 344
        Top = 25
        DataBinding.DataField = 'Total Ton'
        DataBinding.DataSource = dsSumDisplayStockMutasi
        Properties.DisplayFormat = ',0.0000;(,0.0000)'
        Properties.UseThousandSeparator = True
        TabOrder = 3
        Width = 121
      end
      object dbeM3Ton: TcxDBCurrencyEdit
        Left = 344
        Top = 43
        DataBinding.DataField = 'Total M3+Berat'
        DataBinding.DataSource = dsSumDisplayStockMutasi
        Properties.DisplayFormat = ',0.0000;(,0.0000)'
        Properties.UseThousandSeparator = True
        TabOrder = 4
        Width = 121
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryDisplayStockLokasi: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StorageLocationId'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end
      item
        Name = 'FlagShipStorage'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      
        'select cast(getdate()-a.Storageindate as int) as [Lama Hari],b.S' +
        'torageLocationCode as [Kode Lokasi],b.StorageLocationName as [Na' +
        'ma Lokasi],'
      
        'a.ReferenceCode as [No SJ Auto],a.SuppliesCode as [Kode Barang],' +
        ' a.SuppliesName as [Nama Barang],'
      'a.qty as [Jumlah],'
      'case'
      ' when a.packingtransactioncode is null then 0'
      ' else a.qty'
      ' end'
      ' as [Jumlah Packing],'
      'case'
      ' when a.totalm3>a.totalberat then a.totalm3'
      ' else a.totalberat'
      ' end'
      ' as [total tonm3],'
      'case'
      ' when i.merekname is null then i2.merekname'
      ' else i.merekname'
      ' end'
      ' as [Nama Merek],'
      'case'
      ' when i.merekcode is null then i2.merekcode'
      ' else i.merekcode'
      ' end'
      ' as [Kode Merek],'
      'case'
      ' when g.RouteName is null then g2.RouteName'
      ' else g.RouteName'
      ' end'
      
        'As [Nama Jurusan],d.PackingAlias [Alias Packing],e.BeritaAcaraDa' +
        'te as [Tgl Berita Acara],f.ArrivalDate as [Tgl Kedatangan Kapal]' +
        ','
      'case'
      ' when g.RouteCode is null then g2.RouteCode'
      ' else g.RouteCode'
      ' end'
      'as [Kode Jurusan]'
      ' ,'
      'case'
      ' when a.packingtransactioncode is null then'
      '   case'
      '     when a.qty<j.qtyoutstanding then a.qty'
      '     else j.qtyoutstanding'
      '   end'
      ' else'
      '   case'
      '     when a.qty<d.qtyoutstanding then a.qty'
      '     else d.qtyoutstanding'
      '   end'
      'end as [Sisa],'
      'case'
      ' when c.ItemReceiveDate is null then d.PackingTransactionDate'
      ' else c.ItemReceiveDate'
      'end'
      
        'as [Tgl Penerimaan],c.NoSuratJalan as [No Surat Jalan],c.Interna' +
        'lMemo as [Internal Memo],'
      'a.*,'
      'k.unitMeasureName as unitMeasureName,'
      'case'
      ' when a.packingtransactioncode is null then h3.employeename'
      ' else h2.employeename'
      ' end'
      'as [EmployeeName],'
      'case'
      ' when a.packingtransactioncode is null then h.employeename'
      ' else h2.employeename'
      'end as [Penerima]'
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
      'left join Route g2 on d.RouteId=g2.RouteId'
      'left join Employee h on c.Penerima=h.employeeId'
      'left join Employee h2 on d.employeeid=h2.employeeId'
      'left join Employee h3 on c.employeeid=h3.employeeId'
      'left join Merek i on c.MerekId=i.MerekId'
      'left join Merek i2 on d.MerekId=i2.MerekId'
      
        'left join SuppliesReceiveDt j on a.ItemReceiveCode=j.ItemReceive' +
        'Code and a.no=j.no'
      'left join UnitMeasure k on a.UnitMeasureId=k.UnitMeasureId'
      
        'where cast(a.StorageLocationId as varchar) like cast(:StorageLoc' +
        'ationId as varchar)'
      'and b.FlagShipStorage like cast(:FlagShipStorage as varchar)'
      '')
    Left = 392
    Top = 120
  end
  object dsDisplayStockLokasi: TDataSource
    DataSet = qryDisplayStockLokasi
    Left = 520
    Top = 120
  end
  object qrySumDisplayStockLokasi: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StorageLocationId'
        Attributes = [paSigned, paNullable]
        DataType = ftString
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'FlagShipStorage'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select sum(collie) as [Total Collie],sum(packing) as [Total Pack' +
        'ing],sum(totalm3) as [Total M3],sum(totalberat) as [Total Ton],s' +
        'um(totalm3berat) as [Total M3+Berat]'
      'from'
      '('
      'select '
      '  case'
      '   when not a.itemreceivecode is null then a.qty'
      '   else 0'
      '  end as collie,'
      '  case'
      '   when not a.packingtransactioncode is null then a.qty'
      '   else 0'
      '  end as packing,'
      '  a.totalm3,'
      '  a.totalberat,'
      '  a.totalm3+a.totalberat as [totalm3berat]'
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
      
        'left join SuppliesReceiveDt j on a.ItemReceiveCode=j.ItemReceive' +
        'Code and a.no=j.no'
      
        'where a.StorageLocationId like cast(:StorageLocationId as varcha' +
        'r)'
      'and b.FlagShipStorage like cast(:FlagShipStorage as varchar)'
      ') a')
    Left = 392
    Top = 176
  end
  object dsSumDisplayStockMutasi: TDataSource
    DataSet = qrySumDisplayStockLokasi
    Left = 520
    Top = 176
  end
  object dsDisplayPacking: TDataSource
    DataSet = qryDisplayPacking
    Left = 248
    Top = 232
  end
  object qryDisplayPacking: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from packingtransactiondt'
      
        'where packingtransactioncode in (select packingtransactioncode f' +
        'rom stock)')
    Left = 144
    Top = 232
  end
end
