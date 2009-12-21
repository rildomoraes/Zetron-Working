inherited fmCustomerForwarding: TfmCustomerForwarding
  Caption = 'Customer'
  ExplicitWidth = 320
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
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 560
          Height = 73
          Align = alTop
          TabOrder = 0
          ExplicitLeft = -49
          ExplicitTop = 6
          object Label1: TLabel
            Left = 9
            Top = 6
            Width = 25
            Height = 13
            Caption = 'Kode'
            Transparent = True
          end
          object Label3: TLabel
            Left = 9
            Top = 24
            Width = 28
            Height = 13
            Caption = 'Nama'
            Transparent = True
          end
          object Label2: TLabel
            Left = 9
            Top = 42
            Width = 21
            Height = 13
            Caption = 'Tarif'
            Transparent = True
          end
          object Label9: TLabel
            Left = 177
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
          object Label4: TLabel
            Left = 177
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
          object dbeCustomerCode: TcxDBTextEdit
            Left = 50
            Top = 3
            DataBinding.DataField = 'CustomerCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 121
          end
          object dbeCustomerName: TcxDBTextEdit
            Left = 50
            Top = 21
            DataBinding.DataField = 'CustomerName'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 121
          end
          object dbePriceFra: TcxDBCurrencyEdit
            Left = 50
            Top = 39
            DataBinding.DataField = 'TarifKonosemen'
            DataBinding.DataSource = dsDefault
            Properties.DisplayFormat = ',0.00;(,0.00)'
            Properties.UseThousandSeparator = True
            TabOrder = 2
            Width = 121
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 73
          Width = 560
          Height = 239
          Align = alClient
          TabOrder = 1
          object cxGrid1: TcxGrid
            Left = 1
            Top = 1
            Width = 558
            Height = 237
            Align = alClient
            TabOrder = 0
            object cgvMerk: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.Insert.Visible = True
              NavigatorButtons.Append.Visible = False
              NavigatorButtons.Edit.Visible = True
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.DataSource = dsMerk
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsView.Navigator = True
              OptionsView.GroupByBox = False
              object cgvMerkMerekCode: TcxGridDBColumn
                Caption = 'Kode Merek *'
                DataBinding.FieldName = 'MerekCode'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 108
              end
              object cgvMerkMerekName: TcxGridDBColumn
                Caption = 'Nama Merek *'
                DataBinding.FieldName = 'MerekName'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 87
              end
              object cgvMerkRouteId: TcxGridDBColumn
                Caption = 'Jurusan *'
                DataBinding.FieldName = 'RouteId'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.View = dmEkspedisi.cgvPrevRoute
                Properties.KeyFieldNames = 'RouteId'
                Properties.ListFieldItem = dmEkspedisi.cgvPrevRouteRouteName
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cgvMerk
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
      object cgPrevCustomer: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 294
        Align = alClient
        TabOrder = 0
        object cgvPrevCustomer: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPrevCustomerCustomerId: TcxGridDBColumn
            DataBinding.FieldName = 'IdCustomer'
            Visible = False
            VisibleForCustomization = False
          end
          object cgvPrevCustomerCustomerCode: TcxGridDBColumn
            Caption = 'Kode Customer'
            DataBinding.FieldName = 'CustomerCode'
            Width = 99
          end
          object cgvPrevCustomerCustomerName: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'CustomerName'
            Width = 93
          end
          object cgvPrevCustomerTarifKonosemen: TcxGridDBColumn
            Caption = 'Tarif'
            DataBinding.FieldName = 'TarifKonosemen'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.UseThousandSeparator = True
            Width = 94
          end
        end
        object cgPrevCustomerLevel1: TcxGridLevel
          GridView = cgvPrevCustomer
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 416
    Top = 248
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 448
    Top = 248
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 480
    Top = 248
  end
  inherited dsDefault: TDataSource
    Left = 416
    Top = 280
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 512
    Top = 248
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 448
    Top = 280
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dsMerk: TDataSource
    DataSet = qryMerk
    Left = 208
    Top = 248
  end
  object qryMerk: TADODataSet
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryMerkBeforePost
    CommandText = 'select * '#13#10'from Merek'#13#10
    DataSource = dsDefault
    IndexFieldNames = 'CustomerId'
    MasterFields = 'CustomerId'
    Parameters = <>
    Left = 208
    Top = 192
  end
end
