inherited fmTransaksiLembur: TfmTransaksiLembur
  Caption = 'Transaksi Lembur'
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
      TabOrder = 11
      Layout = blGlyphTop
      Spacing = 0
    end
  end
  inherited pnlCustom: TPanel
    inherited cbMonth: TcxComboBox
      ExplicitHeight = 19
    end
    inherited cbYear: TcxComboBox
      ExplicitHeight = 19
    end
    inherited dblcStatusApprove: TcxDBImageComboBox
      ExplicitHeight = 19
    end
    inherited dbeCounterPrint: TcxDBTextEdit
      ExplicitHeight = 19
    end
    inherited dblcEmployeeId: TcxDBExtLookupComboBox
      ExplicitHeight = 19
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
        object lblCountryId: TLabel
          Left = 12
          Top = 12
          Width = 52
          Height = 13
          Caption = 'No Lembur'
          Transparent = True
        end
        object Label2: TLabel
          Left = 12
          Top = 35
          Width = 36
          Height = 13
          Caption = 'No Peg'
          Transparent = True
        end
        object Label7: TLabel
          Left = 12
          Top = 59
          Width = 28
          Height = 13
          Caption = 'Nama'
          Transparent = True
        end
        object Label8: TLabel
          Left = 12
          Top = 83
          Width = 57
          Height = 13
          Caption = 'Perusahaan'
          Transparent = True
        end
        object Label9: TLabel
          Left = 12
          Top = 107
          Width = 25
          Height = 13
          Caption = 'Divisi'
          Transparent = True
        end
        object Label10: TLabel
          Left = 12
          Top = 131
          Width = 58
          Height = 13
          Caption = 'Departemen'
          Transparent = True
        end
        object Label5: TLabel
          Left = 12
          Top = 155
          Width = 25
          Height = 13
          Caption = 'Kode'
          Transparent = True
        end
        object Label6: TLabel
          Left = 12
          Top = 179
          Width = 61
          Height = 13
          Caption = 'Dari Tanggal'
          Transparent = True
        end
        object Label11: TLabel
          Left = 12
          Top = 203
          Width = 77
          Height = 13
          Caption = 'Sampai Tanggal'
          Transparent = True
        end
        object Label12: TLabel
          Left = 12
          Top = 227
          Width = 26
          Height = 13
          Caption = 'Lama'
          Transparent = True
        end
        object Label13: TLabel
          Left = 12
          Top = 251
          Width = 55
          Height = 13
          Caption = 'Keterangan'
          Transparent = True
        end
        object lDepartemen: TLabel
          Left = 98
          Top = 128
          Width = 3
          Height = 13
          Transparent = True
        end
        object lDivisi: TLabel
          Left = 98
          Top = 104
          Width = 3
          Height = 13
          Transparent = True
        end
        object lPerusahaan: TLabel
          Left = 98
          Top = 80
          Width = 3
          Height = 13
          Transparent = True
        end
        object dbeNoReg: TcxDBTextEdit
          Left = 98
          Top = 9
          DataBinding.DataField = 'notransaksiabsen'
          DataBinding.DataSource = dsDefault
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 170
        end
        object dbeNoPeg: TcxDBExtLookupComboBox
          Left = 98
          Top = 32
          DataBinding.DataField = 'pegawaiid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmgeneral.cgvPrevPegawaiActive
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmgeneral.cgvPrevPegawaiActivenopeg
          Properties.OnEditValueChanged = dbeNoPegPropertiesEditValueChanged
          TabOrder = 2
          Width = 145
        end
        object dbeNama: TcxDBExtLookupComboBox
          Left = 98
          Top = 56
          DataBinding.DataField = 'pegawaiid'
          DataBinding.DataSource = dsDefault
          Properties.View = dmgeneral.cgvPrevPegawaiActive
          Properties.KeyFieldNames = 'pegawaiid'
          Properties.ListFieldItem = dmgeneral.cgvPrevPegawaiActivenama
          Properties.OnEditValueChanged = dbeNamaPropertiesEditValueChanged
          TabOrder = 3
          Width = 145
        end
        object dbeKode: TcxDBExtLookupComboBox
          Left = 98
          Top = 152
          DataBinding.DataField = 'kodeabsen'
          DataBinding.DataSource = dsDefault
          Properties.View = dmgeneral.cgvPrevKodeAbsen
          Properties.KeyFieldNames = 'kodeabsen'
          Properties.ListFieldItem = dmgeneral.cgvPrevKodeAbsenkodeabsen
          TabOrder = 4
          Width = 145
        end
        object dbeTgl1: TcxDBDateEdit
          Left = 98
          Top = 176
          DataBinding.DataField = 'daritgl'
          DataBinding.DataSource = dsDefault
          TabOrder = 5
          Width = 121
        end
        object dbeTgl2: TcxDBDateEdit
          Left = 98
          Top = 200
          DataBinding.DataField = 'sampaitgl'
          DataBinding.DataSource = dsDefault
          TabOrder = 6
          Width = 121
        end
        object dbeLama: TcxDBSpinEdit
          Left = 98
          Top = 224
          DataBinding.DataField = 'lama'
          DataBinding.DataSource = dsDefault
          TabOrder = 7
          Width = 121
        end
        object dbeKeterangan: TcxDBMemo
          Left = 98
          Top = 250
          DataBinding.DataField = 'keterangan'
          DataBinding.DataSource = dsDefault
          TabOrder = 8
          Height = 55
          Width = 229
        end
        object btnGetId: TcxButton
          Left = 274
          Top = 8
          Width = 19
          Height = 19
          Hint = 'Auto Generate Id'
          TabOrder = 1
          TabStop = False
          OnClick = btnGetIdClick
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
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 0
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgTransaksiCuti: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 0
        Align = alClient
        TabOrder = 0
        object cgvTransaksi: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Jum ,0.;-,0.'
              Kind = skCount
              FieldName = 'pegawaiid'
              DisplayText = 'Jumlah'
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cgvTransaksinamaperusahaan: TcxGridDBColumn
            Caption = 'Perusahaan'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmgeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmgeneral.cgvPrevPegawaiActivenamaperusahaan
          end
          object cgvTransaksinamadivisi: TcxGridDBColumn
            Caption = 'Divisi'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmgeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmgeneral.cgvPrevPegawaiActivenamadivisi
          end
          object cgvTransaksinamadepartemen: TcxGridDBColumn
            Caption = 'Departemen'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmgeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmgeneral.cgvPrevPegawaiActivenamadepartemen
          end
          object cgvTransaksinopeg: TcxGridDBColumn
            Caption = 'No Peg'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmgeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmgeneral.cgvPrevPegawaiActivenopeg
          end
          object cgvTransaksinama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'pegawaiid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmgeneral.cgvPrevPegawaiActive
            Properties.KeyFieldNames = 'pegawaiid'
            Properties.ListFieldItem = dmgeneral.cgvPrevPegawaiActivenama
          end
          object cgvTransaksinoreg: TcxGridDBColumn
            Caption = 'No Transaksi'
            DataBinding.FieldName = 'notransaksiabsen'
          end
          object cgvTransaksikodeabsen: TcxGridDBColumn
            Caption = 'Kode Absen'
            DataBinding.FieldName = 'kodeabsen'
          end
          object cgvTransaksilama: TcxGridDBColumn
            Caption = 'Lama'
            DataBinding.FieldName = 'lama'
          end
          object cgvTransaksidaritgl: TcxGridDBColumn
            Caption = 'Dari Tgl'
            DataBinding.FieldName = 'daritgl'
          end
          object cgvTransaksisampaitgl: TcxGridDBColumn
            Caption = 'Sampai Tgl'
            DataBinding.FieldName = 'sampaitgl'
          end
          object cgvTransaksiketerangan: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
          end
        end
        object cgTransaksiCutiLevel1: TcxGridLevel
          GridView = cgvTransaksi
        end
      end
    end
  end
  inherited ActionList1: TActionList
    object ActDelete: TAction
      Category = 'Dataset'
      Caption = 'Delete'
      ImageIndex = 7
      OnExecute = ActDeleteExecute
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryTransaksi
    OnDataChange = dsDefaultDataChange
  end
  object qryTransaksi: TZQuery
    Connection = dmGlobal.zconGlobal
    BeforePost = qryTransaksiBeforePost
    OnNewRecord = qryTransaksiNewRecord
    SQL.Strings = (
      'select * '
      'from transaksiabsen'
      
        'where :period between GetPeriod(daritgl) and GetPeriod(sampaitgl' +
        ')'
      'order by notransaksiabsen')
    Params = <
      item
        DataType = ftUnknown
        Name = 'period'
        ParamType = ptUnknown
      end>
    Left = 132
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'period'
        ParamType = ptUnknown
      end>
  end
end
