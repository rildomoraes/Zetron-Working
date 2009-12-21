inherited fmCOA: TfmCOA
  Caption = 'Nomor Akun'
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
        object lblIdOutlet: TLabel
          Left = 8
          Top = 8
          Width = 42
          Height = 13
          Caption = 'No Akun'
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
        object lblStatusType: TLabel
          Left = 8
          Top = 44
          Width = 21
          Height = 13
          Caption = 'Tipe'
          Transparent = True
        end
        object lblCoaIdParent: TLabel
          Left = 9
          Top = 62
          Width = 27
          Height = 13
          Caption = 'Induk'
          Transparent = True
        end
        object dbeCOACode: TcxDBTextEdit
          Left = 60
          Top = 6
          BeepOnEnter = False
          DataBinding.DataField = 'COACode'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 143
        end
        object dbeCOAName: TcxDBTextEdit
          Left = 60
          Top = 24
          BeepOnEnter = False
          DataBinding.DataField = 'COAName'
          DataBinding.DataSource = dsDefault
          TabOrder = 1
          Width = 201
        end
        object dbeStatusType: TcxDBImageComboBox
          Left = 60
          Top = 42
          DataBinding.DataField = 'StatusType'
          DataBinding.DataSource = dsDefault
          Properties.Items = <
            item
              Description = 'Asset'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Modal'
              Value = '1'
            end
            item
              Description = 'Hutang'
              Value = '2'
            end
            item
              Description = 'Penjualan'
              Value = '3'
            end
            item
              Description = 'Biaya'
              Value = '4'
            end>
          TabOrder = 2
          Width = 95
        end
        object dbeCOAIdParent: TcxDBExtLookupComboBox
          Left = 60
          Top = 60
          DataBinding.DataField = 'COAIdParent'
          DataBinding.DataSource = dsDefault
          Properties.View = dmAccounting.cgvPrevCOAParent
          Properties.KeyFieldNames = 'COAId'
          Properties.ListFieldItem = dmAccounting.cgvPrevCOAParentCOACode
          TabOrder = 3
          Width = 145
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object dbtCOA: TcxDBTreeList
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        Bands = <
          item
          end>
        DataController.DataSource = dsDefault
        DataController.ParentField = 'COAIdParent'
        DataController.KeyField = 'COAId'
        OptionsData.Editing = False
        OptionsData.Deleting = False
        OptionsData.Inserting = True
        RootValue = -1
        TabOrder = 0
        object tlCOACOACode: TcxDBTreeListColumn
          Caption.Text = 'No Akun'
          DataBinding.FieldName = 'COACode'
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object tlCOACOAName: TcxDBTreeListColumn
          Caption.Text = 'Nama'
          DataBinding.FieldName = 'COAName'
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object tlCOAStatusType: TcxDBTreeListColumn
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Asset'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Modal'
              Value = '1'
            end
            item
              Description = 'Hutang'
              Value = '2'
            end
            item
              Description = 'Penjualan'
              Value = '3'
            end
            item
              Description = 'Biaya'
              Value = '4'
            end>
          Caption.Text = 'Tipe'
          DataBinding.FieldName = 'StatusType'
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [2]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [3]
  end
  inherited dsDefault: TDataSource [4]
    DataSet = dmAccounting.qryCOA
  end
  inherited dxDockingManager1: TdxDockingManager [5]
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [6]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited ActionList1: TActionList [7]
  end
end
