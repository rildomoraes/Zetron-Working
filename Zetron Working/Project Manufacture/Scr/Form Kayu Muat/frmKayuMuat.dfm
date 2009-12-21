inherited fmKayuMuat: TfmKayuMuat
  Caption = 'Kayu Muat'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 391
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        ExplicitLeft = -3
        ExplicitTop = -2
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 81
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          ExplicitLeft = -1
          ExplicitTop = -2
          object lblPurchaseOrderId: TLabel
            Left = 7
            Top = 6
            Width = 41
            Height = 13
            Caption = 'No Muat'
            Transparent = True
          end
          object lblVendorPurchaseOrderId: TLabel
            Left = 7
            Top = 24
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label5: TLabel
            Left = 281
            Top = 24
            Width = 58
            Height = 13
            Caption = 'Lokasi Muat'
            Transparent = True
          end
          object Label3: TLabel
            Left = 281
            Top = 42
            Width = 76
            Height = 13
            Caption = 'Tujuan Bongkar'
            Transparent = True
          end
          object Label6: TLabel
            Left = 281
            Top = 6
            Width = 51
            Height = 13
            Caption = 'Jenis Kayu'
            Transparent = True
          end
          object Label2: TLabel
            Left = 7
            Top = 42
            Width = 32
            Height = 13
            Caption = 'No PO'
            Transparent = True
          end
          object lblVendor: TLabel
            Left = 7
            Top = 60
            Width = 38
            Height = 13
            Caption = 'Supplier'
            Transparent = True
          end
          object dbeKayuMuatDate: TcxDBDateEdit
            Left = 62
            Top = 21
            BeepOnEnter = False
            DataBinding.DataField = 'KayuMuatDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 1
            Width = 110
          end
          object dbeNoMuat: TcxDBTextEdit
            Left = 62
            Top = 4
            BeepOnEnter = False
            DataBinding.DataField = 'KayuMuatCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 202
          end
          object dbeLokasiMuat: TcxDBTextEdit
            Left = 369
            Top = 22
            BeepOnEnter = False
            DataBinding.DataField = 'LokasiMuat'
            DataBinding.DataSource = dsDefault
            TabOrder = 5
            Width = 202
          end
          object dblcPOId: TcxDBExtLookupComboBox
            Left = 62
            Top = 39
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderCode'
            DataBinding.DataSource = dsDefault
            Properties.View = cgvPrevPO
            Properties.KeyFieldNames = 'PurchaseOrderId'
            Properties.ListFieldItem = cgvPrevPOPurchaseOrderCode
            TabOrder = 2
            Width = 202
          end
          object dblcJenisKayu: TcxDBExtLookupComboBox
            Left = 369
            Top = 4
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderCode'
            DataBinding.DataSource = dsDefault
            Properties.View = cgvPrevPO
            Properties.KeyFieldNames = 'PurchaseOrderId'
            Properties.ListFieldItem = cgvPrevPOMaterialName
            TabOrder = 4
            Width = 202
          end
          object dblcVendorId: TcxDBExtLookupComboBox
            Left = 62
            Top = 57
            BeepOnEnter = False
            DataBinding.DataField = 'PurchaseOrderCode'
            DataBinding.DataSource = dsDefault
            Properties.View = cgvPrevPO
            Properties.KeyFieldNames = 'PurchaseOrderId'
            Properties.ListFieldItem = cgvPrevPOVendorName
            TabOrder = 3
            Width = 202
          end
          object dblcWarehouseId: TcxDBExtLookupComboBox
            Left = 369
            Top = 40
            BeepOnEnter = False
            DataBinding.DataField = 'WarehouseId'
            DataBinding.DataSource = dsDefault
            TabOrder = 6
            Width = 202
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 304
          Width = 740
          Height = 83
          ActivePage = tsExternalMemo
          Align = alBottom
          TabOrder = 1
          TabPosition = tpBottom
          ClientRectBottom = 59
          ClientRectRight = 740
          ClientRectTop = 0
          object tsExternalMemo: TcxTabSheet
            Caption = 'Memo External'
            ImageIndex = 1
            object dbmStatementMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'statementmemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 59
              Width = 740
            end
          end
          object tsInternalMemo: TcxTabSheet
            Caption = 'Memo Internal'
            ImageIndex = 2
            object dbeMemoInternal: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'InternalMemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 59
              Width = 740
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 391
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Nota = 0'
              Kind = skCount
              FieldName = 'salesinvoiceid'
              Column = cgvPrevDisplayKayuMuatCode
            end
            item
              Format = 'Total = #,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'totalamount'
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'PurchaseOrderCode'
              Column = cgvPrevDisplayKayuMuatCode
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cgvPrevDisplayKayuMuatId: TcxGridDBColumn
            DataBinding.FieldName = 'KayuMuatId'
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevDisplayStatusApprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'StatusApprove'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = dmGlobal.imgIcon16
            Properties.Items = <
              item
                Description = 'Unposting'
                ImageIndex = 7
                Value = '0'
              end
              item
                Description = 'Posting'
                ImageIndex = 6
                Value = '1'
              end
              item
                Description = 'Void'
                ImageIndex = 8
                Value = '2'
              end>
          end
          object cgvPrevDisplayKayuMuatCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'KayuMuatCode'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cgvPrevDisplayKayuMuatDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'KayuMuatDate'
          end
          object cgvPrevDisplayLokasiMuat: TcxGridDBColumn
            Caption = 'Muat'
            DataBinding.FieldName = 'LokasiMuat'
            Visible = False
          end
          object cgvPrevDisplayWarehouseId: TcxGridDBColumn
            Caption = 'Bongkar'
            DataBinding.FieldName = 'WarehouseId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryKayuMuatHd
  end
  object qryKayuMuatHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryKayuMuatHdBeforePost
    CommandText = 
      'select *'#13#10'from KayuMuatHd'#13#10'where KayuMuatDate between :StartDate' +
      ' and :EndDate'#13#10'and StatusKayuMuat = :StatusKayuMuat'#13#10
    Parameters = <
      item
        Name = 'StartDate'
        DataType = ftDateTime
        Size = 12
        Value = 39692d
      end
      item
        Name = 'EndDate'
        DataType = ftDateTime
        Size = 12
        Value = 39692d
      end
      item
        Name = 'StatusKayuMuat'
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    Left = 136
    Top = 112
  end
  object dsDefaultDt: TDataSource
    DataSet = qryKayuMuatDt
    Left = 168
    Top = 144
  end
  object qryPrevPO: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  a.*, '#13#10'  b.VendorCode, b.VendorName, '#13#10'  c.MaterialCo' +
      'de, c.MaterialName'#13#10'from PurchaseOrderHd a '#13#10'left join Vendor b ' +
      'on a.Vendorid=b.Vendorid '#13#10'left join Material c on a.Materialid=' +
      'c.MaterialId'#13#10'where (a.FlagClose='#39'0'#39' and a.StatusPurchaseOrder =' +
      ' :StatusPurchaseOrder) '#13#10'or a.PurchaseOrderCode=:PurchaseOrderCo' +
      'de'#13#10#13#10
    Parameters = <
      item
        Name = 'StatusPurchaseOrder'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '1'
      end
      item
        Name = 'PurchaseOrderCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    Left = 136
    Top = 176
  end
  object dsPrevPO: TDataSource
    DataSet = qryPrevPO
    Left = 168
    Top = 176
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 104
    Top = 176
    object cgvPrevPO: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.Visible = True
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrevPO
      DataController.KeyFieldNames = 'PurchaseOrderId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPOPurchaseOrderCode: TcxGridDBColumn
        Caption = 'PO'
        DataBinding.FieldName = 'PurchaseOrderCode'
      end
      object cgvPrevPOPurchaseOrderDate: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'PurchaseOrderDate'
      end
      object cgvPrevPOVendorCode: TcxGridDBColumn
        Caption = 'Kode Supplier'
        DataBinding.FieldName = 'VendorCode'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPOVendorName: TcxGridDBColumn
        Caption = 'Supplier'
        DataBinding.FieldName = 'VendorName'
      end
      object cgvPrevPOMaterialCode: TcxGridDBColumn
        Caption = 'Kode Material'
        DataBinding.FieldName = 'MaterialCode'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPOMaterialName: TcxGridDBColumn
        Caption = 'Material'
        DataBinding.FieldName = 'MaterialName'
      end
    end
    object cgvPrevTallySheetGrade: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevTallySheetGrade
      DataController.KeyFieldNames = 'TallySheetGradeId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevTallySheetGradeGradeResultCode: TcxGridDBColumn
        Caption = 'Hasil Grade'
        DataBinding.FieldName = 'GradeResultCode'
      end
      object cgvPrevTallySheetGradeGradeResultDate: TcxGridDBColumn
        Caption = 'Tgl Grade'
        DataBinding.FieldName = 'GradeResultDate'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvPrevTallySheetGradeTallySheetGradeCode: TcxGridDBColumn
        Caption = 'No Tally'
        DataBinding.FieldName = 'TallySheetGradeCode'
      end
      object cgvPrevTallySheetGradeTotalQtyInv: TcxGridDBColumn
        Caption = 'Qty Invoice'
        DataBinding.FieldName = 'TotalQtyInv'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPrevTallySheetGradeTotalLuasInv: TcxGridDBColumn
        DataBinding.FieldName = 'TotalLuasInv'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevTallySheetGradeTotalVolumeInv: TcxGridDBColumn
        Caption = 'M3 Invoice'
        DataBinding.FieldName = 'TotalVolumeInv'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPrevTallySheetGradeTotalQtyCut: TcxGridDBColumn
        Caption = 'Qty Cutting'
        DataBinding.FieldName = 'TotalQtyCut'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPrevTallySheetGradeTotalLuasCut: TcxGridDBColumn
        DataBinding.FieldName = 'TotalLuasCut'
        PropertiesClassName = 'TcxCalcEditProperties'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevTallySheetGradeTotalVolumeCut: TcxGridDBColumn
        Caption = 'M3 Cutting'
        DataBinding.FieldName = 'TotalVolumeCut'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPrevTallySheetGradeLokasi: TcxGridDBColumn
        Caption = 'Lokasi Grade'
        DataBinding.FieldName = 'Lokasi'
      end
      object cgvPrevTallySheetGradeFlagMuat: TcxGridDBColumn
        Caption = 'Termuat'
        DataBinding.FieldName = 'FlagMuat'
        Visible = False
        VisibleForCustomization = False
      end
    end
  end
  object qryPrevTallySheetGrade: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    CommandText = 
      'select '#13#10'  a.*, '#13#10'  b.GradeResultCode, b.GradeResultDate, b.Loka' +
      'si'#13#10'from TallySheetGrade a '#13#10'left join GradeResultHd b on a.Grad' +
      'eResultCode = b.GradeResultCode'#13#10'where a.FlagMuat = '#39'0'#39#13#10'and b.S' +
      'tatusGradeResult = :StatusGradeResult'#13#10'or a.TallySheetGradeCode ' +
      'in ('#13#10'  select x.TallySheetGradeCode '#13#10'  from KayuMuatDt x'#13#10'  le' +
      'ft join KayuMuatHd y on x.KayuMuatCode = y.KayuMuatCode'#13#10'  where' +
      ' y.KayuMuatCode = :KayuMuatCode)'
    Parameters = <
      item
        Name = 'StatusGradeResult'
        Size = -1
        Value = Null
      end
      item
        Name = 'KayuMuatCode'
        Size = -1
        Value = Null
      end>
    Left = 136
    Top = 208
  end
  object dsPrevTallySheetGrade: TDataSource
    DataSet = qryPrevTallySheetGrade
    Left = 168
    Top = 208
  end
  object qryKayuMuatDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'KayuMuatCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from KayuMuatDt'
      'where KayuMuatCode = :KayuMuatCode')
    Left = 136
    Top = 144
  end
end
