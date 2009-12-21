inherited fmTransactionType: TfmTransactionType
  Caption = 'Tipe Transaksi'
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
        object lblIdTransactionType: TLabel
          Left = 8
          Top = 8
          Width = 98
          Height = 13
          Caption = 'Kode Tipe Transaksi'
          Transparent = True
        end
        object lblTransactionName: TLabel
          Left = 8
          Top = 26
          Width = 101
          Height = 13
          Caption = 'Nama Tipe Transaksi'
          Transparent = True
        end
        object dbeIdTransactionType: TcxDBTextEdit
          Left = 116
          Top = 8
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdTransactionType'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbeTransactionName: TcxDBTextEdit
          Left = 116
          Top = 26
          BeepOnEnter = False
          DataBinding.DataField = 'vcTransactionName'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 241
        end
        object rgStatusTransaction: TcxDBRadioGroup
          Left = 116
          Top = 53
          Caption = 'Jenis'
          DataBinding.DataField = 'chStatusTransaction'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.Columns = 3
          Properties.DefaultValue = '0'
          Properties.Items = <
            item
              Caption = 'Masuk'
              Value = '0'
            end
            item
              Caption = 'Keluar'
              Value = '1'
            end>
          Properties.ReadOnly = True
          TabOrder = 2
          Height = 49
          Width = 241
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 263
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 109
        object cgvTransactionType: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.OnGetContentStyle = cgvTransactionTypeStylesGetContentStyle
          object cgvTransactionTypechStatusTransaction: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'chStatusTransaction'
            PropertiesClassName = 'TcxRadioGroupProperties'
            Properties.Columns = 3
            Properties.DefaultValue = '0'
            Properties.Items = <
              item
                Caption = 'Masuk'
                Value = '0'
              end
              item
                Caption = 'Keluar'
                Value = '1'
              end
              item
                Caption = 'Transfer'
                Value = '2'
              end>
            Visible = False
            GroupIndex = 0
            Options.Filtering = False
          end
          object cgvTransactionTypevcIdTransactionType: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdTransactionType'
          end
          object cgvTransactionTypevcTransactionName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcTransactionName'
          end
          object cgvTransactionTypechFlagFix: TcxGridDBColumn
            Caption = 'Fixed'
            DataBinding.FieldName = 'chFlagFix'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvTransactionTypedtSystemStamp: TcxGridDBColumn
            DataBinding.FieldName = 'dtSystemStamp'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvTransactionType
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
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = qryTransactionType
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  object qryTransactionType: TADODataSet [6]
    Connection = dmGlobal.conGlobal
    OnNewRecord = qryTransactionTypeNewRecord
    CommandText = 'select * from tbIMTransactionType'
    Parameters = <>
    Left = 136
    Top = 112
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [7]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [8]
  end
end
