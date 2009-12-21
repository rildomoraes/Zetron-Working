inherited fmPengambilanPayroll: TfmPengambilanPayroll
  Caption = 'Transaksi Pengambilan Gaji'
  ExplicitLeft = -43
  ExplicitWidth = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    inherited bvlSpacer2: TBevel
      Left = 407
      ExplicitLeft = 407
    end
    inherited bvlSpacer3: TBevel
      Left = 513
      ExplicitLeft = 513
    end
    inherited bvlSpacer4: TBevel
      Left = 619
      ExplicitLeft = 619
    end
    inherited btnPrev: TcxButton
      Left = 523
      ExplicitLeft = 523
    end
    inherited btnNext: TcxButton
      Left = 571
      ExplicitLeft = 571
    end
    inherited btnPost: TcxButton
      Left = 417
      ExplicitLeft = 417
    end
    inherited btnCancel: TcxButton
      Left = 465
      ExplicitLeft = 465
    end
    inherited btnVoid: TcxButton
      Left = 359
      ExplicitLeft = 359
    end
    object btnDelete: TcxButton
      Left = 311
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = ActDelete
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 11
    end
  end
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
        object Splitter1: TSplitter
          Left = 0
          Top = 233
          Width = 740
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitTop = 275
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 233
          Align = alTop
          TabOrder = 0
          object lblPerusahaan: TLabel
            Left = 9
            Top = 24
            Width = 42
            Height = 13
            Caption = 'No Ambil'
            Transparent = True
          end
          object Label6: TLabel
            Left = 9
            Top = 6
            Width = 43
            Height = 13
            Caption = 'Tgl Ambil'
            Transparent = True
          end
          object Label8: TLabel
            Left = 9
            Top = 42
            Width = 36
            Height = 13
            Caption = 'No Peg'
            Transparent = True
          end
          object Label9: TLabel
            Left = 9
            Top = 60
            Width = 28
            Height = 13
            Caption = 'Nama'
            Transparent = True
          end
          object Label10: TLabel
            Left = 9
            Top = 78
            Width = 57
            Height = 13
            Caption = 'Perusahaan'
            Transparent = True
          end
          object Label11: TLabel
            Left = 9
            Top = 96
            Width = 25
            Height = 13
            Caption = 'Divisi'
            Transparent = True
          end
          object Label12: TLabel
            Left = 9
            Top = 114
            Width = 58
            Height = 13
            Caption = 'Departemen'
            Transparent = True
          end
          object Label5: TLabel
            Left = 9
            Top = 150
            Width = 21
            Height = 13
            Caption = 'Shift'
            Transparent = True
          end
          object Label7: TLabel
            Left = 282
            Top = 188
            Width = 26
            Height = 13
            Caption = 'Netto'
            Transparent = True
          end
          object dbePerusahaan: TDBText
            Left = 97
            Top = 78
            Width = 75
            Height = 13
            AutoSize = True
            DataField = 'namaperusahaan'
            DataSource = dmGeneral.dsPrevPegawaiActive
            Transparent = True
          end
          object dbeDivisi: TDBText
            Left = 97
            Top = 96
            Width = 43
            Height = 13
            AutoSize = True
            DataField = 'namadivisi'
            DataSource = dmGeneral.dsPrevPegawaiActive
            Transparent = True
          end
          object dbeDepartemen: TDBText
            Left = 97
            Top = 114
            Width = 76
            Height = 13
            AutoSize = True
            DataField = 'namadepartemen'
            DataSource = dmGeneral.dsPrevPegawaiActive
            Transparent = True
          end
          object Label16: TLabel
            Left = 9
            Top = 132
            Width = 38
            Height = 13
            Caption = 'Jabatan'
            Transparent = True
          end
          object dbeJabatan: TDBText
            Left = 97
            Top = 132
            Width = 56
            Height = 13
            AutoSize = True
            DataField = 'namajabatan'
            DataSource = dmGeneral.dsPrevPegawaiActive
            Transparent = True
          end
          object Label17: TLabel
            Left = 282
            Top = 171
            Width = 46
            Height = 13
            Caption = 'Potongan'
            Transparent = True
          end
          object Label18: TLabel
            Left = 282
            Top = 154
            Width = 25
            Height = 13
            Caption = 'Bruto'
            Transparent = True
          end
          object Label1: TLabel
            Left = 224
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
          object Label3: TLabel
            Left = 224
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
          object Label4: TLabel
            Left = 248
            Top = 40
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
          object Label19: TLabel
            Left = 248
            Top = 58
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
          object Label20: TLabel
            Left = 224
            Top = 148
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
          object Label22: TLabel
            Left = 606
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
          object Label23: TLabel
            Left = 463
            Top = 41
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
          object dbeNama: TcxDBExtLookupComboBox
            Left = 97
            Top = 57
            DataBinding.DataField = 'pegawaiid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenama
            TabOrder = 4
            Width = 145
          end
          object dbeNoPeg: TcxDBExtLookupComboBox
            Left = 97
            Top = 39
            DataBinding.DataField = 'pegawaiid'
            DataBinding.DataSource = dsDefault
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenopeg
            TabOrder = 3
            Width = 145
          end
          object dbeNoPengambilanPayroll: TcxDBTextEdit
            Left = 97
            Top = 21
            DataBinding.DataField = 'notransaksipengambilan'
            DataBinding.DataSource = dsDefault
            Properties.OnEditValueChanged = dbeNoPengambilanPayrollPropertiesEditValueChanged
            TabOrder = 1
            Width = 121
          end
          object dbeTglPengambilanPayroll: TcxDBDateEdit
            Left = 97
            Top = 3
            DataBinding.DataField = 'tglpengambilanpayroll'
            DataBinding.DataSource = dsDefault
            Properties.OnEditValueChanged = dtTglPengambilanPayrollPropertiesEditValueChanged
            TabOrder = 0
            Width = 121
          end
          object btnGetId: TcxButton
            Left = 235
            Top = 22
            Width = 19
            Height = 19
            Hint = 'Auto Generate Id'
            Glyph.Data = {
              06030000424D060300000000000036000000280000000F0000000F0000000100
              180000000000D002000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFF579A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF4B934B
              6EA86EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFF4D974F6EA86EFFFFFFFFFFFFFFFFFF4B
              934BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              55A259519E5490BC90FFFFFF4C964C50AC52579A57FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF67C47552A1564C974D58BE5F53
              BF574CA14CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFF5CAE6469CE7761C66B5DC9655FCB6958BF5F4B934BFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF6BCE7C66D2736AD67A62
              B66C61B86C50A754FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFF64B97070D88358A75FFFFFFF84B58461BC6D4C964CFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A75FFFFFFFFF
              FFFFFFFFFF65A56758A55DFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BA15E509B53FFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF4F995163A363FFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C94
              4CFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF579A57FFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000}
            TabOrder = 2
            TabStop = False
            OnClick = btnGetIdClick
          end
          object dbeTotal: TcxDBCalcEdit
            Left = 344
            Top = 186
            DataBinding.DataField = 'TOTAL'
            DataBinding.DataSource = dsDefault
            Enabled = False
            Properties.ReadOnly = True
            TabOrder = 5
            Width = 121
          end
          object dbimgShift: TcxDBImageComboBox
            Left = 97
            Top = 147
            DataBinding.DataField = 'shift'
            DataBinding.DataSource = dsDefault
            Properties.Items = <
              item
                Description = 'Pagi'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Siang'
                Value = '2'
              end
              item
                Description = 'Malam'
                Value = '3'
              end>
            TabOrder = 6
            Width = 121
          end
          object GroupBox1: TGroupBox
            Left = 288
            Top = 1
            Width = 363
            Height = 134
            Caption = 'Kriteria'
            TabOrder = 7
            object Label2: TLabel
              Left = 12
              Top = 23
              Width = 43
              Height = 13
              Caption = 'Tgl Ambil'
              Transparent = True
            end
            object Label13: TLabel
              Left = 186
              Top = 24
              Width = 20
              Height = 13
              Caption = 'S/D'
              Transparent = True
            end
            object Label14: TLabel
              Left = 34
              Top = 42
              Width = 21
              Height = 13
              Caption = 'Shift'
              Transparent = True
            end
            object Label15: TLabel
              Left = 186
              Top = 42
              Width = 20
              Height = 13
              Caption = 'S/D'
              Transparent = True
            end
            object Label21: TLabel
              Left = 175
              Top = 21
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
            object Label24: TLabel
              Left = 318
              Top = 40
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
            object dbeTgl1: TcxDBDateEdit
              Left = 69
              Top = 21
              DataBinding.DataField = 'batastgl1'
              DataBinding.DataSource = dsDefault
              TabOrder = 0
              Width = 100
            end
            object dbeTgl2: TcxDBDateEdit
              Left = 212
              Top = 21
              DataBinding.DataField = 'batastgl2'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Width = 100
            end
            object dbeShift1: TcxDBImageComboBox
              Left = 69
              Top = 39
              DataBinding.DataField = 'shift1'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'Pagi'
                  ImageIndex = 0
                  Value = '1'
                end
                item
                  Description = 'Siang'
                  Value = '2'
                end
                item
                  Description = 'Malam'
                  Value = '3'
                end>
              TabOrder = 2
              Width = 100
            end
            object dbeShift2: TcxDBImageComboBox
              Left = 212
              Top = 39
              DataBinding.DataField = 'shift2'
              DataBinding.DataSource = dsDefault
              Properties.Items = <
                item
                  Description = 'Pagi'
                  ImageIndex = 0
                  Value = '1'
                end
                item
                  Description = 'Siang'
                  Value = '2'
                end
                item
                  Description = 'Malam'
                  Value = '3'
                end>
              TabOrder = 3
              Width = 100
            end
            object btnProses: TcxButton
              Left = 232
              Top = 71
              Width = 75
              Height = 50
              Action = ActProses
              TabOrder = 4
            end
            object cbAmbilSemua: TcxCheckBox
              Left = 48
              Top = 66
              Caption = 'Ambil Semua'
              ParentColor = False
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              Properties.OnEditValueChanged = cbAmbilSemuaPropertiesEditValueChanged
              State = cbsGrayed
              TabOrder = 5
              Transparent = True
              Width = 121
            end
          end
          object dbePotongan: TcxDBCalcEdit
            Left = 344
            Top = 168
            DataBinding.DataField = 'potongan'
            DataBinding.DataSource = dsDefault
            Enabled = False
            Properties.ReadOnly = True
            TabOrder = 8
            Width = 121
          end
          object dbeBruto: TcxDBCalcEdit
            Left = 344
            Top = 150
            DataBinding.DataSource = dsDefault
            Enabled = False
            Properties.ReadOnly = True
            TabOrder = 9
            Width = 121
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 236
          Width = 740
          Height = 151
          Align = alClient
          Caption = 'Panel2'
          TabOrder = 1
          object Splitter2: TSplitter
            Left = 652
            Top = 1
            Width = 4
            Height = 149
            Align = alRight
            ExplicitLeft = 617
            ExplicitHeight = 125
          end
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 651
            Height = 149
            Align = alClient
            Caption = 'Panel3'
            TabOrder = 0
            object cgTransaksiPengambilanPayrollDt: TcxGrid
              Left = 1
              Top = 1
              Width = 649
              Height = 147
              Align = alClient
              TabOrder = 0
              object cgvTransaksiPengambilanPayrollDt: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Cancel.Visible = True
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dsPrevKriteria
                DataController.Summary.DefaultGroupSummaryItems = <
                  item
                    Format = '#,##0.00;(#,##0.00)'
                    Kind = skSum
                    FieldName = 'bruto'
                    Column = cgvTransaksiPengambilanPayrollDtbruto
                    DisplayText = 'Bruto'
                  end
                  item
                    Format = '#,##0.00;(#,##0.00)'
                    FieldName = 'potongan'
                    Column = cgvTransaksiPengambilanPayrollDtpotongan
                    DisplayText = 'Pot'
                  end
                  item
                    Format = '#,##0.00;(#,##0.00)'
                    FieldName = 'total'
                    Column = cgvTransaksiPengambilanPayrollDtNetto
                    DisplayText = 'Netto'
                  end
                  item
                    Format = '#,##0.00;(#,##0.00)'
                    Kind = skSum
                    FieldName = 'ambilbruto'
                    Column = cgvTransaksiPengambilanPayrollDtambilbruto
                    DisplayText = 'Ambil Bruto'
                  end
                  item
                    Format = '#,##0.00;(#,##0.00)'
                    Kind = skSum
                    FieldName = 'ambilnetto'
                    Column = cgvTransaksiPengambilanPayrollDtambilnetto
                    DisplayText = 'Ambil Netto'
                  end
                  item
                    Format = '#,##0.00;(#,##0.00)'
                    Kind = skSum
                    FieldName = 'ambilpotongan'
                    Column = cgvTransaksiPengambilanPayrollDtambilpotongan
                    DisplayText = 'Ambil Pot'
                  end>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '#,##0.00;(#,##0.00)'
                    Kind = skSum
                    FieldName = 'total'
                    Column = cgvTransaksiPengambilanPayrollDtNetto
                    DisplayText = 'Netto'
                  end
                  item
                    Format = '#,##0.00;(#,##0.00)'
                    Kind = skSum
                    FieldName = 'bruto'
                    Column = cgvTransaksiPengambilanPayrollDtbruto
                    DisplayText = 'Bruto'
                  end
                  item
                    Format = '#,##0.00;(#,##0.00)'
                    Kind = skSum
                    FieldName = 'potongan'
                    Column = cgvTransaksiPengambilanPayrollDtpotongan
                    DisplayText = 'Pot'
                  end
                  item
                    Format = '#,##0.00;(#,##0.00)'
                    Kind = skSum
                    FieldName = 'ambilbruto'
                    Column = cgvTransaksiPengambilanPayrollDtambilbruto
                    DisplayText = 'Ambil Bruto'
                  end
                  item
                    Format = '#,##0.00;(#,##0.00)'
                    Kind = skSum
                    FieldName = 'ambilnetto'
                    Column = cgvTransaksiPengambilanPayrollDtambilnetto
                    DisplayText = 'Ambil Netto'
                  end
                  item
                    Format = '#,##0.00;(#,##0.00)'
                    Kind = skSum
                    FieldName = 'ambilpotongan'
                    Column = cgvTransaksiPengambilanPayrollDtambilpotongan
                    DisplayText = 'Ambil Potongan'
                  end>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Disini Untuk Menambah Data'
                NewItemRow.Visible = True
                OptionsSelection.CellMultiSelect = True
                OptionsView.Navigator = True
                OptionsView.Footer = True
                OptionsView.GroupFooterMultiSummaries = True
                OptionsView.GroupFooters = gfVisibleWhenExpanded
                object cgvTransaksiPengambilanPayrollDtflagambil: TcxGridDBColumn
                  Caption = 'Ambil'
                  DataBinding.FieldName = 'flagambil'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ImmediatePost = True
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  Width = 49
                end
                object cgvTransaksiPengambilanPayrollDttgl: TcxGridDBColumn
                  Caption = 'Tanggal'
                  DataBinding.FieldName = 'tgl'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtnopayroll: TcxGridDBColumn
                  Caption = 'No Payroll *'
                  DataBinding.FieldName = 'nopayroll'
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtkodegroupshiftid: TcxGridDBColumn
                  Caption = 'Group Shift'
                  DataBinding.FieldName = 'kodegroupshiftid'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevGroupShift
                  Properties.KeyFieldNames = 'kodegroupshiftid'
                  Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftnamagroupshift
                  Options.Editing = False
                  Width = 58
                end
                object cgvTransaksiPengambilanPayrollDtshift: TcxGridDBColumn
                  Caption = 'Shift'
                  DataBinding.FieldName = 'shift'
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtjammasuk: TcxGridDBColumn
                  Caption = 'Jam Masuk'
                  DataBinding.FieldName = 'jammasuk'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.Kind = ckDateTime
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtjamkeluar: TcxGridDBColumn
                  Caption = 'Jam Keluar'
                  DataBinding.FieldName = 'jamkeluar'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.Kind = ckDateTime
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtm1: TcxGridDBColumn
                  Caption = 'Mode Masuk'
                  DataBinding.FieldName = 'm1'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Items = <
                    item
                      Description = 'Barcode'
                      ImageIndex = 0
                      Value = '0'
                    end
                    item
                      Description = 'Username'
                      Value = '1'
                    end
                    item
                      Description = 'Fingerprint'
                      Value = '2'
                    end
                    item
                      Description = 'Manual'
                      Value = '3'
                    end>
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtk1: TcxGridDBColumn
                  Caption = 'Mode Keluar'
                  DataBinding.FieldName = 'k1'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Items = <
                    item
                      Description = 'Barcode'
                      ImageIndex = 0
                      Value = '0'
                    end
                    item
                      Description = 'Username'
                      Value = '1'
                    end
                    item
                      Description = 'Fingerprint'
                      Value = '2'
                    end
                    item
                      Description = 'Manual'
                      Value = '3'
                    end>
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtpayrolltype: TcxGridDBColumn
                  Caption = 'Komponen Payroll'
                  DataBinding.FieldName = 'payrolltype'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevPayrollType
                  Properties.KeyFieldNames = 'payrolltype'
                  Properties.ListFieldItem = dmGeneral.cgvPrevPayrollTypepayrolltypename
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtnosyarat: TcxGridDBColumn
                  Caption = 'Syarat *'
                  DataBinding.FieldName = 'nosyarat'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvSyaratHd
                  Properties.KeyFieldNames = 'nosyarat'
                  Properties.ListFieldItem = dmGeneral.cgvSyaratHdnamasyarat
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtbruto: TcxGridDBColumn
                  Caption = 'Bruto'
                  DataBinding.FieldName = 'bruto'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtpotongan: TcxGridDBColumn
                  Caption = 'Potongan'
                  DataBinding.FieldName = 'potongan'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtNetto: TcxGridDBColumn
                  Caption = 'Netto'
                  DataBinding.FieldName = 'netto'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtambilbruto: TcxGridDBColumn
                  Caption = 'Ambil Bruto'
                  DataBinding.FieldName = 'ambilbruto'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtambilpotongan: TcxGridDBColumn
                  Caption = 'Ambil Potongan'
                  DataBinding.FieldName = 'ambilpotongan'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtambilnetto: TcxGridDBColumn
                  Caption = 'Ambil Netto'
                  DataBinding.FieldName = 'ambilnetto'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Options.Editing = False
                end
                object cgvTransaksiPengambilanPayrollDtRecId: TcxGridDBColumn
                  DataBinding.FieldName = 'RecId'
                  Visible = False
                end
              end
              object cgTransaksiPengambilanPayrollDtLevel1: TcxGridLevel
                GridView = cgvTransaksiPengambilanPayrollDt
              end
            end
          end
          object Panel4: TPanel
            Left = 656
            Top = 1
            Width = 83
            Height = 149
            Align = alRight
            TabOrder = 1
            object btnSimpan: TcxButton
              Left = 4
              Top = 5
              Width = 75
              Height = 50
              Action = ActSimpan
              TabOrder = 0
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
      object cgTransaksiPayroll: TcxGrid
        Left = 0
        Top = 0
        Width = 300
        Height = 140
        Align = alClient
        TabOrder = 0
        object cgvTransaksiPengambilanPayrollHd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00;(#,##0.00)'
              Kind = skSum
              FieldName = 'pegawaiid'
              Column = cgvTransaksiPengambilanPayrollHdbruto
              DisplayText = 'Grand Total'
            end
            item
              Column = cgvTransaksiPengambilanPayrollHdpotongan
            end
            item
              Column = cgvTransaksiPengambilanPayrollHdnetto
            end
            item
              Kind = skCount
              Column = cgvTransaksiPengambilanPayrollHdNopeg
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cgvTransaksiPengambilanPayrollHdNopeg: TcxGridDBColumn
            Caption = 'No Peg'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenopeg
          end
          object cgvTransaksiPengambilanPayrollHdNama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenama
          end
          object cgvTransaksiPengambilanPayrollHdnamaperusahaan: TcxGridDBColumn
            Caption = 'Nama Perusahaan'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenamaperusahaan
            Width = 92
          end
          object cgvTransaksiPengambilanPayrollHdnamadivisi: TcxGridDBColumn
            Caption = 'Nama Divisi'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenamadivisi
            Width = 59
          end
          object cgvTransaksiPengambilanPayrollHdnamadepartemen: TcxGridDBColumn
            Caption = 'Nama Departemen'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmGeneral.cgvPrevPegawaiActivenamadepartemen
            Width = 94
          end
          object cgvTransaksiPengambilanPayrollHdshift: TcxGridDBColumn
            Caption = 'Shift'
            DataBinding.FieldName = 'shift'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevGroupShiftDt1
            Properties.KeyFieldNames = 'shift'
            Properties.ListFieldItem = dmGeneral.cgvPrevGroupShiftDt1shift
          end
          object cgvTransaksiPengambilanPayrollHdcounterprint: TcxGridDBColumn
            Caption = 'Jumlah Cetak'
            DataBinding.FieldName = 'counterprint'
          end
          object cgvTransaksiPengambilanPayrollHdstatus: TcxGridDBColumn
            Caption = 'Perhitungan'
            DataBinding.FieldName = 'status'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Harian'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'Periode'
                Value = '1'
              end>
          end
          object cgvTransaksiPengambilanPayrollHdnotransaksipengambilan: TcxGridDBColumn
            Caption = 'No Ambil'
            DataBinding.FieldName = 'notransaksipengambilan'
          end
          object cgvTransaksiPengambilanPayrollHdtglpengambilanpayroll: TcxGridDBColumn
            Caption = 'Tgl Ambil'
            DataBinding.FieldName = 'tglpengambilanpayroll'
          end
          object cgvTransaksiPengambilanPayrollHdpotongan: TcxGridDBColumn
            Caption = 'Potongan'
            DataBinding.FieldName = 'potongan'
          end
          object cgvTransaksiPengambilanPayrollHdstatusapprove: TcxGridDBColumn
            Caption = 'Status Approve'
            DataBinding.FieldName = 'statusapprove'
          end
          object cgvTransaksiPengambilanPayrollHdbatastgl1: TcxGridDBColumn
            Caption = 'Batas Tgl Awal'
            DataBinding.FieldName = 'batastgl1'
          end
          object cgvTransaksiPengambilanPayrollHdbatastgl2: TcxGridDBColumn
            Caption = 'Batas Tgl Akhir'
            DataBinding.FieldName = 'batastgl2'
          end
          object cgvTransaksiPengambilanPayrollHdshift1: TcxGridDBColumn
            Caption = 'Shift 1'
            DataBinding.FieldName = 'shift1'
          end
          object cgvTransaksiPengambilanPayrollHdshift2: TcxGridDBColumn
            Caption = 'Shift 2'
            DataBinding.FieldName = 'shift2'
          end
          object cgvTransaksiPengambilanPayrollHdbruto: TcxGridDBColumn
            DataBinding.FieldName = 'bruto'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvTransaksiPengambilanPayrollHdnetto: TcxGridDBColumn
            DataBinding.FieldName = 'netto'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object cgvTransaksiPengambilanPayrollHdtglcetak: TcxGridDBColumn
            Caption = 'Tgl Cetak'
            DataBinding.FieldName = 'tglcetak'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
          end
        end
        object cgTransaksiPayrollLevel1: TcxGridLevel
          GridView = cgvTransaksiPengambilanPayrollHd
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 632
    Top = 232
    object ActProses: TAction
      Caption = 'Proses'
      ImageIndex = 0
      OnExecute = ActProsesExecute
    end
    object ActSimpan: TAction
      Caption = 'Simpan'
      ImageIndex = 8
      OnExecute = ActSimpanExecute
    end
    object ActDelete: TAction
      Category = 'Dataset'
      Caption = 'Delete'
      ImageIndex = 7
      OnExecute = ActDeleteExecute
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 664
    Top = 232
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 696
    Top = 232
  end
  inherited dsDefault: TDataSource
    DataSet = qryPengambilanPayrollHd
    Left = 632
    Top = 264
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 728
    Top = 232
  end
  inherited pmPrint: TPopupMenu
    Left = 664
    Top = 264
  end
  object dsPengambilanPayrollDt: TDataSource
    DataSet = qryPengambilanPayrollDt
    OnStateChange = dsDefaultStateChange
    Left = 280
    Top = 224
  end
  object dsPrevKriteria: TDataSource
    DataSet = mdPrevKriteria
    OnStateChange = dsDefaultStateChange
    OnDataChange = dsPrevKriteriaDataChange
    Left = 104
    Top = 368
  end
  object mdPrevKriteria: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 72
    Top = 368
  end
  object DataSource1: TDataSource
    DataSet = qryPrevKriteria
    OnStateChange = dsDefaultStateChange
    OnDataChange = dsPrevKriteriaDataChange
    Left = 584
    Top = 264
  end
  object qryPengambilanPayrollHd: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryPengambilanPayrollHdBeforePost
    OnNewRecord = qryPengambilanPayrollHdNewRecord
    Parameters = <
      item
        Name = 'tahun'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'bulan'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from transaksipengambilanpayrollhd'
      'where year(tglpengambilanpayroll)=:tahun'
      'and month(tglpengambilanpayroll)=:bulan')
    Left = 512
    Top = 264
  end
  object qryPengambilanPayrollDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    DataSource = dsDefault
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from transaksipengambilanpayrollDt')
    Left = 280
    Top = 256
  end
  object qryPrevKriteria: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tgl1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'shift1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        Size = -1
        Value = Null
      end
      item
        Name = 'shift2'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        Size = -1
        Value = Null
      end
      item
        Name = 'shift1'
        Size = -1
        Value = Null
      end
      item
        Name = 'shift2'
        Size = -1
        Value = Null
      end
      item
        Name = 'notransaksipengambilan'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '  case'
      '   when d.notransaksipengambilan is null then '#39'0'#39
      '   else '#39'1'#39
      '  end as FlagAmbil,'
      '  case'
      '   when d.notransaksipengambilan is null then '#39'0'#39
      '   else'
      '     case'
      '       when b.total>0 then b.total'
      '       else 0'
      '     end'
      '  end as ambilbruto,'
      '  case'
      '   when d.notransaksipengambilan is null then '#39'0'#39
      '   else'
      '     case'
      '       when b.total<0 then b.total'
      '       else 0'
      '     end'
      '  end as ambilpotongan,'
      '  case'
      '   when d.notransaksipengambilan is null then '#39'0'#39
      '   else b.total'
      '  end as ambilnetto,'
      
        '  a.tglpayroll as tgl,a.nopayroll,a.kodegroupshiftid,a.shift,c.m' +
        'asuk1 as jammasuk,c.keluar1 as jamkeluar,c.m1,c.k1,b.payrolltype' +
        ',b.nosyarat,'
      '  case'
      '   when b.total>0 then b.total'
      '  else 0'
      '  end'
      '  as Bruto,'
      '  case'
      '   when b.total<0 then b.total'
      '  else 0'
      '  end'
      '  as Potongan,b.total as netto'
      'from transaksipayrollhd a'
      'left join transaksipayrolldt b on a.nopayroll=b.nopayroll'
      
        'left join absen c on a.tglpayroll=c.tgl and a.pegawaiid=c.pegawa' +
        'iid and a.kodegroupshiftid=c.kodegroupshiftid and a.shift=c.shif' +
        't'
      
        'left join transaksipengambilanpayrolldt d on a.nopayroll=d.nopay' +
        'roll and b.payrolltype=d.payrolltype and b.nosyarat=d.nosyarat'
      'left join'
      '('
      ' select b.nopayroll,b.payrolltype,b.nosyarat'
      ' from transaksipengambilanpayrollhd a'
      
        ' left join transaksipengambilanpayrolldt b on a.notransaksipenga' +
        'mbilan=b.notransaksipengambilan'
      
        ' where nopayroll=b.nopayroll and payrolltype=b.payrolltype and n' +
        'osyarat=b.nosyarat and a.statusapprove='#39'1'#39
      
        ') e on a.nopayroll=e.nopayroll and b.payrolltype=e.payrolltype a' +
        'nd b.nosyarat=e.nosyarat'
      'where ('
      '('
      
        'a.tglpayroll between dbo.fnGetDate(:tgl1) and dbo.fnGetDate(:tgl' +
        '2)'
      
        'and ((a.shift >=:shift1 and (a.tglpayroll>=dbo.fnGetDate(:tgl1) ' +
        'and a.tglpayroll<>dbo.fnGetDate(:tgl2))) or'
      
        '(a.shift <=:shift2 and a.tglpayroll<=dbo.fnGetDate(:tgl2)) and a' +
        '.tglpayroll<>dbo.fnGetDate(:tgl1) or'
      
        '(dbo.fnGetDate(:tgl1)=dbo.fnGetDate(:tgl1) and a.shift between :' +
        'shift1 and :shift2 ))'
      'and e.nopayroll is null'
      ') or (d.notransaksipengambilan=:notransaksipengambilan))'
      'and a.pegawaiid=:pegawaiid')
    Left = 584
    Top = 232
  end
  object qryHapusPengambilanPayrollDt: TADOQuery
    Connection = dmGlobal.conGlobal
    OnNewRecord = qryPengambilanPayrollHdNewRecord
    Parameters = <
      item
        Name = 'notransaksipengambilan'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = ' '
      end>
    SQL.Strings = (
      'delete from transaksipengambilanpayrolldt'
      'where notransaksipengambilan=:notransaksipengambilan')
    Left = 544
    Top = 264
  end
end
