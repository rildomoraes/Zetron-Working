inherited fmPersonValidation: TfmPersonValidation
  Caption = 'Person Validation'
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
        object cgPersonValidation: TcxGrid
          Left = 0
          Top = 0
          Width = 560
          Height = 312
          Align = alClient
          TabOrder = 0
          object cgvPersonValidation: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsDefault
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cgvPersonValidationpegawaiid: TcxGridDBColumn
              Caption = 'Pegawaiid'
              DataBinding.FieldName = 'pegawaiid'
              Visible = False
            end
            object cgvPersonValidationNoPeg: TcxGridDBColumn
              Caption = 'No Peg'
              DataBinding.FieldName = 'pegawaiid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPrevPegawai
              Properties.KeyFieldNames = 'pegawaiid'
              Properties.ListFieldItem = dmGeneral.cgvPrevPegawainopeg
            end
            object cgvPersonValidationNama: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'pegawaiid'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmGeneral.cgvPrevPegawai
              Properties.KeyFieldNames = 'pegawaiid'
              Properties.ListFieldItem = dmGeneral.cgvPrevPegawainama
              Width = 289
            end
          end
          object cgPersonValidationLevel1: TcxGridLevel
            GridView = cgvPersonValidation
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 316
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevPersonValidation: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 140
        object cgvPrevPersonValidation: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevPersonValidationpegawaiid: TcxGridDBColumn
            Caption = 'ID Pegawai'
            DataBinding.FieldName = 'pegawaiid'
          end
          object cgvPrevPersonValidationnopeg: TcxGridDBColumn
            Caption = 'No Peg'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawai
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawainopeg
          end
          object cgvPrevPersonValidationnama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawai
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawainama
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cgvPrevPersonValidation
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 448
    Top = 208
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
    Left = 480
    Top = 208
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 512
    Top = 208
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryPersonValidation
    Left = 448
    Top = 240
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 544
    Top = 208
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 480
    Top = 240
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
