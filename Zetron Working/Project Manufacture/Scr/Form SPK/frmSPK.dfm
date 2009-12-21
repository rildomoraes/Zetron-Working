inherited fmSPK: TfmSPK
  Caption = 'Surat Perintah Kerja'
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
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 67
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object lblPurchaseOrderId: TLabel
            Left = 7
            Top = 6
            Width = 38
            Height = 13
            Caption = 'No SPK'
            Transparent = True
          end
          object lblVendorPurchaseOrderId: TLabel
            Left = 7
            Top = 24
            Width = 39
            Height = 13
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label7: TLabel
            Left = 7
            Top = 42
            Width = 32
            Height = 13
            Caption = 'No SO'
            Transparent = True
          end
          object Label1: TLabel
            Left = 276
            Top = 6
            Width = 83
            Height = 13
            Caption = 'Tanggal Produksi'
          end
          object Label2: TLabel
            Left = 276
            Top = 24
            Width = 76
            Height = 13
            Caption = 'Tanggal Selesai'
          end
          object Label3: TLabel
            Left = 276
            Top = 42
            Width = 60
            Height = 13
            Caption = 'Kode Warna'
          end
          object dbeSPKDate: TcxDBDateEdit
            Left = 54
            Top = 22
            BeepOnEnter = False
            DataBinding.DataField = 'SPKDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 1
            Width = 110
          end
          object dbeSPKCode: TcxDBTextEdit
            Left = 54
            Top = 4
            BeepOnEnter = False
            DataBinding.DataField = 'SPKCode'
            DataBinding.DataSource = dsDefault
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 202
          end
          object dblcSalesOrderId: TcxDBExtLookupComboBox
            Left = 54
            Top = 40
            BeepOnEnter = False
            DataBinding.DataField = 'SalesOrderId'
            DataBinding.DataSource = dsDefault
            TabOrder = 2
            Width = 202
          end
          object dbeProductionDate: TcxDBDateEdit
            Left = 368
            Top = 4
            BeepOnEnter = False
            DataBinding.DataField = 'ProductionDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 3
            Width = 110
          end
          object dbeFinishDate: TcxDBDateEdit
            Left = 368
            Top = 22
            BeepOnEnter = False
            DataBinding.DataField = 'FinishDate'
            DataBinding.DataSource = dsDefault
            Properties.DateButtons = [btnToday]
            Properties.SaveTime = False
            TabOrder = 4
            Width = 110
          end
          object dbeColorCode: TcxDBTextEdit
            Left = 368
            Top = 40
            DataBinding.DataField = 'ColorCode'
            DataBinding.DataSource = dsDefault
            TabOrder = 5
            Width = 110
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 369
        Align = alClient
        TabOrder = 0
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Nota = 0'
              Kind = skCount
              FieldName = 'salesinvoiceid'
              Column = cgvPrevDisplaySPKCode
            end
            item
              Format = 'Total = #,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'totalamount'
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'PurchaseOrderCode'
              Column = cgvPrevDisplaySPKCode
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cgvPrevDisplayStatusApprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'StatusApprove'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = dmGlobal.imgIcon16
            Properties.Items = <
              item
                Description = 'Unposting'
                ImageIndex = 7
                Value = '0'
              end
              item
                Description = 'Posting'
                ImageIndex = 6
                Value = '1'
              end
              item
                Description = 'Void'
                ImageIndex = 8
                Value = '2'
              end>
          end
          object cgvPrevDisplaySPKCode: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'SPKCode'
          end
          object cgvPrevDisplaySPKDate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'SPKDate'
            PropertiesClassName = 'TcxDateEditProperties'
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard [3]
    Left = 168
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [4]
    Left = 200
  end
  inherited dsDefault: TDataSource [5]
    DataSet = qrySPKHd
  end
  inherited dxDockingManager1: TdxDockingManager [6]
    Left = 232
  end
  object qrySPKHd: TADODataSet [7]
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qrySPKHdBeforePost
    OnNewRecord = qrySPKHdNewRecord
    CommandText = 
      'select *'#13#10'from SPKHd '#13#10'where SPKDate between :StartDate and :End' +
      'Date'
    Parameters = <
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 136
    Top = 112
  end
  inherited pmPrint: TPopupMenu [8]
  end
  inherited ActionList1: TActionList [9]
  end
end
