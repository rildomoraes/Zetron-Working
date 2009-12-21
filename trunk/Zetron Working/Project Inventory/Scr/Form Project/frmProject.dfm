inherited fmProject: TfmProject
  Caption = 'Proyek'
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
        object lblIdOutlet: TLabel
          Left = 8
          Top = 8
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object lblOutletName: TLabel
          Left = 8
          Top = 26
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object lblContactPerson: TLabel
          Left = 8
          Top = 44
          Width = 73
          Height = 13
          Caption = 'Contact Person'
          Transparent = True
        end
        object lblDateStart: TLabel
          Left = 8
          Top = 62
          Width = 67
          Height = 13
          Caption = 'Tanggal Mulai'
          Transparent = True
        end
        object lblDateEnd: TLabel
          Left = 8
          Top = 80
          Width = 76
          Height = 13
          Caption = 'Tanggal Selesai'
          Transparent = True
        end
        object Label1: TLabel
          Left = 8
          Top = 98
          Width = 28
          Height = 13
          Caption = 'Notes'
          Transparent = True
        end
        object dbeProjectId: TcxDBTextEdit
          Left = 96
          Top = 6
          DataBinding.DataField = 'projectid'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 81
        end
        object dbeProjectName: TcxDBTextEdit
          Left = 96
          Top = 24
          DataBinding.DataField = 'projectname'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 201
        end
        object dbeContactPerson: TcxDBTextEdit
          Left = 96
          Top = 42
          DataBinding.DataField = 'ContactPerson'
          DataBinding.DataSource = dsDefault
          TabOrder = 2
          Width = 201
        end
        object dbeDateStart: TcxDBDateEdit
          Left = 96
          Top = 60
          DataBinding.DataField = 'datestart'
          DataBinding.DataSource = dsDefault
          TabOrder = 3
          Width = 121
        end
        object dbeDateEnd: TcxDBDateEdit
          Left = 96
          Top = 78
          DataBinding.DataField = 'dateend'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 121
        end
        object dbmNotes: TcxDBMemo
          Left = 96
          Top = 96
          DataBinding.DataField = 'Memo'
          DataBinding.DataSource = dsDefault
          TabOrder = 5
          Height = 83
          Width = 233
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Left = 0
      ExplicitLeft = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 0
        Align = alClient
        TabOrder = 0
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevDisplayprojectid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'projectid'
          end
          object cgvPrevDisplayprojectname: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'projectname'
          end
          object cgvPrevDisplaydatestart: TcxGridDBColumn
            Caption = 'Tgl Mulai'
            DataBinding.FieldName = 'datestart'
            PropertiesClassName = 'TcxDateEditProperties'
            Visible = False
          end
          object cgvPrevDisplaydateend: TcxGridDBColumn
            Caption = 'Tgl Berakhir'
            DataBinding.FieldName = 'dateend'
            PropertiesClassName = 'TcxDateEditProperties'
            Visible = False
          end
          object cgvPrevDisplaycontactperson: TcxGridDBColumn
            Caption = 'Contact'
            DataBinding.FieldName = 'contactperson'
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
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
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryProject
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
