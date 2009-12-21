inherited fmPosition: TfmPosition
  Caption = 'Jabatan'
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
        object lblDepartment: TLabel
          Left = 9
          Top = 6
          Width = 65
          Height = 13
          Caption = 'Departemen *'
          Transparent = True
        end
        object lblPositionId: TLabel
          Left = 9
          Top = 24
          Width = 73
          Height = 13
          Caption = 'Kode Jabatan *'
          Transparent = True
        end
        object lblPositionName: TLabel
          Left = 9
          Top = 42
          Width = 45
          Height = 13
          Caption = 'Jabatan *'
          Transparent = True
        end
        object dblcDepartmentId: TcxDBExtLookupComboBox
          Left = 88
          Top = 3
          BeepOnEnter = False
          DataBinding.DataField = 'departmentid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGlobal.cgvPrevDepartment
          Properties.KeyFieldNames = 'DepartmentId'
          Properties.ListFieldItem = dmGlobal.cgvPrevDepartmentDepartmentName
          TabOrder = 0
          Width = 185
        end
        object dbePositionId: TcxDBTextEdit
          Left = 88
          Top = 21
          BeepOnEnter = False
          DataBinding.DataField = 'positionid'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 81
        end
        object dbePositionName: TcxDBTextEdit
          Left = 88
          Top = 39
          BeepOnEnter = False
          DataBinding.DataField = 'PositionName'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 185
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      ExplicitLeft = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object pnlLegend: TPanel
        Left = 0
        Top = 263
        Width = 296
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
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
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 263
        Align = alClient
        TabOrder = 1
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.OnGetContentStyle = cgvPrevDisplayStylesGetContentStyle
          object cgvPrevDisplayDepartmentId: TcxGridDBColumn
            Caption = 'Departemen'
            DataBinding.FieldName = 'DepartmentId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevDepartment
            Properties.KeyFieldNames = 'DepartmentId'
            Properties.ListFieldItem = dmGlobal.cgvPrevDepartmentDepartmentName
            Visible = False
            GroupIndex = 0
            Width = 64
          end
          object cgvPrevDisplayPositionId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'PositionId'
            Width = 64
          end
          object cgvPrevDisplayPositionName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'PositionName'
            Width = 185
          end
          object cgvPrevDisplayFlagFix: TcxGridDBColumn
            DataBinding.FieldName = 'FlagFix'
            Visible = False
            Width = 64
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
    Left = 448
    Top = 248
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
    Left = 480
    Top = 248
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmGlobal.qryPosition
    Left = 416
    Top = 280
  end
  inherited dxDockingManager1: TdxDockingManager [5]
    Left = 512
    Top = 248
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [6]
    Left = 448
    Top = 280
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [7]
    Left = 416
    Top = 248
  end
end
