object fmDisplaySuppliesReceive: TfmDisplaySuppliesReceive
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Display Penerimaan'
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
    Height = 106
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 28
      Width = 70
      Height = 13
      Caption = 'No Surat Jalan'
      Transparent = True
    end
    object Label2: TLabel
      Left = 24
      Top = 46
      Width = 67
      Height = 13
      Caption = 'Supplies Code'
      Transparent = True
    end
    object Label3: TLabel
      Left = 24
      Top = 64
      Width = 69
      Height = 13
      Caption = 'Supplies Name'
      Transparent = True
    end
    object Label4: TLabel
      Left = 24
      Top = 10
      Width = 72
      Height = 13
      Caption = 'No Penerimaan'
      Transparent = True
    end
    object dbeNoSuratJalan: TcxTextEdit
      Left = 120
      Top = 25
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 121
    end
    object dbeSuppliesCode: TcxTextEdit
      Left = 120
      Top = 43
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      Width = 121
    end
    object dbeSuppliesName: TcxTextEdit
      Left = 120
      Top = 61
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      Width = 121
    end
    object btnSearch: TcxButton
      Left = 280
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Cari'
      TabOrder = 4
      OnClick = btnSearchClick
    end
    object dbeItemReceiveCode: TcxTextEdit
      Left = 120
      Top = 7
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 121
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 167
    Width = 592
    Height = 210
    BevelOuter = bvNone
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 16
      Top = 9
      Width = 544
      Height = 200
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
          Caption = 'Kode Penerimaan'
          DataBinding.FieldName = 'ItemRecCode'
          Width = 102
        end
        object cgSuppliesReceiveDtNo: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          Width = 32
        end
        object cgSuppliesReceiveDtSuppliesCode: TcxGridDBColumn
          Caption = 'Kode Supplies'
          DataBinding.FieldName = 'SuppliesCode'
          Width = 98
        end
        object cgSuppliesReceiveDtSuppliesName: TcxGridDBColumn
          Caption = 'Nama Supplies'
          DataBinding.FieldName = 'SuppliesName'
          Width = 209
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
  object qryPrevSuppliesReceiveDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ItemReceiveCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'NoSuratJalan'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'SuppliesCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'SuppliesName'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.ItemReceiveCode as ItemRecCode, No, SuppliesCode, Suppl' +
        'iesName'
      'from SuppliesReceiveDt a'
      
        'left join SuppliesReceiveHd b on a.ItemReceiveCode=b.ItemReceive' +
        'Code'
      'where a.ItemReceiveCode like :ItemReceiveCode '
      'and b.NoSuratJalan like :NoSuratJalan '
      'and a.SuppliesCode like :SuppliesCode'
      'and a.SuppliesName like :SuppliesName')
    Left = 344
    Top = 8
  end
  object dsPrevSuppliesReceiveDt: TDataSource
    DataSet = qryPrevSuppliesReceiveDt
    Left = 376
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
