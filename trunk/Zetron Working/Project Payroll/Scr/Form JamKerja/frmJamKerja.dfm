object fmJamKerja: TfmJamKerja
  Left = 339
  Top = 181
  Caption = 'Jam Kerja'
  ClientHeight = 425
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  DesignSize = (
    641
    425)
  PixelsPerInch = 96
  TextHeight = 13
  inline feSetupButton1: TfeSetupButton
    Left = 0
    Top = 0
    Width = 641
    Height = 65
    Align = alTop
    Constraints.MinWidth = 636
    TabOrder = 0
    TabStop = True
    ExplicitWidth = 641
    ExplicitHeight = 65
    inherited shpToolbarBackground: TShape
      Width = 641
      Height = 65
      ExplicitWidth = 636
      ExplicitHeight = 65
    end
    inherited btnReset: TcxButton
      Left = 611
      ExplicitLeft = 611
    end
    inherited ActionList1: TActionList
      OnExecute = feSetupButton1ActionList1Execute
      inherited DataSetInsert1: TDataSetInsert
        Enabled = False
      end
      inherited DataSetEdit1: TDataSetEdit
        Enabled = False
      end
      inherited DataSetDelete1: TDataSetDelete
        Enabled = False
      end
      inherited DataSetPost1: TDataSetPost
        Enabled = False
      end
      inherited DataSetCancel1: TDataSetCancel
        Enabled = False
      end
      inherited DataSetRefresh1: TAction
        OnExecute = feSetupButton1DataSetRefresh1Execute
      end
      inherited DataSetPrior1: TDataSetPrior
        Enabled = False
      end
      inherited DataSetNext1: TDataSetNext
        Enabled = False
      end
    end
  end
  object dxDockSite1: TdxDockSite
    Left = 0
    Top = 65
    Width = 641
    Height = 360
    Align = alClient
    DockType = 0
    OriginalWidth = 641
    OriginalHeight = 360
    object dxLayoutDockSite2: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 613
      Height = 360
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      object dxLayoutDockSite1: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 613
        Height = 360
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object dxVertContainerDockSite2: TdxVertContainerDockSite
        Left = 0
        Top = 0
        Width = 613
        Height = 360
        ActiveChildIndex = -1
        AllowFloating = True
        AutoHide = False
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object dxDockPanel1: TdxDockPanel
          Left = 0
          Top = 0
          Width = 613
          Height = 73
          AllowFloating = True
          AutoHide = False
          Caption = 'dxDockPanel1'
          Dockable = False
          ShowCaption = False
          DockType = 3
          OriginalWidth = 185
          OriginalHeight = 73
          object Label1: TLabel
            Left = 8
            Top = 7
            Width = 84
            Height = 13
            Caption = 'Kode Perusahaan'
          end
          object Label2: TLabel
            Left = 8
            Top = 32
            Width = 49
            Height = 13
            Caption = 'Kode Shift'
          end
          object dbeKodePerusahaan: TcxExtLookupComboBox
            Left = 98
            Top = 5
            Properties.View = dmGeneral.cgvPrevPerusahaan
            Properties.KeyFieldNames = 'kodeperusahaan'
            Properties.ListFieldItem = dmGeneral.cgvPrevPerusahaannamaperusahaan
            Properties.OnEditValueChanged = dbeKodePerusahaanPropertiesEditValueChanged
            TabOrder = 0
            Width = 223
          end
          object dbeKodeShift: TcxExtLookupComboBox
            Left = 98
            Top = 30
            Properties.View = dmGeneral.cgvShift
            Properties.KeyFieldNames = 'shift'
            Properties.ListFieldItem = dmGeneral.cgvShiftshift
            Properties.OnEditValueChanged = dbeKodePerusahaanPropertiesEditValueChanged
            TabOrder = 1
            Width = 223
          end
        end
        object dxDockPanel2: TdxDockPanel
          Left = 0
          Top = 73
          Width = 613
          Height = 287
          AllowFloating = True
          AutoHide = False
          Caption = 'dxDockPanel2'
          Dockable = False
          ShowCaption = False
          DockType = 3
          OriginalWidth = 185
          OriginalHeight = 287
          object cgJamKerja1: TcxGrid
            Left = 0
            Top = 0
            Width = 609
            Height = 283
            Align = alClient
            TabOrder = 0
            object cgvJamKerja1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.Edit.Visible = False
              NavigatorButtons.Refresh.Visible = False
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.DataSource = dsJamKerja
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.InfoText = 'Klik Di sini untuk menambah data'
              NewItemRow.Visible = True
              OptionsData.Appending = True
              OptionsView.Navigator = True
              OptionsView.GroupByBox = False
              object cgvJamKerja1kodeperusahaan: TcxGridDBColumn
                Caption = 'Kode Perusahaan'
                DataBinding.FieldName = 'kodeperusahaan'
                Visible = False
              end
              object cgvJamKerja1shift: TcxGridDBColumn
                Caption = 'Shift'
                DataBinding.FieldName = 'shift'
                Visible = False
                Width = 44
              end
              object cgvJamKerja1kodehari: TcxGridDBColumn
                Caption = 'Hari'
                DataBinding.FieldName = 'kodehari'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Items = <
                  item
                    Description = 'Senin'
                    ImageIndex = 0
                    Value = '1'
                  end
                  item
                    Description = 'Selasa'
                    Value = '2'
                  end
                  item
                    Description = 'Rabu'
                    Value = '3'
                  end
                  item
                    Description = 'Kamis'
                    Value = '4'
                  end
                  item
                    Description = 'Jumat'
                    Value = '5'
                  end
                  item
                    Description = 'Sabtu'
                    Value = '6'
                  end
                  item
                    Description = 'Minggu'
                    Value = '0'
                  end>
                Width = 66
              end
              object cgvJamKerja1kodejamkerja: TcxGridDBColumn
                Caption = 'Kode Jam Kerja'
                DataBinding.FieldName = 'kodejamkerja'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.View = dmGeneral.cgvPrevKodeJamKerja
                Properties.KeyFieldNames = 'kodejamkerja'
                Properties.ListFieldItem = dmGeneral.cgvPrevKodeJamKerjakodejamkerja
                Width = 126
              end
            end
            object cgJamKerja1Level1: TcxGridLevel
              GridView = cgvJamKerja1
            end
          end
        end
      end
    end
    object dpExplorer: TdxDockPanel
      Left = -425
      Top = 0
      Width = 425
      Height = 0
      Visible = False
      AllowFloating = True
      AutoHide = True
      Caption = 'Explorer'
      Dockable = False
      ImageIndex = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 425
      OriginalHeight = 70
      object cgJamKerja: TcxGrid
        Left = 0
        Top = 0
        Width = 421
        Height = 0
        Align = alClient
        TabOrder = 0
        object cgvJamKerja: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmGeneral.dsJamKerja
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvJamKerjakodehari: TcxGridDBColumn
            Caption = 'Kode Hari'
            DataBinding.FieldName = 'kodehari'
            Width = 39
          end
          object cgvJamKerjashift: TcxGridDBColumn
            Caption = 'Shift'
            DataBinding.FieldName = 'shift'
            Width = 30
          end
          object cgvJamKerjanamahari: TcxGridDBColumn
            Caption = 'Nama Hari'
            DataBinding.FieldName = 'kodehari'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Minggu'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Senin'
                Value = '1'
              end
              item
                Description = 'Selasa'
                Value = '2'
              end
              item
                Description = 'Rabu'
                Value = '3'
              end
              item
                Description = 'Kamis'
                Value = '4'
              end
              item
                Description = 'Jumat'
                Value = '5'
              end
              item
                Description = 'Sabtu'
                Value = '6'
              end>
            Width = 67
          end
          object cgvJamKerjakodeperusahaan: TcxGridDBColumn
            Caption = 'Kode Perusahaan'
            DataBinding.FieldName = 'kodeperusahaan'
            Width = 89
          end
          object cgvJamKerjakodejamkerja: TcxGridDBColumn
            Caption = 'Kode Jam Kerja'
            DataBinding.FieldName = 'kodejamkerja'
            Width = 79
          end
          object cgvJamKerjaAwal: TcxGridDBColumn
            Caption = 'Awal'
            DataBinding.FieldName = 'kodejamkerja'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevKodeJamKerja
            Properties.KeyFieldNames = 'kodejamkerja'
            Properties.ListFieldItem = dmGeneral.cgvPrevKodeJamKerjajamkerjaawal
            Width = 28
          end
          object cgvJamKerjaAkhir: TcxGridDBColumn
            Caption = 'Akhir'
            DataBinding.FieldName = 'kodejamkerja'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevKodeJamKerja
            Properties.KeyFieldNames = 'kodejamkerja'
            Properties.ListFieldItem = dmGeneral.cgvPrevKodeJamKerjajamkerjaakhir
            Width = 29
          end
          object cgvJamKerjaOverday: TcxGridDBColumn
            Caption = 'Overday'
            DataBinding.FieldName = 'kodejamkerja'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevKodeJamKerja
            Properties.KeyFieldNames = 'kodejamkerja'
            Properties.ListFieldItem = dmGeneral.cgvPrevKodeJamKerjaoverday
            Width = 64
          end
          object cgvJamKerjaAktif: TcxGridDBColumn
            Caption = 'Aktif'
            DataBinding.FieldName = 'kodejamkerja'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevKodeJamKerja
            Properties.KeyFieldNames = 'kodejamkerja'
            Properties.ListFieldItem = dmGeneral.cgvPrevKodeJamKerjaaktif
            Width = 44
          end
        end
        object cgJamKerjaLevel1: TcxGridLevel
          GridView = cgvJamKerja
        end
      end
    end
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Collection = <>
    Filename = 'Setting Jam Kerja.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 464
    Top = 72
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Filename = 'Setting Jam Kerja.cfg'
    Sorting = True
    Version = '1.3'
    Left = 496
    Top = 72
  end
  object dxDockingManager1: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [doActivateAfterDocking, doDblClickDocking, doFloatingOnTop, doTabContainerHasCaption, doTabContainerCanAutoHide, doSideContainerCanClose, doSideContainerCanAutoHide, doTabContainerCanInSideContainer]
    ViewStyle = vsStandard
    Left = 528
    Top = 72
  end
  object dsJamKerja: TDataSource
    DataSet = dmGeneral.qryJamKerja
    OnStateChange = dsJamKerjaStateChange
    Left = 104
    Top = 184
  end
end
