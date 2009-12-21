inherited fmGroupShift: TfmGroupShift
  Caption = 'Group Shift'
  ExplicitHeight = 400
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
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 57
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 9
            Top = 6
            Width = 81
            Height = 13
            Caption = 'Kode Group Shift'
            Transparent = True
          end
          object Label2: TLabel
            Left = 9
            Top = 24
            Width = 84
            Height = 13
            Caption = 'Nama Group Shift'
            Transparent = True
          end
          object Label9: TLabel
            Left = 225
            Top = 5
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
            Left = 225
            Top = 20
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
          object dbeKodeGroupShifId: TcxDBTextEdit
            Left = 98
            Top = 4
            DataBinding.DataField = 'kodegroupshiftid'
            DataBinding.DataSource = dsDefault
            TabOrder = 0
            Width = 121
          end
          object dbeNamaGroupShifId: TcxDBTextEdit
            Left = 98
            Top = 22
            DataBinding.DataField = 'namagroupshift'
            DataBinding.DataSource = dsDefault
            TabOrder = 1
            Width = 121
          end
        end
        object cgGroupShiftDt1: TcxGrid
          Left = 0
          Top = 57
          Width = 560
          Height = 96
          Align = alTop
          TabOrder = 1
          object cgvGroupShiftDt1: TcxGridDBTableView
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
            DataController.DataSource = dmGeneral.dsGroupShiftDt1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.InfoText = 'Klik Di sini untuk menambah data'
            OptionsData.Appending = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvGroupShiftDt1kodegroupshiftid: TcxGridDBColumn
              Caption = 'Kode Group Shift *'
              DataBinding.FieldName = 'kodegroupshiftid'
              Visible = False
            end
            object cgvGroupShiftDt1shift: TcxGridDBColumn
              Caption = 'Shift *'
              DataBinding.FieldName = 'shift'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Pagi'
                  ImageIndex = 0
                  Value = '1'
                end
                item
                  Description = 'Siang'
                  Value = '2'
                end
                item
                  Description = 'Malam'
                  Value = '3'
                end>
              Width = 66
            end
            object cgvGroupShiftDt1warna: TcxGridDBColumn
              Caption = 'Warna'
              DataBinding.FieldName = 'warna'
              PropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.CustomColors = <>
              Width = 85
            end
            object cgvGroupShiftDt1modevalidasi: TcxGridDBColumn
              Caption = 'Mode Validasi *'
              DataBinding.FieldName = 'modevalidasi'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Personalia'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Supervisor'
                  Value = '1'
                end>
              Width = 107
            end
          end
          object cgGroupShiftDt1Level1: TcxGridLevel
            GridView = cgvGroupShiftDt1
          end
        end
        object cgGroupShiftDt2: TcxGrid
          Left = 0
          Top = 153
          Width = 560
          Height = 159
          Align = alClient
          TabOrder = 2
          object cgvGroupShiftDt2: TcxGridDBTableView
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
            DataController.DataSource = dmGeneral.dsGroupShiftDt2
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.InfoText = 'Klik Di sini untuk menambah data'
            OptionsData.Appending = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvGroupShiftDt2kodehari: TcxGridDBColumn
              Caption = 'Kode Hari *'
              DataBinding.FieldName = 'kodehari'
            end
            object cgvGroupShiftDt2hari: TcxGridDBColumn
              Caption = 'Hari *'
              DataBinding.FieldName = 'kodehari'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Minggu'
                  ImageIndex = 0
                  Value = 1
                end
                item
                  Description = 'Senin'
                  Value = 2
                end
                item
                  Description = 'Selasa'
                  Value = 3
                end
                item
                  Description = 'Rabu'
                  Value = 4
                end
                item
                  Description = 'Kamis'
                  Value = 5
                end
                item
                  Description = 'Jumat'
                  Value = 6
                end
                item
                  Description = 'Sabtu'
                  Value = 7
                end>
            end
            object cgvGroupShiftDt2kodejamkerja: TcxGridDBColumn
              Caption = 'Kode Jam Kerja'
              DataBinding.FieldName = 'kodejamkerja'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPrevKodeJamKerja
              Properties.KeyFieldNames = 'kodejamkerja'
              Properties.ListFieldItem = dmGeneral.cgvPrevKodeJamKerjakodejamkerja
              Width = 121
            end
            object cgvGroupShiftDt2spl: TcxGridDBColumn
              Caption = 'Spl *'
              DataBinding.FieldName = 'spl'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Width = 81
            end
            object cgvGroupShiftDt2kodegroupshiftid: TcxGridDBColumn
              Caption = 'Kode Group Shift *'
              DataBinding.FieldName = 'kodegroupshiftid'
              Visible = False
            end
            object cgvGroupShiftDt2shift: TcxGridDBColumn
              Caption = 'Shift *'
              DataBinding.FieldName = 'shift'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Pagi'
                  ImageIndex = 0
                  Value = '1'
                end
                item
                  Description = 'Siang'
                  Value = '2'
                end
                item
                  Description = 'Malam'
                  Value = '3'
                end>
              Visible = False
            end
          end
          object cgvGroupShiftDt2MasterJamKerja: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dmGeneral.dsMasterJamKerja
            DataController.DetailKeyFieldNames = 'kodejamkerja'
            DataController.KeyFieldNames = 'kodejamkerja'
            DataController.MasterKeyFieldNames = 'kodejamkerja'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cgvGroupShiftDt2MasterJamKerjakodejamkerja: TcxGridDBColumn
              Caption = 'Kode Jam Kerja'
              DataBinding.FieldName = 'kodejamkerja'
            end
            object cgvGroupShiftDt2MasterJamKerjajamkerjaawal: TcxGridDBColumn
              Caption = 'Jam Kerja Awal'
              DataBinding.FieldName = 'jamkerjaawal'
            end
            object cgvGroupShiftDt2MasterJamKerjajamkerjaakhir: TcxGridDBColumn
              Caption = 'Jam Kerja Akhir'
              DataBinding.FieldName = 'jamkerjaakhir'
            end
            object cgvGroupShiftDt2MasterJamKerjaoverday: TcxGridDBColumn
              Caption = 'OverDay'
              DataBinding.FieldName = 'overday'
            end
            object cgvGroupShiftDt2MasterJamKerjaaktif: TcxGridDBColumn
              Caption = 'Aktif'
              DataBinding.FieldName = 'aktif'
            end
            object cgvGroupShiftDt2MasterJamKerjatoleransiterlambat: TcxGridDBColumn
              Caption = 'Toleransi terlambat'
              DataBinding.FieldName = 'toleransiterlambat'
            end
            object cgvGroupShiftDt2MasterJamKerjajumlahsetengahhari: TcxGridDBColumn
              Caption = 'Jumlah Jam Setengah Hari'
              DataBinding.FieldName = 'jumlahsetengahhari'
            end
            object cgvGroupShiftDt2MasterJamKerjajambataslembur: TcxGridDBColumn
              Caption = 'Jam Batas Lembur'
              DataBinding.FieldName = 'jambataslembur'
            end
            object cgvGroupShiftDt2MasterJamKerjajammulaiabsen: TcxGridDBColumn
              Caption = 'Jam Mulai Absen'
              DataBinding.FieldName = 'jammulaiabsen'
            end
            object cgvGroupShiftDt2MasterJamKerjajamakhirabsen: TcxGridDBColumn
              Caption = 'Jam Akhir Absen'
              DataBinding.FieldName = 'jamakhirabsen'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cgvGroupShiftDt2
            object cgGroupShiftDt2Level1: TcxGridLevel
              GridView = cgvGroupShiftDt2MasterJamKerja
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 316
      ExplicitHeight = 316
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgGroupShift: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        object cgvGroupShift: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvGroupShiftkodegroupshiftid: TcxGridDBColumn
            Caption = 'Kode Group Shift'
            DataBinding.FieldName = 'kodegroupshiftid'
            Width = 87
          end
          object cgvGroupShiftNAMAGROUPSHIFT: TcxGridDBColumn
            Caption = 'Nama Group Shift'
            DataBinding.FieldName = 'NamaGroupShift'
          end
        end
        object cgGroupShiftLevel1: TcxGridLevel
          GridView = cgvGroupShift
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 440
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
    Left = 472
    Top = 56
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 504
    Top = 56
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryGroupShiftHd
    Left = 440
    Top = 88
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 536
    Top = 56
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 472
    Top = 88
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
