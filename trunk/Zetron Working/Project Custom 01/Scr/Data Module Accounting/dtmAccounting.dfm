object dmAccounting: TdmAccounting
  OldCreateOrder = False
  Height = 312
  Width = 338
  object dsBank: TDataSource
    DataSet = qryBank
    Left = 232
    Top = 56
  end
  object gvrAccounting: TcxGridViewRepository
    Left = 72
    Top = 8
    object cgvBank: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsBank
      DataController.KeyFieldNames = 'vcIdBank'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cgvBankvcIdBank: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vcIdBank'
        Visible = False
        Options.Filtering = False
      end
      object cgvBankvcBankName: TcxGridDBColumn
        Caption = 'Bank'
        DataBinding.FieldName = 'vcBankName'
        Options.Filtering = False
      end
      object cgvBankvcBankContactPerson: TcxGridDBColumn
        Caption = 'Contact'
        DataBinding.FieldName = 'vcBankContactPerson'
        Visible = False
        Options.Filtering = False
      end
      object cgvBankvcPhone: TcxGridDBColumn
        Caption = 'Phone'
        DataBinding.FieldName = 'vcPhone'
        Visible = False
        Options.Filtering = False
      end
      object cgvBankvcBankAddress: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'vcBankAddress'
        Visible = False
        Options.Filtering = False
      end
      object cgvBankvcCityName: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'vcIdCity'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevCity
        Properties.KeyFieldNames = 'CityId'
        Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
        Options.Filtering = False
      end
    end
    object cgvPrevPaymentType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPaymentType
      DataController.KeyFieldNames = 'vcIdPaymentType'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPaymentTypevcIdPaymentType: TcxGridDBColumn
        DataBinding.FieldName = 'vcIdPaymentType'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPaymentTypevcPaymentTypeName: TcxGridDBColumn
        Caption = 'Jenis Pembayaran'
        DataBinding.FieldName = 'vcPaymentTypeName'
      end
    end
  end
  object qryBank: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryBankBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'select * from tbACBank')
    Left = 72
    Top = 56
  end
  object qryPrevSupplierDownPayment: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'IdSupplier'
        Size = -1
        Value = Null
      end
      item
        Name = 'DatePeriod'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare  @IdSupplier varchar(10), @DatePeriod datetime'
      'set @IdSupplier = :IdSupplier'
      'set @DatePeriod = :DatePeriod'
      ''
      
        'select dbo.fnGetSupplierDPOpeningBalance(@IdSupplier, Year(@Date' +
        'Period), Month(@DatePeriod)) as dcDownPayment'
      '')
    Left = 72
    Top = 104
  end
  object dsPrevSupplierDownPayment: TDataSource
    DataSet = qryPrevSupplierDownPayment
    Left = 232
    Top = 104
  end
  object qryPrevCustomerDownPayment: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'IdCustomer'
        Size = -1
        Value = Null
      end
      item
        Name = 'DatePeriod'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare  @IdCustomer varchar(10), @DatePeriod datetime'
      'set @IdCustomer = :IdCustomer'
      'set @DatePeriod = :DatePeriod'
      ''
      'select '
      
        '  dbo.fnGetCustomerDPOpeningBalance(@IdCustomer, Year(@DatePerio' +
        'd), Month(@DatePeriod)) as dcDownPayment'
      '')
    Left = 72
    Top = 152
  end
  object dsPrevCustomerDownPayment: TDataSource
    DataSet = qryPrevCustomerDownPayment
    Left = 232
    Top = 152
  end
  object qryPaymentType: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbGNPaymentType')
    Left = 72
    Top = 200
  end
  object dsPaymentType: TDataSource
    DataSet = qryPaymentType
    Left = 232
    Top = 200
  end
end
