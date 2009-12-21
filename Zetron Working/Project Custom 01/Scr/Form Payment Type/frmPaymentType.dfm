inherited fmPaymentType: TfmPaymentType
  Caption = 'Tipe Pembayaran'
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
        object lblIdPaymentType: TLabel
          Left = 8
          Top = 9
          Width = 111
          Height = 13
          Caption = 'Kode Tipe Pembayaran'
          Transparent = True
        end
        object lblPaymentTypeName: TLabel
          Left = 8
          Top = 27
          Width = 114
          Height = 13
          Caption = 'Nama Tipe Pembayaran'
          Transparent = True
        end
        object lblEmployeeName: TLabel
          Left = 8
          Top = 63
          Width = 41
          Height = 13
          Caption = 'Pegawai'
          Transparent = True
        end
        object Label3: TLabel
          Left = 8
          Top = 45
          Width = 65
          Height = 13
          Caption = 'Tunai / Kredit'
          Transparent = True
        end
        object dbeIdPaymentType: TcxDBTextEdit
          Left = 128
          Top = 6
          BeepOnEnter = False
          DataBinding.DataField = 'vcIdPaymentType'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 97
        end
        object dbePaymentTypeName: TcxDBTextEdit
          Left = 128
          Top = 24
          BeepOnEnter = False
          DataBinding.DataField = 'vcPaymentTypeName'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 185
        end
        object dbeEmployeeName: TcxDBTextEdit
          Left = 128
          Top = 60
          BeepOnEnter = False
          DataBinding.DataField = 'vcEmployeeName'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 185
        end
        object dbchFlagInactive: TcxDBCheckBox
          Left = 231
          Top = 6
          Caption = 'Non Aktif'
          DataBinding.DataField = 'chFlagInactive'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 4
          Transparent = True
          Width = 77
        end
        object dbchFlagPPView: TcxDBCheckBox
          Left = 128
          Top = 87
          Caption = 'Digunakan pada pembayan Pembelian'
          DataBinding.DataField = 'FlagPurchasePayment'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 5
          Transparent = True
          Width = 212
        end
        object dbchFlagPPApprovalType1: TcxDBCheckBox
          Left = 128
          Top = 111
          Caption = 'Digunakan pada pembayan Penjualan'
          DataBinding.DataField = 'FlagSalesPayment'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.Alignment = taLeftJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 6
          Transparent = True
          Width = 212
        end
        object dblcStatusPayment: TcxDBImageComboBox
          Left = 128
          Top = 42
          BeepOnEnter = False
          DataBinding.DataField = 'StatusPayment'
          DataBinding.DataSource = dsDefault
          Properties.Items = <
            item
              Description = 'Tunai / Cash'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Kredit / Credit'
              Value = '1'
            end>
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
      object cgPaymentType: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 109
        Align = alClient
        TabOrder = 0
        object cgvPaymentType: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cgvPaymentTypeStylesGetContentStyle
          object cgvPaymentTypevcIdPaymentType: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vcIdPaymentType'
            Width = 48
          end
          object cgvPaymentTypevcPaymentTypeName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'vcPaymentTypeName'
          end
          object cgvPaymentTypechFlagFix: TcxGridDBColumn
            DataBinding.FieldName = 'chFlagFix'
            Visible = False
          end
        end
        object cgPaymentTypeLevel1: TcxGridLevel
          GridView = cgvPaymentType
        end
      end
      object pnlLegend: TPanel
        Left = 0
        Top = 109
        Width = 300
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
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
    DataSet = qryPaymentType
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  object qryPaymentType: TADOQuery [6]
    Connection = dmGlobal.conGlobal
    BeforeEdit = qryPaymentTypeBeforeEdit
    BeforePost = qryPaymentTypeBeforePost
    BeforeDelete = qryPaymentTypeBeforeDelete
    OnNewRecord = qryPaymentTypeNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from tbGNPaymentType')
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
