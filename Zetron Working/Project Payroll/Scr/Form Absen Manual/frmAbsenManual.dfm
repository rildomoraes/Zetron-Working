inherited fmAbsenManual: TfmAbsenManual
  Caption = 'Absen Manual'
  ClientHeight = 438
  ClientWidth = 640
  ExplicitWidth = 648
  ExplicitHeight = 472
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 640
    ExplicitWidth = 640
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 50
    Width = 640
    Height = 63
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 6
      Width = 38
      Height = 13
      Caption = 'Tanggal'
      Transparent = True
    end
    object Label4: TLabel
      Left = 9
      Top = 24
      Width = 54
      Height = 13
      Caption = 'Group Shift'
      Transparent = True
    end
    object Label2: TLabel
      Left = 9
      Top = 42
      Width = 22
      Height = 13
      Caption = 'Shift'
      Transparent = True
    end
    object Label9: TLabel
      Left = 243
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
    object Label3: TLabel
      Left = 243
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
    object Label5: TLabel
      Left = 147
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
    object cxButton1: TcxButton
      Left = 266
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object dbeTanggal: TcxDateEdit
      Left = 88
      Top = 3
      EditValue = 0d
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 149
    end
    object lcbGroupShift: TcxExtLookupComboBox
      Left = 88
      Top = 21
      Properties.View = dmGeneral.cgvPrevGroupShift
      Properties.KeyFieldNames = 'kodegroupshiftid'
      Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftnamagroupshift
      TabOrder = 2
      Width = 149
    end
    object lcbShift: TcxExtLookupComboBox
      Left = 88
      Top = 39
      Properties.View = dmGeneral.cgvPrevGroupShiftDt1
      Properties.KeyFieldNames = 'shift'
      Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftDt1shift
      TabOrder = 3
      Width = 53
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 113
    Width = 640
    Height = 325
    Align = alClient
    TabOrder = 2
    object cgAbsenManual: TcxGrid
      Left = 1
      Top = 1
      Width = 638
      Height = 323
      Align = alClient
      TabOrder = 0
      object cgvAbsenManual: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsAbsenManual
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'Jum ,0.;-,0.'
            Kind = skCount
            FieldName = 'pegawaiid'
            DisplayText = 'JUMLAH'
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.InfoText = 'Klik disini untuk menambah data baru'
        NewItemRow.Visible = True
        OptionsSelection.CellMultiSelect = True
        OptionsView.Navigator = True
        OptionsView.Footer = True
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        object cgvAbsenManualNopeg: TcxGridDBColumn
          Caption = 'No Peg *'
          DataBinding.FieldName = 'pegawaiid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmGeneral.cgvPosisiActiveTglShift
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnopeg
          Width = 58
        end
        object cgvAbsenManualNama: TcxGridDBColumn
          Caption = 'Nama'
          DataBinding.FieldName = 'pegawaiid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmGeneral.cgvPosisiActiveTglShift
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnama
          Width = 181
        end
        object cgvAbsenManualkodeabsen: TcxGridDBColumn
          Caption = 'Kode Absen *'
          DataBinding.FieldName = 'kodeabsen'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmGeneral.cgvPrevKodeAbsen
          Properties.KeyFieldNames = 'kodeabsen'
          Properties.ListFieldItem = dmGeneral.cgvPrevKodeAbsenkodeabsen
          Width = 79
        end
        object cgvAbsenManualmasuk1: TcxGridDBColumn
          Caption = 'Masuk'
          DataBinding.FieldName = 'masuk1'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Kind = ckDateTime
          Width = 44
        end
        object cgvAbsenManualkeluar1: TcxGridDBColumn
          Caption = 'Keluar'
          DataBinding.FieldName = 'keluar1'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Kind = ckDateTime
          Width = 61
        end
        object cgvAbsenManualterlambat: TcxGridDBColumn
          Caption = 'Terlambat'
          DataBinding.FieldName = 'terlambat'
          PropertiesClassName = 'TcxCalcEditProperties'
        end
        object cgvAbsenManualnoreg: TcxGridDBColumn
          Caption = 'Noreg *'
          DataBinding.FieldName = 'noreg'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmGeneral.cgvPosisiActiveTglShift
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnoreg
          Visible = False
        end
        object cgvAbsenManuallembur: TcxGridDBColumn
          Caption = 'Lembur'
          DataBinding.FieldName = 'lembur'
        end
        object cgvAbsenManualm1: TcxGridDBColumn
          Caption = 'M1'
          DataBinding.FieldName = 'm1'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Barcode'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Username Password'
              Value = '1'
            end
            item
              Description = 'Fingerprint'
              Value = '2'
            end
            item
              Description = 'Manual'
              Value = '3'
            end>
          Options.Editing = False
        end
        object cgvAbsenManualk1: TcxGridDBColumn
          Caption = 'K1'
          DataBinding.FieldName = 'k1'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Username Password'
              Value = '0'
            end
            item
              Description = 'Fingerprint'
              Value = '1'
            end
            item
              Description = 'Username'
              ImageIndex = 0
              Value = '2'
            end
            item
              Description = 'Manual'
              Value = '3'
            end>
          Options.Editing = False
        end
        object cgvAbsenManualemployeeid: TcxGridDBColumn
          Caption = 'Supervisor *'
          DataBinding.FieldName = 'employeeid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmGeneral.cgvPegawai
          Properties.KeyFieldNames = 'dmGeneral.cgvPegawaiid'
          Properties.ListFieldItem = dmGeneral.cgvPegawainama
          Options.Editing = False
        end
        object cgvAbsenManualstatusabsen: TcxGridDBColumn
          Caption = 'Status Absen *'
          DataBinding.FieldName = 'statusabsen'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Belum OK'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Sudah OK'
              Value = '1'
            end
            item
              Description = 'Sudah Closing'
              Value = '2'
            end>
          Options.Editing = False
          Width = 71
        end
        object cgvAbsenManualflagupdate: TcxGridDBColumn
          Caption = 'Update *'
          DataBinding.FieldName = 'flagupdate'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Options.Editing = False
          Width = 50
        end
        object cgvAbsenManualflagprosesgaji: TcxGridDBColumn
          Caption = 'Proses Gaji *'
          DataBinding.FieldName = 'flagprosesgaji'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Options.Editing = False
          Width = 67
        end
        object cgvAbsenManualpulangawal: TcxGridDBColumn
          Caption = 'Pulang Awal'
          DataBinding.FieldName = 'pulangawal'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 72
        end
        object cgvAbsenManualPegawaiId: TcxGridDBColumn
          Caption = 'Pegawai ID'
          DataBinding.FieldName = 'pegawaiid'
          Width = 68
        end
        object cgvAbsenManualketerangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
        end
        object cgvAbsenManualnmdivisi: TcxGridDBColumn
          Caption = 'Divisi'
          DataBinding.FieldName = 'nmdivisi'
        end
        object cgvAbsenManualnmdepartemen: TcxGridDBColumn
          Caption = 'Departemen'
          DataBinding.FieldName = 'nmdepartemen'
        end
        object cgvAbsenManualkodestatus: TcxGridDBColumn
          Caption = 'Kode Status'
          DataBinding.FieldName = 'kodestatus'
        end
        object cgvAbsenManualtgl: TcxGridDBColumn
          DataBinding.FieldName = 'tgl'
        end
        object cgvAbsenManualkodegroupshiftid: TcxGridDBColumn
          Caption = 'kodegroupshiftid *'
          DataBinding.FieldName = 'kodegroupshiftid'
          Width = 105
        end
        object cgvAbsenManualshift: TcxGridDBColumn
          Caption = 'shift *'
          DataBinding.FieldName = 'shift'
        end
        object cgvAbsenManualmasuk2: TcxGridDBColumn
          DataBinding.FieldName = 'masuk2'
        end
        object cgvAbsenManualmasuk3: TcxGridDBColumn
          DataBinding.FieldName = 'masuk3'
        end
        object cgvAbsenManualmasuk4: TcxGridDBColumn
          DataBinding.FieldName = 'masuk4'
        end
        object cgvAbsenManualmasuk5: TcxGridDBColumn
          DataBinding.FieldName = 'masuk5'
        end
        object cgvAbsenManualkeluar2: TcxGridDBColumn
          DataBinding.FieldName = 'keluar2'
        end
        object cgvAbsenManualkeluar3: TcxGridDBColumn
          DataBinding.FieldName = 'keluar3'
        end
        object cgvAbsenManualkeluar4: TcxGridDBColumn
          DataBinding.FieldName = 'keluar4'
        end
        object cgvAbsenManualkeluar5: TcxGridDBColumn
          DataBinding.FieldName = 'keluar5'
        end
        object cgvAbsenManualm2: TcxGridDBColumn
          DataBinding.FieldName = 'm2'
        end
        object cgvAbsenManualm3: TcxGridDBColumn
          DataBinding.FieldName = 'm3'
        end
        object cgvAbsenManualm4: TcxGridDBColumn
          DataBinding.FieldName = 'm4'
        end
        object cgvAbsenManualm5: TcxGridDBColumn
          DataBinding.FieldName = 'm5'
        end
        object cgvAbsenManualk2: TcxGridDBColumn
          DataBinding.FieldName = 'k2'
        end
        object cgvAbsenManualk3: TcxGridDBColumn
          DataBinding.FieldName = 'k3'
        end
        object cgvAbsenManualk4: TcxGridDBColumn
          DataBinding.FieldName = 'k4'
        end
        object cgvAbsenManualk5: TcxGridDBColumn
          DataBinding.FieldName = 'k5'
        end
        object cgvAbsenManualstatus: TcxGridDBColumn
          Caption = 'Status *'
          DataBinding.FieldName = 'status'
        end
        object cgvAbsenManualmodemasuk: TcxGridDBColumn
          Caption = 'Mode Masuk *'
          DataBinding.FieldName = 'modemasuk'
        end
        object cgvAbsenManualmodekeluar: TcxGridDBColumn
          Caption = 'Mode Keluar *'
          DataBinding.FieldName = 'modekeluar'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cgvAbsenManual
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 120
    Top = 8
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 152
    Top = 8
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 184
    Top = 8
  end
  object dsAbsenManual: TDataSource
    DataSet = qryAbsenManual
    OnDataChange = dsAbsenManualDataChange
    Left = 189
    Top = 272
  end
  object qryAbsenManual: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryAbsenManualBeforePost
    BeforeRefresh = qryAbsenManualBeforeRefresh
    OnNewRecord = qryAbsenManualNewRecord
    Parameters = <
      item
        Name = 'Atgl'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = 39826d
      end
      item
        Name = 'kodegroupshiftid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'shift'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from absen '
      'where dbo.fnGetDate(tgl)=dbo.fnGetDate(:Atgl)'
      'and kodegroupshiftid=:kodegroupshiftid'
      'and shift =:shift')
    Left = 152
    Top = 272
  end
  object qryPosisiAktif: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryAbsenManualBeforePost
    OnNewRecord = qryAbsenManualNewRecord
    Parameters = <
      item
        Name = 'Atgl'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'kodegroupshiftid'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'shift'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select pegawaiid,(select b.namadivisi'
      'from mutasi a left join divisi b on a.kodedivisi=b.kodedivisi'
      'where  a.noreg=absen.noreg) as nmdivisi,'
      '(select b.namadepartemen'
      
        'from mutasi a left join departemen b on a.kodedepartemen=b.koded' +
        'epartemen'
      'where  a.noreg=absen.noreg) as nmdepartemen,'
      '(select a.kodestatus'
      'from mutasi a'
      'where  a.noreg=absen.noreg) as kodestatus'
      'from absen'
      'where dbo.fnGetDate(tgl)=dbo.fnGetDate(:Atgl)'
      'and kodegroupshiftid=:kodegroupshiftid'
      'and shift =:shift')
    Left = 240
    Top = 272
  end
end
