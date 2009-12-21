object fmPaymentInfo: TfmPaymentInfo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'fmPaymentInfo'
  ClientHeight = 459
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 17
  object cgDisplayResult: TcxGrid
    Left = 0
    Top = 0
    Width = 631
    Height = 350
    Align = alClient
    TabOrder = 0
    object cgvDisplayResult: TcxGridDBTableView
      OnKeyDown = cgvDisplayResultKeyDown
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = cgvDisplayResultCellDblClick
      DataController.DataSource = dsRegisterSalesPayment
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'no'
          Column = cgvDisplayResultno
        end
        item
          Kind = skSum
          FieldName = 'amount'
          Column = cgvDisplayResultamount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cgvDisplayResultregistersalesid: TcxGridDBColumn
        DataBinding.FieldName = 'registersalesid'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvDisplayResultno: TcxGridDBColumn
        Caption = ' No'
        DataBinding.FieldName = 'no'
        Width = 40
      end
      object cgvDisplayResultpaymenttypeId: TcxGridDBColumn
        Caption = 'Pembayaran'
        DataBinding.FieldName = 'paymenttypeid'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'paymenttypeid'
        Properties.ListColumns = <
          item
            FieldName = 'paymenttypename'
          end>
        Properties.ListSource = dsPrevPaymentType
        Width = 140
      end
      object cgvDisplayResultcardno: TcxGridDBColumn
        Caption = 'No Kartu'
        DataBinding.FieldName = 'cardno'
        PropertiesClassName = 'TcxMaskEditProperties'
        Width = 140
      end
      object cgvDisplayResultcardholdername: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'cardholdername'
        Width = 160
      end
      object cgvDisplayResultamount: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'amount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 120
      end
      object cgvDisplayResultonhandamount: TcxGridDBColumn
        Caption = 'Uang Diterima'
        DataBinding.FieldName = 'onhandamount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Width = 100
      end
      object cgvDisplayResultshortage: TcxGridDBColumn
        Caption = 'Kembalian'
        DataBinding.FieldName = 'shortage'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Width = 100
      end
    end
    object cgDisplayResultLevel1: TcxGridLevel
      GridView = cgvDisplayResult
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 350
    Width = 631
    Height = 109
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnCancel: TcxButton
      Left = 343
      Top = 14
      Width = 85
      Height = 85
      Action = actCancel
      Cancel = True
      Layout = blGlyphTop
      TabOrder = 1
    end
    object btnOk: TcxButton
      Left = 200
      Top = 14
      Width = 85
      Height = 85
      Action = actOk
      Layout = blGlyphTop
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Images = dmGlobal.imgIcon48
    Left = 136
    Top = 81
    object actOk: TAction
      Caption = 'Ok'
      ImageIndex = 0
      OnExecute = actOkExecute
    end
    object actCancel: TAction
      Caption = 'Cancel'
      ImageIndex = 1
      OnExecute = actCancelExecute
    end
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Payment Info.cfg'
    Sorting = False
    Version = '1.3'
    Left = 168
    Top = 80
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 200
    Top = 80
    PixelsPerInch = 96
    object stRedLight: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14540287
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindowText
    end
  end
  object qryRegisterSalesPayment: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select a.*'
      'from RegisterSalesPayment a'
      'where a.RegisterSalesId = :RegisterSalesId'
      'order by a.No')
    Left = 136
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RegisterSalesId'
      end>
  end
  object dsRegisterSalesPayment: TDataSource
    DataSet = qryRegisterSalesPayment
    Left = 168
    Top = 112
  end
  object UniQuery1: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select a.*, b.PaymentTypeName'
      'from RegisterSalesPayment a'
      'left join paymentType b on a.PaymentTypeId = b.PaymentTypeId'
      'where a.RegisterSalesId = :RegisterSalesId'
      'order by a.No')
    Left = 136
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RegisterSalesId'
      end>
  end
  object qryPrevPaymentType: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from PaymentType')
    Left = 136
    Top = 144
  end
  object dsPrevPaymentType: TDataSource
    DataSet = qryPrevPaymentType
    Left = 168
    Top = 144
  end
end
