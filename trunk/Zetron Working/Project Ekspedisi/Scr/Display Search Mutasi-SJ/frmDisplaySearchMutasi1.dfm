object fmDisplaySearchMutasi1: TfmDisplaySearchMutasi1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Search Mutasi'
  ClientHeight = 414
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
    Height = 364
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 678
      Height = 364
      Align = alClient
      TabOrder = 0
      object cgvSuppliesReceiveDt: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = cgvSuppliesReceiveDtCellDblClick
        DataController.DataSource = dsMemData
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsView.GroupByBox = False
        object cgvSuppliesReceiveDtJumlah: TcxGridDBColumn
          DataBinding.FieldName = 'Jumlah'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Width = 44
        end
        object cgvSuppliesReceiveDtQty: TcxGridDBColumn
          DataBinding.FieldName = 'Sisa'
          Options.Editing = False
          Width = 58
        end
        object cgvSuppliesReceiveDtNoSJ: TcxGridDBColumn
          Caption = 'No Surat Jalan'
          DataBinding.FieldName = 'No SJ'
          Options.Editing = False
          Width = 129
        end
        object cgvSuppliesReceiveDtNo: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          Options.Editing = False
          Width = 37
        end
        object cgvSuppliesReceiveDtNamaMerek: TcxGridDBColumn
          DataBinding.FieldName = 'Nama Merek'
          Options.Editing = False
          Width = 91
        end
        object cgvSuppliesReceiveDtKodeBarang: TcxGridDBColumn
          DataBinding.FieldName = 'Kode Barang'
          Options.Editing = False
          Width = 97
        end
        object cgvSuppliesReceiveDtNamaBarang: TcxGridDBColumn
          DataBinding.FieldName = 'Nama Barang'
          Options.Editing = False
          Width = 167
        end
        object cgvSuppliesReceiveDtP: TcxGridDBColumn
          DataBinding.FieldName = 'P'
          Visible = False
          Options.Editing = False
        end
        object cgvSuppliesReceiveDtL: TcxGridDBColumn
          DataBinding.FieldName = 'L'
          Visible = False
          Options.Editing = False
        end
        object cgvSuppliesReceiveDtT: TcxGridDBColumn
          DataBinding.FieldName = 'T'
          Visible = False
          Options.Editing = False
        end
        object cgvSuppliesReceiveDtBerat: TcxGridDBColumn
          DataBinding.FieldName = 'Berat'
          Visible = False
          Options.Editing = False
        end
        object cgvSuppliesReceiveDtUnit: TcxGridDBColumn
          DataBinding.FieldName = 'Unit'
          Visible = False
          Options.Editing = False
        end
        object cgvSuppliesReceiveDtTotalM3: TcxGridDBColumn
          DataBinding.FieldName = 'TotalM3'
          Visible = False
          Options.Editing = False
        end
        object cgvSuppliesReceiveDtTotalBerat: TcxGridDBColumn
          DataBinding.FieldName = 'TotalBerat'
          Visible = False
          Options.Editing = False
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
        GridView = cgvSuppliesReceiveDt
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
    object cxButton1: TcxButton
      Left = 155
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = ActAll
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
  end
  object qryPrevSuppliesReceiveDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StorageLocationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'MutasiCode'
        DataType = ftString
        Size = 30
        Value = 'PDGD/13NOP2009/0001'
      end
      item
        Name = 'daftarmuatkapalcode'
        Size = -1
        Value = Null
      end
      item
        Name = 'routeid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select a.ItemReceiveCode As [No SJ],'
      '       a.No As No, a.Qty As [Sisa], a.P As P,'
      '       a.L As L, a.T As T, a.Berat As Berat,'
      '       b.UnitMeasureCode As Unit,'
      '       a.TotalM3 As TotalM3, a.TotalBerat As TotalBerat,'
      
        '       a.SuppliesCode As [Kode Barang], a.SuppliesName As [Nama ' +
        'Barang],'
      '       0 as [Jumlah],'
      
        '       d.MerekName as [Nama Merek], a.unitMeasureId as [UnitMeas' +
        'ure]'
      'From Stock a'
      
        '       left join UnitMeasure b On b.UnitMeasureId = a.UnitMeasur' +
        'eId'
      
        #9'   left join SuppliesReceiveHd c On c.ItemReceiveCode = a.ItemR' +
        'eceiveCode'
      '       left join Merek d On d.MerekId = c.MerekId'
      'Where a.PackingTransactionCode Is Null'
      '      and a.StorageLocationId = :StorageLocationId'
      '      and  a.SuppliesCode not in (select SuppliesCode'
      '         from MutasiStorageDt'
      '         where MutasiCode = :MutasiCode) and a.qty>0'
      '      and c.routeid in'
      '      ( select routeid'
      '        from daftarmuatkapalroute'
      '        where daftarmuatkapalcode like :daftarmuatkapalcode'
      '        union'
      '        select distinct routeid'
      '        from route'
      '        where routeid like :routeid'
      '      )')
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
    object ActAll: TAction
      Caption = 'Semua'
      ImageIndex = 21
      OnExecute = ActAllExecute
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
