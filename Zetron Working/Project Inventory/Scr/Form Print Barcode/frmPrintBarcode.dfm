inherited fmPrintBarcode: TfmPrintBarcode
  Caption = 'Print Barcode'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object bvlSpacer11: TBevel [1]
      Left = 203
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 219
      ExplicitTop = -4
    end
    object cxButton1: TcxButton
      Left = 155
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPrint
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
    object pnlProgressBar: TPanel
      Left = 213
      Top = 1
      Width = 136
      Height = 48
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 4
      object Label5: TLabel
        Left = 50
        Top = 4
        Width = 32
        Height = 13
        Caption = 'Proses'
        Transparent = True
      end
      object pbProcess: TcxProgressBar
        Left = 8
        Top = 20
        ParentColor = False
        Properties.PeakValue = 5.000000000000000000
        TabOrder = 0
        Width = 115
      end
    end
  end
  object cgMasterSetup: TcxGrid [1]
    Left = 0
    Top = 75
    Width = 592
    Height = 292
    Align = alClient
    TabOrder = 1
    object cgvMasterSetupDBTableView1: TcxGridDBTableView
      OnKeyDown = cgvMasterSetupDBTableView1KeyDown
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsTempPrintBarcode
      DataController.Filter.OnChanged = cgvMasterSetupDBTableView1DataControllerFilterChanged
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skSum
          FieldName = 'Pilih'
          Column = cgvMasterSetupDBTableView1pilih
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      object cgvMasterSetupDBTableView1pilih: TcxGridDBColumn
        Caption = ' Pilih'
        DataBinding.FieldName = 'pilih'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Options.Filtering = False
        Width = 40
      end
      object cgvMasterSetupDBTableView1cetak: TcxGridDBColumn
        Caption = 'Cetak'
        DataBinding.FieldName = 'cetak'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
        Width = 50
      end
      object cgvMasterSetupDBTableView1purchaseinvoicedate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'purchaseinvoicedate'
        Options.Editing = False
        Width = 80
      end
      object cgvMasterSetupDBTableView1purchaseinvoiceid: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'purchaseinvoiceid'
        Options.Editing = False
        Width = 100
      end
      object cgvMasterSetupDBTableView1vendorid: TcxGridDBColumn
        Caption = 'Kode Vendor'
        DataBinding.FieldName = 'vendorid'
        Visible = False
        Options.Editing = False
      end
      object cgvMasterSetupDBTableView1warehousename: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'warehousename'
        Visible = False
        Options.Editing = False
      end
      object cgvMasterSetupDBTableView1vendorname: TcxGridDBColumn
        Caption = 'Vendor'
        DataBinding.FieldName = 'vendorname'
        Visible = False
        Options.Editing = False
      end
      object cgvMasterSetupDBTableView1warehouseid: TcxGridDBColumn
        Caption = 'Kode Gudang'
        DataBinding.FieldName = 'warehouseid'
        Visible = False
        Options.Editing = False
      end
      object cgvMasterSetupDBTableView1no: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'no'
        Options.Editing = False
        Options.Filtering = False
        Width = 40
      end
      object cgvMasterSetupDBTableView1itemid: TcxGridDBColumn
        Caption = 'Kode Barang'
        DataBinding.FieldName = 'itemid'
        Visible = False
        Options.Editing = False
      end
      object cgvMasterSetupDBTableView1itemname: TcxGridDBColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'itemname'
        Options.Editing = False
        Width = 200
      end
      object cgvMasterSetupDBTableView1qty: TcxGridDBColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
        Options.Filtering = False
      end
      object cgvMasterSetupDBTableView1expireddate: TcxGridDBColumn
        Caption = 'Expired'
        DataBinding.FieldName = 'expireddate'
        Visible = False
        Options.Editing = False
        Width = 80
      end
    end
    object cgMasterSetupLevel1: TcxGridLevel
      GridView = cgvMasterSetupDBTableView1
    end
  end
  object pnlCustom: TPanel [2]
    Left = 0
    Top = 50
    Width = 592
    Height = 25
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 7
      Top = 5
      Width = 36
      Height = 13
      Caption = 'Periode'
      Transparent = True
    end
    object cbMonth: TcxComboBox
      Left = 47
      Top = 3
      TabOrder = 0
      Text = 'cbMonth'
      Width = 80
    end
    object cbYear: TcxComboBox
      Left = 126
      Top = 3
      TabOrder = 1
      Text = 'cbYear'
      Width = 70
    end
  end
  inherited ActionList1: TActionList
    object actPrint: TAction
      Caption = '&Print'
      ImageIndex = 3
      OnExecute = actPrintExecute
    end
  end
  object dsTempPrintBarcode: TDataSource
    DataSet = qryTempPrintBarcode
    Left = 200
    Top = 112
  end
  object qryTempPrintBarcode: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select * '
      'from TempPrintBarcode '
      'where TempPrintBarcodeId = :TempPrintBarcodeId')
    Left = 168
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TempPrintBarcodeId'
      end>
  end
  object qrySetPrintBarcode: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      
        'insert into tempprintbarcode(tempprintbarcodeid,purchaseinvoicei' +
        'd,purchaseinvoicedate,'
      
        'vendorname,warehouseid,warehousename,itemid,itemname,vendorid,qt' +
        'y,no,expireddate,cetak, pilih)'
      'SELECT'
      '  :a as tempprintbarcodeid,'
      '  purchaseinvoicehd.purchaseinvoiceid,'
      '  purchaseinvoicehd.purchaseinvoicedate,'
      '  vendor.vendorname,'
      '  purchaseinvoicehd.warehouseid,'
      '  warehouse.warehousename,'
      '  purchaseinvoicedt.itemid,'
      '  item.itemname,'
      '  purchaseinvoicehd.vendorid,'
      '  purchaseinvoicedt.qty,'
      '  purchaseinvoicedt.no,'
      '  purchaseinvoicedt.expireddate,'
      '  purchaseinvoicedt.qty,'
      '  0 as pilih'
      'FROM'
      ' purchaseinvoicedt'
      
        ' INNER JOIN purchaseinvoicehd ON (purchaseinvoicedt.purchaseinvo' +
        'iceid=purchaseinvoicehd.purchaseinvoiceid)'
      
        ' INNER JOIN vendor ON (purchaseinvoicehd.vendorid=vendor.vendori' +
        'd)'
      
        ' INNER JOIN warehouse ON (purchaseinvoicehd.warehouseid=warehous' +
        'e.warehouseid)'
      ' INNER JOIN item ON (purchaseinvoicedt.itemid=item.itemid)'
      'where GetPeriod(PurchaseInvoiceHd.PurchaseInvoiceDate) = :Period'
      'and PurchaseInvoiceHd.PurchaseInvoiceId like :b'
      ''
      '')
    Left = 232
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
      end
      item
        DataType = ftUnknown
        Name = 'Period'
      end
      item
        DataType = ftUnknown
        Name = 'b'
      end>
  end
  object qryDeletePrintBarcode: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'delete from tempprintbarcode where tempprintbarcodeid=:a')
    Left = 264
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
      end>
  end
  object qryDeleteTempBarcode: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'delete from TempBarcode '
      'where TempBarcodeId = :TempBarcodeId')
    Left = 296
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TempBarcodeId'
      end>
  end
  object qryUpdatePilih: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'update TempPrintBarcode '
      'set Pilih = :Pilih '
      'where TempPrintBarcodeId = :TempPrintBarcodeId'
      'and PurchaseInvoiceId = :PurchaseInvoiceId'
      'and No = :No '
      'and ItemId = :ItemId')
    Left = 232
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pilih'
      end
      item
        DataType = ftUnknown
        Name = 'TempPrintBarcodeId'
      end
      item
        DataType = ftUnknown
        Name = 'PurchaseInvoiceId'
      end
      item
        DataType = ftUnknown
        Name = 'No'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryUpdatePilihSemua: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'update tempprintbarcode set pilih=:a where tempprintbarcodeid=:b')
    Left = 264
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
      end
      item
        DataType = ftUnknown
        Name = 'b'
      end>
  end
  object qrySpSetPrintBarcode: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select spsettempbarcode(:a)')
    Left = 232
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
      end>
  end
end
