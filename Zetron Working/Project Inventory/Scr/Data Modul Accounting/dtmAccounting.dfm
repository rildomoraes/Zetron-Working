object dmAccounting: TdmAccounting
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 326
  Width = 508
  object dsPrevBank: TDataSource
    DataSet = qryPrevBank
    Left = 248
    Top = 152
  end
  object gvrAccounting: TcxGridViewRepository
    Left = 80
    Top = 8
    object cgvPrevBank: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.ImageIndex = 0
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevBank
      DataController.KeyFieldNames = 'bankid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevBankBankId: TcxGridDBColumn
        Caption = 'Bank'
        DataBinding.FieldName = 'BankId'
      end
    end
    object cgvPrevAccount: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.ImageIndex = 0
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevAccount
      DataController.KeyFieldNames = 'accountno'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevAccountaccountno: TcxGridDBColumn
        Caption = 'No Account'
        DataBinding.FieldName = 'accountno'
      end
      object cgvPrevAccountaccountname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'accountname'
      end
    end
    object cgvPrevPaymentType: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.ImageIndex = 0
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevPaymentType
      DataController.KeyFieldNames = 'paymenttypeid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevPaymentTypePaymentTypeId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'PaymentTypeId'
        Visible = False
      end
      object cgvPrevPaymentPaymentTypeName: TcxGridDBColumn
        Caption = 'Pembayaran'
        DataBinding.FieldName = 'PaymentTypeName'
      end
    end
    object cgvPrevCashBankTransactionType: TcxGridDBTableView
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
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevCashBankTransactionType
      DataController.KeyFieldNames = 'cashbanktransactiontypeid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cgvPrevCashBankTransactionTypecashbanktransactiontypeid: TcxGridDBColumn
        DataBinding.FieldName = 'cashbanktransactiontypeid'
        Visible = False
      end
      object cgvPrevCashBankTransactionTypecashbanktransactiontypename: TcxGridDBColumn
        Caption = 'Transaksi'
        DataBinding.FieldName = 'cashbanktransactiontypename'
      end
      object cgvPrevCashBankTransactionTypeflagbank: TcxGridDBColumn
        DataBinding.FieldName = 'flagbank'
        Visible = False
      end
      object cgvPrevCashBankTransactionTypeflagout: TcxGridDBColumn
        Caption = 'In/Out'
        DataBinding.FieldName = 'flagout'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = dmGlobal.imgIcon16
        Properties.Items = <
          item
            Description = 'Masuk'
            ImageIndex = 9
            Value = '0'
          end
          item
            Description = 'Keluar'
            ImageIndex = 10
            Value = '1'
          end>
      end
    end
  end
  object dsPrevPaymentType: TDataSource
    DataSet = qryPaymentType
    Left = 248
    Top = 56
  end
  object dsPrevCashBankTransactionType: TDataSource
    DataSet = qryPrevCashBankTransactionType
    Left = 248
    Top = 104
  end
  object dsPrevAccount: TDataSource
    DataSet = qryPrevAccount
    Left = 248
    Top = 200
  end
  object dsPrevGiro: TDataSource
    DataSet = qryPrevGiro
    Left = 248
    Top = 248
  end
  object qryPrevBank: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select Distinct BankId'
      'from Bank '
      'where FlagInactive = '#39'0'#39
      'order by BankId')
    Left = 80
    Top = 152
  end
  object qryPrevCashBankTransactionType: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select * '
      'from CashBankTransactionType')
    Left = 80
    Top = 104
  end
  object qryPrevAccount: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from Bank '
      'where FlagInactive = '#39'0'#39
      'and BankId = :BankId'
      'order by BankId')
    Left = 80
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BankId'
      end>
  end
  object qryPrevGiro: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from Giro '
      'where StatusGiro = :StatusGiro'
      'and Vendorid like :Vendorid'
      'or CustomerId Like :CustomerId')
    Left = 80
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'StatusGiro'
      end
      item
        DataType = ftUnknown
        Name = 'Vendorid'
      end
      item
        DataType = ftUnknown
        Name = 'CustomerId'
      end>
  end
  object qryPaymentType: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from PaymentType '
      'order by PaymentTypeId')
    Left = 80
    Top = 56
  end
end
