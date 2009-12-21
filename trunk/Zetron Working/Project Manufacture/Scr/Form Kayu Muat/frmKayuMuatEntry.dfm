object fmKayuMuatEntry: TfmKayuMuatEntry
  Left = 0
  Top = 0
  Caption = 'Entry Kayu Muat'
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
  object cgKayuMuatEntry: TcxGrid
    Left = 0
    Top = 50
    Width = 685
    Height = 321
    Align = alClient
    TabOrder = 1
    object cgvKayuMuatEntry: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevTallySheetlGrade
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          FieldName = 'TotalQtyCut'
          Column = cgvKayuMuatEntryTallyTotalQtyCut
        end
        item
          Kind = skSum
          Position = spFooter
          FieldName = 'TotalQtyInv'
          Column = cgvKayuMuatEntryTallyTotalQtyInv
        end
        item
          Kind = skSum
          Position = spFooter
          FieldName = 'TotalVolumeCut'
          Column = cgvKayuMuatEntryTallyTotalVolumeCut
        end
        item
          Kind = skSum
          Position = spFooter
          FieldName = 'TotalVolumeInv'
          Column = cgvKayuMuatEntryTallyTotalVolumeInv
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'FlagMuat'
          Column = cgvKayuMuatEntryCheckMuat
        end
        item
          Kind = skSum
          FieldName = 'TotalVolumeCut'
          Column = cgvKayuMuatEntryTallyTotalVolumeCut
        end
        item
          Kind = skSum
          FieldName = 'TotalVolumeInv'
          Column = cgvKayuMuatEntryTallyTotalVolumeInv
        end
        item
          Kind = skSum
          FieldName = 'TotalQtyCut'
          Column = cgvKayuMuatEntryTallyTotalQtyCut
        end
        item
          Kind = skSum
          FieldName = 'TotalQtyInv'
          Column = cgvKayuMuatEntryTallyTotalQtyInv
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Navigator = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cgvKayuMuatEntryCheckMuat: TcxGridDBColumn
        Caption = 'Muat'
        DataBinding.FieldName = 'CheckMuat'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 30
      end
      object cgvKayuMuatEntryGradeResultCode: TcxGridDBColumn
        Caption = 'Hasil Grade'
        DataBinding.FieldName = 'GradeResultCode'
        Visible = False
        GroupIndex = 0
        SortIndex = 0
        SortOrder = soAscending
      end
      object cgvKayuMuatEntryTallySheetGradeCode: TcxGridDBColumn
        Caption = 'No Tally'
        DataBinding.FieldName = 'TallySheetGradeCode'
      end
      object cgvKayuMuatEntryTallyTotalQtyInv: TcxGridDBColumn
        Caption = 'Total Pcs (Inv)'
        DataBinding.FieldName = 'TotalQtyInv'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 80
      end
      object cgvKayuMuatEntryTallyTotalVolumeInv: TcxGridDBColumn
        Caption = 'Total M3 (Inv)'
        DataBinding.FieldName = 'TotalVolumeInv'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 80
      end
      object cgvKayuMuatEntryTallyTotalQtyCut: TcxGridDBColumn
        Caption = 'Total Pcs (Cut)'
        DataBinding.FieldName = 'TotalQtyCut'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 80
      end
      object cgvKayuMuatEntryTallyTotalVolumeCut: TcxGridDBColumn
        Caption = 'Total M3 (Cut)'
        DataBinding.FieldName = 'TotalVolumeCut'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 80
      end
      object cgvKayuMuatEntryGradeResultDate: TcxGridDBColumn
        DataBinding.FieldName = 'GradeResultDate'
      end
      object cgvKayuMuatEntryLokasi: TcxGridDBColumn
        DataBinding.FieldName = 'Lokasi'
      end
      object cgvKayuMuatEntryPurchaseOrderCode: TcxGridDBColumn
        DataBinding.FieldName = 'PurchaseOrderCode'
      end
    end
    object cgKayuMuatEntryLevel1: TcxGridLevel
      Caption = 'Muat'
      GridView = cgvKayuMuatEntry
    end
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 50
    Align = alTop
    TabOrder = 0
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
  object mdPrevTallySheetlGrade: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 168
    Top = 112
  end
  object dsPrevTallySheetlGrade: TDataSource
    DataSet = mdPrevTallySheetlGrade
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
      '  cast( 0 as integer) as CheckMuat, '
      '  a.TallySheetGradeCode,'
      
        '  a.TotalQtyInv, a.TotalVolumeInv, a.TotalQtyCut, a.TotalVolumeC' +
        'ut,'
      '  b.GradeResultCode, b.GradeResultDate, b.Lokasi,'
      '  c.PurchaseOrderCode'
      'from TallySheetGrade a '
      
        'left join GradeResultHd b on a.GradeResultCode = b.GradeResultCo' +
        'de'
      
        'left join PurchaseOrderHd c on b.PurchaseOrderCode = c.PurchaseO' +
        'rderCode'
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
  object qryUpdateTallySheetGrade: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tallysheetgradeid'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'update tallysheetgrade '
      'set flagmuat='#39'1'#39' '
      'where tallysheetgradeid=:tallysheetgradeid')
    Left = 168
    Top = 144
  end
end
