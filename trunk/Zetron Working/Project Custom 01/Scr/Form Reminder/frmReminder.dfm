inherited fmReminder: TfmReminder
  Caption = 'Reminder'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPeriod: TPanel [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lblPeriod: TLabel
      Left = 8
      Top = 6
      Width = 36
      Height = 13
      Caption = 'Periode'
      Transparent = True
    end
    object cbMonth: TcxComboBox
      Left = 48
      Top = 4
      Properties.DropDownRows = 12
      TabOrder = 0
      Width = 89
    end
    object cbYear: TcxComboBox
      Left = 136
      Top = 4
      TabOrder = 1
      Width = 65
    end
    object chkAutoRefresh: TcxCheckBox
      Left = 208
      Top = 6
      Caption = 'Auto Refresh'
      ParentColor = False
      TabOrder = 2
      Transparent = True
      Width = 121
    end
  end
  object cgReminder: TcxGrid [2]
    Left = 0
    Top = 77
    Width = 592
    Height = 290
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.Kind = lfUltraFlat
    ExplicitTop = 18
    ExplicitWidth = 469
    ExplicitHeight = 349
    object cgvReminder: TcxGridTableView
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = cgvReminderCellDblClick
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.Footer = True
      OptionsView.GridLines = glHorizontal
      object cgvReminderCategory: TcxGridColumn
        Caption = 'Kategori'
        Visible = False
        GroupIndex = 0
        Options.Filtering = False
        Options.Moving = False
      end
      object cgvReminderInformation: TcxGridColumn
        Caption = 'Pekerjaan'
        Options.Filtering = False
        Options.Grouping = False
        Width = 246
      end
      object cgvReminderTodo: TcxGridColumn
        Caption = 'Jumlah'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Options.Filtering = False
        Options.Grouping = False
        Width = 54
      end
    end
    object cgReminderLevel1: TcxGridLevel
      GridView = cgvReminder
    end
  end
  object tmRefresh: TTimer
    Enabled = False
    OnTimer = tmRefreshTimer
    Left = 168
    Top = 113
  end
  object qryReminder: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'Period1'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare'
      '  @Period1 varchar(10)'
      ''
      'set @Period1 = :Period1'
      ''
      
        'select '#39'Pembelian'#39' as Category, '#39'PO0'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMPurchaseOrderHd'
      'where chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, dtPurchaseOrderDate, 112), 1, 6) ' +
        '= @Period1'
      'union all'
      
        'select '#39'Pembelian'#39' as Category, '#39'PO1'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMPurchaseOrderHd'
      'where chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, dtPurchaseOrderDate, 112), 1, 6) ' +
        '= @Period1'
      'union all'
      
        'select '#39'Pembelian'#39' as Category, '#39'PO2'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMPurchaseOrderHd'
      'where chStatusApprove = '#39'2'#39
      
        'and substring(convert(varchar, dtPurchaseOrderDate, 112), 1, 6) ' +
        '= @Period1'
      'union all'
      
        'select '#39'Pembelian'#39' as Category, '#39'PI0'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMPurchaseInvoiceHd'
      'where chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, dtPurchaseInvoiceDate, 112), 1, 6' +
        ') = @Period1'
      'union all'
      
        'select '#39'Pembelian'#39' as Category, '#39'PI1'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMPurchaseInvoiceHd'
      'where chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, dtPurchaseInvoiceDate, 112), 1, 6' +
        ') = @Period1'
      'union all'
      
        'select '#39'Pembelian'#39' as Category, '#39'PP0'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMPurchaseInvoiceHd'
      'where chStatusApprove = '#39'2'#39
      
        'and substring(convert(varchar, dtPurchaseInvoiceDate, 112), 1, 6' +
        ') = @Period1'
      'union all'
      
        'select '#39'Pembelian'#39' as Category, '#39'PP1A'#39' as Info, count(a.vcEmploy' +
        'eeName) as Todo'
      'from tbIMPurchasePayment a'
      
        'left join tbGNPaymentType b on a.vcIdPaymentType = b.vcIdPayment' +
        'Type'
      'where a.chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, a.dtPurchasePaymentDate, 112), 1,' +
        ' 6) = @Period1'
      'and b.StatusPayment = 0'
      'union all'
      
        'select '#39'Pembelian'#39' as Category, '#39'PP1B'#39' as Info, count(a.vcEmploy' +
        'eeName) as Todo'
      'from tbIMPurchasePayment a'
      
        'left join tbGNPaymentType b on a.vcIdPaymentType = b.vcIdPayment' +
        'Type'
      'where a.chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, a.dtPurchasePaymentDate, 112), 1,' +
        ' 6) = @Period1'
      'and b.StatusPayment = 1'
      'union all'
      
        'select '#39'Pembelian'#39' as Category, '#39'PR0'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMPurchaseReturnHd'
      'where chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, dtPurchaseReturnDate, 112), 1, 6)' +
        ' = @Period1'
      'union all'
      
        'select '#39'Pembelian'#39' as Category, '#39'PR1'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMPurchaseReturnHd'
      'where chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, dtPurchaseReturnDate, 112), 1, 6)' +
        ' = @Period1'
      'union all'
      
        'select '#39'Pembelian'#39' as Category, '#39'PD0'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbACPurchaseDownpayment'
      'where chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, dtPurchaseDownpaymentDate, 112), ' +
        '1, 6) = @Period1'
      'union all'
      
        'select '#39'Pembelian'#39' as Category, '#39'PD1'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbACPurchaseDownpayment'
      'where chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, dtPurchaseDownpaymentDate, 112), ' +
        '1, 6) = @Period1'
      ''
      'union all'
      ''
      
        'select '#39'Penjualan'#39' as Category, '#39'SO0'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMSalesOrderHd'
      'where chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, dtSalesOrderDate, 112), 1, 6) = @' +
        'Period1'
      'union all'
      
        'select '#39'Penjualan'#39' as Category, '#39'SO1'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMSalesOrderHd'
      'where chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, dtSalesOrderDate, 112), 1, 6) = @' +
        'Period1'
      'union all'
      
        'select '#39'Penjualan'#39' as Category, '#39'SI0'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMSalesInvoiceHd'
      'where chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, dtSalesInvoiceDate, 112), 1, 6) =' +
        ' @Period1'
      'union all'
      
        'select '#39'Penjualan'#39' as Category, '#39'SI1'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMSalesInvoiceHd'
      'where chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, dtSalesInvoiceDate, 112), 1, 6) =' +
        ' @Period1'
      'union all'
      
        'select '#39'Penjualan'#39' as Category, '#39'SI2'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMSalesInvoiceHd'
      'where chStatusApprove = '#39'2'#39
      
        'and substring(convert(varchar, dtSalesInvoiceDate, 112), 1, 6) =' +
        ' @Period1'
      'union all'
      
        'select '#39'Penjualan'#39' as Category, '#39'SP0'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMSalesInvoiceHd'
      'where chStatusApprove = '#39'3'#39
      
        'and substring(convert(varchar, dtSalesInvoiceDate, 112), 1, 6) =' +
        ' @Period1'
      'union all'
      
        'select '#39'Penjualan'#39' as Category, '#39'SP1A'#39' as Info, count(a.vcEmploy' +
        'eeName) as Todo'
      'from tbIMSalesPayment a'
      
        'left join tbGNPaymentType b on a.vcIdPaymentType = b.vcIdPayment' +
        'Type'
      'where a.chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, a.dtSalesPaymentDate, 112), 1, 6)' +
        ' = @Period1'
      'and b.StatusPayment = 0'
      'union all'
      
        'select '#39'Penjualan'#39' as Category, '#39'SP1B'#39' as Info, count(a.vcEmploy' +
        'eeName) as Todo'
      'from tbIMSalesPayment a'
      
        'left join tbGNPaymentType b on a.vcIdPaymentType = b.vcIdPayment' +
        'Type'
      'where a.chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, a.dtSalesPaymentDate, 112), 1, 6)' +
        ' = @Period1'
      'and b.StatusPayment = 1'
      'union all'
      
        'select '#39'Penjualan'#39' as Category, '#39'SR0'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMSalesReturnHd'
      'where chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, dtSalesReturnDate, 112), 1, 6) = ' +
        '@Period1'
      'union all'
      
        'select '#39'Penjualan'#39' as Category, '#39'SR1'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMSalesReturnHd'
      'where chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, dtSalesReturnDate, 112), 1, 6) = ' +
        '@Period1'
      'union all'
      
        'select '#39'Penjualan'#39' as Category, '#39'SR2'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbIMSalesReturnHd'
      'where chStatusApprove = '#39'2'#39
      
        'and substring(convert(varchar, dtSalesReturnDate, 112), 1, 6) = ' +
        '@Period1'
      'union all'
      
        'select '#39'Penjualan'#39' as Category, '#39'SD0'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbACSalesDownpayment'
      'where chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, dtSalesDownpaymentDate, 112), 1, ' +
        '6) = @Period1'
      'union all'
      
        'select '#39'Penjualan'#39' as Category, '#39'SD1'#39' as Info, count(vcEmployeeN' +
        'ame) as Todo'
      'from tbACSalesDownpayment'
      'where chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, dtSalesDownpaymentDate, 112), 1, ' +
        '6) = @Period1'
      ''
      'union all'
      ''
      
        'select '#39'Mutasi Gudang'#39' as Category, '#39'MT0'#39' as Info, count(vcEmplo' +
        'yeeName) as Todo'
      'from tbIMMutationHd'
      'where chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, dtMutationDate, 112), 1, 6) = @Pe' +
        'riod1'
      'union all'
      
        'select '#39'Mutasi Gudang'#39' as Category, '#39'MT1'#39' as Info, count(vcEmplo' +
        'yeeName) as Todo'
      'from tbIMMutationHd'
      'where chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, dtMutationDate, 112), 1, 6) = @Pe' +
        'riod1'
      'union all'
      
        'select '#39'Mutasi Gudang'#39' as Category, '#39'MT2'#39' as Info, count(vcEmplo' +
        'yeeName) as Todo'
      'from tbIMMutationHd'
      'where chStatusApprove = '#39'2'#39
      
        'and substring(convert(varchar, dtMutationDate, 112), 1, 6) = @Pe' +
        'riod1'
      ''
      'union all'
      ''
      
        'select '#39'Transaksi Lain-Lain'#39' as Category, '#39'OT0'#39' as Info, count(v' +
        'cEmployeeName) as Todo'
      'from tbIMOtherTransactionHd'
      'where chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, dtOtherTransactionDate, 112), 1, ' +
        '6) = @Period1'
      'union all'
      
        'select '#39'Transaksi Lain-Lain'#39' as Category, '#39'OT1'#39' as Info, count(v' +
        'cEmployeeName) as Todo'
      'from tbIMOtherTransactionHd'
      'where chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, dtOtherTransactionDate, 112), 1, ' +
        '6) = @Period1'
      ''
      'union all'
      ''
      
        'select '#39'Couple'#39' as Category, '#39'AT0'#39' as Info, count(vcEmployeeName' +
        ') as Todo'
      'from tbIMAssemblyTransactionHd'
      'where chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, dtAssemblyTransactionDate, 112), ' +
        '1, 6) = @Period1'
      'union all'
      
        'select '#39'Couple'#39' as Category, '#39'AT1'#39' as Info, count(vcEmployeeName' +
        ') as Todo'
      'from tbIMAssemblyTransactionHd'
      'where chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, dtAssemblyTransactionDate, 112), ' +
        '1, 6) = @Period1'
      ''
      'union all'
      ''
      
        'select '#39'Penerimaan Barang'#39' as Category, '#39'RRGudang0'#39' as Info, cou' +
        'nt(a.vcEmployeeName) as Todo'
      'from tbIMReceivingRecordHd a'
      'left join tbGNWarehouse b on a.vcIdWarehouse = b.vcIdWarehouse'
      'where a.chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, a.dtReceivingRecordDate, 112), 1,' +
        ' 6) = @Period1'
      'and b.StatusWarehouse = '#39'0'#39
      'union all'
      
        'select '#39'Penerimaan Barang'#39' as Category, '#39'RRGudang1'#39' as Info, cou' +
        'nt(a.vcEmployeeName) as Todo'
      'from tbIMReceivingRecordHd a'
      'left join tbGNWarehouse b on a.vcIdWarehouse = b.vcIdWarehouse'
      'where a.chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, a.dtReceivingRecordDate, 112), 1,' +
        ' 6) = @Period1'
      'and b.StatusWarehouse = '#39'0'#39
      'union all'
      
        'select '#39'Penerimaan Barang'#39' as Category, '#39'RRToko0'#39' as Info, count' +
        '(a.vcEmployeeName) as Todo'
      'from tbIMReceivingRecordHd a'
      'left join tbGNWarehouse b on a.vcIdWarehouse = b.vcIdWarehouse'
      'where a.chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, a.dtReceivingRecordDate, 112), 1,' +
        ' 6) = @Period1'
      'and b.StatusWarehouse = '#39'1'#39
      'union all'
      
        'select '#39'Penerimaan Barang'#39' as Category, '#39'RRToko1'#39' as Info, count' +
        '(a.vcEmployeeName) as Todo'
      'from tbIMReceivingRecordHd a'
      'left join tbGNWarehouse b on a.vcIdWarehouse = b.vcIdWarehouse'
      'where a.chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, a.dtReceivingRecordDate, 112), 1,' +
        ' 6) = @Period1'
      'and b.StatusWarehouse = '#39'1'#39
      'union all'
      
        'select '#39'Penerimaan Barang'#39' as Category, '#39'RRVirtual0'#39' as Info, co' +
        'unt(a.vcEmployeeName) as Todo'
      'from tbIMReceivingRecordHd a'
      'left join tbGNWarehouse b on a.vcIdWarehouse = b.vcIdWarehouse'
      'where a.chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, a.dtReceivingRecordDate, 112), 1,' +
        ' 6) = @Period1'
      'and b.StatusWarehouse = '#39'2'#39
      'union all'
      
        'select '#39'Penerimaan Barang'#39' as Category, '#39'RRVirtual1'#39' as Info, co' +
        'unt(a.vcEmployeeName) as Todo'
      'from tbIMReceivingRecordHd a'
      'left join tbGNWarehouse b on a.vcIdWarehouse = b.vcIdWarehouse'
      'where a.chStatusApprove = '#39'1'#39
      
        'and substring(convert(varchar, a.dtReceivingRecordDate, 112), 1,' +
        ' 6) = @Period1'
      'and b.StatusWarehouse = '#39'2'#39
      ''
      'union all'
      ''
      
        'select '#39'Pengiriman Barang'#39' as Category, '#39'DOGudang0'#39' as Info, cou' +
        'nt(a.vcEmployeeName) as Todo'
      'from tbIMDeliveryOrderHd a'
      'left join tbGNWarehouse b on a.vcIdWarehouse = b.vcIdWarehouse'
      'where a.chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, a.dtDeliveryOrderDate, 112), 1, 6' +
        ') = @Period1'
      'and b.StatusWarehouse = '#39'0'#39
      'union all'
      
        'select '#39'Pengiriman Barang'#39' as Category, '#39'DOToko0'#39' as Info, count' +
        '(a.vcEmployeeName) as Todo'
      'from tbIMDeliveryOrderHd a'
      'left join tbGNWarehouse b on a.vcIdWarehouse = b.vcIdWarehouse'
      'where a.chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, a.dtDeliveryOrderDate, 112), 1, 6' +
        ') = @Period1'
      'and b.StatusWarehouse = '#39'1'#39
      'union all'
      
        'select '#39'Pengiriman Barang'#39' as Category, '#39'DOVirtual0'#39' as Info, co' +
        'unt(a.vcEmployeeName) as Todo'
      'from tbIMDeliveryOrderHd a'
      'left join tbGNWarehouse b on a.vcIdWarehouse = b.vcIdWarehouse'
      'where a.chStatusApprove = '#39'0'#39
      
        'and substring(convert(varchar, a.dtDeliveryOrderDate, 112), 1, 6' +
        ') = @Period1'
      'and b.StatusWarehouse = '#39'2'#39)
    Left = 200
    Top = 112
  end
  object qryPositionAccess: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'PositionId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'ProgramId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select MenuId'
      'from PositionAccess'
      'where PositionId = :PositionId'
      'and ProgramId = :ProgramId'
      'and FlagOpen = '#39'1'#39)
    Left = 232
    Top = 112
  end
  object qryGetUser: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'vcIdUsername'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'vcPassword'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'vcIdProgram'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.vcIdEmployee, a.vcIdUserName,'
      '  b.vcEmployeeName, b.vcIdDepartment, b.vcIdCompany,'
      '  c.vcPositionName,'
      '  d.vcDepartmentName, e.vcCompanyName,'
      '  f.vcIdUserGroup'
      'from tbGNUser a'
      'inner join tbGNEmployee b on a.vcIdEmployee = b.vcIdEmployee'
      'inner join tbGNPosition c on '
      '  (b.vcIdPosition = c.vcIdPosition and'
      '  b.vcIdCompany = c.vcIdCompany and'
      '  b.vcIdDepartment = c.vcIdDepartment)'
      'inner join tbGNDepartment d on'
      '  (b.vcIdCompany = d.vcIdCompany and'
      '  b.vcIdDepartment = d.vcIdDepartment)'
      'inner join tbGNCompany e on'
      '  (d.vcIdCompany = e.vcIdCompany)'
      'inner join tbGNUserAccess f on'
      '  (a.vcIdEmployee = f.vcIdEmployee)'
      'where a.vcIdUsername = :vcIdUsername'
      'and IsNull(a.vcPassword, '#39#39') like :vcPassword'
      'and f.vcIdProgram = :vcIdProgram'
      'and a.chFlagInactive = 0')
    Left = 264
    Top = 112
  end
end
