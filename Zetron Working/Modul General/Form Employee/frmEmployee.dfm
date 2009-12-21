inherited fmEmployee: TfmEmployee
  Caption = 'Pegawai'
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
        ExplicitWidth = 564
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        ExplicitWidth = 564
        DesignSize = (
          560
          312)
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblEmployeeId: TLabel
          Left = 9
          Top = 9
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object lblEmployeeName: TLabel
          Left = 9
          Top = 27
          Width = 31
          Height = 13
          Caption = 'Nama '
          Transparent = True
        end
        object lblPosition: TLabel
          Left = 9
          Top = 45
          Width = 38
          Height = 13
          Caption = 'Jabatan'
          Transparent = True
        end
        object Bevel1: TBevel
          Left = 9
          Top = 100
          Width = 526
          Height = 8
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 546
        end
        object lblUsername: TLabel
          Left = 9
          Top = 114
          Width = 48
          Height = 13
          Caption = 'Username'
          Transparent = True
        end
        object lblLevelValidation: TLabel
          Left = 9
          Top = 132
          Width = 65
          Height = 13
          Caption = 'Level Validasi'
          Transparent = True
        end
        object lblPrefixCode: TLabel
          Left = 9
          Top = 63
          Width = 57
          Height = 13
          Caption = 'Kode Prefix '
          Transparent = True
        end
        object lblPrefixCodeInfo: TLabel
          Left = 75
          Top = 81
          Width = 377
          Height = 13
          Caption = 
            '* Kode Prefix digunakan pada awalan kode transaksi untuk menu me' +
            'nu tertentu'
          Transparent = True
        end
        object Bevel2: TBevel
          Left = 9
          Top = 168
          Width = 526
          Height = 8
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 546
        end
        object dbeEmployeeId: TcxDBTextEdit
          Left = 75
          Top = 7
          BeepOnEnter = False
          DataBinding.DataField = 'employeeid'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          Properties.OnEditValueChanged = dbeEmployeeIdPropertiesEditValueChanged
          TabOrder = 0
          Width = 81
        end
        object dbchFlagInactive: TcxDBCheckBox
          Left = 159
          Top = 8
          Caption = 'Pegawai Non Aktif'
          DataBinding.DataField = 'flaginactive'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          Transparent = True
          Width = 114
        end
        object dbeEmployeeName: TcxDBTextEdit
          Left = 75
          Top = 25
          BeepOnEnter = False
          DataBinding.DataField = 'employeename'
          DataBinding.DataSource = dsDefault
          Properties.OnEditValueChanged = dbeEmployeeNamePropertiesEditValueChanged
          TabOrder = 2
          Width = 185
        end
        object dblcPositionId: TcxDBExtLookupComboBox
          Left = 75
          Top = 43
          BeepOnEnter = False
          DataBinding.DataField = 'positionid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmGlobal.cgvPrevPosition
          Properties.KeyFieldNames = 'PositionId'
          Properties.ListFieldItem = dmGlobal.cgvPrevPositionPositionName
          TabOrder = 3
          Width = 267
        end
        object dbeUsername: TcxDBTextEdit
          Left = 96
          Top = 112
          BeepOnEnter = False
          DataBinding.DataField = 'username'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 185
        end
        object dbchFlagInactiveUser: TcxDBCheckBox
          Left = 287
          Top = 114
          Caption = 'Blocked'
          DataBinding.DataField = 'flaginactiveuser'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 6
          Transparent = True
          Width = 73
        end
        object dbcbLevelValidation: TcxDBComboBox
          Left = 96
          Top = 130
          BeepOnEnter = False
          DataBinding.DataField = 'LevelValidation'
          DataBinding.DataSource = dsDefault
          Properties.Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9')
          TabOrder = 7
          Width = 79
        end
        object btnDeletePassword: TcxButton
          Left = 443
          Top = 112
          Width = 92
          Height = 48
          Action = actResetPassword
          Anchors = [akTop, akRight]
          Layout = blGlyphTop
          Spacing = 0
          TabOrder = 8
          WordWrap = True
        end
        object dbePrefixCode: TcxDBTextEdit
          Left = 75
          Top = 61
          BeepOnEnter = False
          DataBinding.DataField = 'PrefixCode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          Properties.OnEditValueChanged = dbeEmployeeIdPropertiesEditValueChanged
          TabOrder = 4
          Width = 81
        end
        object btnFingerPrint: TcxButton
          Left = 447
          Top = 182
          Width = 92
          Height = 48
          Action = actFingerPrint
          Anchors = [akTop, akRight]
          Layout = blGlyphTop
          Spacing = 0
          TabOrder = 10
        end
        object cgFingerPrint: TcxGrid
          Left = 9
          Top = 182
          Width = 428
          Height = 104
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 9
          object cgvFingerPrint: TcxGridDBCardView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.Visible = False
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.Post.Visible = False
            NavigatorButtons.Cancel.Visible = False
            NavigatorButtons.Refresh.Visible = True
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsFingerPrint
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            LayoutDirection = ldVertical
            OptionsView.Navigator = True
            OptionsView.CardWidth = 170
            object cgvFingerPrintemployeeid: TcxGridDBCardViewRow
              DataBinding.FieldName = 'employeeid'
              Visible = False
              Options.Editing = False
              Position.BeginsLayer = True
              VisibleForCustomization = False
            end
            object cgvFingerPrintfingermask: TcxGridDBCardViewRow
              Caption = 'Sidik Jari'
              DataBinding.FieldName = 'fingermask'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Ibu Jari Kanan'
                  ImageIndex = 0
                  Value = '1'
                end
                item
                  Description = 'Telunjuk Kanan'
                  Value = '2'
                end
                item
                  Description = 'Tengah Kanan'
                  Value = '3'
                end
                item
                  Description = 'Manis Kanan'
                  Value = '4'
                end
                item
                  Description = 'Kelingking Kanan'
                  Value = '5'
                end
                item
                  Description = 'Ibu Jari Kiri'
                  Value = '6'
                end
                item
                  Description = 'Telunjuk Kiri'
                  Value = '7'
                end
                item
                  Description = 'Tengah Kiri'
                  Value = '8'
                end
                item
                  Description = 'Manis Kiri'
                  Value = '9'
                end
                item
                  Description = 'Kelingking Kiri'
                  Value = '10'
                end>
              Options.Editing = False
              Options.Filtering = False
              Position.BeginsLayer = True
            end
          end
          object cgFingerPrintLevel1: TcxGridLevel
            GridView = cgvFingerPrint
          end
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
          object cgvPrevDisplayEmployeeId: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'EmployeeId'
            Width = 64
          end
          object cgvPrevDisplayEmployeeName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'EmployeeName'
            Width = 185
          end
          object cgvPrevDisplayPositionId: TcxGridDBColumn
            Caption = 'Jabatan'
            DataBinding.FieldName = 'PositionId'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevPosition
            Properties.KeyFieldNames = 'PositionId'
            Properties.ListFieldItem = dmGlobal.cgvPrevPositionPositionName
            Visible = False
            GroupIndex = 0
            Width = 64
          end
          object cgvPrevDisplayFlagInactive: TcxGridDBColumn
            DataBinding.FieldName = 'FlagInactive'
            PropertiesClassName = 'TcxRadioGroupProperties'
            Properties.Columns = 2
            Properties.Items = <
              item
                Caption = 'Active'
                Value = 0
              end
              item
                Caption = 'Resign'
                Value = 1
              end>
            Visible = False
            VisibleForCustomization = False
            Width = 64
          end
          object cgvPrevDisplayFlagFix: TcxGridDBColumn
            DataBinding.FieldName = 'FlagFix'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
      object pnlLegend: TPanel
        Left = 0
        Top = 87
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
    object actResetPassword: TAction
      Caption = 'Hapus Password'
      Hint = 'Reset Password'
      ImageIndex = 16
      OnExecute = actResetPasswordExecute
    end
    object actFingerPrint: TAction
      Caption = 'Ambil Sidik Jari'
      ImageIndex = 18
      OnExecute = actFingerPrintExecute
    end
  end
  inherited dsDefault: TDataSource
    DataSet = dmGlobal.qryEmployee
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryFingerPrint: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from FingerPrint'
      'where EmployeeId = :EmployeeId'
      'order by FingerMask')
    MasterSource = dsDefault
    Left = 136
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'employeeid'
        ParamType = ptInput
        Value = 'USER'
      end>
  end
  object dsFingerPrint: TDataSource
    DataSet = qryFingerPrint
    Left = 168
    Top = 144
  end
end
