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
    Height = 84
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 12
      Width = 38
      Height = 13
      Caption = 'Tanggal'
      Transparent = True
    end
    object Label4: TLabel
      Left = 9
      Top = 36
      Width = 54
      Height = 13
      Caption = 'Group Shift'
      Transparent = True
    end
    object Label2: TLabel
      Left = 9
      Top = 60
      Width = 22
      Height = 13
      Caption = 'Shift'
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 552
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object dbeTanggal: TcxDateEdit
      Left = 88
      Top = 8
      EditValue = 0d
      TabOrder = 1
      Width = 148
    end
    object lcbGroupShift: TcxExtLookupComboBox
      Left = 88
      Top = 32
      Properties.View = dmgeneral.cgvPrevGroupShift
      Properties.KeyFieldNames = 'kodegroupshiftid'
      Properties.ListFieldItem = dmgeneral.cgvPrevGroupShiftnamagroupshift
      TabOrder = 2
      Width = 149
    end
    object lcbShift: TcxExtLookupComboBox
      Left = 88
      Top = 57
      Properties.View = dmgeneral.cgvPrevGroupShiftDt1
      Properties.KeyFieldNames = 'shift'
      Properties.ListFieldItem = dmgeneral.cgvPrevGroupShiftDt1shift
      TabOrder = 3
      Width = 53
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 134
    Width = 640
    Height = 304
    Align = alClient
    TabOrder = 2
    object cgAbsenManual: TcxGrid
      Left = 1
      Top = 1
      Width = 638
      Height = 302
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
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsAbsenManual
        DataController.Summary.DefaultGroupSummaryItems = <>
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
          Caption = 'No Peg'
          DataBinding.FieldName = 'pegawaiid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmgeneral.cgvPrevPegawaiActive
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmgeneral.cgvPrevPegawaiActivenopeg
          Width = 58
        end
        object cgvAbsenManualNama: TcxGridDBColumn
          Caption = 'Nama'
          DataBinding.FieldName = 'pegawaiid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmgeneral.cgvPrevPegawaiActive
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmgeneral.cgvPrevPegawaiActivenama
          Width = 181
        end
        object cgvAbsenManualkodeabsen: TcxGridDBColumn
          Caption = 'Kode Absen'
          DataBinding.FieldName = 'kodeabsen'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmgeneral.cgvPrevKodeAbsen
          Properties.KeyFieldNames = 'kodeabsen'
          Properties.ListFieldItem = dmgeneral.cgvPrevKodeAbsenkodeabsen
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
          Caption = 'Noreg'
          DataBinding.FieldName = 'noreg'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Visible = False
        end
        object cgvAbsenManuallembur: TcxGridDBColumn
          DataBinding.FieldName = 'lembur'
        end
        object cgvAbsenManualm1: TcxGridDBColumn
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
          Caption = 'Supervisor'
          DataBinding.FieldName = 'employeeid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmgeneral.cgvPegawai
          Properties.KeyFieldNames = 'dmGeneral.cgvPegawaiid'
          Properties.ListFieldItem = dmgeneral.cgvPegawainama
          Options.Editing = False
        end
        object cgvAbsenManualstatusabsen: TcxGridDBColumn
          Caption = 'Status Absen'
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
        end
        object cgvAbsenManualflagupdate: TcxGridDBColumn
          Caption = 'Update'
          DataBinding.FieldName = 'flagupdate'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Options.Editing = False
        end
        object cgvAbsenManualflagprosesgaji: TcxGridDBColumn
          Caption = 'Proses Gaji'
          DataBinding.FieldName = 'flagprosesgaji'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Options.Editing = False
        end
        object cgvAbsenManualpulangawal: TcxGridDBColumn
          Caption = 'Pulang Awal'
          DataBinding.FieldName = 'pulangawal'
          PropertiesClassName = 'TcxCalcEditProperties'
        end
        object cgvAbsenManualPegawaiId: TcxGridDBColumn
          Caption = 'Pegawai ID'
          DataBinding.FieldName = 'pegawaiid'
        end
        object cgvAbsenManualketerangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
        end
        object cgvAbsenManualDivisi: TcxGridDBColumn
          Caption = 'Divisi'
          DataBinding.FieldName = 'pegawaiid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmgeneral.cgvPrevPegawaiActive
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmgeneral.cgvPrevPegawaiActivenamadivisi
        end
        object cgvAbsenManualDepartemen: TcxGridDBColumn
          Caption = 'Departemen'
          DataBinding.FieldName = 'pegawaiid'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmgeneral.cgvPrevPegawaiActive
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmgeneral.cgvPrevPegawaiActivenamadepartemen
        end
      end
      object cgvUnSelect: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.KeyFieldNames = 'pegawaiid'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cgvUnSelectpegawaiid: TcxGridDBColumn
          DataBinding.FieldName = 'pegawaiid'
        end
        object cgvUnSelectnopeg: TcxGridDBColumn
          DataBinding.FieldName = 'nopeg'
        end
        object cgvUnSelectnama: TcxGridDBColumn
          DataBinding.FieldName = 'nama'
        end
        object cgvUnSelecttglmasuk: TcxGridDBColumn
          DataBinding.FieldName = 'tglmasuk'
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
    Left = 13
    Top = 296
  end
  object qryAbsenManual: TZQuery
    Connection = dmGlobal.zconGlobal
    BeforePost = qryAbsenManualBeforePost
    OnNewRecord = qryAbsenManualNewRecord
    SQL.Strings = (
      'select *,(select b.namadivisi '
      'from mutasi a left join divisi b on a.kodedivisi=b.kodedivisi'
      'where  a.noreg=absen.noreg) as nmdivisi,'
      '(select b.namadepartemen '
      
        'from mutasi a left join divisi b on a.kodedepartemen=b.kodedepar' +
        'temen'
      'where  a.noreg=absen.noreg) as nmdepartemen'
      'from absen '
      'where tgl=cast(:Atgl as datewithouttime)'
      'and kodegroupshiftid=:kodegroupshiftid'
      'and shift =:shift')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Atgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
    Left = 48
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Atgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
  end
  object ZQuery1: TZQuery
    Connection = dmGlobal.zconGlobal
    BeforePost = qryAbsenManualBeforePost
    OnNewRecord = qryAbsenManualNewRecord
    SQL.Strings = (
      'select * '
      'from absen '
      'where tgl=cast(:Atgl as datewithouttime)'
      'and kodegroupshiftid=:kodegroupshiftid'
      'and shift =:shift')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Atgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
    Left = 144
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Atgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodegroupshiftid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
  end
end
