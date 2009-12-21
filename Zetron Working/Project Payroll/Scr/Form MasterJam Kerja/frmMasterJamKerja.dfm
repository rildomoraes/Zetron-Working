inherited fmMasterJamKerja: TfmMasterJamKerja
  Caption = 'Master Jam Kerja'
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
        object Label1: TLabel
          Left = 9
          Top = 6
          Width = 74
          Height = 13
          Caption = 'Kode Jam Kerja'
          Transparent = True
        end
        object lbJamKerjaAwal: TLabel
          Left = 9
          Top = 24
          Width = 72
          Height = 13
          Caption = 'Jam Kerja Awal'
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 42
          Width = 73
          Height = 13
          Caption = 'Jam Kerja Akhir'
          Transparent = True
        end
        object Label5: TLabel
          Left = 9
          Top = 60
          Width = 80
          Height = 13
          Caption = 'Jam Mulai Absen'
          Transparent = True
        end
        object Label6: TLabel
          Left = 9
          Top = 78
          Width = 79
          Height = 13
          Caption = 'Jam Absen Akhir'
          Transparent = True
        end
        object Label7: TLabel
          Left = 9
          Top = 96
          Width = 87
          Height = 13
          Caption = 'Jam Batas Lembur'
          Transparent = True
        end
        object Label8: TLabel
          Left = 9
          Top = 114
          Width = 93
          Height = 13
          Caption = 'Toleransi Terlambat'
          Transparent = True
        end
        object Label9: TLabel
          Left = 157
          Top = 113
          Width = 26
          Height = 13
          Caption = 'Menit'
          Transparent = True
        end
        object Label11: TLabel
          Left = 157
          Top = 131
          Width = 19
          Height = 13
          Caption = 'Jam'
          Transparent = True
        end
        object Label10: TLabel
          Left = 9
          Top = 132
          Width = 102
          Height = 13
          Caption = 'Jumlah Setengah hari'
          Transparent = True
        end
        object Label3: TLabel
          Left = 9
          Top = 150
          Width = 21
          Height = 13
          Caption = 'Aktif'
          Transparent = True
        end
        object Label4: TLabel
          Left = 9
          Top = 168
          Width = 40
          Height = 13
          Caption = 'Overday'
          Transparent = True
        end
        object Label12: TLabel
          Left = 151
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
          Left = 119
          Top = 3
          DataBinding.DataField = 'kodejamkerja'
          DataBinding.DataSource = dsDefault
          TabOrder = 0
          Width = 26
        end
        object dbteJamKerjaAwal: TcxDBTimeEdit
          Left = 119
          Top = 21
          DataBinding.DataField = 'jamkerjaawal'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 121
        end
        object dbteJamKerjaAkhir: TcxDBTimeEdit
          Left = 119
          Top = 39
          DataBinding.DataField = 'jamkerjaakhir'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 121
        end
        object dbteJamMulaiAbsen: TcxDBTimeEdit
          Left = 119
          Top = 57
          DataBinding.DataField = 'jammulaiabsen'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 121
        end
        object dbteJamAbsenAkhir: TcxDBTimeEdit
          Left = 119
          Top = 75
          DataBinding.DataField = 'jamakhirabsen'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 121
        end
        object dbteJamBatasLembur: TcxDBTimeEdit
          Left = 119
          Top = 93
          DataBinding.DataField = 'jambataslembur'
          DataBinding.DataSource = dsDefault
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 119
          Top = 111
          DataBinding.DataField = 'toleransiterlambat'
          DataBinding.DataSource = dsDefault
          TabOrder = 6
          Width = 35
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 119
          Top = 129
          DataBinding.DataField = 'jumlahsetengahhari'
          DataBinding.DataSource = dsDefault
          TabOrder = 7
          Width = 35
        end
        object chkAktif: TcxDBCheckBox
          Left = 115
          Top = 149
          DataBinding.DataField = 'aktif'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 8
          Transparent = True
          Width = 121
        end
        object chkOverday: TcxDBCheckBox
          Left = 115
          Top = 166
          DataBinding.DataField = 'overday'
          DataBinding.DataSource = dsDefault
          ParentColor = False
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 9
          Transparent = True
          Width = 121
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 0
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgMasterJamKerja: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvMasterJamKerja: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvMasterJamKerjakodejamkerja: TcxGridDBColumn
            Caption = 'Kode Jam Kerja'
            DataBinding.FieldName = 'kodejamkerja'
          end
          object cgvMasterJamKerjajammulaiabsen: TcxGridDBColumn
            Caption = 'Mulai Absen'
            DataBinding.FieldName = 'jammulaiabsen'
            PropertiesClassName = 'TcxTimeEditProperties'
          end
          object cgvMasterJamKerjajamakhirabsen: TcxGridDBColumn
            Caption = 'Akhir Absen'
            DataBinding.FieldName = 'jamakhirabsen'
            PropertiesClassName = 'TcxTimeEditProperties'
          end
          object cgvMasterJamKerjajamkerjaawal: TcxGridDBColumn
            Caption = 'Masuk Awal'
            DataBinding.FieldName = 'jamkerjaawal'
            PropertiesClassName = 'TcxTimeEditProperties'
            Width = 68
          end
          object cgvMasterJamKerjajamkerjaakhir: TcxGridDBColumn
            Caption = 'Keluar Akhir'
            DataBinding.FieldName = 'jamkerjaakhir'
            PropertiesClassName = 'TcxTimeEditProperties'
          end
          object cgvMasterJamKerjajambataslembur: TcxGridDBColumn
            Caption = 'Batas Lembur'
            DataBinding.FieldName = 'jambataslembur'
            PropertiesClassName = 'TcxTimeEditProperties'
          end
          object cgvMasterJamKerjatoleransiterlambat: TcxGridDBColumn
            Caption = 'Toleransi Terlambat'
            DataBinding.FieldName = 'toleransiterlambat'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvMasterJamKerjajumlahsetengahhari: TcxGridDBColumn
            Caption = 'Jumlah Setengah Hari'
            DataBinding.FieldName = 'jumlahsetengahhari'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvMasterJamKerjaoverday: TcxGridDBColumn
            Caption = 'Overday'
            DataBinding.FieldName = 'overday'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
          end
          object cgvMasterJamKerjaaktif: TcxGridDBColumn
            Caption = 'Aktif'
            DataBinding.FieldName = 'aktif'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
          end
        end
        object cgMasterJamKerjaLevel1: TcxGridLevel
          GridView = cgvMasterJamKerja
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 360
    Top = 96
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
    Left = 392
    Top = 96
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 424
    Top = 96
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryMasterJamKerja
    Left = 360
    Top = 128
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 456
    Top = 96
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 392
    Top = 128
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
