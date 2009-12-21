inherited fmExtSearchItem: TfmExtSearchItem
  Caption = 'Pencarian Barang'
  ClientWidth = 742
  OnShow = FormShow
  ExplicitWidth = 750
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 742
    ExplicitWidth = 742
    object bvlSeparator2: TBevel [0]
      Left = 650
      Top = 1
      Width = 9
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 676
      ExplicitTop = -4
    end
    object Bevel1: TBevel [1]
      Left = 107
      Top = 1
      Width = 543
      Height = 48
      Align = alLeft
      Shape = bsFrame
      ExplicitLeft = 106
    end
    object lblCari: TLabel [2]
      Left = 112
      Top = 6
      Width = 19
      Height = 13
      Caption = 'Cari'
      Transparent = True
    end
    object btnSearch: TcxButton
      Left = 659
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actSearch
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
    object edtSearch: TcxTextEdit
      Left = 112
      Top = 20
      TabOrder = 3
      OnKeyDown = edtSearchKeyDown
      Width = 529
    end
  end
  object cgDisplayResult: TcxGrid [1]
    Left = 0
    Top = 50
    Width = 742
    Height = 317
    Align = alClient
    TabOrder = 1
    TabStop = False
    object cgvDisplayResult: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevSearchItem
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.GroupByBox = False
      object cgvDisplayResultitemidexternal: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemidexternal'
      end
      object cgvDisplayResultitemname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'itemname'
      end
      object cgvDisplayResultitemnamechinese: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'itemnamechinese'
      end
      object cgvDisplayResulttype: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'type'
      end
    end
    object cgDisplayResultLevel1: TcxGridLevel
      GridView = cgvDisplayResult
    end
  end
  inherited ActionList1: TActionList
    object actSearch: TAction
      Caption = 'Search'
      Hint = 'Search'
      ImageIndex = 12
      ShortCut = 114
      OnExecute = actSearchExecute
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Filename = 'Setting Ext Search Item.cfg'
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Filename = 'Setting Ext Search Item.cfg'
  end
  object dsPrevSearchItem: TDataSource
    DataSet = qryPrevSearchItem
    Left = 168
    Top = 112
  end
  object qryPrevSearchItem: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select ItemIdExternal, ItemName, ItemNameChinese, Type '
      'from Item')
    Left = 136
    Top = 112
  end
end
