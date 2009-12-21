inherited fmPayrollPegawai: TfmPayrollPegawai
  Caption = 'Payroll Pegawai'
  ClientHeight = 341
  ExplicitHeight = 375
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Height = 291
    ExplicitHeight = 291
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 291
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 291
      ExplicitHeight = 291
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 291
        ExplicitHeight = 291
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 291
        ExplicitHeight = 291
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblSuppliesCategory: TLabel
          Left = 9
          Top = 6
          Width = 58
          Height = 13
          Caption = 'No Pegawai'
          Transparent = True
        end
        object lblIdSupplies: TLabel
          Left = 9
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object Label1: TLabel
          Left = 9
          Top = 42
          Width = 57
          Height = 13
          Caption = 'Perusahaan'
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 60
          Width = 25
          Height = 13
          Caption = 'Divisi'
          Transparent = True
        end
        object Label3: TLabel
          Left = 9
          Top = 78
          Width = 58
          Height = 13
          Caption = 'Departemen'
          Transparent = True
        end
        object Label4: TLabel
          Left = 9
          Top = 96
          Width = 53
          Height = 13
          Caption = 'Kode Bank'
          Transparent = True
        end
        object Label5: TLabel
          Left = 9
          Top = 132
          Width = 50
          Height = 13
          Caption = 'Group Gaji'
          Transparent = True
        end
        object Label6: TLabel
          Left = 9
          Top = 150
          Width = 33
          Height = 13
          Caption = 'NPWP'
          Transparent = True
        end
        object Label7: TLabel
          Left = 9
          Top = 168
          Width = 60
          Height = 13
          Caption = 'Status Pajak'
          Transparent = True
        end
        object Label8: TLabel
          Left = 9
          Top = 186
          Width = 48
          Height = 13
          Caption = 'Mode Gaji'
          Transparent = True
        end
        object Label9: TLabel
          Left = 9
          Top = 114
          Width = 57
          Height = 13
          Caption = 'No Account'
          Transparent = True
        end
        object Label10: TLabel
          Left = 251
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
        object Label11: TLabel
          Left = 251
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
        object Label12: TLabel
          Left = 204
          Top = 184
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
        object Label13: TLabel
          Left = 251
          Top = 40
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
        object Label14: TLabel
          Left = 251
          Top = 58
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
        object Label15: TLabel
          Left = 251
          Top = 76
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
        object dbeNPWP: TcxDBTextEdit
          Left = 77
          Top = 147
          BeepOnEnter = False
          DataBinding.DataField = 'npwp'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 8
          Width = 241
        end
        object dbeStatusPajak: TcxDBTextEdit
          Left = 77
          Top = 165
          BeepOnEnter = False
          DataBinding.DataField = 'statuspajak'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 241
        end
        object dbeAccount: TcxDBTextEdit
          Left = 77
          Top = 111
          BeepOnEnter = False
          DataBinding.DataField = 'account'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 6
          Width = 241
        end
        object dblcNopeg: TcxDBExtLookupComboBox
          Left = 77
          Top = 3
          DataBinding.DataField = 'pegawaiid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevPegawai
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmGeneral.cgvPrevPegawainopeg
          TabOrder = 0
          Width = 168
        end
        object dblcNama: TcxDBExtLookupComboBox
          Left = 77
          Top = 21
          DataBinding.DataField = 'pegawaiid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevPegawai
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmGeneral.cgvPrevPegawainama
          TabOrder = 1
          Width = 168
        end
        object dblcBank: TcxDBExtLookupComboBox
          Left = 77
          Top = 93
          DataBinding.DataField = 'kodebank'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevBank
          Properties.KeyFieldNames = 'kodebank'
          Properties.ListFieldItem = dmGeneral.cgvPrevBanknamabank
          TabOrder = 5
          Width = 145
        end
        object dblcGroupGaji: TcxDBExtLookupComboBox
          Left = 77
          Top = 129
          DataBinding.DataField = 'kodegroupgaji'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevGroupGaji
          Properties.KeyFieldNames = 'kodegroupgaji'
          Properties.ListFieldItem = dmGeneral.cgvPrevGroupGajinamagroupgaji
          TabOrder = 7
          Width = 145
        end
        object dbicModeGaji: TcxDBImageComboBox
          Left = 77
          Top = 183
          DataBinding.DataField = 'modegaji'
          DataBinding.DataSource = dsDefault
          Properties.Items = <
            item
              Description = 'Cash'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Transfer'
              Value = '1'
            end>
          TabOrder = 10
          Width = 121
        end
        object dblcPerusahaan: TcxDBExtLookupComboBox
          Left = 77
          Top = 39
          DataBinding.DataField = 'pegawaiid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevPegawai
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmGeneral.cgvPrevPegawainamaperusahaan
          TabOrder = 2
          Width = 168
        end
        object dblcDivisi: TcxDBExtLookupComboBox
          Left = 77
          Top = 57
          DataBinding.DataField = 'pegawaiid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevPegawai
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmGeneral.cgvPrevPegawainamadivisi
          TabOrder = 3
          Width = 168
        end
        object dblcDepartemen: TcxDBExtLookupComboBox
          Left = 77
          Top = 75
          DataBinding.DataField = 'pegawaiid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGeneral.cgvPrevPegawai
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmGeneral.cgvPrevPegawainamadepartemen
          TabOrder = 4
          Width = 168
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 291
      ExplicitHeight = 291
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 269
        Align = alClient
        TabOrder = 0
        object cgvExplorer: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Jum ,0.;-,0.'
              Kind = skCount
              FieldName = 'pegawaiid'
              DisplayText = 'Jumlah'
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cgvExplorerpegawaiid: TcxGridDBColumn
            Caption = 'Pegawaiid'
            DataBinding.FieldName = 'pegawaiid'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvExplorernopeg: TcxGridDBColumn
            Caption = 'No Pegawai'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawai
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawainopeg
            Width = 70
          end
          object cgvExplorernama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawai
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawainama
          end
          object cgvExplorerkodebank: TcxGridDBColumn
            Caption = 'Kode Bank'
            DataBinding.FieldName = 'kodebank'
          end
          object cgvExplorerkodegroupgaji: TcxGridDBColumn
            Caption = 'Group Gaji'
            DataBinding.FieldName = 'kodegroupgaji'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevGroupGaji
            Properties.KeyFieldNames = 'kodegroupgaji'
            Properties.ListFieldItem = dmGeneral.cgvPrevGroupGajinamagroupgaji
          end
          object cgvExploreraccount: TcxGridDBColumn
            Caption = 'No Account'
            DataBinding.FieldName = 'account'
          end
          object cgvExplorernpwp: TcxGridDBColumn
            Caption = 'NPWP'
            DataBinding.FieldName = 'npwp'
          end
          object cgvExplorerstatuspajak: TcxGridDBColumn
            Caption = 'Status Pajak'
            DataBinding.FieldName = 'statuspajak'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
          end
          object cgvExplorermodegaji: TcxGridDBColumn
            Caption = 'Mode Gaji'
            DataBinding.FieldName = 'modegaji'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Cash'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Transfer'
                Value = '1'
              end>
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvExplorer
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 456
    Top = 56
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
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 488
    Top = 56
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 520
    Top = 56
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryPayrollDetail
    Left = 456
    Top = 88
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 552
    Top = 56
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 488
    Top = 88
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
