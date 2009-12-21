inherited fmItemEnt: TfmItemEnt
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 692
    OriginalHeight = 372
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
        inherited pcItem: TcxPageControl
          inherited tsOptions: TcxTabSheet
            object Label10: TLabel [0]
              Left = 5
              Top = 160
              Width = 108
              Height = 13
              Caption = 'Penjualan Register'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dbchFlagNeedValidation: TcxDBCheckBox [3]
              Left = 5
              Top = 179
              Caption = 'Validasi Superuser, Level'
              DataBinding.DataField = 'flagneedvalidation'
              DataBinding.DataSource = dsDefault
              ParentColor = False
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 6
              Transparent = True
              Width = 143
            end
            object dbeLevelValidation: TcxDBSpinEdit [4]
              Left = 151
              Top = 177
              DataBinding.DataField = 'levelvalidation'
              DataBinding.DataSource = dsDefault
              Properties.SpinButtons.Position = sbpHorzLeftRight
              TabOrder = 7
              Width = 47
            end
          end
          inherited tsImage: TcxTabSheet
            inherited cgItemImage: TcxGrid
              inherited cgvItemImage: TcxGridDBTableView
                inherited cgvItemImageitemimage2: TcxGridDBColumn
                  IsCaptionAssigned = True
                end
              end
            end
          end
          inherited tsPrice: TcxTabSheet
            ExplicitWidth = 0
            ExplicitHeight = 0
            inherited Label3: TLabel
              Width = 422
              ExplicitWidth = 422
            end
          end
          object tsEngineCounter: TcxTabSheet
            Caption = 'Counter Mesin'
            ImageIndex = 7
            ExplicitWidth = 0
            ExplicitHeight = 0
            DesignSize = (
              660
              273)
            object lblEngineGroupJobCounter: TLabel
              Left = 8
              Top = 3
              Width = 204
              Height = 13
              Caption = 'Counter Group Mesin per Pekerjaan '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object cgItemEngineGroupJob: TcxGrid
              Left = 8
              Top = 22
              Width = 639
              Height = 250
              Anchors = [akLeft, akTop, akRight, akBottom]
              TabOrder = 0
              object cgvItemEngineGroupJob: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Insert.Visible = True
                NavigatorButtons.Delete.Hint = 'Hapus'
                NavigatorButtons.Edit.Visible = True
                NavigatorButtons.Post.Hint = 'Simpan'
                NavigatorButtons.Cancel.Hint = 'Batal'
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsItemEngineGroupJob
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvItemEngineGroupJobitemid: TcxGridDBColumn
                  DataBinding.FieldName = 'itemid'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cgvItemEngineGroupJobenginegroupjobcode: TcxGridDBColumn
                  Caption = 'Group Mesin'
                  DataBinding.FieldName = 'enginegroupjobcode'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmInventory.cgvPrevEngineGroupJob
                  Properties.KeyFieldNames = 'enginegroupjobcode'
                  Properties.ListFieldItem = dmInventory.cgvPrevEngineGroupJobenginegroupcode
                end
                object cgvItemEngineGroupJobenginegroupjobcode2: TcxGridDBColumn
                  Caption = 'Pekerjaan'
                  DataBinding.FieldName = 'enginegroupjobcode'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmInventory.cgvPrevEngineGroupJob
                  Properties.KeyFieldNames = 'enginegroupjobcode'
                  Properties.ListFieldItem = dmInventory.cgvPrevEngineGroupJobjobcode
                end
                object cgvItemEngineGroupJobdefaultcounterincqty: TcxGridDBColumn
                  Caption = 'Qty'
                  DataBinding.FieldName = 'defaultcounterincqty'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
              end
              object cgItemEngineGroupJobLevel1: TcxGridLevel
                GridView = cgvItemEngineGroupJob
              end
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryItemEngineGroupJob: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from ItemEngineGroupJob'
      'where ItemId = :ItemId')
    MasterSource = dsDefault
    MasterFields = 'itemid'
    DetailFields = 'itemid'
    BeforeInsert = qryItemEngineGroupJobBeforeInsert
    BeforeEdit = qryItemEngineGroupJobBeforeEdit
    OnNewRecord = qryItemEngineGroupJobNewRecord
    Left = 136
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itemid'
      end>
  end
  object dsItemEngineGroupJob: TDataSource
    DataSet = qryItemEngineGroupJob
    Left = 168
    Top = 272
  end
end
