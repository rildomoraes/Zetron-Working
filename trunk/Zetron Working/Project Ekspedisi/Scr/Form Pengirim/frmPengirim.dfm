inherited fmPengirim: TfmPengirim
  Caption = 'Pengirim'
  ClientHeight = 431
  ExplicitHeight = 465
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    ExplicitWidth = 569
  end
  inherited dxDockSite1: TdxDockSite
    Height = 381
    ExplicitWidth = 569
    ExplicitHeight = 149
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 381
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 381
      ExplicitHeight = 381
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 381
        ExplicitHeight = 381
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 381
        ExplicitHeight = 381
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object pnlData: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 377
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 537
          ExplicitHeight = 145
          object Label10: TLabel
            Left = 9
            Top = 78
            Width = 48
            Height = 13
            Caption = 'Telepon 2'
            Transparent = True
          end
          object Label6: TLabel
            Left = 9
            Top = 6
            Width = 68
            Height = 13
            Caption = 'Kode Pengirim'
            Transparent = True
          end
          object Label7: TLabel
            Left = 9
            Top = 24
            Width = 71
            Height = 13
            Caption = 'Nama Pengirim'
            Transparent = True
          end
          object Label8: TLabel
            Left = 9
            Top = 42
            Width = 75
            Height = 13
            Caption = 'Alamat Pengirim'
            Transparent = True
          end
          object Label9: TLabel
            Left = 9
            Top = 60
            Width = 48
            Height = 13
            Caption = 'Telepon 1'
            Transparent = True
          end
          object Label11: TLabel
            Left = 9
            Top = 96
            Width = 56
            Height = 13
            Caption = 'Handphone'
            Transparent = True
          end
          object Label12: TLabel
            Left = 9
            Top = 114
            Width = 55
            Height = 13
            Caption = 'Keterangan'
            Transparent = True
          end
          object Label1: TLabel
            Left = 232
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
          object Label2: TLabel
            Left = 343
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
            Left = 201
            Top = 58
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
          object dbeKodePengirim: TcxDBTextEdit
            Left = 105
            Top = 3
            DataBinding.DataField = 'PengirimCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 121
          end
          object dbeNamaPengirim: TcxDBTextEdit
            Left = 105
            Top = 21
            DataBinding.DataField = 'PengirimName'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 232
          end
          object dbeAlamat: TcxDBTextEdit
            Left = 105
            Top = 39
            DataBinding.DataField = 'PengirimAlamat'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 384
          end
          object dbeTelepon1: TcxDBTextEdit
            Left = 105
            Top = 57
            DataBinding.DataField = 'PengirimTelp1'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            Width = 90
          end
          object dbeTelepon2: TcxDBTextEdit
            Left = 105
            Top = 75
            DataBinding.DataField = 'PengirimTelp2'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 4
            Width = 90
          end
          object dbeHandphone: TcxDBTextEdit
            Left = 105
            Top = 93
            DataBinding.DataField = 'PengirimHP'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 5
            Width = 90
          end
          object dbeKeterangan: TcxDBTextEdit
            Left = 105
            Top = 111
            DataBinding.DataField = 'Keterangan'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 6
            Width = 384
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 381
      ExplicitHeight = 149
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPengirim: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 359
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 127
        object cgvPrevPengirim: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevPengirimPengirimCode: TcxGridDBColumn
            DataBinding.FieldName = 'PengirimCode'
            Visible = False
          end
          object cgvPrevPengirimPengirimName: TcxGridDBColumn
            Caption = 'Nama Pengirim'
            DataBinding.FieldName = 'PengirimName'
            Width = 87
          end
          object cgvPrevPengirimPengirimAlamat: TcxGridDBColumn
            Caption = 'Alamat Pengirim'
            DataBinding.FieldName = 'PengirimAlamat'
            Width = 188
          end
          object cgvPrevPengirimPengirimTelp1: TcxGridDBColumn
            DataBinding.FieldName = 'PengirimTelp1'
            Visible = False
          end
          object cgvPrevPengirimPengirimTelp2: TcxGridDBColumn
            DataBinding.FieldName = 'PengirimTelp2'
            Visible = False
          end
          object cgvPrevPengirimPengirimHP: TcxGridDBColumn
            DataBinding.FieldName = 'PengirimHP'
            Visible = False
          end
          object cgvPrevPengirimKeterangan: TcxGridDBColumn
            DataBinding.FieldName = 'Keterangan'
            Visible = False
          end
        end
        object cgPengirimLevel1: TcxGridLevel
          GridView = cgvPrevPengirim
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 448
    Top = 288
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 480
    Top = 288
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 512
    Top = 288
  end
  inherited dsDefault: TDataSource
    DataSet = dmEkspedisi.qryPengirim
    Left = 448
    Top = 320
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 544
    Top = 288
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 480
    Top = 320
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
