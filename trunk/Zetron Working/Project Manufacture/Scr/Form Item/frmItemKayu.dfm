inherited fmItemKayu: TfmItemKayu
  ClientHeight = 431
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Height = 381
    ExplicitHeight = 381
    DockType = 0
    OriginalWidth = 692
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
        inherited pnlTop: TPanel
          inherited dbchkInactive: TcxDBCheckBox
            Left = 1401
            ExplicitLeft = 1401
          end
        end
        inherited cxPageControl1: TcxPageControl
          Height = 326
          ExplicitHeight = 326
          ClientRectBottom = 302
          inherited tsGeneral: TcxTabSheet
            ExplicitHeight = 302
            inherited pnlBody: TPanel
              object lblBentukKayu: TLabel [2]
                Left = 2
                Top = 69
                Width = 61
                Height = 13
                Caption = 'Bentuk Kayu'
                Transparent = True
              end
              object lblKondisiKayu: TLabel [3]
                Left = 2
                Top = 51
                Width = 61
                Height = 13
                Caption = 'Kondisi Kayu'
                Transparent = True
              end
              object dbeItemProperty1: TcxDBImageComboBox
                Left = 117
                Top = 49
                BeepOnEnter = False
                DataBinding.DataField = 'ItemProperty1'
                DataBinding.DataSource = dsDefault
                Properties.Items = <
                  item
                    Description = 'AD / Basah'
                    ImageIndex = 0
                    Value = '0'
                  end
                  item
                    Description = 'KD / Kering'
                    Value = '1'
                  end>
                TabOrder = 2
                Width = 107
              end
              object dbeItemProperty2: TcxDBImageComboBox
                Left = 117
                Top = 67
                BeepOnEnter = False
                DataBinding.DataField = 'ItemProperty2'
                DataBinding.DataSource = dsDefault
                Properties.Items = <
                  item
                    Description = 'Square'
                    ImageIndex = 0
                    Value = '0'
                  end
                  item
                    Description = 'Log'
                    Value = '1'
                  end>
                TabOrder = 3
                Width = 107
              end
            end
          end
          inherited tsStockInfo: TcxTabSheet
            ExplicitHeight = 302
          end
          inherited tsImage: TcxTabSheet
            ExplicitHeight = 302
            inherited pnlItemImageOption: TPanel
              inherited edtImageResize: TcxSpinEdit
                ExplicitWidth = 44
                Width = 44
              end
            end
            inherited cgItemImage: TcxGrid
              Height = 276
              ExplicitHeight = 276
              inherited cgvItemImage: TcxGridDBTableView
                inherited cgvItemImageitemimage2: TcxGridDBColumn
                  IsCaptionAssigned = True
                end
              end
            end
          end
          inherited tsMinStock: TcxTabSheet
            ExplicitHeight = 302
            inherited cgMinStockWarehouse: TcxGrid
              Height = 302
              ExplicitHeight = 302
            end
          end
          inherited tsPricing: TcxTabSheet
            ExplicitHeight = 302
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      inherited cgPrevDisplay: TcxGrid
        Width = 300
        Height = 140
      end
    end
  end
  inherited dsDefault: TDataSource [3]
  end
  inherited dxDockingManager1: TdxDockingManager [4]
  end
  inherited dxComponentPrinter1: TdxComponentPrinter [5]
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited qryItemMinStock: TADOQuery [7]
  end
  inherited qryItemImage: TADOQuery [8]
  end
  inherited qryGetItemCode: TADOQuery [9]
  end
  inherited dsItemImage: TDataSource [10]
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress [11]
  end
  inherited pmLuas: TPopupMenu [12]
  end
  inherited pmVolume: TPopupMenu [13]
  end
  inherited pmBerat: TPopupMenu [14]
  end
  inherited qryPurchasePriceList: TADOQuery [15]
  end
  inherited dsPurchasePriceList: TDataSource [16]
  end
  inherited qrySalePriceList: TADOQuery [17]
  end
  inherited dsSalePriceList: TDataSource [18]
  end
end
