object fmTenagaKerja: TfmTenagaKerja
  Left = 549
  Top = 0
  Caption = 'Tenaga Kerja'
  ClientHeight = 507
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  DesignSize = (
    679
    507)
  PixelsPerInch = 96
  TextHeight = 13
  inline feSetupButton1: TfeSetupButton
    Left = 0
    Top = 0
    Width = 679
    Height = 63
    Align = alTop
    Constraints.MinWidth = 633
    TabOrder = 0
    TabStop = True
    ExplicitWidth = 679
    inherited shpToolbarBackground: TShape
      Width = 679
      ExplicitTop = 97
      ExplicitWidth = 678
    end
    inherited btnReset: TcxButton
      Left = 652
      ExplicitLeft = 652
    end
    inherited ActionList1: TActionList
      inherited DataSetInsert1: TDataSetInsert
        Enabled = False
      end
      inherited DataSetEdit1: TDataSetEdit
        Enabled = False
      end
      inherited DataSetDelete1: TDataSetDelete
        Enabled = False
      end
      inherited DataSetPost1: TDataSetPost
        Enabled = False
      end
      inherited DataSetCancel1: TDataSetCancel
        Enabled = False
      end
      inherited DataSetPrior1: TDataSetPrior
        Enabled = False
      end
      inherited DataSetNext1: TDataSetNext
        Enabled = False
      end
    end
  end
  object dxDockSite1: TdxDockSite
    Left = 0
    Top = 63
    Width = 679
    Height = 444
    Align = alClient
    DockType = 0
    OriginalWidth = 679
    OriginalHeight = 444
    object dxLayoutDockSite3: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 651
      Height = 444
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      object dxLayoutDockSite1: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 651
        Height = 444
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object dxVertContainerDockSite1: TdxVertContainerDockSite
        Left = 0
        Top = 0
        Width = 651
        Height = 444
        ActiveChildIndex = -1
        AllowFloating = True
        AutoHide = False
        CaptionButtons = []
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object dpMaster: TdxDockPanel
          Left = 0
          Top = 0
          Width = 651
          Height = 232
          AllowFloating = True
          AutoHide = False
          Caption = 'Master'
          CaptionButtons = []
          Dockable = False
          DockType = 3
          OriginalWidth = 185
          OriginalHeight = 232
          object lblAlamat: TLabel
            Left = 8
            Top = 73
            Width = 33
            Height = 13
            Caption = 'Alamat'
          end
          object lblBarcode: TLabel
            Left = 8
            Top = 26
            Width = 49
            Height = 13
            Caption = 'lblBarcode'
          end
          object lblCity: TLabel
            Left = 9
            Top = 142
            Width = 22
            Height = 13
            Caption = 'Kota'
          end
          object lblCountry: TLabel
            Left = 9
            Top = 96
            Width = 35
            Height = 13
            Caption = 'Negara'
          end
          object lblNama: TLabel
            Left = 8
            Top = 49
            Width = 37
            Height = 13
            Caption = 'lblNama'
          end
          object lblNIK: TLabel
            Left = 8
            Top = 2
            Width = 27
            Height = 13
            Caption = 'lblNIK'
          end
          object lblProvince: TLabel
            Left = 9
            Top = 118
            Width = 37
            Height = 13
            Caption = 'Propinsi'
          end
          object Label1: TLabel
            Left = 9
            Top = 165
            Width = 30
            Height = 13
            Caption = 'Keluar'
          end
          object dbeAlamat: TcxDBTextEdit
            Left = 96
            Top = 70
            DataBinding.DataField = 'alamat'
            DataBinding.DataSource = dmGeneral.dsPegawai
            TabOrder = 3
            Width = 399
          end
          object dbeBarcode: TcxDBTextEdit
            Left = 96
            Top = 23
            DataBinding.DataField = 'barcode'
            DataBinding.DataSource = dmGeneral.dsPegawai
            TabOrder = 1
            Width = 185
          end
          object dbeFoto: TcxDBImage
            Left = 510
            Top = 6
            DataBinding.DataField = 'Foto'
            DataBinding.DataSource = dmGeneral.dsPegawaiFoto
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.Stretch = True
            Style.BorderColor = clBlack
            Style.BorderStyle = ebsThick
            TabOrder = 9
            Height = 157
            Width = 129
          end
          object dbeName: TcxDBTextEdit
            Left = 96
            Top = 47
            DataBinding.DataField = 'nama'
            DataBinding.DataSource = dmGeneral.dsPegawai
            TabOrder = 2
            Width = 185
          end
          object dbeNoPeg: TcxDBTextEdit
            Left = 96
            Top = -1
            DataBinding.DataField = 'nopeg'
            DataBinding.DataSource = dmGeneral.dsPegawai
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 81
          end
          object dblcCity: TcxDBExtLookupComboBox
            Left = 96
            Top = 136
            DataBinding.DataField = 'CityId'
            DataBinding.DataSource = dmGeneral.dsPegawai
            Properties.View = dmGlobal.cgvPrevCity2
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCity2CityName
            Properties.OnCloseUp = dblcCityPropertiesCloseUp
            Properties.OnInitPopup = dblcCityPropertiesInitPopup
            TabOrder = 6
            Width = 185
          end
          object dblcCountry: TcxDBExtLookupComboBox
            Left = 96
            Top = 92
            DataBinding.DataField = 'CountryId'
            DataBinding.DataSource = dmGeneral.dsPegawai
            Properties.View = dmGlobal.cgvPrevCountry
            Properties.KeyFieldNames = 'CountryId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCountryCountryName
            Properties.OnEditValueChanged = dblcCountryPropertiesEditValueChanged
            TabOrder = 4
            Width = 185
          end
          object dblcProvince: TcxDBExtLookupComboBox
            Left = 96
            Top = 114
            DataBinding.DataField = 'ProvinceId'
            DataBinding.DataSource = dmGeneral.dsPegawai
            Properties.View = dmGlobal.cgvPrevProvince2
            Properties.KeyFieldNames = 'ProvinceId'
            Properties.ListFieldItem = dmGlobal.cgvPrevProvince2ProvinceName
            Properties.OnCloseUp = dblcProvincePropertiesCloseUp
            Properties.OnEditValueChanged = dblcProvincePropertiesEditValueChanged
            Properties.OnInitPopup = dblcProvincePropertiesInitPopup
            TabOrder = 5
            Width = 185
          end
          object btnCancel: TcxButton
            Left = 447
            Top = 103
            Width = 57
            Height = 48
            Action = DataSetCancel1
            TabOrder = 12
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF009C421000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00A5522900BD520000A5390000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00B57B5A00B5520000CE630000CE630000A5390000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00A5390000CE630000CE630000CE630000A539
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00A5390000CE630000CE630000C663
              0000A5421000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A5390000CE630000CE63
              0000BD520000AD633900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BD947B00AD4A0000CE63
              0000CE630000AD420000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD63
              3900BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A
              0000BD5A0000BD5A0000A5420000FF00FF00FF00FF00FF00FF00AD633900BD5A
              0000CE630000C6630000A54A1800FF00FF00FF00FF00FF00FF00FF00FF00AD63
              3900D6730000CE6B0000CE630000CE630000CE630000CE630000CE630000CE63
              0000CE630000CE630000BD520000FF00FF00FF00FF00FF00FF00FF00FF009C39
              0000CE630000CE630000AD420000FF00FF00FF00FF00FF00FF00FF00FF00AD63
              3900DE7B0000DE730000D66B0000CE6B0000C65A0000B54A0000B54A0000B54A
              0000B54A0000B54A0000A5421000D6CEC600FF00FF00FF00FF00FF00FF00BD84
              6B00BD520000CE630000C6630000B56B4A00FF00FF00FF00FF00FF00FF00AD63
              3900E7840000E77B0000DE730000DE730000C66300009C310000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00AD420000CE630000CE6300009C390000FF00FF00FF00FF00FF00FF00AD63
              3900F78C0000E7840000DE730000DE7B0000DE730000CE630000A5421000D6CE
              C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00A5522900CE630000CE630000AD420000D6CEC600FF00FF00FF00FF00AD63
              3900F78C0000F78C0000AD4A0000B5520000E77B0000DE730000CE6B0000A542
              1000D6CEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00AD633900CE630000CE630000B54A0000FF00FF00FF00FF00FF00FF00AD63
              3900FF9C0000FF940000B54A0000FF00FF00B5520000E7840000E77B0000CE6B
              0000A5421000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00A54A1800CE630000CE630000AD420000FF00FF00FF00FF00FF00FF00AD63
              3900FFA51000FF9C0000B54A0000FF00FF00FF00FF00B5520000E7840000E784
              0000D6730000A5420000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00AD420000CE630000CE630000A5421000FF00FF00FF00FF00FF00FF00AD63
              3900FFAD3100FFA52100B54A0000FF00FF00FF00FF00FF00FF00B54A0000E784
              0000E7840000E77B0000BD520000A5521800FF00FF00FF00FF00FF00FF00A539
              0000CE630000CE630000BD520000B57B5A00FF00FF00FF00FF00FF00FF00AD63
              3900FFB55200FFB54200B5520800FF00FF00FF00FF00FF00FF00FF00FF00AD42
              0000E7840000E7840000E7840000DE730000C65A0000BD520000BD520000CE63
              0000CE630000CE630000A5421000FF00FF00FF00FF00FF00FF00FF00FF00AD63
              3900F7AD6300FFBD6300AD4A0800FF00FF00FF00FF00FF00FF00FF00FF00D6CE
              C600AD521800CE630000EF840000E7840000E77B0000DE730000DE730000D66B
              0000CE630000A5390000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00AD522100AD4A1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00AD4A1000CE630000D66B0000E7840000D66B0000BD5A
              0000A5421000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00BD846B00AD633900B57B5A00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Layout = blGlyphTop
            Spacing = 0
          end
          object btnCapture: TcxButton
            Left = 334
            Top = 103
            Width = 57
            Height = 48
            Action = actCapture
            TabOrder = 10
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00DEDE
              DE00CECECE00EFEFEF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E7E7E7006B946B003994
              4200298431009CA59C00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00639C630010B5210018CE
              310008BD180039734200CECECE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00C6C6BD00BDBDBD00EFEFEF00FFFFFF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00ADBDAD0018A5210021C6390008BD
              210008BD210010A5180073847B00F7F7F700FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00CEBDB500DE6B4A00B5634A00946B6300A59C9400CECECE00F7F7
              F700FFFFFF00FF00FF00FF00FF00EFEFEF00429C4A0029CE4A0018C6310010BD
              210010BD210010C6290029843100B5B5B500FFFFFF00FF00FF00FF00FF00FF00
              FF00F7F7F700CE6B5200F7735200FF946B00F7845A00D66B4A00A5634A00947B
              7300ADA5A500DEDEDE00FFFFFF0084AD840039D6520029CE420010BD290018BD
              290010BD290018C6310010BD2900527B5A00DEDEDE00FF00FF00FF00FF00FF00
              FF00CEB5B500E75A3100E76B4200F7947300F79C7300FF947300FF946B00F77B
              5A00CE634A00A5635A008484730042C65A0039E7630018C6310018C6310018C6
              390018C6390018C6390021D6390021A531008C948C00F7F7F700FF00FF00FFFF
              FF00C6846B00EF6B4200DE634200F7947300F7A57B00F7947300E7946B00EF94
              6B00F7946B00EF845A007BAD5A004AF77B0029CE420021C6390021CE420021CE
              420021CE420021CE420021CE420029DE4A0042844A00D6D6D600FF00FF00E7D6
              D600DE735200E7734A00DE634200F7947300FFA58400A5B5730052C66B0063CE
              6B006BD67B005AC66B0052E7840052F7840039DE5A0039DE630031D6520029CE
              4A0029D64A0029D64A0029D6520031C64A006BAD7300EFEFEF00FF00FF00CEAD
              9C00EF735200E77B5200DE6B4200F79C7300FFAD8C0084C6730031E77B0031D6
              730039E7840039DE7B0031CE6B007BA55A007BBD73004AF78C0039DE630031D6
              520031DE5A0031DE5A004A8C4A00ADB5AD00FFFFFF00FF00FF00FFFFFF00CE8C
              7300EF845A00E7845A00E76B4A00EF9C7300FFBD940094BD730029CE6B0029BD
              5A0029C6630029C6630021C663009C9C5A008CAD6B0039E77B0042E76B0039DE
              630039E7630039E7630094734200B5A5A500FF00FF00FF00FF00F7E7E700D67B
              6300EF8C6B00EF8C6300E7735200EFA57B00C6B5AD006BA5730029C6630018AD
              420018B5420018B5420010AD4200639C4A0063B5630039DE7B004AEF73004AE7
              730042EF730042DE6B00C68C5200A5848400FFFFFF00FF00FF00E7CEC600EF84
              5A00EF947300EF946B00E77B5200EFA57B009CCEE7005ACEC60031C6630018A5
              310010A5210010A5290010A529002194290031B55A004AE7840052F7840052EF
              84004AF784005AD66B00DE946B00A57B7300F7F7F700FF00FF00CEADA500F794
              6B00EF9C7300EF9C7300E7845A00F7AD8400BDDEDE008CE7EF0039BD730018AD
              420000940800089C1000009408000894210029C6630052F78C005AFF94005AFF
              940052FF8C0084C67300EFA58C00A57B6B00EFEFEF00FF00FF00E7A59400F79C
              7B00F7A57B00F79C7B00EF846300F7B58C00B5D6D600B5F7FF004ABD940018BD
              520008941800008400000084000018A5420042D67B0073FFA50073FFA50073FF
              AD0063EF9400B5B58C00F7B59C00A57B6B00EFEFEF00FF00FF00E7948400F7AD
              8400F7AD8400F7A58400EF8C6300F7C69C0094D6DE007BC6E70094CECE0039C6
              6B0029CE630021A5390021B54A0031D673007BF7AD00ADFFCE00ADFFCE009CFF
              C60094AD7300DEB59400EFBDA500A57B6B00EFEFEF00FF00FF00E7947B00FFB5
              9400F7B58C00F7AD8400EF946B00FFE7B500CEEFD60063C6DE00CEE7FF00A5DE
              C6004ADE7B004AEF84004AEF8C0084F7B500D6FFE700D6FFE700BDEFD600ADCE
              9C00DEA57B00E7AD9400E7C6A500A57B7300F7F7F700FF00FF00EF947300FFCE
              A500FFBD9C00FFBD9400EF946B00F7BD9400FFDEB500DEDEC600CEDED600CEDE
              E7009CCEC6006BCEA500A5D69C00CED6AD00D6D6AD00CED6AD00C6A57B00E794
              6B00EFA58400DEC6A500E7C6A500A5847B00F7F7F700FF00FF00E79C7B00F7AD
              8400F7B58C00FFBD9400FFB59400F7A57B00EF9C7300F7A57B00F7AD8400EFBD
              9400F7C6AD00F7D6B500FFE7BD00FFEFBD00FFEFBD00FFE7BD00FFE7BD00FFCE
              AD00E7AD8C00DEBDA500E7BD9C00AD8C8400FFFFFF00FF00FF00FFEFEF00F7CE
              C600EFBDAD00E7A58C00EF9C8400EF9C7B00EFA57B00F7A57B00F7A57B00F7A5
              7B00F7A57B00F79C7B00EF9C7B00EFAD8400F7BD9400F7CEA500FFDEB500FFE7
              BD00E7E7C600E7EFD600DEAD8C00B59C9C00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FFF7F700FFE7E700F7D6CE00EFBDB500EFAD9C00EF9C
              8400EF947300EF9C7300F7B58C00F7A57B00EF9C7300EF947300EF9C7300E794
              6B00DEA58400E7CEAD00CE947300CEC6C600FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFF
              FF00FFF7F700E79C8C00FFC69C00FFCEA500FFC69C00FFBD9400FFC69C00CE73
              5200CEB5AD00F7C6BD00EFC6BD00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00F7CEC600EF9C7300F7BD9400FFC69C00FFCEA500FFB58C00AD84
              7300FFF7F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00F7D6CE00EFBDAD00EFAD9400EF9C8400DE9C8400EFE7
              E700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Layout = blGlyphTop
            Spacing = 0
          end
          object cxButton1: TcxButton
            Left = 390
            Top = 103
            Width = 57
            Height = 48
            Action = DataSetPost1
            TabOrder = 11
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000FF00FF00FF00
              FF00F7F7F700BDBDBD009C9C9C009C9C9C009C9C9C00ADADAD00ADADAD009C9C
              9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00AD847B00312984003939C6003131B500292994003121630042314A005A42
              4A007352520084635A00946B6B009C736B00A5737300FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEF
              EF002921CE004239F7005252F7004A4AF7004A4AF7003939F7009C9CC6009494
              BD006B63A5005A528C0052426B00634A6B008C6B7300AD848400C6949400D6A5
              A500DEADAD00E7B5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD52
              08003131E7004A4AF7005252F7004A4AF7004A4AEF004239EF00ADADBD008494
              EF008C9CEF00B5B5C600D6D6D600B5B5CE008C8CBD0063639C00524A7B00524A
              6300735A6300A5846300BD9C9400734A4A00BD5A0000FFFFFF00FF00FF00BDBD
              CE004239EF005252F700525AF7005252F7004A4AF7004242EF00B5B5C600737B
              EF007384FF00A5ADCE00D6D6DE00CECED600C6C6CE00C6C6C600BDBDBD009CA5
              D6008C9CEF002121CE002921AD00211873004A292100D6D6D600FF00FF00ADAD
              C6005252EF005A5AF7005A5AF7005252F7004A52F7004A4AE700B5B5C6005A5A
              F7006363F700ADADCE00DEDEE700D6D6DE00CECED600C6C6CE00BDBDBD008494
              DE008494F7002921E7002921EF002921F7002118CE00BDBDBD00FF00FF009C9C
              CE006363F7006363F7005A5AF7005A5AF7005252F7005252E700ADADCE004242
              F7004A4AEF00BDBDD600DEDEE700D6D6E700D6D6DE00CECED600C6C6C600737B
              E7006B73EF002921E7002921EF002921EF002118BD00C6C6C600FF00FF00737B
              B5007373F7006B6BF7006363F7005A5AF700525AF7006363DE009C9CCE003129
              F7003131EF00CECEDE00E7E7EF00DEDEE700D6D6E700CECEDE00C6C6C6005A5A
              E7005252E7002921EF002921EF002921EF002921B500CECECE00FF00FF003952
              8C007B7BFF006B73F700636BF7005A63F7005A5AF7005A63DE00CECED6009C9C
              CE008484CE00E7E7EF00EFE7F700E7E7EF00DEDEE700D6D6E700BDBDCE004242
              EF004239E7002929EF002921EF002921EF002929A500D6D6D600FF00FF00294A
              8C008C8CFF006B73F700636BF700636BF7005A63F7005252F7005252E7005A5A
              DE00736BD6007B7BD600948CCE00A5A5CE00BDBDD600CECED600ADA5BD003129
              EF003129DE003129EF002929EF002929F70021298C00DEDEDE00FF00FF00314A
              94009494FF00737BF7006B73F700636BF700849CF700A5D6FF009CBDFF0084A5
              FF00738CF7006373F700525AF700424AF7003939EF003931E7003129E7003129
              E7003129E7003129EF003129EF003129F70018216B00C6CEC600FF00FF00425A
              B500949CFF00737BF7007373F7007384F700CEFFFF00C6FFFF00C6FFFF00C6FF
              FF00BDFFFF00BDFFFF00B5FFFF00B5FFFF00A5F7FF009CE7FF008CCEFF007BB5
              FF006B9CF7004252F7003129EF003129F70008214A00ADC6AD00B5DEB5005A63
              CE009CA5FF007B84F700737BF7008C9CF700D6FFFF00CEFFFF00CEFFFF00C6FF
              FF00C6FFFF00BDFFFF00BDFFFF00B5FFFF00B5FFFF00ADFFFF00ADFFFF00A5FF
              FF00A5FFFF0094EFFF003131EF003129F70000292900ADC6AD00ADCEAD007373
              DE009CA5F7007B84F7007B84F70094ADF700DEFFFF00C6DEDE00BDD6D600BDDE
              DE00BDDEDE00BDE7E700BDEFEF00BDEFEF00B5F7F700B5F7FF00ADFFFF00ADFF
              FF00A5FFFF00A5F7FF003931EF003131EF0000312100ADCEB5009CBDA5008C8C
              E700A5ADF700848CF7007B84F700A5BDFF00DEFFFF00D6FFFF00D6FFFF00CEF7
              FF00CEF7F700C6EFEF00BDE7E700BDDEE700B5DEDE00B5D6D600B5D6D600ADCE
              D600ADDEDE00A5EFFF003131EF003131E70018422900B5CEB5009C4A10009C9C
              EF00A5ADF7008494F7007B8CF700B5CEFF00E7FFFF00DEFFFF00DEFFFF00D6FF
              FF00D6FFFF00CEFFFF00CEFFFF00CEFFFF00C6FFFF00C6FFFF00BDFFFF00BDFF
              FF00B5FFFF009CDEFF003931EF003129E700295A3900FFFFFF008C421000ADB5
              F700A5ADFF008C9CF700848CF700C6D6FF00E7FFFF00C6D6D600C6D6D600C6D6
              D600C6D6D600C6D6DE00C6DEDE00C6DEDE00BDE7E700BDE7E700BDE7E700BDE7
              E700BDF7F7009CCEFF003931EF003129D60063846B00FF00FF0084423100BDC6
              FF00A5B5FF008C9CF7008494F700D6E7FF00EFFFFF00E7FFFF00E7FFFF00DEFF
              FF00DEFFFF00DEFFFF00D6F7F700CEF7F700CEEFEF00C6EFEF00C6EFEF00BDE7
              E700BDF7F70094BDFF003939F7002929C600ADB5AD00FF00FF0073424A00C6CE
              FF00A5B5FF0094A5FF008C9CF700E7EFFF00EFFFFF00EFFFFF00EFFFFF00E7FF
              FF00E7FFFF00E7FFFF00DEFFFF00DEFFFF00D6FFFF00D6FFFF00CEFFFF00CEFF
              FF00CEFFFF008CADFF004242F7003129B500A5520000FF00FF006B426300CED6
              FF00ADB5FF0094A5F70094A5F700EFF7FF00DEE7E700CED6D600CED6D600CED6
              D600C6D6D600C6D6D600C6D6D600C6D6D600C6D6D600BDD6D600BDD6D600BDCE
              D600D6FFFF00849CF7004242F7003129A500AD520000FF00FF006B4A7300D6DE
              FF008C9CEF007384EF008C94EF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00EFFF
              FF00EFFFFF00EFFFFF00E7FFFF00E7FFFF00E7FFFF00DEFFFF00DEFFFF00D6FF
              FF00D6FFFF007384EF00636BE70031217B00BD844A00FF00FF00736BAD00D6DE
              FF008C9CEF00525AE70094A5EF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
              FF00EFFFFF00EFFFFF00EFFFFF00E7FFFF00E7FFFF00E7FFFF00DEFFFF00DEFF
              FF00DEFFFF006B73F7004242EF0042296B00D6D6C600FF00FF008484CE00DEE7
              FF00BDCEFF00B5CEFF00BDCEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
              FF00E7F7FF00848CE70021299C00214A7300FF00FF00FF00FF008484CE00848C
              CE008484CE007B73B500847BB5007B73AD007B73AD007B6BA5007B6BA5007B63
              9C007B6394007B6394007B639400846B8C00846B8C008C6B8C008C6B7B007352
              6300A5737300C6847300FF00FF00FF00FF00FF00FF00FF00FF00}
            Layout = blGlyphTop
            Spacing = 0
          end
          object dbckFlagKeluar: TcxDBCheckBox
            Left = 91
            Top = 163
            DataBinding.DataField = 'flagkeluar'
            DataBinding.DataSource = dmGeneral.dsPegawai
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            TabOrder = 7
            Width = 30
          end
          object dbeTglKeluar: TcxDBDateEdit
            Left = 120
            Top = 163
            DataBinding.DataField = 'tglkeluar'
            DataBinding.DataSource = dmGeneral.dsPegawai
            TabOrder = 8
            Width = 121
          end
        end
        object dxTabContainerDockSite1: TdxTabContainerDockSite
          Left = 0
          Top = 232
          Width = 651
          Height = 212
          ActiveChildIndex = 0
          AllowFloating = True
          AutoHide = False
          CaptionButtons = []
          Dockable = False
          ShowCaption = False
          TabsPosition = tctpTop
          DockType = 3
          OriginalWidth = 185
          OriginalHeight = 212
          object dpGeneral: TdxDockPanel
            Left = 0
            Top = 0
            Width = 647
            Height = 178
            AllowFloating = True
            AutoHide = False
            Caption = 'General'
            TabPosition = tctpTop
            DockType = 1
            OriginalWidth = 185
            OriginalHeight = 212
            object lblJenisKelamin: TLabel
              Left = 6
              Top = 121
              Width = 70
              Height = 13
              Caption = 'lblJenisKelamin'
            end
            object lblKodeOutsourcing: TLabel
              Left = 309
              Top = 6
              Width = 59
              Height = 13
              Caption = 'OutSourcing'
            end
            object lblStatus: TLabel
              Left = 6
              Top = 75
              Width = 41
              Height = 13
              Caption = 'lblStatus'
            end
            object lblStatusKaryawan: TLabel
              Left = 6
              Top = 98
              Width = 89
              Height = 13
              Caption = 'lblStatusKaryawan'
            end
            object lblTempatLahir: TLabel
              Left = 6
              Top = 6
              Width = 69
              Height = 13
              Caption = 'lblTempatLahir'
            end
            object lblTglBerakhirKontrak: TLabel
              Left = 309
              Top = 28
              Width = 100
              Height = 13
              Caption = 'lblTglBerakhirKontrak'
            end
            object lblTglLahir: TLabel
              Left = 6
              Top = 29
              Width = 47
              Height = 13
              Caption = 'lblTglLahir'
            end
            object lblTglMasuk: TLabel
              Left = 6
              Top = 52
              Width = 54
              Height = 13
              Caption = 'lblTglMasuk'
            end
            object lblPerusahaan: TLabel
              Left = 309
              Top = 51
              Width = 67
              Height = 13
              Caption = 'lblPerusahaan'
            end
            object lblDivisi: TLabel
              Left = 309
              Top = 74
              Width = 34
              Height = 13
              Caption = 'lblDivisi'
            end
            object lblDepartemen: TLabel
              Left = 309
              Top = 97
              Width = 69
              Height = 13
              Caption = 'lblDepartemen'
            end
            object lblFlagSchedule: TLabel
              Left = 309
              Top = 122
              Width = 43
              Height = 13
              Caption = 'Schedule'
            end
            object Label2: TLabel
              Left = 5
              Top = 145
              Width = 22
              Height = 13
              Caption = 'Shift'
            end
            object Label3: TLabel
              Left = 309
              Top = 150
              Width = 49
              Height = 13
              Caption = 'Konfirmasi'
            end
            object dbeTempatLahir: TcxDBTextEdit
              Left = 97
              Top = 2
              DataBinding.DataField = 'tmplahir'
              DataBinding.DataSource = dmGeneral.dsPegawai
              TabOrder = 0
              Width = 170
            end
            object dbeTglBerakhirKontrak: TcxDBDateEdit
              Left = 419
              Top = 26
              DataBinding.DataField = 'tglendkontrak'
              DataBinding.DataSource = dmGeneral.dsPegawai
              TabOrder = 8
              Width = 121
            end
            object dbeTglLahir: TcxDBDateEdit
              Left = 97
              Top = 25
              DataBinding.DataField = 'tgllahir'
              DataBinding.DataSource = dmGeneral.dsPegawai
              TabOrder = 1
              Width = 121
            end
            object dbeTglMasuk: TcxDBDateEdit
              Left = 97
              Top = 48
              DataBinding.DataField = 'tglmasuk'
              DataBinding.DataSource = dmGeneral.dsPegawai
              TabOrder = 2
              Width = 121
            end
            object dblckodeoutsourcing: TcxDBExtLookupComboBox
              Left = 419
              Top = 3
              DataBinding.DataField = 'kodeoutsourcing'
              DataBinding.DataSource = dmGeneral.dsPegawai
              Properties.View = dmGeneral.cgvPrevOutSourcing
              Properties.KeyFieldNames = 'kodeoutsourcing'
              Properties.ListFieldItem = dmGeneral.cgvPrevOutSourcingnama
              TabOrder = 7
              Width = 122
            end
            object dblckodeperusahaan: TcxDBExtLookupComboBox
              Left = 419
              Top = 49
              DataBinding.DataField = 'kodeperusahaan'
              DataBinding.DataSource = dmGeneral.dsPegawai
              Enabled = False
              Properties.View = dmGeneral.cgvPrevPerusahaan
              Properties.KeyFieldNames = 'kodeperusahaan'
              Properties.ListFieldItem = dmGeneral.cgvPrevPerusahaannamaperusahaan
              TabOrder = 9
              Width = 185
            end
            object dblckodedivisi: TcxDBExtLookupComboBox
              Left = 419
              Top = 72
              DataBinding.DataField = 'kodedivisi'
              DataBinding.DataSource = dmGeneral.dsPegawai
              Enabled = False
              Properties.View = dmGeneral.cgvPrevDivisi
              Properties.KeyFieldNames = 'kodedivisi'
              Properties.ListFieldItem = dmGeneral.cgvPrevDivisinamadivisi
              Properties.OnEditValueChanged = dblckodedivisiPropertiesEditValueChanged
              TabOrder = 10
              Width = 185
            end
            object dblckodedepartemen: TcxDBExtLookupComboBox
              Left = 419
              Top = 99
              DataBinding.DataField = 'kodedepartemen'
              DataBinding.DataSource = dmGeneral.dsPegawai
              Enabled = False
              Properties.OnCloseUp = dblckodedepartemenPropertiesCloseUp
              Properties.OnInitPopup = dblckodedepartemenPropertiesInitPopup
              TabOrder = 11
              Width = 185
            end
            object dbcbStatus: TcxDBImageComboBox
              Left = 97
              Top = 71
              DataBinding.DataField = 'stsipil'
              DataBinding.DataSource = dmGeneral.dsPegawai
              Properties.Items = <
                item
                  Description = 'Single'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Menikah'
                  Value = '1'
                end
                item
                  Description = 'Janda'
                  Value = '2'
                end
                item
                  Description = 'Duda'
                  Value = '3'
                end>
              TabOrder = 3
              Width = 121
            end
            object dblcStatusKaryawan: TcxDBExtLookupComboBox
              Left = 97
              Top = 94
              DataBinding.DataField = 'stpegawai'
              DataBinding.DataSource = dmGeneral.dsPegawai
              Properties.View = dmGeneral.cgvStatusKaryawan
              Properties.KeyFieldNames = 'kodestatus'
              Properties.ListFieldItem = dmGeneral.cgvStatusKaryawannamastatus
              TabOrder = 4
              Width = 121
            end
            object dbcbJenisKelamin: TcxDBImageComboBox
              Left = 97
              Top = 117
              DataBinding.DataField = 'sex'
              DataBinding.DataSource = dmGeneral.dsPegawai
              Properties.Items = <
                item
                  Description = 'Laki'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Perempuan'
                  Value = '1'
                end>
              TabOrder = 5
              Width = 121
            end
            object dbckFlagSchedule: TcxDBCheckBox
              Left = 415
              Top = 121
              DataBinding.DataField = 'flagschedule'
              DataBinding.DataSource = dmGeneral.dsPegawai
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 12
              Width = 30
            end
            object dblcShift: TcxDBExtLookupComboBox
              Left = 97
              Top = 140
              DataBinding.DataField = 'shift'
              DataBinding.DataSource = dmGeneral.dsPegawai
              Properties.View = dmGeneral.cgvPrevShift
              Properties.KeyFieldNames = 'shift'
              Properties.ListFieldItem = dmGeneral.cgvPrevShiftshift
              TabOrder = 6
              Width = 85
            end
            object dbckFlagKonfirmasi: TcxDBCheckBox
              Left = 415
              Top = 148
              DataBinding.DataField = 'flagkonfirmasi'
              DataBinding.DataSource = dmGeneral.dsPegawai
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 13
              Width = 30
            end
          end
          object dpJamsostek: TdxDockPanel
            Left = 0
            Top = 0
            Width = 647
            Height = 178
            AllowFloating = True
            AutoHide = False
            Caption = 'Jamsostek'
            TabPosition = tctpTop
            DockType = 1
            OriginalWidth = 185
            OriginalHeight = 212
            object lblAstek: TLabel
              Left = 6
              Top = 6
              Width = 37
              Height = 13
              Caption = 'lblAstek'
            end
            object lblNoAstek: TLabel
              Left = 6
              Top = 60
              Width = 50
              Height = 13
              Caption = 'lblNoAstek'
            end
            object lblTglAstek: TLabel
              Left = 6
              Top = 33
              Width = 51
              Height = 13
              Caption = 'lblTglAstek'
            end
            object cxDBCheckBox1: TcxDBCheckBox
              Left = 91
              Top = 2
              DataBinding.DataField = 'flagastek'
              DataBinding.DataSource = dmGeneral.dsPegawai
              Properties.DisplayChecked = 'Ikut'
              Properties.DisplayUnchecked = 'Tidak Ikut'
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 0
              Width = 121
            end
            object dbeNoAstek: TcxDBTextEdit
              Left = 94
              Top = 57
              DataBinding.DataField = 'noastek'
              DataBinding.DataSource = dmGeneral.dsPegawai
              TabOrder = 1
              Width = 170
            end
            object dbeTglAstek: TcxDBDateEdit
              Left = 94
              Top = 30
              DataBinding.DataField = 'tglastek'
              DataBinding.DataSource = dmGeneral.dsPegawai
              TabOrder = 2
              Width = 121
            end
          end
          object dpPendidikan: TdxDockPanel
            Left = 0
            Top = 0
            Width = 647
            Height = 178
            AllowFloating = True
            AutoHide = False
            Caption = 'Pendidikan'
            TabPosition = tctpTop
            DockType = 1
            OriginalWidth = 185
            OriginalHeight = 212
            object cgDataPendidikan: TcxGrid
              Left = 0
              Top = 0
              Width = 647
              Height = 178
              Align = alClient
              TabOrder = 0
              object cgvDataPendidikan: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dmGeneral.dsDataPendidikan
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini untuk menambah data'
                NewItemRow.Visible = True
                OptionsData.Appending = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDataPendidikanpegawaiid: TcxGridDBColumn
                  Caption = 'NIK'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                  Width = 78
                end
                object cgvDataPendidikankodependidikan: TcxGridDBColumn
                  Caption = 'Kode Pendidikan'
                  DataBinding.FieldName = 'kodependidikan'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevPendidikan
                  Properties.KeyFieldNames = 'kodependidikan'
                  Properties.ListFieldItem = dmGeneral.cgvPrevPendidikankodependidikan
                  Width = 90
                end
                object cgvDataPendidikanJurusan: TcxGridDBColumn
                  Caption = 'Jurusan'
                  DataBinding.FieldName = 'kodependidikan'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevPendidikan
                  Properties.KeyFieldNames = 'kodependidikan'
                  Properties.ListFieldItem = dmGeneral.cgvPrevPendidikanjurusan
                end
                object cgvDataPendidikantahunmulai: TcxGridDBColumn
                  Caption = 'Tahun Mulai'
                  DataBinding.FieldName = 'tahunmulai'
                  PropertiesClassName = 'TcxSpinEditProperties'
                end
                object cgvDataPendidikangraduate: TcxGridDBColumn
                  Caption = 'Tahun Lulus'
                  DataBinding.FieldName = 'graduate'
                  PropertiesClassName = 'TcxSpinEditProperties'
                end
                object cgvDataPendidikangpa: TcxGridDBColumn
                  Caption = 'Nilai'
                  DataBinding.FieldName = 'gpa'
                end
                object cgvDataPendidikanremarks: TcxGridDBColumn
                  Caption = 'Catatan'
                  DataBinding.FieldName = 'remarks'
                end
                object cgvDataPendidikanjenjang: TcxGridDBColumn
                  Caption = 'Jenjang'
                  DataBinding.FieldName = 'jenjang'
                end
              end
              object cgDataPendidikanLevel1: TcxGridLevel
                GridView = cgvDataPendidikan
              end
            end
          end
          object dpOther: TdxDockPanel
            Left = 0
            Top = 0
            Width = 647
            Height = 178
            AllowFloating = True
            AutoHide = False
            Caption = 'Lain-Lain'
            TabPosition = tctpTop
            DockType = 1
            OriginalWidth = 185
            OriginalHeight = 212
            object lblAgama: TLabel
              Left = 8
              Top = 6
              Width = 43
              Height = 13
              Caption = 'lblAgama'
            end
            object lblGolonganDarah: TLabel
              Left = 8
              Top = 29
              Width = 84
              Height = 13
              Caption = 'lblGolonganDarah'
            end
            object lblTinggi: TLabel
              Left = 8
              Top = 52
              Width = 38
              Height = 13
              Caption = 'lblTinggi'
            end
            object lblBerat: TLabel
              Left = 8
              Top = 75
              Width = 36
              Height = 13
              Caption = 'lblBerat'
            end
            object lblNoKTP: TLabel
              Left = 8
              Top = 98
              Width = 41
              Height = 13
              Caption = 'lblNoKTP'
            end
            object dbcbGolonganDarah: TcxDBComboBox
              Left = 96
              Top = 25
              DataBinding.DataField = 'bloodtype'
              DataBinding.DataSource = dmGeneral.dsPegawai
              Properties.Items.Strings = (
                'O'
                'A'
                'B'
                'AB')
              TabOrder = 1
              Width = 57
            end
            object dbeTinggi: TcxDBSpinEdit
              Left = 96
              Top = 48
              DataBinding.DataField = 'height'
              DataBinding.DataSource = dmGeneral.dsPegawai
              TabOrder = 2
              Width = 57
            end
            object dbeBerat: TcxDBSpinEdit
              Left = 96
              Top = 71
              DataBinding.DataField = 'weight'
              DataBinding.DataSource = dmGeneral.dsPegawai
              TabOrder = 3
              Width = 57
            end
            object dbeNoKTP: TcxDBTextEdit
              Left = 96
              Top = 94
              DataBinding.DataField = 'noktp'
              DataBinding.DataSource = dmGeneral.dsPegawai
              TabOrder = 4
              Width = 170
            end
            object dbcbAgama: TcxDBImageComboBox
              Left = 96
              Top = 3
              DataBinding.DataField = 'agama'
              DataBinding.DataSource = dmGeneral.dsPegawai
              Properties.Items = <
                item
                  Description = 'Islam'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Kristen'
                  Value = '1'
                end
                item
                  Description = 'Katolik'
                  Value = '2'
                end
                item
                  Description = 'Budha'
                  Value = '3'
                end
                item
                  Description = 'Hindu'
                  Value = '4'
                end>
              TabOrder = 0
              Width = 121
            end
          end
          object dpKeluarga: TdxDockPanel
            Left = 0
            Top = 0
            Width = 647
            Height = 178
            AllowFloating = True
            AutoHide = False
            Caption = 'Keluarga'
            TabPosition = tctpTop
            DockType = 1
            OriginalWidth = 185
            OriginalHeight = 212
            object cgDataKeluarga: TcxGrid
              Left = 0
              Top = 0
              Width = 647
              Height = 178
              Align = alClient
              TabOrder = 0
              object cgvDataKeluarga: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Post.Visible = True
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dmGeneral.dsDataFamily
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini untuk menambah data'
                NewItemRow.Visible = True
                OptionsData.Appending = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDataKeluargapegawaiid: TcxGridDBColumn
                  Caption = 'NIK'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                end
                object cgvDataKeluarganamafamily: TcxGridDBColumn
                  Caption = 'Nama'
                  DataBinding.FieldName = 'namafamily'
                  Width = 144
                end
                object cgvDataKeluargasex: TcxGridDBColumn
                  Caption = 'Jenis Kelamin'
                  DataBinding.FieldName = 'sex'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayChecked = 'Laki'
                  Properties.DisplayUnchecked = 'Perempuan'
                  Properties.FullFocusRect = True
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  Width = 82
                end
                object cgvDataKeluargatmplahir: TcxGridDBColumn
                  Caption = 'Tempat Lahir'
                  DataBinding.FieldName = 'tmplahir'
                  Width = 104
                end
                object cgvDataKeluargatgllahir: TcxGridDBColumn
                  Caption = 'Tgl Lahir'
                  DataBinding.FieldName = 'tgllahir'
                  PropertiesClassName = 'TcxDateEditProperties'
                end
                object cgvDataKeluargaflagstatuskeluarga: TcxGridDBColumn
                  Caption = 'Keluarga'
                  DataBinding.FieldName = 'flagstatuskeluarga'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayChecked = 'Ya'
                  Properties.DisplayUnchecked = 'Tidak'
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                end
                object cgvDataKeluargaflagstatustanggungan: TcxGridDBColumn
                  Caption = 'Tanggungan'
                  DataBinding.FieldName = 'flagstatustanggungan'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayChecked = 'Ya'
                  Properties.DisplayUnchecked = 'Tidak'
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                end
                object cgvDataKeluargaflagpassaway: TcxGridDBColumn
                  Caption = 'Almarhum'
                  DataBinding.FieldName = 'flagpassaway'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayChecked = 'Ya'
                  Properties.DisplayUnchecked = 'Tidak'
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                end
                object cgvDataKeluargaalamat: TcxGridDBColumn
                  Caption = 'Alamat'
                  DataBinding.FieldName = 'alamat'
                  Width = 231
                end
                object cgvDataKeluargaalamat1: TcxGridDBColumn
                  Caption = 'Alamat 1'
                  DataBinding.FieldName = 'alamat1'
                  Visible = False
                end
                object cgvDataKeluargabloodtype: TcxGridDBColumn
                  Caption = 'Golongan Darah'
                  DataBinding.FieldName = 'bloodtype'
                  PropertiesClassName = 'TcxComboBoxProperties'
                  Properties.Items.Strings = (
                    'O'
                    'A'
                    'B'
                    'AB')
                  Width = 105
                end
                object cgvDataKeluargapekerjaan: TcxGridDBColumn
                  Caption = 'Pekerjaan'
                  DataBinding.FieldName = 'pekerjaan'
                  Width = 58
                end
              end
              object cgDataKeluargaxGridLevel1: TcxGridLevel
                GridView = cgvDataKeluarga
              end
            end
          end
          object dpAsset: TdxDockPanel
            Left = 0
            Top = 0
            Width = 647
            Height = 178
            AllowFloating = True
            AutoHide = False
            Caption = 'Asset'
            TabPosition = tctpTop
            DockType = 1
            OriginalWidth = 185
            OriginalHeight = 212
            object cgDataAsset: TcxGrid
              Left = 0
              Top = 0
              Width = 647
              Height = 178
              Align = alClient
              TabOrder = 0
              object cgvDataAsset: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Insert.Visible = True
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dmGeneral.dsDataAsset
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini untuk menambah data'
                NewItemRow.Visible = True
                OptionsData.Appending = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDataAssetpegawaiid: TcxGridDBColumn
                  Caption = 'NIK'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                end
                object cgvDataAssetkodesubassets: TcxGridDBColumn
                  Caption = 'Kode Sub Asset'
                  DataBinding.FieldName = 'kodesubassets'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevSubAssets
                  Properties.KeyFieldNames = 'kdsubassets'
                  Properties.ListFieldItem = dmGeneral.cgvPrevSubAssetskdsubassets
                  Width = 106
                end
                object cgvDataAssetNamaAssets: TcxGridDBColumn
                  Caption = 'Nama Sub Asset'
                  DataBinding.FieldName = 'kodesubassets'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevSubAssets
                  Properties.KeyFieldNames = 'kdsubassets'
                  Properties.ListFieldItem = dmGeneral.cgvPrevSubAssetsnmsubassets
                  Width = 104
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cgvDataAsset
              end
            end
          end
          object dpBahasa: TdxDockPanel
            Left = 0
            Top = 0
            Width = 647
            Height = 178
            AllowFloating = True
            AutoHide = False
            Caption = 'Bahasa'
            TabPosition = tctpTop
            DockType = 1
            OriginalWidth = 185
            OriginalHeight = 212
            object cgDataBahasa: TcxGrid
              Left = 0
              Top = 0
              Width = 647
              Height = 178
              Align = alClient
              TabOrder = 0
              object cgvDataBahasa: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Cancel.Visible = True
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dmGeneral.dsDataBahasa
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini Untuk Menambah Data'
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDataBahasapegawaiid: TcxGridDBColumn
                  Caption = 'NIK'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                end
                object cgvDataBahasakodebahasa: TcxGridDBColumn
                  Caption = 'Kode Bahasa'
                  DataBinding.FieldName = 'kodebahasa'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevBahasa
                  Properties.KeyFieldNames = 'kodebahasa'
                  Properties.ListFieldItem = dmGeneral.cgvPrevBahasakodebahasa
                  Width = 79
                end
                object cgvDataBahasaNamaBahasa: TcxGridDBColumn
                  Caption = 'Nama Bahasa'
                  DataBinding.FieldName = 'kodebahasa'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevBahasa
                  Properties.KeyFieldNames = 'kodebahasa'
                  Properties.ListFieldItem = dmGeneral.cgvPrevBahasanamabahasa
                  Width = 85
                end
                object cgvDataBahasaflagoral: TcxGridDBColumn
                  Caption = 'Lisan'
                  DataBinding.FieldName = 'flagoral'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayChecked = 'Bisa'
                  Properties.DisplayUnchecked = 'Tidak Bisa'
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  Width = 39
                end
                object cgvDataBahasafwritten: TcxGridDBColumn
                  Caption = 'Tulisan'
                  DataBinding.FieldName = 'fwritten'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayChecked = 'Bisa'
                  Properties.DisplayUnchecked = 'Tidak Bisa'
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  Width = 48
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = cgvDataBahasa
              end
            end
          end
          object dpOrganisasi: TdxDockPanel
            Left = 0
            Top = 0
            Width = 647
            Height = 178
            AllowFloating = True
            AutoHide = False
            Caption = 'Organisasi'
            TabPosition = tctpTop
            DockType = 1
            OriginalWidth = 185
            OriginalHeight = 212
            object cgDataOrganisasi: TcxGrid
              Left = 0
              Top = 0
              Width = 647
              Height = 178
              Align = alClient
              TabOrder = 0
              object cgvDataOrganisasi: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dmGeneral.dsDataOrganisasi
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini Untuk Menambah Data'
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDataOrganisasipegawaiid: TcxGridDBColumn
                  Caption = 'NIK'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                end
                object cgvDataOrganisasiorganisasi: TcxGridDBColumn
                  Caption = 'Organisasi'
                  DataBinding.FieldName = 'organisasi'
                  Width = 98
                end
                object cgvDataOrganisasijabatan: TcxGridDBColumn
                  Caption = 'Jabatan'
                  DataBinding.FieldName = 'jabatan'
                  Width = 122
                end
              end
              object cxGridLevel3: TcxGridLevel
                GridView = cgvDataOrganisasi
              end
            end
          end
          object dpReferensi: TdxDockPanel
            Left = 0
            Top = 0
            Width = 647
            Height = 178
            AllowFloating = True
            AutoHide = False
            Caption = 'Referensi'
            TabPosition = tctpTop
            DockType = 1
            OriginalWidth = 185
            OriginalHeight = 212
            object cgDataReferensi: TcxGrid
              Left = 0
              Top = 0
              Width = 647
              Height = 178
              Align = alClient
              TabOrder = 0
              object cgvDataReferensi: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dmGeneral.dsDataReferensi
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini Untuk Menambah Data'
                NewItemRow.Visible = True
                OptionsView.GroupByBox = False
                object cgvDataReferensipegawaiid: TcxGridDBColumn
                  Caption = 'NIK'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                end
                object cgvDataReferensinamareferensi: TcxGridDBColumn
                  Caption = 'Nama Referensi'
                  DataBinding.FieldName = 'namareferensi'
                  Width = 246
                end
                object cgvDataReferensialamat: TcxGridDBColumn
                  Caption = 'Alamat'
                  DataBinding.FieldName = 'alamat'
                end
                object cgvDataReferensipekerjaan: TcxGridDBColumn
                  Caption = 'Pekerjaan'
                  DataBinding.FieldName = 'pekerjaan'
                end
              end
              object cxGridLevel6: TcxGridLevel
                GridView = cgvDataReferensi
              end
            end
          end
          object dpKeahlian: TdxDockPanel
            Left = 0
            Top = 0
            Width = 647
            Height = 178
            AllowFloating = True
            AutoHide = False
            Caption = 'Keahlian'
            TabPosition = tctpTop
            DockType = 1
            OriginalWidth = 185
            OriginalHeight = 212
            object cgDataKeahlian: TcxGrid
              Left = 0
              Top = 0
              Width = 647
              Height = 178
              Align = alClient
              TabOrder = 0
              object cgvDataKeahlian: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.DataSource = dmGeneral.dsDataKeahlian
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini Untuk Menambah Data'
                NewItemRow.Visible = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDataKeahlianpegawaiid: TcxGridDBColumn
                  Caption = 'NIK'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                  Width = 84
                end
                object cgvDataKeahliankodekeahlian: TcxGridDBColumn
                  Caption = 'Kode Keahlian'
                  DataBinding.FieldName = 'kodekeahlian'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevKeahlian
                  Properties.KeyFieldNames = 'kodekeahlian'
                  Properties.ListFieldItem = dmGeneral.cgvPrevKeahliankodekeahlian
                  Width = 92
                end
                object cgvDataKeahlianNamaKeahlian: TcxGridDBColumn
                  Caption = 'Nama Keahlian'
                  DataBinding.FieldName = 'kodekeahlian'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Properties.View = dmGeneral.cgvPrevKeahlian
                  Properties.KeyFieldNames = 'kodekeahlian'
                  Properties.ListFieldItem = dmGeneral.cgvPrevKeahliannamakeahlian
                  Width = 126
                end
              end
              object cxGridLevel4: TcxGridLevel
                GridView = cgvDataKeahlian
              end
            end
          end
          object dpRelasi: TdxDockPanel
            Left = 0
            Top = 0
            Width = 647
            Height = 178
            AllowFloating = True
            AutoHide = False
            Caption = 'Relasi'
            TabPosition = tctpTop
            DockType = 1
            OriginalWidth = 185
            OriginalHeight = 212
            object cgDataRelasi: TcxGrid
              Left = 0
              Top = 0
              Width = 647
              Height = 178
              Align = alClient
              TabOrder = 0
              object cgvDataRelasi: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dmGeneral.dsDataRelasi
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini Untuk Menambah Data'
                NewItemRow.Visible = True
                OptionsView.GroupByBox = False
                object cgvDataRelasipegawaiid: TcxGridDBColumn
                  Caption = 'NIK'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                  Width = 159
                end
                object cgvDataRelasinamarelasi: TcxGridDBColumn
                  Caption = 'Nama Relasi'
                  DataBinding.FieldName = 'namarelasi'
                  Width = 118
                end
                object cgvDataRelasipeg_nopeg: TcxGridDBColumn
                  Caption = 'NIK Pegawai'
                  DataBinding.FieldName = 'peg_nopeg'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Width = 90
                end
                object cgvDataRelasiNamaPegawai: TcxGridDBColumn
                  Caption = 'Nama Pegawai'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Width = 82
                end
                object cgvDataRelasihubungan: TcxGridDBColumn
                  Caption = 'Hubungan'
                  DataBinding.FieldName = 'hubungan'
                  Width = 132
                end
                object cgvDataRelasikodedepartemen: TcxGridDBColumn
                  Caption = 'Kode Departemen'
                  DataBinding.FieldName = 'kodedepartemen'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Width = 97
                end
                object cgvDataRelasiNamaDepartemen: TcxGridDBColumn
                  Caption = 'Nama Departemen'
                  PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                  Width = 112
                end
              end
              object cxGridLevel5: TcxGridLevel
                GridView = cgvDataRelasi
              end
            end
          end
          object dpPengalamanKerja: TdxDockPanel
            Left = 0
            Top = 0
            Width = 647
            Height = 178
            AllowFloating = True
            AutoHide = False
            Caption = 'Pengalaman Kerja'
            TabPosition = tctpTop
            DockType = 1
            OriginalWidth = 185
            OriginalHeight = 212
            object cgDataPengalamanKerja: TcxGrid
              Left = 0
              Top = 0
              Width = 647
              Height = 178
              Align = alClient
              TabOrder = 0
              object cgvDataPengalamanKerja: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dmGeneral.dsDataPengalamanKerja
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NewItemRow.InfoText = 'Klik Di sini Untuk Menambah Data'
                NewItemRow.Visible = True
                OptionsView.GroupByBox = False
                object cgvDataPengalamanKerjapegawaiid: TcxGridDBColumn
                  Caption = 'NIK'
                  DataBinding.FieldName = 'pegawaiid'
                  Visible = False
                end
                object cgvDataPengalamanKerjanamacompany: TcxGridDBColumn
                  Caption = 'Nama Perusahaan'
                  DataBinding.FieldName = 'namacompany'
                  Width = 158
                end
                object cgvDataPengalamanKerjalastposition: TcxGridDBColumn
                  Caption = 'Posisi Terakhir'
                  DataBinding.FieldName = 'lastposition'
                  Width = 169
                end
                object cgvDataPengalamanKerjadatefrom: TcxGridDBColumn
                  Caption = 'Tgl Mulai'
                  DataBinding.FieldName = 'datefrom'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Width = 80
                end
                object cgvDataPengalamanKerjadateto: TcxGridDBColumn
                  Caption = 'Tgl Berakhir'
                  DataBinding.FieldName = 'dateto'
                  PropertiesClassName = 'TcxDateEditProperties'
                end
                object cgvDataPengalamanKerjalama: TcxGridDBColumn
                  Caption = 'Alamat'
                  DataBinding.FieldName = 'lama'
                end
                object cgvDataPengalamanKerjaremarks: TcxGridDBColumn
                  Caption = 'Catatan'
                  DataBinding.FieldName = 'remarks'
                end
              end
              object cxGridLevel7: TcxGridLevel
                GridView = cgvDataPengalamanKerja
              end
            end
          end
        end
      end
    end
    object dpexplorer: TdxDockPanel
      Left = -300
      Top = 0
      Width = 300
      Height = 0
      Visible = False
      AllowFloating = True
      AutoHide = True
      Caption = 'Explorer'
      ImageIndex = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgMasterSetup: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 0
        Align = alClient
        TabOrder = 0
        object cgvExplorer: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmGeneral.dsPegawai
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Jum ,0.;-,0.'
              Kind = skCount
              FieldName = 'pegawaiid'
              Column = cgvExplorernama
              DisplayText = 'Jumlah'
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.OnGetContentStyle = cgvExplorerStylesGetContentStyle
          object cgvExplorerPerusahaan: TcxGridDBColumn
            Caption = 'Perusahaan'
            DataBinding.FieldName = 'kodeperusahaan'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevPerusahaan
            Properties.KeyFieldNames = 'kodeperusahaan'
            Properties.ListFieldItem = dmGeneral.cgvPrevPerusahaannamaperusahaan
          end
          object cgvExplorerDivisi: TcxGridDBColumn
            Caption = 'Divisi'
            DataBinding.FieldName = 'kodedivisi'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevDivisi
            Properties.KeyFieldNames = 'kodedivisi'
            Properties.ListFieldItem = dmGeneral.cgvPrevDivisinamadivisi
          end
          object cgvExplorerDepartemen: TcxGridDBColumn
            Caption = 'Departemen'
            DataBinding.FieldName = 'kodedepartemen'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevDepartemen
            Properties.KeyFieldNames = 'kodedepartemen'
            Properties.ListFieldItem = dmGeneral.cgvPrevDepartemennamadepartemen
          end
          object cgvExplorerkodeperusahaan: TcxGridDBColumn
            Caption = 'Kode Perusahaan'
            DataBinding.FieldName = 'kodeperusahaan'
            Visible = False
            GroupIndex = 0
            Width = 90
          end
          object cgvExplorerkodecabang: TcxGridDBColumn
            Caption = 'Kode Cabang'
            DataBinding.FieldName = 'kodecabang'
            Visible = False
            GroupIndex = 3
            Width = 86
          end
          object cgvExplorerkodedivisi: TcxGridDBColumn
            Caption = 'Kode Divisi'
            DataBinding.FieldName = 'kodedivisi'
            Visible = False
            GroupIndex = 1
          end
          object cgvExplorerkodedepartemen: TcxGridDBColumn
            Caption = 'Kode Departemen'
            DataBinding.FieldName = 'kodedepartemen'
            Visible = False
            GroupIndex = 2
          end
          object cgvExplorerbarcode: TcxGridDBColumn
            Caption = 'Barcode'
            DataBinding.FieldName = 'barcode'
          end
          object cgvExplorernopeg: TcxGridDBColumn
            Caption = 'NIK'
            DataBinding.FieldName = 'nopeg'
            Width = 76
          end
          object cgvExplorernama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'nama'
          end
          object cgvExploreralamat: TcxGridDBColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'alamat'
          end
          object cgvExplorertelp: TcxGridDBColumn
            Caption = 'Telp'
            DataBinding.FieldName = 'telp'
          end
          object cgvExplorertmplahir: TcxGridDBColumn
            Caption = 'Tempat Lahir'
            DataBinding.FieldName = 'tmplahir'
          end
          object cgvExplorertgllahir: TcxGridDBColumn
            Caption = 'Tgl Lahir'
            DataBinding.FieldName = 'tgllahir'
          end
          object cgvExplorersex: TcxGridDBColumn
            Caption = 'Jenis Kelamin'
            DataBinding.FieldName = 'sex'
          end
          object cgvExploreragama: TcxGridDBColumn
            Caption = 'Agama'
            DataBinding.FieldName = 'agama'
          end
          object cgvExplorerstsipil: TcxGridDBColumn
            Caption = 'Status Keluarga'
            DataBinding.FieldName = 'stsipil'
          end
          object cgvExplorertglmasuk: TcxGridDBColumn
            Caption = 'Tgl Masuk'
            DataBinding.FieldName = 'tglmasuk'
          end
          object cgvExplorertglefektif: TcxGridDBColumn
            Caption = 'Tgl Efektif'
            DataBinding.FieldName = 'tglefektif'
          end
          object cgvExplorerkodebank: TcxGridDBColumn
            Caption = 'Kode Bank'
            DataBinding.FieldName = 'kodebank'
          end
          object cgvExplorernorekening: TcxGridDBColumn
            Caption = 'No Rekening'
            DataBinding.FieldName = 'norekening'
          end
          object cgvExplorertglkeluar: TcxGridDBColumn
            Caption = 'Tgl Keluar'
            DataBinding.FieldName = 'tglkeluar'
          end
          object cgvExplorernoktp: TcxGridDBColumn
            Caption = 'No KTP'
            DataBinding.FieldName = 'noktp'
          end
          object cgvExplorernoastek: TcxGridDBColumn
            Caption = 'No Astek'
            DataBinding.FieldName = 'noastek'
          end
          object cgvExplorertglastek: TcxGridDBColumn
            Caption = 'Tgl Astek'
            DataBinding.FieldName = 'tglastek'
          end
          object cgvExplorerstkerja: TcxGridDBColumn
            Caption = 'Status Kerja'
            DataBinding.FieldName = 'stkerja'
          end
          object cgvExplorerbloodtype: TcxGridDBColumn
            Caption = 'Golongan Darah'
            DataBinding.FieldName = 'bloodtype'
          end
          object cgvExplorerheight: TcxGridDBColumn
            Caption = 'Tinggi'
            DataBinding.FieldName = 'height'
          end
          object cgvExplorerweight: TcxGridDBColumn
            Caption = 'Berat'
            DataBinding.FieldName = 'weight'
          end
          object cgvExplorerhoby: TcxGridDBColumn
            Caption = 'Hobi'
            DataBinding.FieldName = 'hoby'
          end
          object cgvExplorertglendkontrak: TcxGridDBColumn
            Caption = 'Tgl Berakhir Kontrak'
            DataBinding.FieldName = 'tglendkontrak'
          end
          object cgvExplorerkodebagian: TcxGridDBColumn
            Caption = 'Kode Bagian'
            DataBinding.FieldName = 'kodebagian'
          end
          object cgvExplorerkodegolongan: TcxGridDBColumn
            Caption = 'Kode Golongan'
            DataBinding.FieldName = 'kodegolongan'
          end
          object cgvExplorerkodelevel: TcxGridDBColumn
            Caption = 'Kode Level'
            DataBinding.FieldName = 'kodelevel'
          end
          object cgvExplorercountryid: TcxGridDBColumn
            Caption = 'Kode Negara'
            DataBinding.FieldName = 'countryid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCountry
            Properties.KeyFieldNames = 'CountryId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCountryCountryName
          end
          object cgvExplorerprovinceid: TcxGridDBColumn
            Caption = 'Kode Propinsi'
            DataBinding.FieldName = 'provinceid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevProvince
            Properties.KeyFieldNames = 'ProvinceId'
            Properties.ListFieldItem = dmGlobal.cgvPrevProvinceProvinceName
          end
          object cgvExplorercityid: TcxGridDBColumn
            Caption = 'Kode Kota'
            DataBinding.FieldName = 'cityid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevCity
            Properties.KeyFieldNames = 'CityId'
            Properties.ListFieldItem = dmGlobal.cgvPrevCityCityName
          end
          object cgvExplorerstpegawai: TcxGridDBColumn
            Caption = 'status Pegawai'
            DataBinding.FieldName = 'stpegawai'
          end
          object cgvExplorerkodeoutsourcing: TcxGridDBColumn
            Caption = 'Kode OutSourcing'
            DataBinding.FieldName = 'kodeoutsourcing'
          end
          object cgvExplorerjab_kodejabatan: TcxGridDBColumn
            Caption = 'Kode Jabatan'
            DataBinding.FieldName = 'jab_kodejabatan'
          end
          object cgvExplorergol_kodegolongan: TcxGridDBColumn
            Caption = 'Kode Golongan'
            DataBinding.FieldName = 'gol_kodegolongan'
          end
          object cgvExplorerFlagKeluar: TcxGridDBColumn
            Caption = 'Flag Keluar'
            DataBinding.FieldName = 'flagkeluar'
          end
        end
        object cgMasterSetupLevel1: TcxGridLevel
          GridView = cgvExplorer
        end
      end
    end
  end
  object ActionList1: TActionList
    Images = dmGlobal.imgButton
    OnExecute = ActionList1Execute
    Left = 416
    Top = 72
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Enabled = False
      Hint = 'Post'
      ImageIndex = 3
      DataSource = dmGeneral.dsPegawaiFoto
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Enabled = False
      Hint = 'Cancel'
      ImageIndex = 4
      DataSource = dmGeneral.dsPegawaiFoto
    end
    object actCapture: TAction
      Caption = 'Capture'
      ImageIndex = 10
      OnExecute = actCaptureExecute
    end
  end
  object dsPegawai: TDataSource
    DataSet = dmGeneral.dtsPegawai
    Left = 85
    Top = 8
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Collection = <
      item
      end>
    Filename = 'Setting Pegawai.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 320
    Top = 72
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = True
    Filename = 'Setting Pegawai.cfg'
    Sorting = True
    Version = '1.3'
    Left = 352
    Top = 72
  end
end
