object fmDisplaySearchPacking: TfmDisplaySearchPacking
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Search Packing'
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
        DataController.DataSource = dsMemData
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cgSuppliesReceiveDtJumlah: TcxGridDBColumn
          DataBinding.FieldName = 'Jumlah'
        end
        object cgSuppliesReceiveDtJumPacking: TcxGridDBColumn
          Caption = 'Packing'
          DataBinding.FieldName = 'jumpacking'
        end
        object cgSuppliesReceiveDtTotPacking: TcxGridDBColumn
          Caption = 'Total Packing'
          DataBinding.FieldName = 'totpacking'
          Width = 81
        end
        object cgSuppliesReceiveDtSisa: TcxGridDBColumn
          DataBinding.FieldName = 'Sisa'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
        end
        object cgSuppliesReceiveDtNoSJ: TcxGridDBColumn
          Caption = 'No Surat Jalan'
          DataBinding.FieldName = 'No SJ'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 89
        end
        object cgSuppliesReceiveDtNo: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 57
        end
        object cgSuppliesReceiveDtMerekName: TcxGridDBColumn
          Caption = 'Nama Merek'
          DataBinding.FieldName = 'MerekName'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 87
        end
        object cgSuppliesReceiveDtKodeBarang: TcxGridDBColumn
          DataBinding.FieldName = 'Kode Barang'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 66
        end
        object cgSuppliesReceiveDtNamaBarang: TcxGridDBColumn
          DataBinding.FieldName = 'Nama Barang'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 79
        end
        object cgSuppliesReceiveDtP: TcxGridDBColumn
          DataBinding.FieldName = 'P'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object cgSuppliesReceiveDtL: TcxGridDBColumn
          DataBinding.FieldName = 'L'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object cgSuppliesReceiveDtT: TcxGridDBColumn
          DataBinding.FieldName = 'T'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object cgSuppliesReceiveDtBerat: TcxGridDBColumn
          DataBinding.FieldName = 'Berat'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object cgSuppliesReceiveDtTotalM3: TcxGridDBColumn
          DataBinding.FieldName = 'TotalM3'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object cgSuppliesReceiveDtTotalBerat: TcxGridDBColumn
          DataBinding.FieldName = 'TotalBerat'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object cgSuppliesReceiveDtUnitMeasure: TcxGridDBColumn
          DataBinding.FieldName = 'UnitMeasure'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
      end
      object cgvPrevMerek2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dmEkspedisi.dsPrevMerek
        DataController.KeyFieldNames = 'MerekId'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cgvPrevMerek2MerekId: TcxGridDBColumn
          DataBinding.FieldName = 'MerekId'
          Visible = False
        end
        object cgvPrevMerek2MerekCode: TcxGridDBColumn
          DataBinding.FieldName = 'MerekCode'
          Visible = False
        end
        object cgvPrevMerek2MerekName: TcxGridDBColumn
          DataBinding.FieldName = 'MerekName'
        end
        object cgvPrevMerek2RouteId: TcxGridDBColumn
          DataBinding.FieldName = 'RouteId'
          Visible = False
        end
        object cgvPrevMerek2CustomerId: TcxGridDBColumn
          DataBinding.FieldName = 'CustomerId'
          Visible = False
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
        Name = 'qty'
        Size = -1
        Value = Null
      end
      item
        Name = 'merekId'
        Attributes = [paSigned, paNullable]
        DataType = ftString
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'LocationId'
        Attributes = [paSigned]
        DataType = ftString
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'RouteId'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'PackingTransactionCode'
        DataType = ftString
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '* from'
      '('
      'Select a.ItemReceiveCode As [No SJ], a.No As No,'
      
        '       a.SuppliesCode As [Kode Barang], a.SuppliesName As [Nama ' +
        'Barang],'
      '       a.P as [P], a.L as [L], a.T as [T],a.Berat as [Berat],'
      '       a.TotalM3 as [TotalM3], a.TotalBerat as [TotalBerat],'
      #9'   a.UnitMeasureId as [UnitMeasure],'
      #9'   case'
      '         when e.Qty<a.QtyOutStanding then e.Qty'
      '         else a.QtyOutStanding'
      '       end As [Sisa],'
      '       d.MerekName,'
      '       0 as Jumlah,:qty as jumpacking,0 as totpacking'
      '  From SuppliesReceiveDt a'
      
        '  Left Join SuppliesReceiveHd b On a.ItemReceiveCode = b.ItemRec' +
        'eiveCode'
      '  Left Join Merek d On b.MerekId = d.MerekId'
      
        '  Left Join stock e On a.ItemReceiveCode = e.ItemReceiveCode and' +
        ' a.no=e.no'
      '  where b.merekId = :merekId'
      '    and a.StorageLocationId = :LocationID'
      '    and b.RouteId = :RouteId'
      ' and a.SuppliesCode not in (select SuppliesCode'
      '         from PackingTransactionDt'
      '         where PackingTransactionCode = :PackingTransactionCode)'
      ') a'
      'where sisa>0')
    Left = 256
    Top = 8
  end
  object dsPrevSuppliesReceiveDt: TDataSource
    DataSet = qryPrevSuppliesReceiveDt
    Left = 288
    Top = 8
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
    Left = 440
    Top = 8
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
    Left = 472
    Top = 8
  end
  object IvPositionDevExpress2: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Template.cfg'
    Sorting = True
    Version = '1.3'
    Left = 504
    Top = 8
  end
  object memData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 192
    Top = 8
  end
  object dsMemData: TDataSource
    DataSet = memData
    OnDataChange = dsMemDataDataChange
    Left = 224
    Top = 8
  end
end
