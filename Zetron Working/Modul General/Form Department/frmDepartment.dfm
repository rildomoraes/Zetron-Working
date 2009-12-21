inherited fmDepartment: TfmDepartment
  Caption = 'Departemen'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 316
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
        object lblCompany: TLabel
          Left = 9
          Top = 6
          Width = 57
          Height = 13
          Caption = 'Perusahaan'
          Transparent = True
        end
        object lblDepartmentId: TLabel
          Left = 9
          Top = 24
          Width = 86
          Height = 13
          Caption = 'Kode Departemen'
          Transparent = True
        end
        object lblDepartmentName: TLabel
          Left = 9
          Top = 42
          Width = 89
          Height = 13
          Caption = 'Nama Departemen'
          Transparent = True
        end
        object Label9: TLabel
          Left = 335
          Top = 4
          Width = 5
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dblcCompanyId: TcxDBExtLookupComboBox
          Left = 104
          Top = 3
          BeepOnEnter = False
          DataBinding.DataField = 'companyid'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          Properties.View = dmGlobal.cgvPrevCompany
          Properties.KeyFieldNames = 'CompanyId'
          Properties.ListFieldItem = dmGlobal.cgvPrevCompanyCompanyName
          TabOrder = 0
          Width = 225
        end
        object dbeDepartmentId: TcxDBTextEdit
          Left = 104
          Top = 21
          BeepOnEnter = False
          DataBinding.DataField = 'departmentid'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 81
        end
        object dbeDepartmentName: TcxDBTextEdit
          Left = 104
          Top = 39
          BeepOnEnter = False
          DataBinding.DataField = 'DepartmentName'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 185
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 263
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 109
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.OnGetContentStyle = cgvPrevDisplayStylesGetContentStyle
          object cgvPrevDisplayCompanyId: TcxGridDBColumn
            Caption = 'Perusahaan'
            DataBinding.FieldName = 'CompanyId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCompany
            Properties.KeyFieldNames = 'CompanyId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCompanyCompanyName
            Visible = False
            GroupIndex = 0
            Width = 64
          end
          object cgvPrevDisplayDepartmentId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'DepartmentId'
            Width = 64
          end
          object cgvPrevDisplayDepartmentName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'DepartmentName'
            Width = 185
          end
          object cgvPrevDisplayFlagFix: TcxGridDBColumn
            DataBinding.FieldName = 'FlagFix'
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
      object pnlLegend: TPanel
        Left = 0
        Top = 263
        Width = 296
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitTop = 109
        ExplicitWidth = 300
        object Image1: TImage
          Left = 8
          Top = 6
          Width = 16
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617036040000424D360400000000000036000000280000001000
            0000100000000100200000000000000400000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000052F6C60052F6E70052F6E70052F6E70052F6E70052F6E70052
            F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6C60000
            00000052F6BD1429FFFF814DFFFF8851FFFF8851FFFF8851FFFF814DFFFF814D
            FFFF794DFFFF794DFFFF794DFFFF734DFFFF6F44FFFF5E3CFEFF042EFFFF0052
            F6BD0052F6F78851FFFF8F55FFFF8F55FFFF8F55FFFF8851FFFF8851FFFF8851
            FFFF8251FFFF8251FFFF7B51FFFF7B51FFFF794DFFFF6F44FFFF4F3CFEFF0052
            F6F70049FBF78851FFFF8851FFFF8251FFFF8251FFFF8251FFFF7B51FFFF794D
            FFFF734DFFFF6F44FFFF6F44FFFF6844FFFF6844FFFF6844FFFF5840FEFF0052
            F6F70049FBF78251FFFF7B51FFFF794DFFFF734DFFFF6F44FFFF6F44FFFF6844
            FFFF6844FFFF6144FFFF6040FEFF6040FEFF5840FEFF5840FEFF4F3CFEFF0052
            F6F70049FBF76F44FFFF6F44FFFF6844FFFF6844FFFF6144FFFF6040FEFF6040
            FEFF5840FEFF5840FEFF5140FEFF5140FEFF4F3CFEFF473CFEFF3D34FEFF0052
            F6F70049FBF7654DFFFF6040FEFF6040FEFF5840FEFF5840FEFF5140FEFF5140
            FEFF4F3CFEFF473CFEFF4434FEFF3D34FEFF3D34FEFF3D34FEFF4555FFFF0052
            F6F70049FBF75D62FFFF5D62FFFF5851FFFF5449FFFF473CFEFF4434FEFF3D34
            FEFF3D34FEFF3D34FEFF3C40FEFF454EFFFF5160FFFF6180FFFF6180FFFF0052
            F6F70049FBF7645DFFFF6865FFFF6568FFFF6568FFFF6568FFFF5E5DFFFF5D62
            FFFF5D62FFFF656FFFFF656FFFFF656FFFFF6575FFFF6575FFFF6575FFFF0052
            F6F70049FBF77561FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6761
            FFFF6761FFFF645DFFFF645DFFFF6568FFFF6568FFFF6568FFFF5D62FFFF0052
            F6F70049FBF77B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7561FFFF7561
            FFFF7561FFFF7561FFFF7561FFFF6E61FFFF6E61FFFF6E61FFFF5E5DFFFF0052
            F6F70052F6F77E59FFFF8A65FFFF8A65FFFF8A65FFFF8365FFFF8365FFFF8161
            FFFF8161FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF4E4DFFFF0052
            F6F70052F6BD242EFFFF8C5DFFFF9665FFFF9065FFFF9065FFFF9065FFFF9065
            FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF7759FFFF1038FFFF0052
            F6BD000000000052F6C60049FBE70040FFE70049FBE70053FBE70053FBE70053
            FBE70053FBE70053FBE70053FBE70053FBE70052F6E70052F6E70052F6C60000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000}
          Transparent = True
        end
        object lblFixed: TLabel
          Left = 32
          Top = 8
          Width = 25
          Height = 13
          Caption = 'Fixed'
          Transparent = True
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
    Left = 496
    Top = 216
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
    Left = 528
    Top = 216
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmGlobal.qryDepartment
    Left = 464
    Top = 248
  end
  inherited dxDockingManager1: TdxDockingManager [5]
    Left = 560
    Top = 216
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [6]
    Left = 496
    Top = 248
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [7]
    Left = 464
    Top = 216
  end
end
