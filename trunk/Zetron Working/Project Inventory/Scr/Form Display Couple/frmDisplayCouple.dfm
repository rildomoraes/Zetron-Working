inherited fmDisplayCouple: TfmDisplayCouple
  Caption = 'Display Assembly / Couple'
  ExplicitWidth = 600
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCustom: TPanel
    ExplicitLeft = 0
    ExplicitWidth = 592
    object lblInfo: TLabel [1]
      Left = 240
      Top = 5
      Width = 48
      Height = 13
      Caption = 'Qty Minus'
      Transparent = True
    end
    object imgInfo: TImage [2]
      Left = 216
      Top = 5
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036040000424D360400000000000036000000280000001000
        0000100000000100200000000000000400000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000052F6C60052F6E70052F6E70052F6E70052F6E70052F6E70052
        F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6C60000
        00000052F6BD1429FFFF814DFFFF8851FFFF8851FFFF8851FFFF814DFFFF814D
        FFFF794DFFFF794DFFFF794DFFFF734DFFFF6F44FFFF5E3CFEFF042EFFFF0052
        F6BD0052F6F78851FFFF8F55FFFF8F55FFFF8F55FFFF8851FFFF8851FFFF8851
        FFFF8251FFFF8251FFFF7B51FFFF7B51FFFF794DFFFF6F44FFFF4F3CFEFF0052
        F6F70049FBF78851FFFF8851FFFF8251FFFF8251FFFF8251FFFF7B51FFFF794D
        FFFF734DFFFF6F44FFFF6F44FFFF6844FFFF6844FFFF6844FFFF5840FEFF0052
        F6F70049FBF78251FFFF7B51FFFF794DFFFF734DFFFF6F44FFFF6F44FFFF6844
        FFFF6844FFFF6144FFFF6040FEFF6040FEFF5840FEFF5840FEFF4F3CFEFF0052
        F6F70049FBF76F44FFFF6F44FFFF6844FFFF6844FFFF6144FFFF6040FEFF6040
        FEFF5840FEFF5840FEFF5140FEFF5140FEFF4F3CFEFF473CFEFF3D34FEFF0052
        F6F70049FBF7654DFFFF6040FEFF6040FEFF5840FEFF5840FEFF5140FEFF5140
        FEFF4F3CFEFF473CFEFF4434FEFF3D34FEFF3D34FEFF3D34FEFF4555FFFF0052
        F6F70049FBF75D62FFFF5D62FFFF5851FFFF5449FFFF473CFEFF4434FEFF3D34
        FEFF3D34FEFF3D34FEFF3C40FEFF454EFFFF5160FFFF6180FFFF6180FFFF0052
        F6F70049FBF7645DFFFF6865FFFF6568FFFF6568FFFF6568FFFF5E5DFFFF5D62
        FFFF5D62FFFF656FFFFF656FFFFF656FFFFF6575FFFF6575FFFF6575FFFF0052
        F6F70049FBF77561FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6761
        FFFF6761FFFF645DFFFF645DFFFF6568FFFF6568FFFF6568FFFF5D62FFFF0052
        F6F70049FBF77B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7561FFFF7561
        FFFF7561FFFF7561FFFF7561FFFF6E61FFFF6E61FFFF6E61FFFF5E5DFFFF0052
        F6F70052F6F77E59FFFF8A65FFFF8A65FFFF8A65FFFF8365FFFF8365FFFF8161
        FFFF8161FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF4E4DFFFF0052
        F6F70052F6BD242EFFFF8C5DFFFF9665FFFF9065FFFF9065FFFF9065FFFF9065
        FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF7759FFFF1038FFFF0052
        F6BD000000000052F6C60049FBE70040FFE70049FBE70053FBE70053FBE70053
        FBE70053FBE70053FBE70053FBE70053FBE70052F6E70052F6E70052F6C60000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000}
      Transparent = True
    end
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
    Width = 592
    Height = 292
    Align = alClient
    TabOrder = 2
    object cgvDisplay: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDisplay
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          Column = cgvDisplaystatusapprove
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      object cgvDisplaystatusapprove: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'statusapprove'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = dmGlobal.imgIcon16
        Properties.Items = <
          item
            ImageIndex = 7
            Value = '0'
          end
          item
            ImageIndex = 6
            Value = '1'
          end
          item
            ImageIndex = 8
            Value = '2'
          end>
        Width = 30
      end
      object cgvDisplaycoupleid: TcxGridDBColumn
        Caption = 'Couple'
        DataBinding.FieldName = 'coupleid'
      end
      object cgvDisplaycoupledate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'coupledate'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvDisplaywarehousename: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'warehousename'
        Width = 120
      end
      object cgvDisplayItemId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemId'
        Visible = False
      end
      object cgvDisplayItemName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'ItemName'
      end
      object cgvDisplaytype: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'type'
        Visible = False
      end
      object cgvDisplayitemnamechinese: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'itemnamechinese'
        Visible = False
      end
      object cgvDisplayqty: TcxGridDBColumn
        Caption = ' Qty'
        DataBinding.FieldName = 'qty'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplaycogs: TcxGridDBColumn
        Caption = 'HPP'
        DataBinding.FieldName = 'cogs'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvDisplaytotalcogs: TcxGridDBColumn
        Caption = 'Total HPP'
        DataBinding.FieldName = 'totalcogs'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvDisplayemployeename: TcxGridDBColumn
        Caption = 'Pegawai'
        DataBinding.FieldName = 'employeename'
        Visible = False
        Styles.Content = dmGlobal.stYellowLight
      end
    end
    object cgvDisplayDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDisplayDt
      DataController.DetailKeyFieldNames = 'CoupleId'
      DataController.MasterKeyFieldNames = 'CoupleId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          FieldName = 'No'
          Column = cgvDisplayDtno
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cgvDisplayDtcoupleid: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'coupleid'
        Visible = False
      end
      object cgvDisplayDtno: TcxGridDBColumn
        Caption = ' No'
        DataBinding.FieldName = 'no'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
      end
      object cgvDisplayDtitemidexternal: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemidexternal'
        SortIndex = 0
        SortOrder = soAscending
      end
      object cgvDisplayDtitemname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'itemname'
      end
      object cgvDisplayDttype: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'type'
        Visible = False
      end
      object cgvDisplayDtitemnamechinese: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'itemnamechinese'
        Visible = False
      end
      object cgvDisplayDtqty: TcxGridDBColumn
        Caption = ' Qty'
        DataBinding.FieldName = 'qty'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayDtqtycouple: TcxGridDBColumn
        Caption = 'Qty Couple'
        DataBinding.FieldName = 'qtycouple'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object cgvTransactionDt: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsTransactionDt
      DataController.DetailKeyFieldNames = 'CoupleId'
      DataController.MasterKeyFieldNames = 'CoupleId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          FieldName = 'itemidexternal'
          Column = cgvTransactionDtitemidexternal
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          FieldName = 'totalcogs'
          Column = cgvTransactionDttotalcogs
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = cgvTransactionDtStylesGetContentStyle
      object cgvTransactionDtitemidexternal: TcxGridDBColumn
        Caption = 'Item'
        DataBinding.FieldName = 'itemidexternal'
        Options.CellMerging = True
        SortIndex = 0
        SortOrder = soAscending
        Width = 80
      end
      object cgvTransactionDtitemname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'itemname'
        Options.CellMerging = True
        Width = 198
      end
      object cgvTransactionDttype: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'type'
        Visible = False
        Options.CellMerging = True
      end
      object cgvTransactionDtitemnamechinese: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'itemnamechinese'
        Visible = False
        Options.CellMerging = True
      end
      object cgvTransactionDtdatecogs: TcxGridDBColumn
        Caption = 'Tgl HPP'
        DataBinding.FieldName = 'datecogs'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvTransactionDtqty: TcxGridDBColumn
        Caption = ' Qty'
        DataBinding.FieldName = 'qty'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvTransactionDtcogs: TcxGridDBColumn
        Caption = 'HPP'
        DataBinding.FieldName = 'cogs'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cgvTransactionDttotalcogs: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'totalcogs'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object cgDisplayLevel1: TcxGridLevel
      GridView = cgvDisplay
      Options.DetailTabsPosition = dtpTop
      object cgDisplayLevel2: TcxGridLevel
        Caption = 'Item'
        GridView = cgvDisplayDt
      end
      object cgDisplayLevel3: TcxGridLevel
        Caption = 'HPP'
        GridView = cgvTransactionDt
      end
    end
  end
  object dsDisplay: TDataSource [6]
    DataSet = qryDisplay
    Left = 200
    Top = 144
  end
  object dsDisplayDt: TDataSource [7]
    DataSet = qryDisplayDt
    Left = 200
    Top = 176
  end
  object dsTransactionDt: TDataSource [8]
    DataSet = qryTransactionDt
    Left = 264
    Top = 176
  end
  object qryDisplay: TUniQuery [9]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  a.*, (a.TotalCOGS / a.Qty) as COGS,'
      '  b.WarehouseName, '
      '  c.ItemName, c.Type, c.ItemNameChinese,'
      '  d.EmployeeName'
      'from CoupleHd a'
      'left join Warehouse b on a.WarehouseId = b.WarehouseId'
      'left join Item c on a.ItemId = c.ItemId'
      'left join Employee d on a.EmployeeId = d.EmployeeId'
      'where extract(year from a.CoupleDate) = :Year'
      'and extract(month from a.CoupleDate) = :Month'
      'order by a.CoupleId')
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
  object qryDisplayDt: TUniQuery [10]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.*, b.ItemIdExternal, b.ItemName, b.Type, b.ItemNameChinese'
      'from CoupleDt a'
      'left join Item b on a.ItemId = b.ItemId'
      'left join CoupleHd c on a.CoupleId = c.CoupleId'
      'where extract(year from c.CoupleDate) = :Year'
      'and extract(month from c.CoupleDate) = :Month'
      'order by a.CoupleId, b.ItemIdExternal')
    Left = 168
    Top = 176
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
  object qryTransactionDt: TUniQuery [11]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  b.ReferenceId as CoupleId,'
      '  c.ItemIdExternal, c.ItemName, c.Type, c.ItemNameChinese, '
      '  a.DateCOGS, a.Qty, a.COGS, a.TotalCOGS '
      'from TransactionDt a'
      'left join Transaction b on a.TransactionId = b.TransactionId'
      'left join Item c on b.ItemId = c.ItemId'
      'where extract(year from b.TransactionDate) = :Year'
      'and extract(month from b.TransactionDate) = :Month'
      'and b.TransactionTypeId = '#39'TY010'#39
      ''
      'union all'
      ''
      'select '
      '  a.ReferenceId as CoupleId,'
      '  b.ItemIdExternal, b.ItemName, b.Type, b.ItemNameChinese, '
      
        '  a.TransactionDate as DateCOGS, a.Qty, a.Price as COGS, (a.Qty ' +
        '* a.Price) as TotalCOGS '
      'from Transaction a'
      'left join Item b on a.ItemId = b.ItemId'
      'where extract(year from a.TransactionDate) = :Year'
      'and extract(month from a.TransactionDate) = :Month'
      'and a.TransactionTypeId = '#39'TY010'#39
      'and (b.StatusItem = '#39'0'#39' or b.StatusItem = '#39'2'#39')'
      ''
      'order by CoupleId, ItemIdExternal')
    Left = 232
    Top = 176
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
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
