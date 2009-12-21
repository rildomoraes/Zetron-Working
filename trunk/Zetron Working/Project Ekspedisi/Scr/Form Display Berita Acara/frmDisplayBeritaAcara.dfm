object fmDisplayBeritaAcara: TfmDisplayBeritaAcara
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Display Berita Acara'
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
      Width = 86
      Height = 13
      Caption = 'Kode Berita Acara'
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
    object dbeBeritaAcaraCode: TcxTextEdit
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
    ExplicitTop = 120
    ExplicitWidth = 592
    ExplicitHeight = 257
    object cgBeritaAcara: TcxGrid
      Left = 0
      Top = 0
      Width = 612
      Height = 271
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 9
      ExplicitWidth = 561
      ExplicitHeight = 240
      object cgvBeritaAcaraDt: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = cgvBeritaAcaraDtCellDblClick
        DataController.DataSource = dsBeritaAcaraDt
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cgvBeritaAcaraDtBeritaAcaraCode: TcxGridDBColumn
          Caption = 'Kode Berita Acara'
          DataBinding.FieldName = 'BeritaAcaraCode'
          Width = 103
        end
        object cgvBeritaAcaraDtSuppliesCode: TcxGridDBColumn
          Caption = 'Supplies Code'
          DataBinding.FieldName = 'SuppliesCode'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Width = 80
        end
        object cgvBeritaAcaraDtSuppliesName: TcxGridDBColumn
          Caption = 'Supplies Name'
          DataBinding.FieldName = 'SuppliesName'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Width = 96
        end
        object cgvBeritaAcaraDtStorageLocationId: TcxGridDBColumn
          Caption = 'Lokasi Penyimpanan'
          DataBinding.FieldName = 'StorageLocationId'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.CharCase = ecUpperCase
          Properties.View = cgvPrevStorageLocation
          Properties.KeyFieldNames = 'StorageLocationId'
          Properties.ListFieldItem = cgvPrevStorageLocationStorageLocationName
          Width = 131
        end
        object cgvBeritaAcaraDtQty: TcxGridDBColumn
          DataBinding.FieldName = 'Qty'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 50
        end
        object cgvBeritaAcaraDtQtyKonosemen: TcxGridDBColumn
          DataBinding.FieldName = 'QtyKonosemen'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 93
        end
        object cgvBeritaAcaraDtQtySelisih: TcxGridDBColumn
          DataBinding.FieldName = 'QtySelisih'
          PropertiesClassName = 'TcxCalcEditProperties'
        end
        object cgvBeritaAcaraDtQtyOutStanding: TcxGridDBColumn
          DataBinding.FieldName = 'QtyOutStanding'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 88
        end
      end
      object cgBeritaAcaraLevel1: TcxGridLevel
        GridView = cgvBeritaAcaraDt
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
    ExplicitWidth = 595
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
    object cgvPrevStorageLocation: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmEkspedisi.dsPrevStorageLocation
      DataController.KeyFieldNames = 'StorageLocationId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevStorageLocationStorageLocationId: TcxGridDBColumn
        DataBinding.FieldName = 'StorageLocationId'
        Visible = False
      end
      object cgvPrevStorageLocationStorageLocationCode: TcxGridDBColumn
        DataBinding.FieldName = 'StorageLocationCode'
        Visible = False
      end
      object cgvPrevStorageLocationStorageLocationName: TcxGridDBColumn
        DataBinding.FieldName = 'StorageLocationName'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
      end
      object cgvPrevStorageLocationFlagShipStorage: TcxGridDBColumn
        DataBinding.FieldName = 'FlagShipStorage'
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
  object qryBeritaAcaraDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'BeritaAcaraCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from BeritaAcaraDt'
      'where BeritaAcaraCode like :BeritaAcaraCode')
    Left = 440
    Top = 40
  end
  object dsBeritaAcaraDt: TDataSource
    DataSet = qryBeritaAcaraDt
    Left = 472
    Top = 40
  end
end
