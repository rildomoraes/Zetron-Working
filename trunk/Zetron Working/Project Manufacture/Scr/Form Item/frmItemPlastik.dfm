inherited fmItemPlastik: TfmItemPlastik
  ClientHeight = 471
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Height = 421
    ExplicitHeight = 421
    DockType = 0
    OriginalWidth = 692
    OriginalHeight = 421
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Height = 421
      ExplicitHeight = 421
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Height = 421
        ExplicitHeight = 421
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Height = 421
        ExplicitHeight = 421
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        inherited cxPageControl1: TcxPageControl
          Height = 366
          ExplicitHeight = 366
          ClientRectBottom = 342
          inherited tsGeneral: TcxTabSheet
            ExplicitHeight = 342
            inherited pnlHeader: TPanel
              inherited lblMaterial: TLabel [1]
              end
              inherited lblUnitMeasure: TLabel [2]
              end
              inherited lblItemType: TLabel [3]
              end
              inherited lblSuppliesCategory: TLabel [4]
              end
              inherited dbeUnitMeasure: TcxDBTextEdit [5]
              end
              inherited dblcMaterialId: TcxDBExtLookupComboBox [6]
                TabOrder = 2
              end
              inherited dblcItemTypeId: TcxDBExtLookupComboBox [7]
              end
              inherited dblcItemCategoryId: TcxDBExtLookupComboBox [8]
                TabOrder = 1
              end
              inherited dbeStatusDimensi: TcxDBExtLookupComboBox [9]
                TabOrder = 3
              end
              inherited dbchkFlagTally: TcxDBCheckBox
                TabOrder = 4
              end
            end
            inherited pnlItemDimensiSize: TPanel
              inherited lblStatusPurchaseDimensi: TLabel [0]
              end
              inherited lblItemDimensiSize: TLabel [1]
              end
              inherited lblLebar: TLabel [2]
              end
              inherited lblPanjang: TLabel [3]
              end
              inherited lblTebal: TLabel [4]
              end
              inherited Label1: TLabel [5]
              end
              inherited dbeStatusPurchaseDimensi: TcxDBExtLookupComboBox [6]
              end
              inherited btnBerat: TcxButton [7]
              end
              inherited btnLuas: TcxButton [8]
              end
              inherited btnVolume: TcxButton [9]
              end
              inherited dbeBerat: TcxDBCurrencyEdit [10]
              end
              inherited dbeLConstanta: TcxDBImageComboBox [11]
              end
              inherited dbeLebar: TcxDBCalcEdit [12]
              end
              inherited dbeM2: TcxDBCurrencyEdit [13]
              end
              inherited dbeM3: TcxDBCurrencyEdit [14]
              end
              inherited dbePanjang: TcxDBCalcEdit [15]
              end
              inherited dbePConstanta: TcxDBImageComboBox [16]
              end
              inherited dbeTConstanta: TcxDBImageComboBox [17]
              end
              inherited dbeTebal: TcxDBCalcEdit [18]
              end
              inherited dbeBeratJenis: TcxDBCalcEdit [19]
              end
            end
            inherited pnlBody: TPanel
              Height = 128
              ExplicitHeight = 128
              inherited lblEmployeeName: TLabel
                Top = 42
                ExplicitTop = 42
              end
              object lblArahGulungan: TLabel [1]
                Left = 8
                Top = 6
                Width = 71
                Height = 13
                Caption = 'Arah Gulungan'
                Transparent = True
              end
              object lblJumlahWarna: TLabel [2]
                Left = 8
                Top = 24
                Width = 68
                Height = 13
                Caption = 'Jumlah Warna'
                Transparent = True
              end
              inherited dbeEmployeeId: TcxDBExtLookupComboBox
                Top = 40
                ExplicitTop = 40
              end
              object dbeItemProperty1: TcxDBImageComboBox
                Left = 107
                Top = 4
                BeepOnEnter = False
                DataBinding.DataField = 'ItemProperty1'
                DataBinding.DataSource = dsDefault
                Properties.Items = <
                  item
                    Description = 'Atas'
                    ImageIndex = 0
                    Value = '0'
                  end
                  item
                    Description = 'Bawah'
                    Value = '1'
                  end>
                TabOrder = 2
                Width = 107
              end
              object dbeItemProperty2: TcxDBSpinEdit
                Left = 107
                Top = 22
                BeepOnEnter = False
                DataBinding.DataField = 'ItemProperty2'
                DataBinding.DataSource = dsDefault
                TabOrder = 1
                Width = 107
              end
            end
          end
          inherited tsStockInfo: TcxTabSheet
            ExplicitHeight = 342
          end
          inherited tsImage: TcxTabSheet
            ExplicitHeight = 342
            inherited cgItemImage: TcxGrid
              Height = 316
              ExplicitHeight = 316
              inherited cgvItemImage: TcxGridDBTableView
                inherited cgvItemImageitemimage2: TcxGridDBColumn
                  IsCaptionAssigned = True
                end
              end
            end
          end
          inherited tsMinStock: TcxTabSheet
            ExplicitHeight = 342
            inherited cgMinStockWarehouse: TcxGrid
              Height = 342
              ExplicitHeight = 342
            end
          end
          inherited tsPricing: TcxTabSheet
            ExplicitHeight = 342
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
  inherited pmBerat: TPopupMenu
    object mniBeratCalcBJ: TMenuItem
      Caption = 'T x L x P x BJ'
      OnClick = mniBeratCalcBJClick
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
