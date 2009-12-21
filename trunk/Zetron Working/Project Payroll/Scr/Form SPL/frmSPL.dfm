inherited fmSPL: TfmSPL
  Caption = 'Lembur'
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 391
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
          Width = 740
          Height = 83
          Align = alTop
          TabOrder = 0
          object Label2: TLabel
            Left = 9
            Top = 6
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label5: TLabel
            Left = 10
            Top = 24
            Width = 53
            Height = 13
            Caption = 'Group Shift'
            Transparent = True
          end
          object Label6: TLabel
            Left = 10
            Top = 42
            Width = 21
            Height = 13
            Caption = 'Shift'
            Transparent = True
          end
          object Label9: TLabel
            Left = 240
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
          object Label1: TLabel
            Left = 240
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
          object Label3: TLabel
            Left = 144
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
          object dbeTanggal: TcxDateEdit
            Left = 85
            Top = 3
            Properties.OnEditValueChanged = ActIsiPrevPegawaiExecute
            TabOrder = 0
            Width = 149
          end
          object lcbGroupShift: TcxExtLookupComboBox
            Left = 85
            Top = 21
            Properties.View = dmGeneral.cgvPrevGroupShift
            Properties.KeyFieldNames = 'kodegroupshiftid'
            Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftnamagroupshift
            Properties.OnEditValueChanged = ActIsiPrevPegawaiExecute
            TabOrder = 1
            Width = 149
          end
          object lcbShift: TcxExtLookupComboBox
            Left = 85
            Top = 39
            Properties.View = dmGeneral.cgvPrevGroupShiftDt1
            Properties.KeyFieldNames = 'shift'
            Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftDt1shift
            Properties.OnEditValueChanged = ActIsiPrevPegawaiExecute
            TabOrder = 2
            Width = 53
          end
          object cxButton1: TcxButton
            Left = 263
            Top = 4
            Width = 75
            Height = 19
            Caption = 'OK'
            TabOrder = 3
            OnClick = cxButton1Click
          end
        end
        object cgLembur: TcxGrid
          Left = 0
          Top = 83
          Width = 740
          Height = 304
          Align = alClient
          TabOrder = 1
          object cgvLembur: TcxGridDBTableView
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
            DataController.DataSource = dsDefault
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = 'Jum = #,.'
                Kind = skCount
                FieldName = 'Pegawaiid'
                Column = cgvLemburNoPeg
                DisplayText = 'Jum'
              end
              item
                Format = 'Total Lembur = #,#0.0;-#,#0.0'
                Kind = skSum
                FieldName = 'jumlembur'
                Column = cgvLemburjumlembur
                DisplayText = 'Total Lembur'
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,.'
                Kind = skCount
                FieldName = 'pegawaiid'
                Column = cgvLemburNoPeg
              end
              item
                Format = '#,.##'
                Kind = skSum
                FieldName = 'jumlembur'
                Column = cgvLemburjumlembur
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.InfoText = 'Klik disini untuk menambah data baru'
            NewItemRow.Visible = True
            OptionsSelection.CellMultiSelect = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.FooterAutoHeight = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.GroupFooters = gfVisibleWhenExpanded
            object cgvLemburNoPeg: TcxGridDBColumn
              Caption = 'No Peg *'
              DataBinding.FieldName = 'pegawaiid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPosisiActiveTglShift
              Properties.KeyFieldNames = 'pegawaiid'
              Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnopeg
              Width = 68
            end
            object cgvLemburNama: TcxGridDBColumn
              Caption = 'Nama *'
              DataBinding.FieldName = 'pegawaiid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPosisiActiveTglShift
              Properties.KeyFieldNames = 'pegawaiid'
              Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnama
              Width = 105
            end
            object cgvLemburjammulai: TcxGridDBColumn
              Caption = 'Jam Awal'
              DataBinding.FieldName = 'jammulai'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Kind = ckDateTime
              Width = 66
            end
            object cgvLemburjamakhir: TcxGridDBColumn
              Caption = 'Jam Akhir'
              DataBinding.FieldName = 'jamakhir'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Kind = ckDateTime
              Width = 70
            end
            object cgvLemburpekerjaan: TcxGridDBColumn
              Caption = 'Pekerjaan'
              DataBinding.FieldName = 'pekerjaan'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 97
            end
            object cgvLemburketerangan: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
              PropertiesClassName = 'TcxRichEditProperties'
              Width = 102
            end
            object cgvLemburjumlembur: TcxGridDBColumn
              Caption = 'Jum Lembur'
              DataBinding.FieldName = 'jumlembur'
              PropertiesClassName = 'TcxTextEditProperties'
            end
            object cgvLemburPerusahaan: TcxGridDBColumn
              Caption = 'Perusahaan'
              DataBinding.FieldName = 'pegawaiid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPosisiActiveTglShift
              Properties.KeyFieldNames = 'pegawaiid'
              Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnamaperusahaan
              Width = 132
            end
            object cgvLemburDivisi: TcxGridDBColumn
              Caption = 'Divisi'
              DataBinding.FieldName = 'pegawaiid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPosisiActiveTglShift
              Properties.KeyFieldNames = 'pegawaiid'
              Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnamadivisi
              Width = 128
            end
            object cgvLemburDepartemen: TcxGridDBColumn
              Caption = 'Departmen'
              DataBinding.FieldName = 'pegawaiid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPosisiActiveTglShift
              Properties.KeyFieldNames = 'pegawaiid'
              Properties.ListFieldItem = dmGeneral.cgvPosisiActiveTglShiftnamadepartemen
            end
            object cgvLemburnoreg: TcxGridDBColumn
              Caption = 'No Reg *'
              DataBinding.FieldName = 'noreg'
            end
            object cgvLemburjumistirahat: TcxGridDBColumn
              Caption = 'Istirahat'
              DataBinding.FieldName = 'jumistirahat'
              PropertiesClassName = 'TcxTimeEditProperties'
            end
            object cgvLemburtgl: TcxGridDBColumn
              Caption = 'Tanggal *'
              DataBinding.FieldName = 'tgl'
            end
            object cgvLemburkodegroupshiftid: TcxGridDBColumn
              Caption = 'Kode Group Shift *'
              DataBinding.FieldName = 'kodegroupshiftid'
            end
            object cgvLemburshift: TcxGridDBColumn
              Caption = 'Shift *'
              DataBinding.FieldName = 'shift'
            end
            object cgvLemburbatal: TcxGridDBColumn
              DataBinding.FieldName = 'batal'
            end
            object cgvLemburcounterprint: TcxGridDBColumn
              DataBinding.FieldName = 'counterprint'
            end
            object cgvLemburstatusapprove: TcxGridDBColumn
              Caption = 'Status Approve *'
              DataBinding.FieldName = 'statusapprove'
            end
            object cgvLemburflaganomali: TcxGridDBColumn
              Caption = 'Flag Anomali *'
              DataBinding.FieldName = 'flaganomali'
            end
            object cgvLemburemployeeid: TcxGridDBColumn
              DataBinding.FieldName = 'employeeid'
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
            GridView = cgvLembur
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgSPL: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvSPL: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cgvSPLFocusedRecordChanged
          DataController.DataSource = dsSPL
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Jum ,0.;-,0.'
              Kind = skCount
              FieldName = 'pegawaiid'
              DisplayText = 'Jumlah'
            end
            item
              Format = 'Lembur ,0.00;-,0.00'
              Kind = skSum
              FieldName = 'jumlembur'
              DisplayText = 'Lembur'
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cgvSPLtanggal: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tgl'
          end
          object cgvSPLnopeg: TcxGridDBColumn
            Caption = 'No Peg'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawai
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawainopeg
          end
          object cgvSPLnama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawai
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawainama
          end
          object cgvSPLperusahaan: TcxGridDBColumn
            Caption = 'Perusahaan'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawai
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawainamaperusahaan
          end
          object cgvSPLdivisi: TcxGridDBColumn
            Caption = 'Divisi'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawai
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawainamadivisi
          end
          object cgvSPLdepartemen: TcxGridDBColumn
            Caption = 'Departemen'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawai
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawainamadepartemen
          end
          object cgvSPLpegawaiid: TcxGridDBColumn
            Caption = 'Pegawaiid'
            DataBinding.FieldName = 'pegawaiid'
            Visible = False
          end
          object cgvSPLshift: TcxGridDBColumn
            Caption = 'Shift'
            DataBinding.FieldName = 'shift'
            Visible = False
          end
          object cgvSPLkodeperusahaan: TcxGridDBColumn
            Caption = 'Kode Perusahaan'
            DataBinding.FieldName = 'kodeperusahaan'
            Visible = False
          end
          object cgvSPLkodedivisi: TcxGridDBColumn
            Caption = 'Kode Divisi'
            DataBinding.FieldName = 'kodedivisi'
            Visible = False
          end
          object cgvSPLkodedepartemen: TcxGridDBColumn
            Caption = 'Kode Departemen'
            DataBinding.FieldName = 'kodedepartemen'
            Visible = False
          end
          object cgvSPLjammulai: TcxGridDBColumn
            Caption = 'Jam Mulai'
            DataBinding.FieldName = 'jammulai'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
          end
          object cgvSPLpekerjaan: TcxGridDBColumn
            Caption = 'Pekerjaan'
            DataBinding.FieldName = 'pekerjaan'
          end
          object cgvSPLjamakhir: TcxGridDBColumn
            Caption = 'Jam Akhir'
            DataBinding.FieldName = 'jamakhir'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
          end
          object cgvSPLbatal: TcxGridDBColumn
            Caption = 'Batal'
            DataBinding.FieldName = 'batal'
          end
          object cgvSPLketerangan: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
            PropertiesClassName = 'TcxRichEditProperties'
          end
          object cgvSPLkodestatus: TcxGridDBColumn
            Caption = 'Kode Status'
            DataBinding.FieldName = 'kodestatus'
            Visible = False
          end
          object cgvSPLkodegroupshiftid: TcxGridDBColumn
            DataBinding.FieldName = 'kodegroupshiftid'
          end
          object cgvSPLjumlembur: TcxGridDBColumn
            DataBinding.FieldName = 'jumlembur'
          end
        end
        object cgSPLLevel1: TcxGridLevel
          GridView = cgvSPL
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 536
    Top = 88
    object ActIsiPrevPegawai: TAction
      Category = 'Dataset'
      Caption = 'ActIsiPrevPegawai'
      OnExecute = ActIsiPrevPegawaiExecute
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 568
    Top = 88
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 600
    Top = 88
  end
  inherited dsDefault: TDataSource
    DataSet = qryLembur
    OnDataChange = dsDefaultDataChange
    Left = 536
    Top = 120
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 632
    Top = 88
  end
  inherited pmPrint: TPopupMenu
    Left = 568
    Top = 120
  end
  object dsSPL: TDataSource
    DataSet = qrySPL
    Left = 504
    Top = 104
  end
  object qrySPL: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tgl'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      
        'select pegawaiid,tgl,kodegroupshiftid,shift,jammulai,pekerjaan, ' +
        'jamakhir,jumlembur,batal,keterangan'
      'from lembur'
      'where dbo.fnGetPeriod(tgl)=:tgl')
    Left = 440
    Top = 104
  end
  object qryLembur: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryLemburBeforePost
    AfterPost = qryLemburAfterPost
    AfterDelete = qryLemburAfterDelete
    OnNewRecord = qryLemburNewRecord
    Parameters = <
      item
        Name = 'tgl'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
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
      
        'select pegawaiid, tgl, noreg,kodegroupshiftid,shift,jammulai,pek' +
        'erjaan, jamakhir,jumlembur,batal,keterangan,counterprint,statusa' +
        'pprove,flaganomali,employeeid,jumistirahat'
      'from lembur'
      'where tgl=:tgl'
      'and kodegroupshiftid=:kodegroupshiftid'
      'and shift=:shift')
    Left = 376
    Top = 104
  end
  object qryCariAbsenSPL: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tgl'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
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
      'select * '
      'from absen'
      'where tgl=:tgl'
      'and pegawaiid=:pegawaiid'
      'and kodegroupshiftid=:kodegroupshiftid'
      'and shift=:shift')
    Left = 472
    Top = 104
  end
  object qryUbah: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from lembur')
    Left = 408
    Top = 104
  end
end
