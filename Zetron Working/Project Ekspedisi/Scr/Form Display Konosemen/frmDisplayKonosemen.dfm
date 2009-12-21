object fmDisplayKonosemen: TfmDisplayKonosemen
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Display Konosemen'
  ClientHeight = 385
  ClientWidth = 612
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
    Left = 0
    Top = 50
    Width = 612
    Height = 64
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 26
      Width = 70
      Height = 13
      Caption = 'No Surat Jalan'
      Transparent = True
    end
    object btnSearch: TcxButton
      Left = 280
      Top = 21
      Width = 75
      Height = 25
      Caption = 'OK'
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
    Top = 114
    Width = 612
    Height = 271
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object cgKonosemen: TcxGrid
      Left = 0
      Top = 0
      Width = 612
      Height = 271
      Align = alClient
      TabOrder = 0
      object cgvKonosemenDt: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = cgvKonosemenDtCellDblClick
        DataController.DataSource = dsKonosemenDt
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cgvKonosemenDtKonosemenDate: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'KonosemenDate'
        end
        object cgvKonosemenDtItemReceiveCode: TcxGridDBColumn
          Caption = 'No Surat Jalan'
          DataBinding.FieldName = 'ItemReceiveCode'
          Width = 102
        end
        object cgvKonosemenDtKonosemenCode: TcxGridDBColumn
          Caption = 'Kode Konosemen'
          DataBinding.FieldName = 'KonosemenCode'
          Width = 87
        end
        object cgvKonosemenDtKonosemenNo: TcxGridDBColumn
          DataBinding.FieldName = 'KonosemenNo'
          Width = 75
        end
        object cgvKonosemenDtNo: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          Width = 47
        end
        object cgvKonosemenDtPrice: TcxGridDBColumn
          Caption = 'Harga'
          DataBinding.FieldName = 'Price'
          Width = 96
        end
        object cgvKonosemenDtPriceFra: TcxGridDBColumn
          Caption = 'Harga Fright'
          DataBinding.FieldName = 'PriceFra'
          Width = 92
        end
        object cgvKonosemenDtModeCY: TcxGridDBColumn
          DataBinding.FieldName = 'ModeCY'
          Width = 63
        end
        object cgvKonosemenDtQty: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'Qty'
        end
        object cgvKonosemenDtTotalAmount: TcxGridDBColumn
          Caption = 'Total Jumlah'
          DataBinding.FieldName = 'TotalAmount'
        end
        object cgvKonosemenDtPackingTransactionCode: TcxGridDBColumn
          Caption = 'Kode Packing'
          DataBinding.FieldName = 'PackingTransactionCode'
          Width = 70
        end
        object cgvKonosemenDtPricePacking: TcxGridDBColumn
          Caption = 'Harga Packing'
          DataBinding.FieldName = 'PricePacking'
        end
        object cgvKonosemenDtPricePort: TcxGridDBColumn
          Caption = 'Harga Port'
          DataBinding.FieldName = 'PricePort'
        end
        object cgvKonosemenDtTarifTypeId: TcxGridDBColumn
          Caption = 'Tipe Tarif'
          DataBinding.FieldName = 'TarifTypeId'
        end
        object cgvKonosemenDtBerat: TcxGridDBColumn
          DataBinding.FieldName = 'Berat'
        end
        object cgvKonosemenDtTotalBerat: TcxGridDBColumn
          Caption = 'Total Berat'
          DataBinding.FieldName = 'TotalBerat'
        end
        object cgvKonosemenDtP: TcxGridDBColumn
          DataBinding.FieldName = 'P'
        end
        object cgvKonosemenDtL: TcxGridDBColumn
          DataBinding.FieldName = 'L'
        end
        object cgvKonosemenDtT: TcxGridDBColumn
          DataBinding.FieldName = 'T'
        end
        object cgvKonosemenDtTotalM3: TcxGridDBColumn
          Caption = 'Total M3'
          DataBinding.FieldName = 'TotalM3'
        end
        object cgvKonosemenDtSuppliesCode: TcxGridDBColumn
          Caption = 'Kode Barang'
          DataBinding.FieldName = 'SuppliesCode'
        end
        object cgvKonosemenDtSuppliesName: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'SuppliesName'
        end
        object cgvKonosemenDtUnitMeasureId: TcxGridDBColumn
          Caption = 'Satuan Ukuran'
          DataBinding.FieldName = 'UnitMeasureId'
        end
      end
      object cgvPrevLocation: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dmEkspedisi.dsPrevStorageLocation
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cgvPrevLocationStorageLocationId: TcxGridDBColumn
          DataBinding.FieldName = 'StorageLocationId'
        end
        object cgvPrevLocationStorageLocationCode: TcxGridDBColumn
          DataBinding.FieldName = 'StorageLocationId'
        end
        object cgvPrevLocationStorageLocationName: TcxGridDBColumn
          DataBinding.FieldName = 'StorageLocationId'
        end
        object cgvPrevLocationFlagShipStorage: TcxGridDBColumn
          DataBinding.FieldName = 'StorageLocationId'
        end
      end
      object cgKonosemenLevel1: TcxGridLevel
        GridView = cgvKonosemenDt
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 612
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
  object qryKonosemenDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ItemReceiveCode'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select a.*,b.KonosemenDate'
      'from KonosemenDt a,Konosemen b'
      
        'where a.KonosemenCode=b.KonosemenCode and ItemReceiveCode like :' +
        'ItemReceiveCode')
    Left = 440
    Top = 40
  end
  object dsKonosemenDt: TDataSource
    DataSet = qryKonosemenDt
    Left = 472
    Top = 40
  end
end
