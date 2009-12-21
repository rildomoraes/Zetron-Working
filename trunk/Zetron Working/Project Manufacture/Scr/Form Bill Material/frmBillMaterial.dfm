inherited fmBillMaterial: TfmBillMaterial
  Caption = 'Bill Of Material'
  ClientHeight = 521
  ClientWidth = 692
  ExplicitTop = -43
  ExplicitWidth = 700
  ExplicitHeight = 550
  DesignSize = (
    692
    521)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 692
    ExplicitWidth = 692
  end
  inherited dxDockSite1: TdxDockSite
    Width = 692
    Height = 471
    ExplicitWidth = 692
    ExplicitHeight = 471
    DockType = 0
    OriginalWidth = 692
    OriginalHeight = 471
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 664
      Height = 471
      ExplicitWidth = 664
      ExplicitHeight = 471
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 664
        Height = 471
        ExplicitWidth = 664
        ExplicitHeight = 471
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 664
        Height = 471
        ExplicitWidth = 664
        ExplicitHeight = 471
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 660
          Height = 100
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            660
            100)
          object Label9: TLabel
            Left = 8
            Top = 6
            Width = 34
            Height = 13
            Caption = 'Barang'
            Transparent = True
          end
          object lblCode: TLabel
            Left = 8
            Top = 24
            Width = 39
            Height = 13
            Caption = 'No BoM'
            Transparent = True
          end
          object Label1: TLabel
            Left = 8
            Top = 78
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label6: TLabel
            Left = 8
            Top = 42
            Width = 42
            Height = 13
            Caption = 'Draw No'
            Transparent = True
          end
          object Label2: TLabel
            Left = 328
            Top = 6
            Width = 46
            Height = 13
            Caption = 'Tipe BoM'
            Transparent = True
          end
          object lblEmployeeName: TLabel
            Left = 328
            Top = 23
            Width = 41
            Height = 13
            Caption = 'Pegawai'
            Transparent = True
          end
          object Label3: TLabel
            Left = 8
            Top = 60
            Width = 26
            Height = 13
            Caption = 'Prefix'
            Transparent = True
          end
          object dblcItemIdBOM: TcxDBExtLookupComboBox
            Left = 66
            Top = 4
            BeepOnEnter = False
            DataBinding.DataField = 'ItemId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmInventory.cgvPrevItem
            Properties.KeyFieldNames = 'ItemId'
            Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
            Properties.OnEditValueChanged = dblcItemIdBOMPropertiesEditValueChanged
            TabOrder = 0
            Width = 247
          end
          object dbeBillMaterialNumber: TcxDBTextEdit
            Left = 66
            Top = 22
            BeepOnEnter = False
            DataBinding.DataField = 'BillMaterialNumber'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 247
          end
          object dbeBillMaterialDate: TcxDBDateEdit
            Left = 66
            Top = 76
            BeepOnEnter = False
            DataBinding.DataField = 'BillMaterialDate'
            DataBinding.DataSource = dsDefault
            TabOrder = 4
            Width = 121
          end
          object dbeDrawNo: TcxDBTextEdit
            Left = 66
            Top = 40
            BeepOnEnter = False
            DataBinding.DataField = 'DrawNo'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 247
          end
          object dbmMemo: TcxDBMemo
            Left = 384
            Top = 39
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataBinding.DataField = 'Memo'
            DataBinding.DataSource = dsDefault
            TabOrder = 7
            Height = 56
            Width = 269
          end
          object dblcFlagProtected: TcxDBImageComboBox
            Left = 384
            Top = 3
            DataBinding.DataField = 'FlagProtected'
            DataBinding.DataSource = dsDefault
            Properties.Items = <
              item
                Description = 'Open'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Protected'
                Value = '1'
              end>
            TabOrder = 5
            Width = 185
          end
          object dbeEmployeeId: TcxDBExtLookupComboBox
            Left = 384
            Top = 21
            BeepOnEnter = False
            DataBinding.DataField = 'EmployeeId'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGlobal.cgvPrevEmployee
            Properties.KeyFieldNames = 'EmployeeId'
            Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
            TabOrder = 6
            Width = 185
          end
          object dbePrefixCode: TcxDBTextEdit
            Left = 66
            Top = 58
            BeepOnEnter = False
            DataBinding.DataField = 'PrefixCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            Width = 121
          end
        end
        object dbtBillMaterial: TcxDBTreeList
          Left = 0
          Top = 126
          Width = 612
          Height = 321
          Align = alClient
          Bands = <
            item
              FixedKind = tlbfLeft
            end
            item
            end>
          DataController.DataSource = dsBillMaterialDt
          DataController.ParentField = 'ParentId'
          DataController.KeyField = 'ChildId'
          OptionsBehavior.Sorting = False
          OptionsData.Editing = False
          OptionsData.Deleting = False
          OptionsSelection.CellSelect = False
          OptionsView.Indicator = True
          OptionsView.SimpleCustomizeBox = True
          OptionsView.TreeLineStyle = tllsSolid
          RootValue = -1
          StateImages = imgStateBOM16
          TabOrder = 2
          OnEnter = dbtBillMaterialEnter
          object dbtBillMaterialOrderNoRec: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'OrderNoRec'
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            SortOrder = soAscending
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMaterialOrderNo: TcxDBTreeListColumn
            Visible = False
            Caption.Text = 'No'
            DataBinding.FieldName = 'OrderNo'
            Width = 30
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMaterialItemIdParent: TcxDBTreeListColumn
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevItem
            Properties.KeyFieldNames = 'ItemId'
            Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
            Visible = False
            Caption.Text = 'Induk'
            DataBinding.FieldName = 'Bil_ItemId'
            Width = 100
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMaterialItemId: TcxDBTreeListColumn
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevItem
            Properties.KeyFieldNames = 'ItemId'
            Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
            Caption.Text = 'Bahan'
            DataBinding.FieldName = 'ItemId'
            Width = 153
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMaterialQty: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'Qty'
            Width = 55
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMaterialQtyTotal: TcxDBTreeListColumn
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Caption.Text = 'Qty Total'
            DataBinding.FieldName = 'QtyTotal'
            Width = 55
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMaterialQtyTotalBOM: TcxDBTreeListColumn
            PropertiesClassName = 'TcxCalcEditProperties'
            Caption.Text = 'Qty'
            DataBinding.FieldName = 'QtyTotalBOM'
            Width = 55
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMaterialUnitMeasure: TcxDBTreeListColumn
            Caption.Text = 'Satuan'
            DataBinding.FieldName = 'UnitMeasure'
            Width = 45
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMaterialT: TcxDBTreeListColumn
            PropertiesClassName = 'TcxCalcEditProperties'
            Caption.Text = 'Tebal'
            DataBinding.FieldName = 'T'
            Width = 50
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMaterialL: TcxDBTreeListColumn
            PropertiesClassName = 'TcxCalcEditProperties'
            Caption.Text = 'Lebar'
            DataBinding.FieldName = 'L'
            Width = 50
            Position.ColIndex = 5
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMaterialP: TcxDBTreeListColumn
            PropertiesClassName = 'TcxCalcEditProperties'
            Caption.Text = 'Panjang'
            DataBinding.FieldName = 'P'
            Width = 50
            Position.ColIndex = 6
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMaterialMaterialId: TcxDBTreeListColumn
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.View = dmInventory.cgvPrevMaterial
            Properties.KeyFieldNames = 'MaterialId'
            Properties.ListFieldItem = dmInventory.cgvPrevMaterialMaterialName
            Caption.Text = 'Material'
            DataBinding.FieldName = 'MaterialId'
            Width = 49
            Position.ColIndex = 7
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMaterialM2M3: TcxDBTreeListColumn
            PropertiesClassName = 'TcxCalcEditProperties'
            Caption.Text = 'Qty / M2 / M3 / Kg'
            DataBinding.FieldName = 'TotalDimensi'
            Width = 100
            Position.ColIndex = 8
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMaterialBillMaterialNumber: TcxDBTreeListColumn
            Visible = False
            Caption.Text = 'No BoM'
            DataBinding.FieldName = 'BillMaterialNumber'
            Width = 100
            Position.ColIndex = 9
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object dbtBillMateriaEmployeeId: TcxDBTreeListColumn
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevEmployee
            Properties.KeyFieldNames = 'EmployeeId'
            Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
            Visible = False
            Caption.Text = 'Pegawai'
            DataBinding.FieldName = 'EmployeeId'
            Width = 100
            Position.ColIndex = 10
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
        object pnlRight: TPanel
          Left = 612
          Top = 126
          Width = 48
          Height = 321
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 3
          object Bevel1: TBevel
            Left = 0
            Top = 48
            Width = 48
            Height = 10
            Align = alTop
            Shape = bsSpacer
            ExplicitLeft = 6
            ExplicitTop = 32
          end
          object btnCollapse: TcxButton
            Left = 0
            Top = 250
            Width = 48
            Height = 48
            Align = alTop
            Action = actCollapseAll
            Layout = blGlyphTop
            Spacing = 0
            TabOrder = 1
            ExplicitTop = 192
          end
          object btnEditDt: TcxButton
            Left = 0
            Top = 106
            Width = 48
            Height = 48
            Align = alTop
            Action = actEditDt
            Layout = blGlyphTop
            Spacing = 0
            TabOrder = 2
            ExplicitTop = 48
          end
          object btnInsertDt: TcxButton
            Left = 0
            Top = 58
            Width = 48
            Height = 48
            Align = alTop
            Action = actInsertDt
            Layout = blGlyphTop
            Spacing = 0
            TabOrder = 3
            ExplicitTop = 0
          end
          object btnExpand: TcxButton
            Left = 0
            Top = 202
            Width = 48
            Height = 48
            Align = alTop
            Action = actExpandAll
            Layout = blGlyphTop
            Spacing = 0
            TabOrder = 4
            ExplicitTop = 144
          end
          object btnDeleteDt: TcxButton
            Left = 0
            Top = 154
            Width = 48
            Height = 48
            Align = alTop
            Action = actDeleteDt
            Layout = blGlyphTop
            Spacing = 0
            TabOrder = 5
            ExplicitTop = 96
          end
          object btnShow: TcxButton
            Left = 0
            Top = 0
            Width = 48
            Height = 48
            Align = alTop
            Action = actShow
            Layout = blGlyphTop
            Spacing = 0
            TabOrder = 0
            ExplicitTop = -6
          end
        end
        object pnlBottom: TPanel
          Left = 0
          Top = 447
          Width = 660
          Height = 20
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 4
          object chkShowOrder: TcxCheckBox
            Left = 3
            Top = 2
            Caption = 'Show Order'
            ParentColor = False
            Properties.NullStyle = nssUnchecked
            TabOrder = 0
            Transparent = True
            OnClick = chkShowOrderClick
            Width = 97
          end
          object chkShowRawMaterial: TcxCheckBox
            Left = 114
            Top = 2
            Caption = 'Hide Bahan Baku'
            ParentColor = False
            Properties.NullStyle = nssUnchecked
            TabOrder = 1
            Transparent = True
            OnClick = chkShowRawMaterialClick
            Width = 119
          end
        end
        object pnlTopGrid: TPanel
          Left = 0
          Top = 100
          Width = 660
          Height = 26
          Align = alTop
          TabOrder = 1
          object Label4: TLabel
            Left = 8
            Top = 5
            Width = 283
            Height = 13
            Caption = 'Komposisi dibawah ini adalah jumlah bahan untuk membuat '
            Transparent = True
          end
          object dbeQtyBoM: TcxDBCalcEdit
            Left = 296
            Top = 3
            DataBinding.DataField = 'QtyBOM'
            DataBinding.DataSource = dsDefault
            TabOrder = 0
            Width = 65
          end
          object dbeUnitMeasure: TcxDBExtLookupComboBox
            Left = 360
            Top = 3
            BeepOnEnter = False
            DataBinding.DataField = 'ItemId'
            DataBinding.DataSource = dsDefault
            Properties.Alignment.Horz = taCenter
            Properties.OnInitPopup = dbeUnitMeasurePropertiesInitPopup
            Style.ButtonTransparency = ebtHideInactive
            TabOrder = 1
            Width = 57
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 471
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 449
        Align = alClient
        TabOrder = 0
        OnEnter = cgPrevDisplayEnter
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevDisplayBillMaterialId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'BillMaterialId'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevDisplayBillMaterialName: TcxGridDBColumn
            Caption = 'BoM'
            DataBinding.FieldName = 'BillMaterialNumber'
          end
          object cgvPrevDisplayItemId: TcxGridDBColumn
            Caption = 'Barang'
            DataBinding.FieldName = 'ItemId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevItem
            Properties.KeyFieldNames = 'ItemId'
            Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
          end
          object cgvPrevDisplayFlagProtected: TcxGridDBColumn
            Caption = 'Tipe BoM'
            DataBinding.FieldName = 'FlagProtected'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Open'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Protected'
                Value = '1'
              end>
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = qryBillMaterialHd
  end
  object dsBillMaterialDt: TDataSource [5]
    DataSet = qryPrevBillMaterial
    Left = 168
    Top = 144
  end
  object qryPrevBillMaterial: TADOQuery [6]
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Filter = 'StatusProduction <> '#39'0'#39
    AfterClose = qryPrevBillMaterialAfterClose
    Parameters = <
      item
        Name = 'ItemId'
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = 'QtyBOM'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare'
      '  @ItemId integer,'
      '  @QtyBOM dbo.QuantityPlus;'
      ''
      'set @ItemId = :ItemId;'
      'set @QtyBOM = :QtyBOM;'
      ''
      
        'with #Hierarchical_BOM (OrderNo, OrderNoRec, Bil_ItemId, ItemId,' +
        ' ParentId, ChildId,'
      '  Qty, QtyTotal, FlagProtectedParent, EmployeeId)'
      'as'
      '('
      '  -- Anchor member definition'
      '  select'
      '    a.OrderNo, a.OrderNo as OrderNoRec,'
      '    a.Bil_ItemId, a.ItemId,'
      '    cast(null as numeric(18)) as ParentId, a.RecId as ChildId,'
      '    a.Qty, a.Qty as QtyTotal,'
      '    b.FlagProtected as FlagProtectedParent,'
      '    a.EmployeeId'
      '  from BillMaterialDt a'
      '  left join BillMaterialHd b on a.Bil_ItemId = b.ItemId'
      '  where a.Bil_ItemId = @ItemId'
      ''
      '  union all'
      ''
      '  -- Recursive member definition'
      '  select'
      
        '    a.OrderNo, cast((c.OrderNoRec + '#39'.'#39' + a.OrderNo) as varchar(' +
        '20)) as OrderNoRec,'
      '    a.Bil_ItemId, a.ItemId,'
      '    c.ChildId as ParentId, a.RecId as ChildId,'
      '    a.Qty, (a.Qty * c.QtyTotal) as QtyTotal,'
      '    b.FlagProtected as FlagProtectedParent,'
      '    a.EmployeeId'
      '  from BillMaterialDt a'
      '  inner join BillMaterialHd b on a.Bil_ItemId = b.ItemId'
      '  inner join #Hierarchical_BOM c ON a.Bil_ItemId = c.ItemId'
      ')'
      ''
      '-- Statement that executes the CTE'
      'select'
      
        '  a.OrderNo, a.OrderNoRec, a.Bil_ItemId, a.ItemId, a.ParentId, a' +
        '.ChildId,'
      '  a.Qty, a.QtyTotal,'
      '  (a.QtyTotal * @QtyBOM) as QtyTotalBOM,'
      '  a.FlagProtectedParent, a.EmployeeId,'
      '  b.BillMaterialNumber,'
      '  (case'
      '    when b.BillMaterialNumber is null then 0'
      '    else 1'
      '  end) as FlagHasBOM,'
      '  c.T, c.L, c.P,'
      '  (case'
      '    when c.StatusDimensi = '#39'0'#39' then (a.QtyTotal * @QtyBOM)'
      
        '    when c.StatusDimensi = '#39'1'#39' then (c.M2 * a.QtyTotal * @QtyBOM' +
        ')'
      
        '    when c.StatusDimensi = '#39'2'#39' then (c.M3 * a.QtyTotal * @QtyBOM' +
        ')'
      
        '    when c.StatusDimensi = '#39'3'#39' then (c.Berat * a.QtyTotal * @Qty' +
        'BOM)'
      '  end) as TotalDimensi,'
      
        '  c.MaterialId, c.UnitMeasure, b.FlagProtected, c.StatusProducti' +
        'on'
      'from #Hierarchical_BOM a'
      'left join BillMaterialHd b on a.ItemId = b.ItemId'
      'left join Item c on a.ItemId = c.ItemId'
      'order by a.OrderNoRec')
    Left = 136
    Top = 144
  end
  object imgStateBOM16: TImageList [7]
    DrawingStyle = dsTransparent
    Left = 233
    Top = 113
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80000000000000000000000000000000000000000000000000006D8893006D88
      93006D8893006D8893006D8893006D8893006D8893006D8893006D8893006D88
      93006D8893000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000E5D6A500CBAB48008080
      80008080800000000000000000000000000092DDF2007AECFE0081EDFE0081ED
      FE0081EDFE0081EDFE0081EDFE007AECFE007AECFE007AECFE007AECFE0078E9
      FC006DEBFF00548EA50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800080808000FFFFFF0083DC650079CB4100CBAB
      4800808080008080800000000000000000000000000089EEFD0099F1FD0099F1
      FD0099F1FD0099F1FD0095F0FD0095F0FD0095F0FD0089EEFD0089EEFD0089EE
      FD007AECFE0057ACC70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000FFFFFF00A6E591002EB7000031C4000076D0
      3E00CBAB48008080800080808000000000000000000090E6F30090D4DD0090D4
      DD009EE5EF0099E1EB009BE6F000A1F2FD0099F1FD00A1F2FD0099F1FD0095F0
      FD0089EEFD005DC6E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800080808000FFFFFF00A6E591002EB7000031C4000033CC000030C2
      000062C12F00CBAB48008080800000000000000000007AC2CC007FB4BA008ABF
      C5008ABFC5005D8589005D85890095DAE200A1F2FD00A1F2FD00A1F2FD0099F1
      FD0089EEFD0066D6F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800080808000FFFFFF00A6E591002EB7000031C4000033CC000031C500002698
      00007DCB6300EFE5C8008080800000000000000000008CE3F300ADF4FD00B2F3
      FC00ADF4FD00ADF4FD00ADF4FD00ADF4FD00A1F2FD00A1F2FD00A1F2FD0099F1
      FD008EF0FE006ADDF80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00AEEA9A0031C5000033CC000032C90000289F00007DCB
      6300FFFFFF00C0C0C000C0C0C000000000000000000095F0FD00ADF0F900B2F3
      FC00B2F3FC00B2F3FC00ADF4FD00ADF4FD00ADF4FD00A1F2FD00ADF4FD0099F1
      FD0095F0FD0072E4FA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00B2EC9F0032C90000289F00005EC33C00FFFF
      FF00C0C0C000C0C0C00000000000000000000000000076C1CD007AA6AB007298
      9C006D8893006A9397006A9397006A969A006A969A0078AEB400A1F2FD00A1F2
      FD008EF0FE0078E9FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF007777770055555500E9E9E900A9E7950052BA3000E4F2DF00C0C0
      C000C0C0C0000000000000000000000000000000000095F0FD00B2F1FA00B6F4
      FD00AAE2E900A1D7DE00B2F3FC009DD9E100ADF4FD00ADF4FD00ADF4FD00A1F2
      FD0095F0FD0078E9FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00777777006C6C6C00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
      C000000000000000000000000000000000000000000090E6F300B6F4FD00B6F4
      FD00B6F4FD00B6F4FD00B2F3FC00B2F3FC00B2F3FC00ADF4FD00ADF4FD00A1F2
      FD0095F0FD0072E4FA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000088D3E000A1D7DE00B4E8
      EF00B6F4FD00BAF4FC00B6F4FD00A1D7DE0092C7CE00A7E7F000ADF4FD00ADF4
      FD0095F0FD0071E0F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      00000000000000000000000000000000000000000000A4D6ED0082BCD40060A3
      BE0085B4C000BAF4FC008EBAE4002D33C1002F3AA0007AA6AB00ADF4FD00A1F2
      FD0099F1FD006EDAF40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C7EBF700B6F4
      FD0068A9C300B6F4FD004858D8002E27EC00241DDF005F86A900A6EEF800A1F2
      FD0095F0FD0069CEE90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7EB
      F70077BBD300A1F2FD007AA6E700A8A5F2007A82DF0085CEE20098EFFC0095F0
      FD0081EDFE0070BED30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A7E7F00092DDF20090E6F3008AD1EE0092DDF20090E6F30092DDF20092DD
      F20092DDF2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FF9FFFFF00000000FF0FC00700000000
      FE07000300000000FC03800300000000F801800300000000F001800300000000
      E001800300000000E001800300000000E003800300000000E007800300000000
      E00F800300000000E01F800300000000E03F800300000000FFFFC00300000000
      FFFFE00300000000FFFFF0070000000000000000000000000000000000000000
      000000000000}
  end
  inherited dxDockingManager1: TdxDockingManager [8]
  end
  object qryDel_BillMaterialDt: TADOQuery [9]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Bil_ItemId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ItemId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'delete from BillMaterialDt'
      'where cast(Bil_ItemId as integer) = :Bil_ItemId'
      'and cast(ItemId as integer) = :ItemId')
    Left = 136
    Top = 176
  end
  object gvrBillOfMaterial: TcxGridViewRepository [10]
    Left = 104
    Top = 208
    object cgvPrevItemWIP: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItemWIP
      DataController.KeyFieldNames = 'ItemId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevItemWIPItemId: TcxGridDBColumn
        DataBinding.FieldName = 'ItemId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevItemWIPItemCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemCode'
        Visible = False
      end
      object cgvPrevItemWIPItemName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'ItemName'
        Width = 80
      end
      object cgvPrevItemWIPMaterialId: TcxGridDBColumn
        Caption = 'Material'
        DataBinding.FieldName = 'MaterialId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
      end
      object cgvPrevItemWIPItemCategoryId: TcxGridDBColumn
        Caption = 'Kel. Stok'
        DataBinding.FieldName = 'ItemCategoryId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
      end
    end
  end
  object qryPrevItemWIP: TADOQuery [11]
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Item'
      'where StatusProduction = '#39'3'#39' -- WIP'
      'or StatusProduction = '#39'4'#39' -- Finish Good')
    Left = 136
    Top = 208
  end
  object dsPrevItemWIP: TDataSource [12]
    DataSet = qryPrevItemWIP
    Left = 168
    Top = 208
  end
  object qryBillMaterialHd: TADOQuery [13]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeOpen = qryBillMaterialHdBeforeOpen
    BeforeEdit = qryBillMaterialHdBeforeEdit
    BeforePost = qryBillMaterialHdBeforePost
    BeforeDelete = qryBillMaterialHdBeforeDelete
    OnNewRecord = qryBillMaterialHdNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from BillMaterialHd')
    Left = 136
    Top = 112
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [14]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.Caption = ''
      ReportDocument.IsCaptionAssigned = True
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TcxDBTreeListReportLink
      Component = dbtBillMaterial
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 200
      PrinterPage.Header = 200
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.PageSize.X = 8500
      PrinterPage.PageSize.Y = 11000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [15]
    object actInsertDt: TAction
      Category = 'Dataset'
      Caption = 'Tambah'
      Hint = 'Tambah'
      ImageIndex = 5
      OnExecute = actInsertDtExecute
    end
    object actEditDt: TAction
      Category = 'Dataset'
      Caption = 'Ubah'
      Hint = 'Ubah'
      ImageIndex = 6
      OnExecute = actEditDtExecute
    end
    object actDeleteDt: TAction
      Category = 'Dataset'
      Caption = 'Hapus'
      Hint = 'Hapus'
      ImageIndex = 7
      OnExecute = actDeleteDtExecute
    end
    object actExpandAll: TAction
      Caption = 'Expand'
      Hint = 'Expand'
      OnExecute = actExpandAllExecute
    end
    object actCollapseAll: TAction
      Caption = 'Collapse'
      Hint = 'Collapse'
      OnExecute = actCollapseAllExecute
    end
    object actShow: TAction
      Caption = 'Show'
      ImageIndex = 0
      OnExecute = actShowExecute
    end
  end
end
