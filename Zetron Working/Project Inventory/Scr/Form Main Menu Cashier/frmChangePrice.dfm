object fmChangePrice: TfmChangePrice
  Left = 0
  Top = 0
  Caption = 'Ubah Harga'
  ClientHeight = 265
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 17
  object lblTitle: TLabel
    Left = 0
    Top = 0
    Width = 502
    Height = 32
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'lblTitle'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
    ExplicitTop = -6
  end
  object cgPrice: TcxGrid
    Left = 0
    Top = 32
    Width = 502
    Height = 233
    Align = alClient
    TabOrder = 0
    object cgvPrice: TcxGridTableView
      OnKeyDown = cgvPriceKeyDown
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = cgvPriceCellDblClick
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPriceLevel: TcxGridColumn
        Caption = 'Level'
        Options.Editing = False
        Options.Filtering = False
      end
      object cgvPricePrice: TcxGridColumn
        Caption = 'Harga'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Options.Editing = False
        Options.Filtering = False
      end
      object cgvPriceQtyMin: TcxGridColumn
        Caption = 'Qty Min'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Options.Editing = False
        Options.Filtering = False
      end
      object cgvPriceQtyMax: TcxGridColumn
        Caption = 'Qty Max'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Options.Editing = False
        Options.Filtering = False
      end
      object cgvPriceUnitMeasure: TcxGridColumn
        Caption = 'Satuan'
        Options.Editing = False
        Options.Filtering = False
      end
    end
    object cgPriceLevel1: TcxGridLevel
      GridView = cgvPrice
    end
  end
  object qryPrevPrice: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.*, b.ItemName'
      'from Price a'
      'left join Item b on b.ItemId = a.ItemId'
      'where a.ItemId = :ItemId')
    Left = 88
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Change Price.cfg'
    Sorting = False
    Version = '1.3'
    Left = 120
    Top = 64
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Collection = <
      item
      end>
    Filename = 'Setting Change Price.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 152
    Top = 64
  end
end
