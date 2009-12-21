object dmRegister: TdmRegister
  OldCreateOrder = False
  Height = 328
  Width = 487
  object gvrAccounting: TcxGridViewRepository
    Left = 48
    Top = 16
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
      OptionsView.Header = False
      object cgvPrevPaymentTypePaymentTypeId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'PaymentTypeId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPaymentPaymentTypeName: TcxGridDBColumn
        Caption = 'Pembayaran'
        DataBinding.FieldName = 'PaymentTypeName'
      end
    end
    object cgvPrevShift: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevShift
      DataController.KeyFieldNames = 'shiftcode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevShiftshiftcode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'shiftcode'
        Visible = False
      end
      object cgvPrevShiftshiftname: TcxGridDBColumn
        Caption = 'Shift'
        DataBinding.FieldName = 'shiftname'
      end
      object cgvPrevShiftstarttime: TcxGridDBColumn
        Caption = 'Jam Mulai'
        DataBinding.FieldName = 'starttime'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
      object cgvPrevShiftendtime: TcxGridDBColumn
        Caption = 'Jam Selesai'
        DataBinding.FieldName = 'endtime'
        PropertiesClassName = 'TcxTimeEditProperties'
      end
    end
  end
  object qryPrevPaymentType: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select '
      '  a.PaymentTypeId, a.PaymentTypeName'
      'from PaymentType a'
      
        'left join CashBankTransactionType b on a.CashBankTransactionType' +
        'Id = b.CashBankTransactionTypeId'
      'where a.FlagSalesBarcodePayment = '#39'1'#39
      'and b.FlagBank = '#39'1'#39' -- Non Tunai Only'
      'order by a.PaymentTypeName')
    Left = 48
    Top = 64
  end
  object dsPrevPaymentType: TDataSource
    DataSet = qryPrevPaymentType
    Left = 168
    Top = 64
  end
  object qryPrevShift: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from Shift'
      'order by ShiftName')
    Left = 48
    Top = 112
  end
  object dsPrevShift: TDataSource
    DataSet = qryPrevShift
    Left = 168
    Top = 112
  end
end
