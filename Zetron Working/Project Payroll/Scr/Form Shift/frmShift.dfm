inherited fmShift: TfmShift
  Caption = 'Master Shift'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 317
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
        object lblCountryId: TLabel
          Left = 8
          Top = 6
          Width = 49
          Height = 13
          Caption = 'Kode Shift'
        end
        object lblCountryName: TLabel
          Left = 8
          Top = 31
          Width = 52
          Height = 13
          Caption = 'Nama Shift'
        end
        object Label1: TLabel
          Left = 8
          Top = 56
          Width = 32
          Height = 13
          Caption = 'Warna'
        end
        object dbeKodeStatus: TcxDBTextEdit
          Left = 70
          Top = 4
          DataBinding.DataField = 'shift'
          DataBinding.DataSource = dmgeneral.dsShift
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbeNama: TcxDBTextEdit
          Left = 70
          Top = 29
          DataBinding.DataField = 'namashift'
          DataBinding.DataSource = dmgeneral.dsShift
          TabOrder = 1
          Width = 185
        end
        object dbclWarna: TcxDBColorComboBox
          Left = 70
          Top = 55
          DataBinding.DataField = 'warna'
          DataBinding.DataSource = dmgeneral.dsShift
          Properties.AllowSelectColor = True
          Properties.ColorValueFormat = cxcvInteger
          Properties.CustomColors = <>
          Properties.DefaultColorStyle = cxdcCustom
          Properties.ShowDescriptions = False
          TabOrder = 2
          Width = 121
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 317
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgStatusKaryawan: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 295
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 181
        ExplicitHeight = 307
        object cgvShift: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmgeneral.dsShift
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvShiftshift: TcxGridDBColumn
            Caption = 'Shift'
            DataBinding.FieldName = 'shift'
          end
          object cgvShiftnamashift: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'namashift'
          end
          object cgvShiftwarna: TcxGridDBColumn
            Caption = 'Warna'
            DataBinding.FieldName = 'warna'
            PropertiesClassName = 'TcxColorComboBoxProperties'
            Properties.CustomColors = <>
          end
        end
        object cgStatusKaryawanLevel1: TcxGridLevel
          GridView = cgvShift
        end
      end
    end
  end
  inherited ActionList1: TActionList
    inherited actInsert: TDataSetInsert
      Enabled = False
    end
    inherited actEdit: TDataSetEdit
      Enabled = False
    end
    inherited actPost: TDataSetPost
      Enabled = False
    end
    inherited actCancel: TDataSetCancel
      Enabled = False
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
