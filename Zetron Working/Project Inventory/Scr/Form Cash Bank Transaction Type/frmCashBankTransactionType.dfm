inherited fmCashBankTransactionType: TfmCashBankTransactionType
  Caption = 'Tipe Transaksi Kas Bank'
  ExplicitWidth = 600
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
          Left = 8
          Top = 8
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object lblType: TLabel
          Left = 8
          Top = 26
          Width = 54
          Height = 13
          Caption = 'Kas / Bank'
          Transparent = True
        end
        object lblCompanyName: TLabel
          Left = 8
          Top = 44
          Width = 31
          Height = 13
          Caption = 'Nama '
          Transparent = True
        end
        object lblAddress: TLabel
          Left = 8
          Top = 62
          Width = 33
          Height = 13
          Caption = 'Status '
          Transparent = True
        end
        object dbeCashBankTransactionTypeId: TcxDBTextEdit
          Left = 72
          Top = 6
          DataBinding.DataField = 'cashbanktransactiontypeid'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 97
        end
        object dblcFlagBank: TcxDBImageComboBox
          Left = 72
          Top = 24
          DataBinding.DataField = 'flagbank'
          DataBinding.DataSource = dsDefault
          Properties.Items = <
            item
              Description = 'Kas'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Bank'
              Value = '1'
            end>
          TabOrder = 1
          Width = 97
        end
        object dbeCashBankTransactionTypeName: TcxDBTextEdit
          Left = 72
          Top = 42
          DataBinding.DataField = 'cashbanktransactiontypename'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 233
        end
        object dblcFlagOut: TcxDBImageComboBox
          Left = 72
          Top = 60
          DataBinding.DataField = 'flagout'
          DataBinding.DataSource = dsDefault
          Properties.Images = dmGlobal.imgIcon16
          Properties.Items = <
            item
              Description = 'Masuk'
              ImageIndex = 9
              Value = '0'
            end
            item
              Description = 'Keluar'
              ImageIndex = 10
              Value = '1'
            end>
          TabOrder = 3
          Width = 97
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
        Width = 300
        Height = 109
        Align = alClient
        TabOrder = 0
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.OnGetContentStyle = cgvPrevDisplayStylesGetContentStyle
          object cgvPrevDisplaycashbanktransactiontypeid: TcxGridDBColumn
            Caption = 'Tipe'
            DataBinding.FieldName = 'cashbanktransactiontypeid'
          end
          object cgvPrevDisplayflagbank: TcxGridDBColumn
            Caption = 'Kas/Bank'
            DataBinding.FieldName = 'flagbank'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Kas'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Bank'
                Value = '1'
              end>
            Options.Filtering = False
          end
          object cgvPrevDisplayflagout: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'flagout'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Masuk'
                ImageIndex = 7
                Value = '0'
              end
              item
                Description = 'Keluar'
                ImageIndex = 8
                Value = '1'
              end>
            Width = 72
          end
          object cgvPrevDisplaycashbanktransactiontypename: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'cashbanktransactiontypename'
          end
          object cgvPrevDisplayflagfix: TcxGridDBColumn
            DataBinding.FieldName = 'flagfix'
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
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
  inherited ActionList1: TActionList
    inherited actInsert: TAction
      Enabled = False
    end
    inherited actEdit: TAction
      Enabled = False
    end
    inherited actPost: TAction
      Enabled = False
    end
    inherited actCancel: TAction
      Enabled = False
    end
    inherited actDelete: TAction
      Enabled = False
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryCashBankTransactionType
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryCashBankTransactionType: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from CashBankTransactionType')
    BeforeEdit = qryCashBankTransactionTypeBeforeEdit
    OnNewRecord = qryCashBankTransactionTypeNewRecord
    Left = 136
    Top = 112
  end
end
