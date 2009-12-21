object fmRegisterPayment: TfmRegisterPayment
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Pembayaran'
  ClientHeight = 472
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object pnlTop1: TPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 107
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblCashPayment: TLabel
      Left = 8
      Top = 74
      Width = 105
      Height = 23
      Caption = 'Cash / Tunai'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblGrandTotal: TLabel
      Left = 8
      Top = 19
      Width = 100
      Height = 23
      Caption = 'Grand Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape2: TShape
      Left = 119
      Top = 55
      Width = 276
      Height = 2
      Brush.Color = clBlack
    end
    object edtCashPayment: TcxCurrencyEdit
      Left = 119
      Top = 62
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnEditValueChanged = edtCashPaymentPropertiesEditValueChanged
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -29
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 276
    end
    object edtGrandTotal: TcxCurrencyEdit
      Left = 119
      Top = 8
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnEditValueChanged = edtGrandTotalPropertiesEditValueChanged
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -29
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 0
      Width = 276
    end
  end
  object pnlTop2: TPanel
    Left = 0
    Top = 107
    Width = 513
    Height = 205
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btnCard1: TcxButton
      Left = 8
      Top = 8
      Width = 90
      Height = 85
      Action = actCard1
      Layout = blGlyphTop
      TabOrder = 0
      TabStop = False
    end
    object btnCard1Clear: TcxButton
      Left = 415
      Top = 8
      Width = 90
      Height = 85
      Action = actVoidCard1
      Layout = blGlyphTop
      TabOrder = 5
      TabStop = False
    end
    object btnCard2: TcxButton
      Left = 8
      Top = 114
      Width = 90
      Height = 85
      Action = actCard2
      Layout = blGlyphTop
      TabOrder = 6
      TabStop = False
    end
    object btnCard2Clear: TcxButton
      Left = 415
      Top = 114
      Width = 90
      Height = 85
      Action = actVoidCard2
      Layout = blGlyphTop
      TabOrder = 11
      TabStop = False
    end
    object edtCard1Name: TcxTextEdit
      Left = 119
      Top = 30
      TabStop = False
      Enabled = False
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 3
      Width = 276
    end
    object edtCard1No: TcxCurrencyEdit
      Left = 227
      Top = 8
      TabStop = False
      Enabled = False
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 2
      Width = 168
    end
    object edtCard1Payment: TcxCurrencyEdit
      Left = 119
      Top = 52
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnEditValueChanged = edtCard1PaymentPropertiesEditValueChanged
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -29
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 4
      Width = 276
    end
    object edtCard2Name: TcxTextEdit
      Left = 119
      Top = 136
      TabStop = False
      Enabled = False
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 9
      Width = 276
    end
    object edtCard2No: TcxCurrencyEdit
      Left = 227
      Top = 114
      TabStop = False
      Enabled = False
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 8
      Width = 168
    end
    object edtCard2Payment: TcxCurrencyEdit
      Left = 119
      Top = 158
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnEditValueChanged = edtCard2PaymentPropertiesEditValueChanged
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -29
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 10
      Width = 276
    end
    object lcbCard1Type: TcxExtLookupComboBox
      Left = 119
      Top = 8
      TabStop = False
      Enabled = False
      Properties.View = dmRegister.cgvPrevPaymentType
      Properties.KeyFieldNames = 'paymenttypeid'
      Properties.ListFieldItem = dmRegister.cgvPrevPaymentPaymentTypeName
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 1
      Width = 111
    end
    object lcbCard2Type: TcxExtLookupComboBox
      Left = 119
      Top = 114
      TabStop = False
      Enabled = False
      Properties.View = dmRegister.cgvPrevPaymentType
      Properties.KeyFieldNames = 'paymenttypeid'
      Properties.ListFieldItem = dmRegister.cgvPrevPaymentPaymentTypeName
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 7
      Width = 111
    end
  end
  object pnlTop3: TPanel
    Left = 0
    Top = 312
    Width = 513
    Height = 160
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object lblShortage: TLabel
      Left = 8
      Top = 22
      Width = 90
      Height = 23
      Caption = 'Kembalian'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 119
      Top = 3
      Width = 276
      Height = 2
      Brush.Color = clBlack
    end
    object btnCancel: TcxButton
      Left = 277
      Top = 63
      Width = 85
      Height = 85
      Action = actCancel
      Cancel = True
      Layout = blGlyphTop
      TabOrder = 2
    end
    object btnOk: TcxButton
      Left = 145
      Top = 63
      Width = 85
      Height = 85
      Action = actOk
      Layout = blGlyphTop
      TabOrder = 1
    end
    object edtShortage: TcxCurrencyEdit
      Left = 119
      Top = 11
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnEditValueChanged = edtShortagePropertiesEditValueChanged
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -29
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 0
      Width = 276
    end
  end
  object ActionList1: TActionList
    Images = dmGlobal.imgIcon48
    Left = 160
    Top = 73
    object actOk: TAction
      Caption = 'OK'
      ImageIndex = 0
      OnExecute = actOkExecute
    end
    object actCancel: TAction
      Caption = 'Cancel'
      ImageIndex = 1
      OnExecute = actCancelExecute
    end
    object actCard1: TAction
      Caption = 'Card 1'
      Hint = 'Card 1 (F1)'
      ImageIndex = 13
      ShortCut = 112
      OnExecute = actCard1Execute
    end
    object actCard2: TAction
      Caption = 'Card 2'
      Hint = 'Card 2 (F2)'
      ImageIndex = 13
      ShortCut = 113
      OnExecute = actCard2Execute
    end
    object actVoidCard1: TAction
      Caption = 'Void Card 1'
      Hint = 'Void Card 1 (Ctrl+F1)'
      ImageIndex = 14
      ShortCut = 16496
      OnExecute = actVoidCard1Execute
    end
    object actVoidCard2: TAction
      Caption = 'Void Card 2'
      Hint = 'Void Card 2 (Ctrl+F2)'
      ImageIndex = 14
      ShortCut = 16497
      OnExecute = actVoidCard2Execute
    end
  end
  object qryRegisterSalesPayment: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from RegisterSalesPayment'
      'where RegisterSalesId = :RegisterSalesId'
      'order by No')
    Left = 160
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RegisterSalesId'
      end>
  end
  object qrySalesPayment: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from SalesPayment'
      'where SalesPaymentId = :SalesPaymentId')
    MasterFields = 'salespaymentid'
    Left = 160
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesPaymentId'
      end>
  end
  object qrySalesPaymentDt: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from SalesPaymentDt'
      'where SalesPaymentId = :SalesPaymentId')
    Left = 192
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SalesPaymentId'
      end>
  end
  object qryPurchasePayment: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from PurchasePayment'
      'where PurchasePaymentId = :PurchasePaymentId')
    MasterFields = 'purchasepaymentid'
    Left = 160
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PurchasePaymentId'
      end>
  end
  object qryPurchasePaymentDt: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from PurchasePaymentDt'
      'where PurchasePaymentId = :PurchasePaymentId')
    Left = 192
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PurchasePaymentId'
      end>
  end
end
