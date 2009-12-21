object fmSearchItem: TfmSearchItem
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cari Barang'
  ClientHeight = 405
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 17
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 654
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnlTop'
    TabOrder = 0
    DesignSize = (
      654
      41)
    object lblKeywords: TLabel
      Left = 8
      Top = 7
      Width = 126
      Height = 23
      Caption = 'Keywords (F2)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtSearch: TcxTextEdit
      Left = 140
      Top = 5
      Anchors = [akLeft, akTop, akRight]
      ParentFont = False
      Properties.OnEditValueChanged = edtSearchPropertiesEditValueChanged
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 501
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 301
    Width = 654
    Height = 104
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object btnCancel: TcxButton
      Left = 347
      Top = 10
      Width = 85
      Height = 85
      Action = actCancel
      Cancel = True
      Layout = blGlyphTop
      TabOrder = 1
    end
    object btnOk: TcxButton
      Left = 216
      Top = 10
      Width = 85
      Height = 85
      Action = actOk
      Layout = blGlyphTop
      TabOrder = 0
    end
  end
  object pcSearchItem: TcxPageControl
    Left = 0
    Top = 41
    Width = 654
    Height = 260
    ActivePage = tsItem
    Align = alClient
    Images = ImageList1
    TabOrder = 1
    OnPageChanging = pcSearchItemPageChanging
    ClientRectBottom = 260
    ClientRectRight = 654
    ClientRectTop = 41
    object tsItem: TcxTabSheet
      Caption = 'Barang (F1)'
      ImageIndex = 0
      object cgDisplayResult: TcxGrid
        Left = 0
        Top = 0
        Width = 654
        Height = 219
        Align = alClient
        TabOrder = 0
        object cgvDisplayResult: TcxGridDBTableView
          OnKeyDown = cgvDisplayResultKeyDown
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = cgvDisplayResultCellDblClick
          DataController.DataSource = dsPrevSearchItem
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsView.GroupByBox = False
          object cgvDisplayResultItemId: TcxGridDBColumn
            DataBinding.FieldName = 'itemid'
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvDisplayResultBarcodeId: TcxGridDBColumn
            Caption = 'Barcode'
            DataBinding.FieldName = 'barcodeid'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 90
          end
          object cgvDisplayResultItemIdExternal: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'itemidexternal'
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = False
          end
          object cgvDisplayResultitemname: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'itemname'
            Width = 200
          end
          object cgvDisplayResultitemnamechinese: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'itemnamechinese'
            Width = 200
          end
          object cgvDisplayResulttype: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'type'
            Width = 120
          end
        end
        object cgDisplayResultLevel1: TcxGridLevel
          GridView = cgvDisplayResult
        end
      end
    end
    object tsPriceList: TcxTabSheet
      Caption = 'List Harga (F3)'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cgPrice: TcxGrid
        Left = 0
        Top = 27
        Width = 645
        Height = 184
        Align = alClient
        TabOrder = 0
        object cgvPrice: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevPrice
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPricelevel: TcxGridDBColumn
            Caption = ' Level'
            DataBinding.FieldName = 'level'
          end
          object cgvPriceprice: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'price'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPricedisc1: TcxGridDBColumn
            Caption = 'Disc 1 %'
            DataBinding.FieldName = 'disc1'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPriceminqty1: TcxGridDBColumn
            Caption = 'Qty Min'
            DataBinding.FieldName = 'minqty1'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPriceqty1: TcxGridDBColumn
            Caption = 'Qty Max'
            DataBinding.FieldName = 'qty1'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPriceunitmeasure1: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'unitmeasure1'
          end
        end
        object cgPriceLevel1: TcxGridLevel
          GridView = cgvPrice
        end
      end
      object pnlItemName: TPanel
        Left = 0
        Top = 0
        Width = 645
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnlItemName'
        TabOrder = 1
        DesignSize = (
          654
          27)
        object dbeItemName: TcxDBTextEdit
          Left = 0
          Top = 0
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'ItemName'
          DataBinding.DataSource = dsPrevSearchItem
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Times New Roman'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          ExplicitWidth = 654
          Width = 663
        end
      end
    end
  end
  object qryPrevSearchItem: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      '-- Syntax declare at runtime')
    Left = 136
    Top = 112
  end
  object dsPrevSearchItem: TDataSource
    DataSet = qryPrevSearchItem
    Left = 168
    Top = 112
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
    Filename = 'Setting Search Item.cfg'
    Sorting = False
    Version = '1.3'
    Left = 168
    Top = 80
  end
  object qryPrevPrice: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      
        'select '#39'Lv 1'#39' as Level, Price1 as Price, Disc1_1 as Disc1, MinQt' +
        'y1, Qty1, UnitMeasure1'
      'from Price'
      'where ItemId = :ItemId'
      ''
      'union all'
      ''
      
        'select '#39'Lv 2'#39' as Level, Price2 as Price, Disc1_2 as Disc1, MinQt' +
        'y2, Qty2, UnitMeasure2'
      'from Price'
      'where ItemId = :ItemId'
      ''
      'union all'
      ''
      
        'select '#39'Lv 3'#39' as Level, Price3 as Price, Disc1_3 as Disc1, MinQt' +
        'y3, Qty3, UnitMeasure3'
      'from Price'
      'where ItemId = :ItemId'
      ''
      'union all'
      ''
      
        'select '#39'Lv 4'#39' as Level, Price4 as Price, Disc1_4 as Disc1, MinQt' +
        'y4, Qty4, UnitMeasure4'
      'from Price'
      'where ItemId = :ItemId'
      ''
      'union all'
      ''
      
        'select '#39'Lv 5'#39' as Level, Price5 as Price, Disc1_5 as Disc1, MinQt' +
        'y5, Qty5, UnitMeasure5'
      'from Price'
      'where ItemId = :ItemId'
      ''
      'union all'
      ''
      
        'select '#39'Lv 6'#39' as Level, Price6 as Price, Disc1_6 as Disc1, MinQt' +
        'y6, Qty6, UnitMeasure6'
      'from Price'
      'where ItemId = :ItemId'
      ''
      'union all'
      ''
      
        'select '#39'Lv 7'#39' as Level, Price7 as Price, Disc1_7 as Disc1, MinQt' +
        'y7, Qty7, UnitMeasure7'
      'from Price'
      'where ItemId = :ItemId')
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object dsPrevPrice: TDataSource
    DataSet = qryPrevPrice
    Left = 168
    Top = 144
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 200
    Top = 80
  end
end
