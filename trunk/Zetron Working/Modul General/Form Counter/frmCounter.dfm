inherited fmCounter: TfmCounter
  Caption = 'Counter'
  ClientHeight = 487
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Height = 437
    ExplicitHeight = 437
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 437
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 437
      ExplicitHeight = 437
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 437
        ExplicitHeight = 437
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 437
        ExplicitHeight = 437
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Splitter1: TSplitter
          Left = 0
          Top = 121
          Width = 560
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 207
        end
        object Panel2: TPanel
          Left = 0
          Top = 124
          Width = 560
          Height = 309
          Align = alClient
          TabOrder = 0
          object pcBody: TcxPageControl
            Left = 1
            Top = 1
            Width = 558
            Height = 307
            ActivePage = tsStatementMemo
            Align = alClient
            Images = dmGlobal.imgIconTabSheet
            NavigatorPosition = npLeftBottom
            Options = [pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
            Rotate = True
            TabOrder = 0
            TabPosition = tpRight
            ClientRectBottom = 307
            ClientRectRight = 520
            ClientRectTop = 0
            object tsStatementMemo: TcxTabSheet
              Hint = 'Memo Tercetak'
              ImageIndex = 3
              object cxGrid1: TcxGrid
                Left = 0
                Top = 0
                Width = 520
                Height = 307
                Align = alClient
                TabOrder = 0
                object cxGrid1DBTableView1: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.First.Visible = False
                  NavigatorButtons.PriorPage.Visible = False
                  NavigatorButtons.Prior.Visible = False
                  NavigatorButtons.Next.Visible = False
                  NavigatorButtons.NextPage.Visible = False
                  NavigatorButtons.Last.Visible = False
                  NavigatorButtons.Refresh.Visible = False
                  NavigatorButtons.SaveBookmark.Visible = False
                  NavigatorButtons.GotoBookmark.Visible = False
                  NavigatorButtons.Filter.Visible = False
                  DataController.DataSource = dsCounterDt1
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  NewItemRow.Visible = True
                  OptionsView.Navigator = True
                  OptionsView.GroupByBox = False
                  object cxGrid1DBTableView1CounterID: TcxGridDBColumn
                    Caption = 'CounterID *'
                    DataBinding.FieldName = 'CounterID'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Visible = False
                    VisibleForCustomization = False
                    Width = 77
                  end
                  object cxGrid1DBTableView1Position: TcxGridDBColumn
                    Caption = 'Position *'
                    DataBinding.FieldName = 'Position'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Width = 62
                  end
                  object cxGrid1DBTableView1Nama: TcxGridDBColumn
                    Caption = 'Nama *'
                    DataBinding.FieldName = 'Nama'
                    PropertiesClassName = 'TcxImageComboBoxProperties'
                    Properties.Items = <
                      item
                        Description = 'Bulan'
                        ImageIndex = 0
                        Value = '1'
                      end
                      item
                        Description = 'Tahun'
                        Value = '2'
                      end
                      item
                        Description = 'Tanggal'
                        Value = '3'
                      end
                      item
                        Description = 'Separator'
                        Value = '4'
                      end
                      item
                        Description = 'Counter'
                        Value = '5'
                      end>
                    Width = 91
                  end
                  object cxGrid1DBTableView1Panjang: TcxGridDBColumn
                    Caption = 'Panjang *'
                    DataBinding.FieldName = 'Panjang'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Width = 67
                  end
                  object cxGrid1DBTableView1CharacterStr: TcxGridDBColumn
                    DataBinding.FieldName = 'CharacterStr'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Width = 101
                  end
                  object cxGrid1DBTableView1Reset: TcxGridDBColumn
                    DataBinding.FieldName = 'Reset'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Width = 89
                  end
                  object cxGrid1DBTableView1Bentuk: TcxGridDBColumn
                    Caption = 'Bentuk *'
                    DataBinding.FieldName = 'Bentuk'
                    PropertiesClassName = 'TcxImageComboBoxProperties'
                    Properties.Items = <
                      item
                        Description = 'Huruf'
                        ImageIndex = 0
                        Value = '1'
                      end
                      item
                        Description = 'Angka'
                        Value = '2'
                      end
                      item
                        Description = 'Romawi'
                        Value = '3'
                      end>
                    Width = 83
                  end
                  object cxGrid1DBTableView1Param: TcxGridDBColumn
                    DataBinding.FieldName = 'Param'
                    PropertiesClassName = 'TcxSpinEditProperties'
                  end
                end
                object cxGrid1Level1: TcxGridLevel
                  GridView = cxGrid1DBTableView1
                end
              end
            end
            object tsDipendencies: TcxTabSheet
              Hint = 'Ketergantungan'
              ImageIndex = 4
              ExplicitWidth = 0
              ExplicitHeight = 0
              object cgDependencies: TcxGrid
                Left = 0
                Top = 0
                Width = 520
                Height = 307
                Align = alClient
                TabOrder = 0
                object cgvDependencies: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.First.Visible = False
                  NavigatorButtons.PriorPage.Visible = False
                  NavigatorButtons.Prior.Visible = False
                  NavigatorButtons.Next.Visible = False
                  NavigatorButtons.NextPage.Visible = False
                  NavigatorButtons.Last.Visible = False
                  NavigatorButtons.Insert.Visible = False
                  NavigatorButtons.Delete.Visible = False
                  NavigatorButtons.Edit.Visible = False
                  NavigatorButtons.Post.Visible = False
                  NavigatorButtons.Cancel.Visible = False
                  NavigatorButtons.SaveBookmark.Visible = False
                  NavigatorButtons.GotoBookmark.Visible = False
                  NavigatorButtons.Filter.Visible = False
                  DataController.DataSource = dsCounterDt2
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.Navigator = True
                  OptionsView.GroupByBox = False
                  object cgvDependenciesCounterID: TcxGridDBColumn
                    DataBinding.FieldName = 'CounterID'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Visible = False
                    VisibleForCustomization = False
                  end
                  object cgvDependenciesPembanding: TcxGridDBColumn
                    DataBinding.FieldName = 'Pembanding'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Width = 98
                  end
                  object cgvDependenciesNilaiSekarang: TcxGridDBColumn
                    DataBinding.FieldName = 'NilaiSekarang'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Width = 96
                  end
                end
                object cgDependenciesLevel1: TcxGridLevel
                  GridView = cgvDependencies
                end
              end
            end
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 121
          Align = alTop
          TabOrder = 1
          object cxGrid2: TcxGrid
            Left = 1
            Top = 1
            Width = 558
            Height = 119
            Align = alClient
            TabOrder = 0
            object cxGrid2DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsDefault
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.GroupByBox = False
              object cxGrid2DBTableView1CounterID: TcxGridDBColumn
                Caption = 'CounterID *'
                DataBinding.FieldName = 'CounterID'
              end
              object cxGrid2DBTableView1CounterCode: TcxGridDBColumn
                Caption = 'CounterCode *'
                DataBinding.FieldName = 'CounterCode'
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView1
            end
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 437
      ExplicitHeight = 437
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  inherited ActionList1: TActionList
    Left = 464
    Top = 288
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 496
    Top = 288
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 528
    Top = 328
  end
  inherited dsDefault: TDataSource
    DataSet = dmGeneral.qryCounterHd
    Left = 464
    Top = 328
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 528
    Top = 288
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 496
    Top = 328
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object qryCounterDt1: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryCounterDt1BeforePost
    OnNewRecord = qryCounterDt1NewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'CounterId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '1         '
      end>
    SQL.Strings = (
      'select * '
      'from CounterDt1'
      'where CounterId=:CounterId')
    Left = 432
    Top = 288
  end
  object dsCounterDt1: TDataSource
    DataSet = qryCounterDt1
    Left = 432
    Top = 328
  end
  object qryCounterDt2: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'CounterId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '1         '
      end>
    SQL.Strings = (
      'select * '
      'from CounterDt2'
      'where CounterId=:CounterId')
    Left = 400
    Top = 288
  end
  object dsCounterDt2: TDataSource
    DataSet = qryCounterDt2
    Left = 400
    Top = 328
  end
end
