inherited fmHasilGrade: TfmHasilGrade
  Caption = 'Hasil Grade'
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
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 105
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object pnlLeft: TPanel
            Left = 0
            Top = 0
            Width = 340
            Height = 105
            Align = alLeft
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object lblPurchaseOrderId: TLabel
              Left = 9
              Top = 78
              Width = 46
              Height = 13
              Caption = 'No Grade'
              Transparent = True
            end
            object lblVendorPurchaseOrderId: TLabel
              Left = 9
              Top = 60
              Width = 39
              Height = 13
              Caption = 'Tanggal'
              Transparent = True
            end
            object lblNoPO: TLabel
              Left = 9
              Top = 6
              Width = 32
              Height = 13
              Caption = 'No PO'
              Transparent = True
            end
            object dblcVendorId: TcxDBExtLookupComboBox
              Left = 60
              Top = 21
              BeepOnEnter = False
              DataBinding.DataField = 'PurchaseOrderCode'
              DataBinding.DataSource = dsDefault
              Properties.View = cgvPrevPurchaseOrder
              Properties.KeyFieldNames = 'PurchaseOrderCode'
              Properties.ListFieldItem = cgvPrevPurchaseOrderVendorName
              TabOrder = 1
              Width = 273
            end
            object dbeGradeDate: TcxDBDateEdit
              Left = 60
              Top = 57
              BeepOnEnter = False
              DataBinding.DataField = 'GradeResultDate'
              DataBinding.DataSource = dsDefault
              Properties.DateButtons = [btnToday]
              Properties.Kind = ckDateTime
              TabOrder = 3
              Width = 157
            end
            object dblcPurchaseOrderId: TcxDBExtLookupComboBox
              Left = 60
              Top = 3
              BeepOnEnter = False
              DataBinding.DataField = 'PurchaseOrderCode'
              DataBinding.DataSource = dsDefault
              Properties.View = cgvPrevPurchaseOrder
              Properties.KeyFieldNames = 'PurchaseOrderCode'
              Properties.ListFieldItem = cgvPrevPurchaseOrderPurchaseOrderCode
              TabOrder = 0
              Width = 273
            end
            object dbeGradeResultCode: TcxDBButtonEdit
              Left = 60
              Top = 75
              BeepOnEnter = False
              DataBinding.DataField = 'GradeResultCode'
              DataBinding.DataSource = dsDefault
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.CharCase = ecUpperCase
              TabOrder = 4
              Width = 273
            end
            object dblcMaterial: TcxDBExtLookupComboBox
              Left = 60
              Top = 39
              BeepOnEnter = False
              DataBinding.DataField = 'PurchaseOrderCode'
              DataBinding.DataSource = dsDefault
              Properties.View = cgvPrevPurchaseOrder
              Properties.KeyFieldNames = 'PurchaseOrderCode'
              Properties.ListFieldItem = cgvPrevPurchaseOrderMaterialName
              TabOrder = 2
              Width = 157
            end
          end
          object pcBody: TcxPageControl
            Left = 340
            Top = 0
            Width = 400
            Height = 105
            ActivePage = tsInfo
            Align = alClient
            Images = dmGlobal.imgIconTabSheet
            NavigatorPosition = npLeftBottom
            Options = [pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
            Rotate = True
            TabOrder = 1
            TabPosition = tpRight
            ClientRectBottom = 105
            ClientRectRight = 362
            ClientRectTop = 0
            object tsInfo: TcxTabSheet
              ImageIndex = 0
              object lblGrader: TLabel
                Left = 6
                Top = 42
                Width = 32
                Height = 13
                Caption = 'Grader'
                Transparent = True
              end
              object lblTallyman: TLabel
                Left = 6
                Top = 24
                Width = 42
                Height = 13
                Caption = 'Tallyman'
                Transparent = True
              end
              object lblKoorGrader: TLabel
                Left = 7
                Top = 60
                Width = 57
                Height = 13
                Caption = 'Koor Grader'
                Transparent = True
              end
              object lblLocation: TLabel
                Left = 7
                Top = 6
                Width = 31
                Height = 13
                Caption = 'Lokasi'
                Transparent = True
              end
              object dblcGrader: TcxDBExtLookupComboBox
                Left = 70
                Top = 39
                BeepOnEnter = False
                DataBinding.DataField = 'GraderId'
                DataBinding.DataSource = dsDefault
                Properties.View = dmInventory.cgvPrevGrader
                Properties.KeyFieldNames = 'GraderId'
                Properties.ListFieldItem = dmInventory.cgvPrevGraderGraderName
                TabOrder = 1
                Width = 202
              end
              object dblcGraderCoor: TcxDBExtLookupComboBox
                Left = 70
                Top = 57
                BeepOnEnter = False
                DataBinding.DataField = 'KoorGraderId'
                DataBinding.DataSource = dsDefault
                Properties.View = dmInventory.cgvPrevKoorGrader
                Properties.KeyFieldNames = 'KoorGraderId'
                Properties.ListFieldItem = dmInventory.cgvPrevKoorGraderKoorGraderName
                TabOrder = 2
                Width = 202
              end
              object dblcTallyman: TcxDBExtLookupComboBox
                Left = 70
                Top = 21
                BeepOnEnter = False
                DataBinding.DataField = 'TallymanId'
                DataBinding.DataSource = dsDefault
                Properties.View = dmInventory.cgvPrevTallyman
                Properties.KeyFieldNames = 'TallymanId'
                Properties.ListFieldItem = dmInventory.cgvPrevTallymanTallymanName
                TabOrder = 0
                Width = 202
              end
              object dbeLokasi: TcxDBMRUEdit
                Left = 70
                Top = 3
                BeepOnEnter = False
                DataBinding.DataField = 'Lokasi'
                DataBinding.DataSource = dsDefault
                TabOrder = 3
                Width = 273
              end
            end
            object tsInternalMemo: TcxTabSheet
              Hint = 'Memo Internal'
              ImageIndex = 2
              object dbmInternalMemo: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'internalmemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 105
                Width = 362
              end
            end
            object tsStatementMemo: TcxTabSheet
              Hint = 'Memo Tercetak'
              ImageIndex = 3
              object dbmStatementMemo: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'statementmemo'
                DataBinding.DataSource = dsDefault
                Properties.ScrollBars = ssVertical
                TabOrder = 0
                Height = 105
                Width = 362
              end
            end
            object tsDipendencies: TcxTabSheet
              Hint = 'Ketergantungan'
              ImageIndex = 4
              object cgDependencies: TcxGrid
                Left = 0
                Top = 0
                Width = 362
                Height = 105
                Align = alClient
                TabOrder = 0
                object cgvDependencies: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.First.Visible = False
                  NavigatorButtons.PriorPage.Visible = False
                  NavigatorButtons.Prior.Visible = False
                  NavigatorButtons.Next.Visible = False
                  NavigatorButtons.NextPage.Visible = False
                  NavigatorButtons.Last.Visible = False
                  NavigatorButtons.Insert.Visible = False
                  NavigatorButtons.Delete.Visible = False
                  NavigatorButtons.Edit.Visible = False
                  NavigatorButtons.Post.Visible = False
                  NavigatorButtons.Cancel.Visible = False
                  NavigatorButtons.SaveBookmark.Visible = False
                  NavigatorButtons.GotoBookmark.Visible = False
                  NavigatorButtons.Filter.Visible = False
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.Navigator = True
                  OptionsView.GroupByBox = False
                  object cgvDependenciesTransaction: TcxGridDBColumn
                    Caption = 'Transaksi'
                    Options.Filtering = False
                  end
                  object cgvDependenciesCode: TcxGridDBColumn
                    Caption = 'Kode'
                    Options.Filtering = False
                  end
                  object cgvDependenciesDate: TcxGridDBColumn
                    Caption = 'Tanggal'
                    Options.Filtering = False
                  end
                end
                object cgDependenciesLevel1: TcxGridLevel
                  GridView = cgvDependencies
                end
              end
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
      object cgMasterSetup: TcxGrid
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
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
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
          object cgvPrevDisplayGradeResultCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'GradeResultCode'
          end
          object cgvPrevDisplayGradeResultDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'GradeResultDate'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cgvPrevDisplayPurchaseOrderCode: TcxGridDBColumn
            Caption = 'PO'
            DataBinding.FieldName = 'GradeResultCode'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = cgvPrevPurchaseOrder
            Properties.KeyFieldNames = 'PurchaseOrderCode'
            Properties.ListFieldItem = cgvPrevPurchaseOrderPurchaseOrderCode
            Visible = False
          end
          object cgvPrevDisplayTallymanId: TcxGridDBColumn
            Caption = 'Tallyman'
            DataBinding.FieldName = 'TallymanId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevTallyman
            Properties.KeyFieldNames = 'TallymanId'
            Properties.ListFieldItem = dmInventory.cgvPrevTallymanTallymanName
            Visible = False
          end
          object cgvPrevDisplayKoorGraderId: TcxGridDBColumn
            Caption = 'Koor Grader'
            DataBinding.FieldName = 'KoorGraderId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Visible = False
          end
          object cgvPrevDisplayGraderId: TcxGridDBColumn
            Caption = 'Grader'
            DataBinding.FieldName = 'GraderId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevGrader
            Properties.KeyFieldNames = 'GraderId'
            Properties.ListFieldItem = dmInventory.cgvPrevGraderGraderName
            Visible = False
          end
          object cgvPrevDisplayLokasi: TcxGridDBColumn
            DataBinding.FieldName = 'Lokasi'
            Visible = False
          end
          object cgvPrevDisplayPaletCount: TcxGridDBColumn
            DataBinding.FieldName = 'PaletCount'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevDisplayPaletLoaded: TcxGridDBColumn
            DataBinding.FieldName = 'PaletLoaded'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevDisplayPaletOutstanding: TcxGridDBColumn
            DataBinding.FieldName = 'PaletOutstanding'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevDisplayEmployeeId: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'EmployeeId'
            Visible = False
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryGradeResultHd
  end
  object dsGradeResultInvoiceDt: TDataSource
    DataSet = qryGradeResultInvoiceDt
    Left = 168
    Top = 144
  end
  object dsPrevItemPO: TDataSource
    DataSet = qryPrevItemPO
    Left = 168
    Top = 272
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 104
    Top = 240
    object cgvPrevPurchaseOrder: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevPurchaseOrder
      DataController.KeyFieldNames = 'PurchaseOrderCode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevPurchaseOrderVendorId: TcxGridDBColumn
        Caption = 'Kode Supplier'
        DataBinding.FieldName = 'Vendorid'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPurchaseOrderVendorName: TcxGridDBColumn
        Caption = 'Supplier'
        DataBinding.FieldName = 'Vendorname'
      end
      object cgvPrevPurchaseOrderPurchaseOrderCode: TcxGridDBColumn
        Caption = 'No PO'
        DataBinding.FieldName = 'purchaseordercode'
      end
      object cgvPrevPurchaseOrderMaterialId: TcxGridDBColumn
        DataBinding.FieldName = 'MaterialId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPurchaseOrderMaterialName: TcxGridDBColumn
        Caption = 'Material'
        DataBinding.FieldName = 'MaterialName'
      end
    end
    object cgvPrevItemPO: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItemPO
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevItemPOItemId: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemid'
      end
      object cgvPrevItemPOItemName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'itemname'
      end
    end
    object cgvPrevTallySheetGrade: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevTallySheetGrade
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvTallySheetGradeTallySheetGradeCode: TcxGridDBColumn
        Caption = 'No Tally'
        DataBinding.FieldName = 'TallySheetGradeCode'
      end
      object cgvTallySheetGradeTotalQtyInv: TcxGridDBColumn
        DataBinding.FieldName = 'TotalQtyInv'
      end
      object cgvTallySheetGradeTotalLuasInv: TcxGridDBColumn
        DataBinding.FieldName = 'TotalLuasInv'
      end
      object cgvTallySheetGradeTotalVolumeInv: TcxGridDBColumn
        DataBinding.FieldName = 'TotalVolumeInv'
      end
      object cgvTallySheetGradeTotalBeratInv: TcxGridDBColumn
        DataBinding.FieldName = 'TotalBeratInv'
      end
      object cgvTallySheetGradeTotalQtyCut: TcxGridDBColumn
        DataBinding.FieldName = 'TotalQtyCut'
      end
      object cgvTallySheetGradeTotalLuasCut: TcxGridDBColumn
        DataBinding.FieldName = 'TotalLuasCut'
      end
      object cgvTallySheetGradeTotalVolumeCut: TcxGridDBColumn
        DataBinding.FieldName = 'TotalVolumeCut'
      end
      object cgvTallySheetGradeTotalBeratCut: TcxGridDBColumn
        DataBinding.FieldName = 'TotalBeratCut'
      end
      object cgvTallySheetGradeGradeResultCode: TcxGridDBColumn
        DataBinding.FieldName = 'GradeResultCode'
      end
      object cgvTallySheetGradeFlagMuat: TcxGridDBColumn
        DataBinding.FieldName = 'FlagMuat'
      end
    end
  end
  object qryGradeResultHd: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryGradeResultHdBeforePost
    CommandText = 
      'select *'#13#10'from GradeResultHd'#13#10'where GradeResultDate between :Sta' +
      'rtDate and :EndDate'#13#10'and StatusGradeResult=:StatusGradeResult'
    Parameters = <
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'StatusGradeResult'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    Left = 136
    Top = 112
  end
  object dsGradeResultCuttingDt: TDataSource
    DataSet = qryGradeResultCuttingDt
    Left = 168
    Top = 176
  end
  object dsPrevPurchaseOrder: TDataSource
    DataSet = qryPrevPurchaseOrder
    Left = 168
    Top = 240
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
      '  a.ItemId, a.No, a.Price,'
      '  b.TCut, b.LCut, b.PCut, '
      '  b.TInv, b.TMaxInv, b.LInv, b.LMaxInv, b.PInv,PMaxInv,'
      '  b.LInterval, b.PInterval, b.TInterval'
      'from PurchaseOrderDt a '
      'left join PurchaseOrderSpec b on a.SpecId=b.SpecId'
      'where a.PurchaseOrderCode = :PurchaseOrderCode'
      'and a.ItemId=:ItemId'
      'order by b.TInv desc, b.TMaxInv desc, b.LInv desc, '
      '  b.LMaxInv desc, b.PInv desc, PMaxInv desc')
    Left = 136
    Top = 208
  end
  object qryCounter: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    BeforePost = qryGradeResultHdBeforePost
    Parameters = <
      item
        Name = 'prefix'
        Size = -1
        Value = Null
      end
      item
        Name = 'prefix'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select lastno+counter '
      'from'
      '('
      'select :prefix lastno,'
      'case'
      
        ' when (len(cast(cast(right(graderesultcode,4) as integer)+1 as v' +
        'archar)))=1 then '#39'000'#39'+cast(cast(right(graderesultcode,4) as int' +
        'eger)+1 as varchar)'
      
        ' when (len(cast(cast(right(graderesultcode,4) as integer)+1 as v' +
        'archar)))=2 then '#39'00'#39'+cast(cast(right(graderesultcode,4) as inte' +
        'ger)+1 as varchar)'
      
        ' when (len(cast(cast(right(graderesultcode,4) as integer)+1 as v' +
        'archar)))=3 then '#39'0'#39'+cast(cast(right(graderesultcode,4) as integ' +
        'er)+1 as varchar)'
      'end as counter'
      'from graderesulthd'
      'where substring(graderesultcode,1,8)=:prefix'
      ') a'
      '')
    Left = 168
    Top = 208
  end
  object qryPrevPurchaseOrder: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StatusPurchaseOrder'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'PurchaseOrderCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  a.PurchaseOrderCode, b.VendorId, b.VendorName,'
      '  c.MaterialId, c.MaterialName'
      'from PurchaseOrderHd a '
      'left join Vendor b on a.VendorId = b.VendorId '
      'left join Material c on a.MaterialId = c.MaterialId'
      
        'where (a.FlagClose='#39'0'#39' and a.StatusPurchaseOrder = :StatusPurcha' +
        'seOrder) '
      'or a.PurchaseOrderCode =:PurchaseOrderCode')
    Left = 136
    Top = 240
  end
  object qryPrevItemPO: TADOQuery
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
      end>
    SQL.Strings = (
      'select '
      '  a.ItemId, b.ItemName'
      'from PurchaseOrderDt a '
      'left join Item b on a.ItemId = b.ItemId'
      'where a.PurchaseOrderCode = :PurchaseOrderCode')
    Left = 136
    Top = 272
  end
  object qryGradeResultInvoiceDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryGradeResultInvoiceDtBeforeInsert
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'GradeResultCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from GradeResultInvoiceDt'
      'where GradeResultCode = :GradeResultCode')
    Left = 136
    Top = 144
  end
  object qryGradeResultCuttingDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryGradeResultCuttingDtBeforeInsert
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'GradeResultCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from GradeResultCuttingDt'
      'where GradeResultCode = :GradeResultCode')
    Left = 136
    Top = 176
  end
  object qryPrevTallySheetGrade: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'GradeResultCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from TallySheetGrade'
      'where GradeResultCode = :GradeResultCode')
    Left = 136
    Top = 304
  end
  object dsPrevTallySheetGrade: TDataSource
    DataSet = qryPrevTallySheetGrade
    Left = 168
    Top = 304
  end
end
