object fmDisplayPacking: TfmDisplayPacking
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'fmDisplayPacking'
  ClientHeight = 385
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 50
    Width = 678
    Height = 335
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 678
      Height = 335
      Align = alClient
      TabOrder = 0
      object cgSuppliesReceiveDt: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = cgSuppliesReceiveDtCellDblClick
        DataController.DataSource = dsPrevSuppliesReceiveDt
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cgSuppliesReceiveDtItemReceiveCode: TcxGridDBColumn
          Caption = 'No Surat Jalan'
          DataBinding.FieldName = 'ItemRecCode'
          Width = 102
        end
        object cgSuppliesReceiveDtNo: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          Width = 32
        end
        object cgSuppliesReceiveDtMerekId: TcxGridDBColumn
          Caption = 'Merek'
          DataBinding.FieldName = 'MerekId'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = cgvPrevMerek
          Properties.KeyFieldNames = 'MerekId'
          Properties.ListFieldItem = cgvPrevMerekMerekName
          Properties.ReadOnly = True
          Width = 80
        end
        object cgSuppliesReceiveDtSuppliesCode: TcxGridDBColumn
          Caption = 'Kode Barang'
          DataBinding.FieldName = 'SuppliesCode'
          Width = 98
        end
        object cgSuppliesReceiveDtSuppliesName: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'SuppliesName'
          Width = 209
        end
        object cgSuppliesReceiveDtqty: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'qty'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 55
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cgSuppliesReceiveDt
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 678
    Height = 50
    Align = alTop
    TabOrder = 0
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
  object qryPrevSuppliesReceiveDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'lokasi'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'RouteId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'MerekId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.ItemReceiveCode as ItemRecCode, No, MerekId, SuppliesCo' +
        'de, SuppliesName,a.qty,a.qtyoutstanding'
      'from SuppliesReceiveDt a'
      
        'left join SuppliesReceiveHd b on a.ItemReceiveCode=b.ItemReceive' +
        'Code'
      'where cast(a.StorageLocationId as varchar) like :lokasi'
      'and cast(b.RouteId as varchar) like :RouteId'
      'and cast(b.MerekId as varchar) like :MerekId'
      '')
    Left = 328
    Top = 8
  end
  object dsPrevSuppliesReceiveDt: TDataSource
    DataSet = qryPrevSuppliesReceiveDt
    Left = 376
    Top = 8
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 456
    Top = 56
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
    Top = 120
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
    Top = 120
  end
  object IvPositionDevExpress2: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Template.cfg'
    Sorting = True
    Version = '1.3'
    Left = 552
    Top = 120
  end
end
