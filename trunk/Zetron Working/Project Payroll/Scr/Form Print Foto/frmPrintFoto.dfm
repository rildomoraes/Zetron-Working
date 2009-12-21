inherited fmPrintFoto: TfmPrintFoto
  Caption = 'Print Foto'
  ClientHeight = 489
  ClientWidth = 764
  OnKeyDown = FormKeyDown
  ExplicitWidth = 772
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 764
    ExplicitWidth = 764
  end
  object cgPegawai: TcxGrid [1]
    Left = 153
    Top = 50
    Width = 611
    Height = 391
    Align = alClient
    TabOrder = 1
    object cgvPegawai: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.ImageIndex = 3
      NavigatorButtons.Prior.Visible = True
      NavigatorButtons.Next.ImageIndex = 4
      NavigatorButtons.Next.Visible = True
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.ImageIndex = 0
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.ImageIndex = 2
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.ImageIndex = 7
      NavigatorButtons.Edit.Visible = True
      NavigatorButtons.Post.ImageIndex = 6
      NavigatorButtons.Post.Visible = True
      NavigatorButtons.Cancel.ImageIndex = 5
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.Refresh.ImageIndex = 1
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPegawai
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsSelection.CellMultiSelect = True
      OptionsView.Navigator = True
      object cgvPegawaipegawaiid: TcxGridDBColumn
        DataBinding.FieldName = 'pegawaiid'
        Visible = False
        Options.Editing = False
      end
      object cgvPegawaiflagproses: TcxGridDBColumn
        Caption = 'Print'
        DataBinding.FieldName = 'flagproses'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.FullFocusRect = True
        Properties.ImmediatePost = True
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Options.Sorting = False
        Width = 31
      end
      object cgvPegawainopeg: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'nopeg'
        Options.Editing = False
        Width = 73
      end
      object cgvPegawainama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        Options.Editing = False
        Width = 154
      end
      object cgvPegawaitglmasuk: TcxGridDBColumn
        Caption = 'Tgl Masuk'
        DataBinding.FieldName = 'tglmasuk'
        Options.Editing = False
      end
      object cgvPegawainamaperusahaan: TcxGridDBColumn
        Caption = 'Nama Perusahaan'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevPegawai
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPrevPegawainamaperusahaan
        Options.Editing = False
        Width = 102
      end
      object cgvPegawainamadivisi: TcxGridDBColumn
        Caption = 'Nama Divisi'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevPegawai
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPrevPegawainamadivisi
        Options.Editing = False
        Width = 79
      end
      object cgvPegawainamadepartemen: TcxGridDBColumn
        Caption = 'Nama Departemen'
        DataBinding.FieldName = 'pegawaiid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevPegawai
        Properties.KeyFieldNames = 'pegawaiid'
        Properties.ListFieldItem = dmGeneral.cgvPrevPegawainamadepartemen
        Options.Editing = False
        Width = 100
      end
      object cgvPegawaikodeperusahaan: TcxGridDBColumn
        Caption = 'Kode Perusahaan'
        DataBinding.FieldName = 'kodeperusahaan'
        Options.Editing = False
        Width = 98
      end
      object cgvPegawaikodedivisi: TcxGridDBColumn
        Caption = 'Kode Divisi'
        DataBinding.FieldName = 'kodedivisi'
        Options.Editing = False
      end
      object cgvPegawaikodedepartemen: TcxGridDBColumn
        Caption = 'Kode Departemen'
        DataBinding.FieldName = 'kodedepartemen'
        Options.Editing = False
        Width = 102
      end
    end
    object cgPegawaiLevel1: TcxGridLevel
      GridView = cgvPegawai
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 441
    Width = 764
    Height = 48
    Align = alBottom
    TabOrder = 2
    object BPreview: TcxButton
      Left = 6
      Top = 6
      Width = 59
      Height = 27
      Caption = 'Preview'
      TabOrder = 0
      OnClick = BPreviewClick
    end
    object BPrint: TcxButton
      Left = 78
      Top = 6
      Width = 59
      Height = 27
      Caption = 'Print'
      TabOrder = 1
      OnClick = BPrintClick
    end
    object BReset: TcxButton
      Left = 150
      Top = 6
      Width = 59
      Height = 27
      Caption = 'Reset'
      TabOrder = 2
      OnClick = BResetClick
    end
  end
  object pbProcess: TcxProgressBar [3]
    Left = 507
    Top = 291
    ParentColor = False
    Properties.BarStyle = cxbsGradientLEDs
    Properties.BeginColor = clMoneyGreen
    TabOrder = 3
    Transparent = True
    Visible = False
    Width = 225
  end
  object pnlLeft: TPanel [4]
    Left = 0
    Top = 50
    Width = 153
    Height = 391
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 4
    DesignSize = (
      153
      391)
    object dbeFoto: TcxDBImage
      Left = 8
      Top = 49
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'foto1'
      DataBinding.DataSource = dsFoto
      Properties.GraphicClassName = 'TJPEGImage'
      Properties.Stretch = True
      TabOrder = 0
      Height = 157
      Width = 129
    end
  end
  inherited ActionList1: TActionList
    Left = 288
    Top = 56
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 320
    Top = 56
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 352
    Top = 56
  end
  object dsPegawai: TDataSource
    DataSet = qryPegawai
    Left = 88
    Top = 165
  end
  object dsFoto: TDataSource
    DataSet = qryFoto
    Left = 88
    Top = 197
  end
  object IvPositionDevExpress2: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Filename = 'Setting Print Foto.cfg'
    Sorting = True
    Version = '1.3'
    Left = 480
    Top = 165
  end
  object IvPositionStandard2: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Collection = <>
    Filename = 'Setting Print Foto.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 448
    Top = 165
  end
  object qryPegawai: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryPegawaiAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryPegawaiAfter
    Parameters = <>
    SQL.Strings = (
      
        'select flagproses, pegawaiid, nopeg, nama, tglmasuk, kodeperusah' +
        'aan, kodedivisi, kodedepartemen from pegawai')
    Left = 48
    Top = 165
  end
  object qryFoto: TADOQuery
    Connection = dmGlobal.conImage
    CursorType = ctStatic
    BeforePost = qryBeforePost
    AfterPost = qryFotoAfter
    BeforeDelete = qryBeforeDelete
    AfterDelete = qryFotoAfter
    DataSource = dsPegawai
    Parameters = <
      item
        Name = 'pegawaiid'
        DataType = ftInteger
        Value = 14
      end>
    SQL.Strings = (
      'select * '
      'from pegawaifoto'
      'where pegawaiid=:pegawaiid')
    Left = 48
    Top = 197
  end
  object qrySet: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'update pegawai '
      'set flagproses=0')
    Left = 208
    Top = 725
  end
  object qrySet2: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'update pegawai '
      'set flagproses=1'
      'where pegawaiid=:pegawaiid')
    Left = 240
    Top = 725
  end
end
