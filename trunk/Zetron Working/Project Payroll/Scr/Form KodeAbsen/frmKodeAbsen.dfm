inherited fmKodeAbsen: TfmKodeAbsen
  Caption = 'Kode Absen'
  ClientHeight = 318
  ClientWidth = 580
  ExplicitWidth = 588
  ExplicitHeight = 352
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 580
    ExplicitWidth = 580
  end
  inherited dxDockSite1: TdxDockSite
    Width = 580
    Height = 268
    ExplicitWidth = 580
    ExplicitHeight = 268
    DockType = 0
    OriginalWidth = 580
    OriginalHeight = 268
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 552
      Height = 268
      ExplicitWidth = 552
      ExplicitHeight = 268
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 552
        Height = 268
        ExplicitWidth = 552
        ExplicitHeight = 268
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 552
        Height = 268
        ExplicitWidth = 552
        ExplicitHeight = 268
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Label1: TLabel
          Left = 9
          Top = 6
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object lblCountryName: TLabel
          Left = 9
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 42
          Width = 71
          Height = 13
          Caption = 'Harus Cek Log'
          Transparent = True
        end
        object Label3: TLabel
          Left = 9
          Top = 62
          Width = 113
          Height = 13
          Caption = 'Tampil di Absen Manual'
          Transparent = True
        end
        object Label9: TLabel
          Left = 176
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
        object dbeKodeAbsen: TcxDBTextEdit
          Left = 128
          Top = 2
          DataBinding.DataField = 'kodeabsen'
          DataBinding.DataSource = dsDefault
          TabOrder = 0
          Width = 42
        end
        object dbeKeterangan: TcxDBTextEdit
          Left = 128
          Top = 20
          DataBinding.DataField = 'keterangan'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 185
        end
        object dbckFlagCekLock: TcxDBCheckBox
          Left = 126
          Top = 39
          DataBinding.DataField = 'flagchecklock'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 2
          Transparent = True
          Width = 21
        end
        object dbckFlagAbsenManual: TcxDBCheckBox
          Left = 126
          Top = 59
          DataBinding.DataField = 'flagabsenmanual'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 3
          Transparent = True
          Width = 21
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 268
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgKodeAbsensi: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 215
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 109
        object cgvKodeAbsensi: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmGeneral.dsKodeAbsen
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cgvKodeAbsensiStylesGetContentStyle
          object cgvKodeAbsensikodeabsen: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'kodeabsen'
            Width = 63
          end
          object cgvKodeAbsensiketerangan: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'keterangan'
            Width = 100
          end
          object cgvKodeAbsensiflagchecklock: TcxGridDBColumn
            Caption = 'Harus Cek Log'
            DataBinding.FieldName = 'flagchecklock'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 86
          end
          object cgvKodeAbsensiFlagFix: TcxGridDBColumn
            Caption = 'Fix'
            DataBinding.FieldName = 'flagfix'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            VisibleForCustomization = False
          end
          object cgvKodeAbsensiflagabsenmanual: TcxGridDBColumn
            Caption = 'Tampil di Absen Manual'
            DataBinding.FieldName = 'flagabsenmanual'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
          end
        end
        object cgKodeAbsensiLevel1: TcxGridLevel
          GridView = cgvKodeAbsensi
        end
      end
      object pnlLegend: TPanel
        Left = 0
        Top = 215
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
    Left = 48
    Top = 152
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
    Left = 80
    Top = 152
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 112
    Top = 152
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryKodeAbsen
    Left = 48
    Top = 184
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 144
    Top = 152
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 80
    Top = 184
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
