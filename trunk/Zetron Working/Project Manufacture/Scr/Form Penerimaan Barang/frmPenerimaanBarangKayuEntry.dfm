object fmPenerimaanBarangKayuEntry: TfmPenerimaanBarangKayuEntry
  Left = 0
  Top = 0
  Caption = 'Entry Penerimaan Barang'
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
  object cgPenerimaanBarangKayuEntry: TcxGrid
    Left = 0
    Top = 81
    Width = 685
    Height = 290
    Align = alClient
    TabOrder = 0
    object cgvPenerimaanBarangKayuEntry: TcxGridDBTableView
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
          Column = cgvPenerimaanBarangKayuEntryM3
        end
        item
          Kind = skSum
          Position = spFooter
          FieldName = 'Qty'
          Column = cgvPenerimaanBarangKayuEntryQty
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'M3'
          Column = cgvPenerimaanBarangKayuEntryM3
        end
        item
          Kind = skSum
          FieldName = 'Qty'
          Column = cgvPenerimaanBarangKayuEntryQty
        end>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.Navigator = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cgvPenerimaanBarangKayuEntryRecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object cgvPenerimaanBarangKayuEntryNoPalet: TcxGridDBColumn
        Caption = 'No Palet'
        DataBinding.FieldName = 'NoPalet'
      end
      object cgvPenerimaanBarangKayuEntryT: TcxGridDBColumn
        DataBinding.FieldName = 'T'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPenerimaanBarangKayuEntryL: TcxGridDBColumn
        DataBinding.FieldName = 'L'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPenerimaanBarangKayuEntryD1: TcxGridDBColumn
        DataBinding.FieldName = 'D1'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPenerimaanBarangKayuEntryD2: TcxGridDBColumn
        DataBinding.FieldName = 'D2'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPenerimaanBarangKayuEntryDRata: TcxGridDBColumn
        DataBinding.FieldName = 'DRata'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPenerimaanBarangKayuEntryP: TcxGridDBColumn
        DataBinding.FieldName = 'P'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPenerimaanBarangKayuEntryQty: TcxGridDBColumn
        DataBinding.FieldName = 'Qty'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 82
      end
      object cgvPenerimaanBarangKayuEntryM3: TcxGridDBColumn
        DataBinding.FieldName = 'M3'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object cgPenerimaanBarangKayuEntryLevel1: TcxGridLevel
      Caption = 'Muat'
      GridView = cgvPenerimaanBarangKayuEntry
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
    Height = 31
    Align = alTop
    TabOrder = 2
    object Label2: TLabel
      Left = 5
      Top = 9
      Width = 38
      Height = 13
      Caption = 'Tanggal'
      Transparent = True
    end
    object Label3: TLabel
      Left = 186
      Top = 9
      Width = 42
      Height = 13
      Caption = 'Tallyman'
      Transparent = True
    end
    object dtTglTally: TcxDateEdit
      Left = 59
      Top = 6
      TabOrder = 0
      Width = 121
    end
    object dtTallyMan: TcxExtLookupComboBox
      Left = 248
      Top = 6
      TabOrder = 1
      Width = 145
    end
  end
  object mdPrevTallySheet: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = mdPrevTallySheetBeforePost
    AfterPost = mdPrevTallySheetAfterPost
    OnNewRecord = mdPrevTallySheetNewRecord
    Left = 136
    Top = 112
    object mdPrevTallySheetNo: TIntegerField
      FieldName = 'No'
    end
    object mdPrevTallySheetNoPalet: TStringField
      FieldName = 'NoPalet'
    end
    object mdPrevTallySheetQty: TIntegerField
      FieldName = 'Qty'
    end
    object mdPrevTallySheetM3: TFloatField
      FieldName = 'M3'
    end
    object mdPrevTallySheetDRata: TFloatField
      FieldName = 'DRata'
    end
    object mdPrevTallySheetT: TFloatField
      FieldName = 'T'
    end
    object mdPrevTallySheetL: TFloatField
      FieldName = 'L'
    end
    object mdPrevTallySheetP: TFloatField
      FieldName = 'P'
    end
    object mdPrevTallySheetD1: TFloatField
      FieldName = 'D1'
    end
    object mdPrevTallySheetD2: TFloatField
      FieldName = 'D2'
    end
  end
  object dsPrevTallySheetlGrade: TDataSource
    DataSet = qryPrevTallySheet
    Left = 232
    Top = 112
  end
  object qryPrevTallySheet: TADOQuery
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
      
        'left join GradeResultHd b on a.GradeResultIdRef = b.GradeResultI' +
        'd'
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
    DataSet = mdPrevTallySheet
    OnDataChange = dsmdPrevTallySheetlGradeDataChange
    Left = 168
    Top = 112
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
    DataSet = qryPrevItemPeriode
    Left = 168
    Top = 144
  end
  object qryTallySheet: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TallySheetCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from TallySheet'
      'where TallySheetCode=:TallySheetCode')
    Left = 104
    Top = 112
  end
  object qryPrevItemPeriode: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'noperiode'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select distinct c.itemid,d.itemname '
      'from kayumuatdt a '
      'left join kayumuathd b on a.kayumuatid=b.kayumuatid'
      
        'left join graderesultinvoicedt c on a.tallysheetgradeid=c.tallys' +
        'heetgradeid'
      'left join item d on c.itemid=d.itemid '
      'where b.noperiode=:noperiode')
    Left = 136
    Top = 144
  end
  object InsqryTallySheetHistory: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TallySheetId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'warehouseid'
        Attributes = [paSigned, paNullable]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'transactiondate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'referenceid'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'statustransaction'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'Insert into TallySheethistory(tallysheetid,warehouseid,transacti' +
        'ondate,referenceid,statustransaction)'
      
        'values (:tallysheetid,:warehouseid,:transactiondate,:referenceid' +
        ',:statustransaction)')
    Left = 192
    Top = 232
  end
  object InsqryTallySheetDt: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'tallysheetid'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'no'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 't'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        NumericScale = 4
        Precision = 10
        Size = 19
        Value = Null
      end
      item
        Name = 'l'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        NumericScale = 4
        Precision = 10
        Size = 19
        Value = Null
      end
      item
        Name = 'p'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        NumericScale = 4
        Precision = 10
        Size = 19
        Value = Null
      end
      item
        Name = 'qty'
        Attributes = [paSigned]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'm3'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        NumericScale = 4
        Precision = 10
        Size = 19
        Value = Null
      end
      item
        Name = 'berat'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        NumericScale = 2
        Precision = 8
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'Insert into TallySheetdt(tallysheetid,no,t,l,p,qty,m3,berat)'
      'values (:tallysheetid,:no,:t,:l,:p,:qty,:m3,:berat)')
    Left = 336
    Top = 192
  end
  object updqryTallySheet: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TallySheetId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'update tallysheet'
      
        'set totalqty=(select sum(qty) from tallysheetdt where tallysheet' +
        'id=tallysheet.tallysheetid),'
      
        'totalvolume=(select sum(m3) from tallysheetdt where tallysheetid' +
        '=tallysheet.tallysheetid)'
      'where tallysheetid=:tallysheetid')
    Left = 192
    Top = 296
  end
end
