inherited fmPaymentType: TfmPaymentType
  Caption = 'Tipe Pembayaran'
  ExplicitWidth = 600
  ExplicitHeight = 240
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
        object lblPaymentTypeId: TLabel
          Left = 8
          Top = 8
          Width = 87
          Height = 13
          Caption = 'Kode Pembayaran'
          Transparent = True
        end
        object lblPaymentTypeName: TLabel
          Left = 8
          Top = 26
          Width = 90
          Height = 13
          Caption = 'Nama Pembayaran'
          Transparent = True
        end
        object lblTransactionPayment: TLabel
          Left = 8
          Top = 46
          Width = 108
          Height = 13
          Caption = 'Transaksi Pembayaran'
          Transparent = True
        end
        object lblCashOrBank: TLabel
          Left = 8
          Top = 107
          Width = 103
          Height = 13
          Caption = 'Transaksi Kas / Bank'
          Transparent = True
        end
        object lblBank: TLabel
          Left = 9
          Top = 125
          Width = 25
          Height = 13
          Caption = 'Bank'
          Transparent = True
        end
        object lblAccount: TLabel
          Left = 8
          Top = 143
          Width = 40
          Height = 13
          Caption = 'Account'
          Transparent = True
        end
        object dbePaymentTypeId: TcxDBTextEdit
          Left = 128
          Top = 6
          DataBinding.DataField = 'PaymentTypeId'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbchkInactive: TcxDBCheckBox
          Left = 216
          Top = 6
          Caption = 'Inactive'
          DataBinding.DataField = 'FlagInactive'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          Transparent = True
          Width = 69
        end
        object dbePaymentTypeName: TcxDBTextEdit
          Left = 128
          Top = 24
          DataBinding.DataField = 'PaymentTypeName'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 185
        end
        object dbchkFlagPurchasePayment: TcxDBCheckBox
          Left = 128
          Top = 46
          Caption = 'Pembelian'
          DataBinding.DataField = 'FlagPurchasePayment'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 3
          Transparent = True
          Width = 90
        end
        object dbchkFlagSalesPayment: TcxDBCheckBox
          Left = 128
          Top = 63
          Caption = 'Penjualan'
          DataBinding.DataField = 'flagsalespayment'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 5
          Transparent = True
          Width = 90
        end
        object dbchkFlagPurchaseReturnPayment: TcxDBCheckBox
          Left = 224
          Top = 46
          Caption = 'Retur Pembelian'
          DataBinding.DataField = 'FlagpurchasereturnPayment'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 4
          Transparent = True
          Width = 105
        end
        object dbchkFlagSalesReturnPayment: TcxDBCheckBox
          Left = 224
          Top = 63
          Caption = 'Retur Penjualan'
          DataBinding.DataField = 'flagsalesreturnpayment'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 7
          Transparent = True
          Width = 105
        end
        object dblcCashBankTransactionTypeId: TcxDBExtLookupComboBox
          Left = 127
          Top = 105
          DataBinding.DataField = 'cashbanktransactiontypeid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvPrevCashBankTransactionType
          Properties.KeyFieldNames = 'cashbanktransactiontypeid'
          Properties.ListFieldItem = dmAccounting.cgvPrevCashBankTransactionTypecashbanktransactiontypename
          Properties.OnEditValueChanged = dblcCashBankTransactionTypeIdPropertiesEditValueChanged
          TabOrder = 8
          Width = 202
        end
        object dblcBankId: TcxDBExtLookupComboBox
          Left = 127
          Top = 123
          DataBinding.DataField = 'bankid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvPrevBank
          Properties.KeyFieldNames = 'bankid'
          Properties.ListFieldItem = dmAccounting.cgvPrevBankBankId
          Properties.OnEditValueChanged = dblcBankIdPropertiesEditValueChanged
          TabOrder = 9
          Width = 145
        end
        object dblcAccountNo: TcxDBExtLookupComboBox
          Left = 127
          Top = 141
          DataBinding.DataField = 'accountno'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvPrevAccount
          Properties.KeyFieldNames = 'accountno'
          Properties.ListFieldItem = dmAccounting.cgvPrevAccountaccountno
          TabOrder = 10
          Width = 145
        end
        object dblcAccountName: TcxDBExtLookupComboBox
          Left = 127
          Top = 159
          DataBinding.DataField = 'accountno'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvPrevAccount
          Properties.KeyFieldNames = 'accountno'
          Properties.ListFieldItem = dmAccounting.cgvPrevAccountaccountname
          TabOrder = 11
          Width = 202
        end
        object dbchkFlagSalesBarcodePayment: TcxDBCheckBox
          Left = 143
          Top = 81
          Caption = 'Barcode'
          DataBinding.DataField = 'flagsalesbarcodepayment'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 6
          Transparent = True
          Width = 75
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
        Height = 87
        Align = alClient
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
          object cgvPrevDisplayPaymentTypeId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'PaymentTypeId'
            Width = 64
          end
          object cgvPrevDisplayPaymentTypeName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'PaymentTypeName'
            Width = 64
          end
          object cgvPrevDisplayflagbank: TcxGridDBColumn
            Caption = 'Tipe'
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
          end
          object cgvPrevDisplaybankid: TcxGridDBColumn
            Caption = 'Bank'
            DataBinding.FieldName = 'bankid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmAccounting.cgvPrevBank
            Properties.KeyFieldNames = 'bankid'
            Properties.ListFieldItem = dmAccounting.cgvPrevBankBankId
            Visible = False
            Width = 64
          end
          object cgvPrevDisplayaccountno: TcxGridDBColumn
            Caption = 'No Account'
            DataBinding.FieldName = 'accountno'
            Visible = False
          end
          object cgvPrevDisplayFlagInactive: TcxGridDBColumn
            Caption = 'Inactive'
            DataBinding.FieldName = 'FlagInactive'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssInactive
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Visible = False
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
        Top = -31
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
    DataSet = dmAccounting.qryPaymentType
    OnDataChange = dsDefaultDataChange
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
