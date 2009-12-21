object fmHasilGradeEntry: TfmHasilGradeEntry
  Left = 0
  Top = 0
  Caption = 'Entry Hasil Grade'
  ClientHeight = 371
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object cgHasilGradeEntry: TcxGrid
    Left = 0
    Top = 85
    Width = 685
    Height = 286
    Align = alClient
    TabOrder = 0
    object cgvHasilGradeEntry: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Append.Visible = True
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsmdPrevTallySheetlGrade
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          FieldName = 'M3'
          Column = cgvHasilGradeEntryM3
        end
        item
          Kind = skSum
          Position = spFooter
          FieldName = 'Qty'
          Column = cgvHasilGradeEntryQty
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'M3'
          Column = cgvHasilGradeEntryM3
        end
        item
          Kind = skSum
          FieldName = 'Qty'
          Column = cgvHasilGradeEntryQty
        end>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.Navigator = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cgvHasilGradeEntryRecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object cgvHasilGradeEntryNoPalet: TcxGridDBColumn
        Caption = 'No Palet'
        DataBinding.FieldName = 'NoPalet'
      end
      object cgvHasilGradeEntryT: TcxGridDBColumn
        DataBinding.FieldName = 'T'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvHasilGradeEntryL: TcxGridDBColumn
        DataBinding.FieldName = 'L'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvHasilGradeEntryD1: TcxGridDBColumn
        DataBinding.FieldName = 'D1'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvHasilGradeEntryD2: TcxGridDBColumn
        DataBinding.FieldName = 'D2'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvHasilGradeEntryDRata: TcxGridDBColumn
        DataBinding.FieldName = 'DRata'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvHasilGradeEntryP: TcxGridDBColumn
        DataBinding.FieldName = 'P'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvHasilGradeEntryQty: TcxGridDBColumn
        DataBinding.FieldName = 'Qty'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 82
      end
      object cgvHasilGradeEntryM3: TcxGridDBColumn
        DataBinding.FieldName = 'M3'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvHasilGradeEntryHarga: TcxGridDBColumn
        DataBinding.FieldName = 'Harga'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object cgHasilGradeEntryLevel1: TcxGridLevel
      Caption = 'Muat'
      GridView = cgvHasilGradeEntry
    end
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 50
    Align = alTop
    TabOrder = 1
    object bvlSpacer1: TBevel
      Left = 49
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 205
    end
    object btnCancel: TcxButton
      Left = 107
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actCancel
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
    object btnReset: TcxButton
      Left = 1
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actReset
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 0
    end
    object btnPost: TcxButton
      Left = 59
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPost
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 50
    Width = 685
    Height = 35
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 10
      Top = 6
      Width = 22
      Height = 13
      Caption = 'Item'
      Transparent = True
    end
    object dblcItemPO: TcxExtLookupComboBox
      Left = 38
      Top = 6
      Properties.View = cgvPrevItemPO
      Properties.KeyFieldNames = 'itemid'
      Properties.ListFieldItem = cgvPrevItemPOitemname
      Properties.OnEditValueChanged = dblcItemPOPropertiesEditValueChanged
      TabOrder = 0
      Width = 145
    end
  end
  object mdPrevTallySheetlGrade: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = mdPrevTallySheetlGradeBeforePost
    AfterPost = mdPrevTallySheetlGradeAfterPost
    OnNewRecord = mdPrevTallySheetlGradeNewRecord
    Left = 136
    Top = 112
    object mdPrevTallySheetlGradeNoPalet: TStringField
      FieldName = 'NoPalet'
    end
    object mdPrevTallySheetlGradeQty: TIntegerField
      FieldName = 'Qty'
    end
    object mdPrevTallySheetlGradeM3: TFloatField
      FieldName = 'M3'
    end
    object mdPrevTallySheetlGradeDRata: TFloatField
      FieldName = 'DRata'
    end
    object mdPrevTallySheetlGradeT: TFloatField
      FieldName = 'T'
    end
    object mdPrevTallySheetlGradeL: TFloatField
      FieldName = 'L'
    end
    object mdPrevTallySheetlGradeP: TFloatField
      FieldName = 'P'
    end
    object mdPrevTallySheetlGradeD1: TFloatField
      FieldName = 'D1'
    end
    object mdPrevTallySheetlGradeD2: TFloatField
      FieldName = 'D2'
    end
    object mdPrevTallySheetlGradeNoPo: TIntegerField
      FieldName = 'NoPo'
    end
    object mdPrevTallySheetlGradeprice: TFloatField
      FieldName = 'price'
    end
  end
  object dsPrevTallySheetlGrade: TDataSource
    DataSet = qryPrevTallySheetlGrade
    Left = 232
    Top = 112
  end
  object qryPrevTallySheetlGrade: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StatusGradeResult'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.*, cast( 0 as integer) as CheckMuat,'
      '  b.GradeResultCode, b.GradeResultDate, b.Lokasi'
      'from TallySheetGrade a '
      
        'left join GradeResultHd b on a.GradeResultCode = b.GradeResultCo' +
        'de'
      'where a.FlagMuat = '#39'0'#39
      'and b.StatusGradeResult = :StatusGradeResult')
    Left = 200
    Top = 112
  end
  object ActionList1: TActionList
    Images = dmGlobal.imgIcon24
    Left = 168
    Top = 80
    object actReset: TAction
      Caption = '&Reset'
      Hint = 'Reset (Alt+R)'
      ImageIndex = 4
      OnExecute = actResetExecute
    end
    object actPost: TAction
      Caption = 'Simpan'
      ImageIndex = 8
      OnExecute = actPostExecute
    end
    object actCancel: TAction
      Caption = 'Batal'
      ImageIndex = 9
      OnExecute = actCancelExecute
    end
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Collection = <>
    Filename = 'Setting Template.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 200
    Top = 80
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Template.cfg'
    Sorting = True
    Version = '1.3'
    Left = 232
    Top = 80
  end
  object dsmdPrevTallySheetlGrade: TDataSource
    DataSet = mdPrevTallySheetlGrade
    OnDataChange = dsmdPrevTallySheetlGradeDataChange
    Left = 168
    Top = 112
  end
  object qryTallySheetGrade: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select * '#13#10'from TallySheetGrade '#13#10'where TallySheetGradeCode=:Tal' +
      'lySheetGradeCode'#13#10'and GradeResultCode=:GradeResultCode'#13#10
    Parameters = <
      item
        Name = 'TallySheetGradeCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'GradeResultCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    Left = 104
    Top = 112
  end
  object qryPrevItemPO: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select distinct a.itemid,b.itemname'#13#10'from PurchaseOrderDt a '#13#10'le' +
      'ft join Item b on a.itemid = b.itemid'#13#10'where a.PurchaseOrderCode' +
      ' = :PurchaseOrderCode'#13#10
    Parameters = <
      item
        Name = 'PurchaseOrderCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    Left = 136
    Top = 144
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 104
    Top = 144
    object cgvPrevItemPO: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItemPO
      DataController.KeyFieldNames = 'itemid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevItemPOitemid: TcxGridDBColumn
        Caption = 'Kode Barang'
        DataBinding.FieldName = 'itemid'
      end
      object cgvPrevItemPOitemname: TcxGridDBColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'itemname'
      end
    end
  end
  object dsPrevItemPO: TDataSource
    DataSet = qryPrevItemPO
    Left = 168
    Top = 144
  end
  object qryCekUkuran: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PurchaseOrderCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'itemid'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select distinct '
      '  a.itemid, a.no,a.price,'
      '  b.TCut,b.LCut,b.PCut, '
      '  b.TInv,b.TMaxInv,b.LInv,b.LMaxInv,b.PInv,PMaxInv,'
      '  b.LInterval,b.PInterval,b.TInterval'
      'from PurchaseOrderDt a '
      'left join PurchaseOrderSpec b on a.Specid=b.SpecId'
      'where a.PurchaseOrderCode = :PurchaseOrderCode'
      'and a.itemid=:itemid'
      'order by b.TInv desc, b.TMaxInv desc, b.LInv desc, '
      '  b.LMaxInv desc, b.PInv desc, PMaxInv desc')
    Left = 136
    Top = 176
  end
end
