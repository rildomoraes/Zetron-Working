object fmDisplayStock: TfmDisplayStock
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Display Stock'
  ClientHeight = 385
  ClientWidth = 595
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 1
    Top = 55
    Width = 592
    Height = 59
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 26
      Width = 83
      Height = 13
      Caption = 'Kode Penerimaan'
      Transparent = True
    end
    object btnSearch: TcxButton
      Left = 280
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Cari'
      TabOrder = 0
      OnClick = btnSearchClick
    end
    object dbeItemReceiveCode: TcxTextEdit
      Left = 133
      Top = 23
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 121
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 120
    Width = 592
    Height = 257
    BevelOuter = bvNone
    TabOrder = 2
    object cgStock: TcxGrid
      Left = 25
      Top = 9
      Width = 544
      Height = 240
      TabOrder = 0
      object cgvStock: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = cgvStockCellDblClick
        DataController.DataSource = dsStock
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cgvStockStorageLocationId: TcxGridDBColumn
          DataBinding.FieldName = 'StorageLocationId'
          Visible = False
        end
        object cgvStockItemReceiveCode: TcxGridDBColumn
          Caption = 'Kode Penerimaan'
          DataBinding.FieldName = 'ItemReceiveCode'
          Width = 126
        end
        object cgvStockNo: TcxGridDBColumn
          DataBinding.FieldName = 'No'
        end
        object cgvStockPackingTransactionCode: TcxGridDBColumn
          Caption = 'Kode Transaksi Packing'
          DataBinding.FieldName = 'PackingTransactionCode'
        end
        object cgvStockQty: TcxGridDBColumn
          DataBinding.FieldName = 'Qty'
        end
      end
      object cgStockLevel1: TcxGridLevel
        GridView = cgvStock
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 50
    Align = alTop
    TabOrder = 1
    object Bevel1: TBevel
      Left = 145
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 187
      ExplicitTop = 0
    end
    object cxButton2: TcxButton
      Left = 1
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actOk
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 49
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actCancel
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 1
    end
    object cxButton4: TcxButton
      Left = 97
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actRefresh
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 408
    Top = 8
    object cgvPrevMerek: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmEkspedisi.dsPrevMerek
      DataController.KeyFieldNames = 'MerekId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevMerekMerekId: TcxGridDBColumn
        DataBinding.FieldName = 'MerekId'
        Visible = False
      end
      object cgvPrevMerekMerekCode: TcxGridDBColumn
        DataBinding.FieldName = 'MerekCode'
      end
      object cgvPrevMerekMerekName: TcxGridDBColumn
        DataBinding.FieldName = 'MerekName'
      end
      object cgvPrevMerekRouteId: TcxGridDBColumn
        DataBinding.FieldName = 'RouteId'
        Visible = False
      end
      object cgvPrevMerekCustomerId: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerId'
        Visible = False
      end
    end
  end
  object ActionList2: TActionList
    Images = dmGlobal.imgIcon24
    Left = 488
    Top = 72
    object actOk: TAction
      Caption = '&Ok'
      Hint = 'Reset (Alt+R)'
      ImageIndex = 8
      OnExecute = actOkExecute
    end
    object actCancel: TAction
      Caption = '&Cancel'
      Hint = 'Close (Alt+C)'
      ImageIndex = 9
      OnExecute = actCancelExecute
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 1
      ShortCut = 116
      OnExecute = actRefreshExecute
    end
  end
  object IvPositionStandard2: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Collection = <>
    Filename = 'Setting Template.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 520
    Top = 72
  end
  object IvPositionDevExpress2: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Template.cfg'
    Sorting = True
    Version = '1.3'
    Left = 552
    Top = 72
  end
  object qryStock: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'storageLocationId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'itemreceivecode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select * from stock'
      'where cast(storageLocationID as varchar)  = :storageLocationId'
      'and itemreceivecode like :itemreceivecode')
    Left = 440
    Top = 8
  end
  object dsStock: TDataSource
    DataSet = qryStock
    Left = 472
    Top = 8
  end
end
