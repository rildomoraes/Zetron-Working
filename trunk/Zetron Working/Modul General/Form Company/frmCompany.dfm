inherited fmCompany: TfmCompany
  Caption = 'Perusahaan'
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
        object lblCompanyId: TLabel
          Left = 9
          Top = 6
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object lblCompanyName: TLabel
          Left = 9
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object lblAddress: TLabel
          Left = 9
          Top = 42
          Width = 32
          Height = 13
          Caption = 'Alamat'
          Transparent = True
        end
        object lblTelephone: TLabel
          Left = 9
          Top = 78
          Width = 51
          Height = 13
          Caption = 'Telephone'
          Transparent = True
        end
        object lblFax: TLabel
          Left = 9
          Top = 96
          Width = 17
          Height = 13
          Caption = 'Fax'
          Transparent = True
        end
        object lblEmail: TLabel
          Left = 9
          Top = 114
          Width = 29
          Height = 13
          Caption = 'E-Mail'
          Transparent = True
        end
        object lblWebsite: TLabel
          Left = 9
          Top = 132
          Width = 39
          Height = 13
          Caption = 'Website'
          Transparent = True
        end
        object Label1: TLabel
          Left = 9
          Top = 150
          Width = 22
          Height = 13
          Caption = 'Year'
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 168
          Width = 24
          Height = 13
          Caption = 'Logo'
          Transparent = True
        end
        object lblLeftClickToUploadPicture: TLabel
          Left = 72
          Top = 287
          Width = 140
          Height = 13
          Caption = '* Left Click To Upload Picture'
          Transparent = True
        end
        object Label9: TLabel
          Left = 159
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
        object Label3: TLabel
          Left = 346
          Top = 22
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
        object dbeCompanyId: TcxDBTextEdit
          Left = 72
          Top = 3
          DataBinding.DataField = 'companyid'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbeCompanyname: TcxDBTextEdit
          Left = 72
          Top = 21
          DataBinding.DataField = 'companyname'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 268
        end
        object dbeAddress2: TcxDBTextEdit
          Left = 72
          Top = 57
          DataBinding.DataField = 'address2'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 268
        end
        object dbeAddress: TcxDBTextEdit
          Left = 72
          Top = 39
          DataBinding.DataField = 'address'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 268
        end
        object dbeTelephone: TcxDBTextEdit
          Left = 72
          Top = 75
          DataBinding.DataField = 'telephone'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 233
        end
        object dbeFax: TcxDBTextEdit
          Left = 72
          Top = 93
          DataBinding.DataField = 'fax'
          DataBinding.DataSource = dsDefault
          TabOrder = 5
          Width = 233
        end
        object dbeEmail: TcxDBHyperLinkEdit
          Left = 72
          Top = 111
          DataBinding.DataField = 'email'
          DataBinding.DataSource = dsDefault
          Properties.Prefix = 'mailto:'
          TabOrder = 6
          Width = 233
        end
        object dbeWebsite: TcxDBHyperLinkEdit
          Left = 72
          Top = 129
          DataBinding.DataField = 'website'
          DataBinding.DataSource = dsDefault
          TabOrder = 7
          Width = 233
        end
        object dbeYear: TcxDBSpinEdit
          Left = 72
          Top = 147
          DataBinding.DataField = 'Year'
          DataBinding.DataSource = dsDefault
          TabOrder = 8
          Width = 65
        end
        object dbiLogo: TcxDBImage
          Left = 72
          Top = 165
          DataBinding.DataField = 'Logo'
          DataBinding.DataSource = dsDefault
          Properties.GraphicClassName = 'TJPEGImage'
          TabOrder = 9
          Height = 113
          Width = 233
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cxGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 263
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 109
        object cgvGrid: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cgvPrevDisplayStylesGetContentStyle
          object cgvGridCompanyId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'CompanyId'
            Width = 64
          end
          object cgvGridCompanyName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'CompanyName'
          end
          object cgvGridEmail: TcxGridDBColumn
            DataBinding.FieldName = 'Email'
            PropertiesClassName = 'TcxHyperLinkEditProperties'
            Properties.Prefix = 'mailto:'
            Visible = False
          end
          object cgvGridWebsite: TcxGridDBColumn
            DataBinding.FieldName = 'Website'
            Visible = False
          end
          object cgvGridImage: TcxGridDBColumn
            DataBinding.FieldName = 'Logo'
            PropertiesClassName = 'TcxImageProperties'
            Visible = False
          end
          object cgvGridFlagFix: TcxGridDBColumn
            DataBinding.FieldName = 'FlagFix'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cgvGrid
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
    Left = 432
    Top = 136
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
    Left = 464
    Top = 136
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmGlobal.qryCompany
    Left = 400
    Top = 168
  end
  inherited dxDockingManager1: TdxDockingManager [5]
    Left = 496
    Top = 136
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [6]
    Left = 432
    Top = 168
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [7]
    Left = 400
    Top = 136
  end
end
