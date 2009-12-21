object fmSearchInvoice: TfmSearchInvoice
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cari Nota Register'
  ClientHeight = 373
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 17
  object cgDisplayResult: TcxGrid
    Left = 0
    Top = 31
    Width = 494
    Height = 233
    Align = alClient
    TabOrder = 0
    object cgvDisplayResult: TcxGridDBTableView
      OnKeyDown = cgvDisplayResultKeyDown
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = cgvDisplayResultCellDblClick
      DataController.DataSource = dsPrevRegisterSales
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'registersalesid'
          Column = cgvDisplayResultregistersalesid
        end
        item
          Kind = skSum
          FieldName = 'totalamount'
          Column = cgvDisplayResulttotalamount
        end
        item
          Kind = skSum
          FieldName = 'paymentamount'
          Column = cgvDisplayResulttotalpaymentamount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = cgvDisplayResultStylesGetContentStyle
      object cgvDisplayResultregistersalesid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'registersalesid'
      end
      object cgvDisplayResultregistersalesdate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'registersalesdate'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Kind = ckDateTime
      end
      object cgvDisplayResultamount: TcxGridDBColumn
        Caption = 'Sub Total'
        DataBinding.FieldName = 'amount'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayResultdisc: TcxGridDBColumn
        Caption = 'Disc 1 (%)'
        DataBinding.FieldName = 'disc'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayResultdiscamount: TcxGridDBColumn
        Caption = 'Disc 1'
        DataBinding.FieldName = 'discamount'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayResultdisc2: TcxGridDBColumn
        Caption = 'Disc 2 (%)'
        DataBinding.FieldName = 'disc2'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayResultdiscamount2: TcxGridDBColumn
        Caption = 'Disc 2'
        DataBinding.FieldName = 'discamount2'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayResultvoucher: TcxGridDBColumn
        Caption = 'No Voucher'
        DataBinding.FieldName = 'voucher'
        Visible = False
      end
      object cgvDisplayResultvoucheramount: TcxGridDBColumn
        Caption = 'Voucher'
        DataBinding.FieldName = 'voucheramount'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayResulttax: TcxGridDBColumn
        Caption = 'PPN %'
        DataBinding.FieldName = 'tax'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayResulttaxamount: TcxGridDBColumn
        Caption = 'PPN'
        DataBinding.FieldName = 'taxamount'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
      end
      object cgvDisplayResulttotalamount: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'totalamount'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayResulttotalpaymentamount: TcxGridDBColumn
        Caption = 'Pembayaran'
        DataBinding.FieldName = 'totalpaymentamount'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayResultoutstandingtotalamount: TcxGridDBColumn
        Caption = 'Sisa Nota'
        DataBinding.FieldName = 'outstandingtotalamount'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayResultstatusapprove: TcxGridDBColumn
        DataBinding.FieldName = 'statusapprove'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cgDisplayResultLevel1: TcxGridLevel
      GridView = cgvDisplayResult
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 264
    Width = 494
    Height = 109
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnCancel: TcxButton
      Left = 271
      Top = 14
      Width = 85
      Height = 85
      Action = actCancel
      Cancel = True
      Layout = blGlyphTop
      TabOrder = 1
    end
    object btnOk: TcxButton
      Left = 136
      Top = 14
      Width = 85
      Height = 85
      Action = actOk
      Layout = blGlyphTop
      TabOrder = 0
    end
  end
  object pnlLegend: TPanel
    Left = 0
    Top = 0
    Width = 494
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Image1: TImage
      Left = 8
      Top = 6
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
    object lblVoid: TLabel
      Left = 30
      Top = 6
      Width = 28
      Height = 17
      Caption = 'Void'
      Transparent = True
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
    Filename = 'Setting Search Invoice.cfg'
    Sorting = False
    Version = '1.3'
    Left = 168
    Top = 80
  end
  object qryPrevRegisterSales: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.*,'
      '  (select IsCurrencyNull(sum(b.Amount), 0)'
      '  from RegisterSalesPayment b'
      
        '  where a.RegisterSalesId = b.RegisterSalesId)  as TotalPaymentA' +
        'mount'
      'from RegisterSalesHd a'
      'where a.CashRegisterTransactionId = :CashRegisterTransactionId'
      'order by a.RegisterSalesId')
    Left = 136
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CashRegisterTransactionId'
      end>
  end
  object dsPrevRegisterSales: TDataSource
    DataSet = qryPrevRegisterSales
    Left = 168
    Top = 112
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
end
