inherited fmItemRetail: TfmItemRetail
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    ExplicitHeight = 366
    DockType = 0
    OriginalWidth = 692
    OriginalHeight = 366
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
        inherited cxPageControl1: TcxPageControl
          inherited tsStockInfo: TcxTabSheet
            ExplicitTop = 6
            ExplicitHeight = 243
            object lblRegister: TLabel
              Left = 8
              Top = 12
              Width = 63
              Height = 13
              Caption = 'No Registrasi'
              Transparent = True
            end
            object lblItemSource: TLabel
              Left = 8
              Top = 30
              Width = 57
              Height = 13
              Caption = 'Asal Barang'
              Transparent = True
            end
            object gbOptionGeneral: TcxGroupBox
              Left = 8
              Top = 53
              Caption = 'Option Umum'
              ParentColor = False
              TabOrder = 2
              Height = 67
              Width = 268
              object dbchFlagTerdaftar: TcxDBCheckBox
                Left = 6
                Top = 23
                Caption = 'Telah terdaftar'
                DataBinding.DataField = 'flagterdaftar'
                DataBinding.DataSource = dsDefault
                ParentColor = False
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                TabOrder = 0
                Transparent = True
                Width = 154
              end
              object dbchFlagBahasaIndonesia: TcxDBCheckBox
                Left = 6
                Top = 41
                Caption = 'Memiliki teks indonesia'
                DataBinding.DataField = 'flagbahasaindonesia'
                DataBinding.DataSource = dsDefault
                ParentColor = False
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                TabOrder = 1
                Transparent = True
                Width = 154
              end
            end
            object gbOptionPrint: TcxGroupBox
              Left = 8
              Top = 125
              Caption = 'Option Print'
              ParentColor = False
              TabOrder = 3
              Height = 67
              Width = 268
              object dbchFlagPrintBarcode: TcxDBCheckBox
                Left = 6
                Top = 23
                Caption = 'Tercetak dalam stiker barcode'
                DataBinding.DataField = 'FlagPrintBarcode'
                DataBinding.DataSource = dsDefault
                ParentColor = False
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                TabOrder = 0
                Transparent = True
                Width = 171
              end
              object dbchFlagPrinPrice: TcxDBCheckBox
                Left = 6
                Top = 41
                Caption = 'Tercetak dalam price list '
                DataBinding.DataField = 'FlagPrintPrice'
                DataBinding.DataSource = dsDefault
                ParentColor = False
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                TabOrder = 1
                Transparent = True
                Width = 154
              end
            end
            object dbeRegister: TcxDBTextEdit
              Left = 91
              Top = 10
              BeepOnEnter = False
              DataBinding.DataField = 'Register'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Width = 185
            end
            object dblcStatusSource: TcxDBImageComboBox
              Left = 91
              Top = 28
              BeepOnEnter = False
              DataBinding.DataField = 'StatusSource'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'Import'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Lokal'
                  Value = '1'
                end
                item
                  Description = 'Freelance '
                  Value = '2'
                end>
              TabOrder = 1
              Width = 185
            end
          end
          inherited tsPrice: TcxTabSheet
            ExplicitLeft = 3
            ExplicitTop = 3
            ExplicitWidth = 650
            ExplicitHeight = 243
            inherited Label3: TLabel
              Width = 612
              ExplicitWidth = 612
            end
          end
          inherited tsImage: TcxTabSheet
            inherited pnlItemImageOption: TPanel
              ExplicitWidth = 650
            end
            inherited cgItemImage: TcxGrid
              inherited cgvItemImage: TcxGridDBTableView
                inherited cgvItemImageitemimage2: TcxGridDBColumn
                  IsCaptionAssigned = True
                end
              end
            end
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
        Height = 0
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
