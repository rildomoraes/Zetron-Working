inherited fmCaptureFoto: TfmCaptureFoto
  Caption = 'Capture Foto'
  ClientHeight = 660
  ClientWidth = 690
  ExplicitWidth = 698
  ExplicitHeight = 694
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 690
    Height = 49
    ExplicitWidth = 690
    ExplicitHeight = 49
    inherited bvlSpacer1: TBevel
      Height = 47
      ExplicitHeight = 47
    end
    inherited btnClose: TcxButton
      Height = 47
      ExplicitHeight = 47
    end
    inherited btnReset: TcxButton
      Height = 47
      ExplicitHeight = 47
    end
  end
  object dxDockSite1: TdxDockSite [1]
    Left = 0
    Top = 49
    Width = 690
    Height = 611
    Align = alClient
    DockType = 0
    OriginalWidth = 690
    OriginalHeight = 611
    object dxLayoutDockSite2: TdxLayoutDockSite
      Left = 300
      Top = 0
      Width = 390
      Height = 611
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      object dxLayoutDockSite1: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 390
        Height = 611
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object dxVertContainerDockSite1: TdxVertContainerDockSite
        Left = 0
        Top = 0
        Width = 390
        Height = 611
        ActiveChildIndex = -1
        AllowFloating = True
        AutoHide = False
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object dxTabContainerDockSite1: TdxTabContainerDockSite
          Left = 0
          Top = 0
          Width = 390
          Height = 284
          ActiveChildIndex = 1
          AllowFloating = True
          AutoHide = False
          CaptionButtons = [cbHide]
          DockType = 3
          OriginalWidth = 433
          OriginalHeight = 284
          object dpPhoto: TdxDockPanel
            Left = 0
            Top = 0
            Width = 386
            Height = 232
            AllowFloating = True
            AutoHide = False
            Caption = 'Photo'
            CaptionButtons = [cbHide]
            Dockable = False
            DockType = 1
            OriginalWidth = 433
            OriginalHeight = 284
            object dbeFoto: TcxDBImage
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'foto1'
              DataBinding.DataSource = dsFoto
              Properties.GraphicClassName = 'TJPEGImage'
              Properties.ImmediatePost = True
              Properties.Stretch = True
              TabOrder = 0
              Height = 232
              Width = 329
            end
            object Panel1: TPanel
              Left = 329
              Top = 0
              Width = 57
              Height = 232
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              object chkStretch: TcxCheckBox
                Left = 0
                Top = 0
                Caption = 'Stretch'
                ParentColor = False
                State = cbsChecked
                TabOrder = 0
                Transparent = True
                Width = 121
              end
            end
          end
          object dpPhoto2: TdxDockPanel
            Left = 0
            Top = 0
            Width = 386
            Height = 232
            AllowFloating = True
            AutoHide = False
            Caption = 'Photo 2'
            CaptionButtons = [cbHide]
            DockType = 1
            OriginalWidth = 433
            OriginalHeight = 284
            object Panel2: TPanel
              Left = 329
              Top = 0
              Width = 57
              Height = 232
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              object chkStretch2: TcxCheckBox
                Left = -2
                Top = 0
                Caption = 'Stretch'
                ParentColor = False
                State = cbsChecked
                TabOrder = 0
                Transparent = True
                Width = 121
              end
            end
            object dbeFoto2: TcxDBImage
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'foto2'
              DataBinding.DataSource = dsFoto
              Properties.GraphicClassName = 'TJPEGImage'
              Properties.ImmediatePost = True
              Properties.Stretch = True
              TabOrder = 1
              Height = 232
              Width = 329
            end
          end
        end
        object dpCaptureFoto: TdxDockPanel
          Left = 0
          Top = 284
          Width = 390
          Height = 327
          AllowFloating = True
          AutoHide = False
          Caption = 'Capture Foto'
          CaptionButtons = [cbHide]
          DockType = 3
          OriginalWidth = 185
          OriginalHeight = 327
          object pnlButtonCapture: TPanel
            Left = 329
            Top = 0
            Width = 57
            Height = 305
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object btnSource: TcxButton
              Left = 0
              Top = 0
              Width = 57
              Height = 48
              Action = actDevice
              Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00A57B7300A57B7300A57B7300A57B7300A57B7300A57B
                7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
                7300A57B7300A57B7300A57B73008C5A5A00FF00FF00FF00FF00FF00FF00FF00
                FF00D6E7E700949C9C00947B8C00CE948C00CEBDBD00FFE7D600FFE7CE00FFDE
                CE00FFDECE00FFDEC600FFDEC600FFDEC600FFDEBD00FFD6BD00FFD6BD00FFD6
                B500FFD6B500FFCEB500FFCEB5008C5A5A00FF00FF00FF00FF00FF00FF00FF00
                FF00CED6D6005284B5006373AD00A58C9C00CEADAD00FFEFD600FFEFD600FFE7
                CE00FFE7CE00FFE7CE00FFE7C600FFDEBD00FFDEBD00FFDEB500FFDEB500FFDE
                B500FFD6AD00FFD6A500FFCEB5008C5A5A00FF00FF00FF00FF00FF00FF00FF00
                FF00D6EFF7005ABDFF003984DE006373AD00A58C9C00DEBDB500FFEFD600FFEF
                D600FFE7CE00FFE7CE00FFE7CE00FFE7C600FFDEBD00FFDEBD00FFDEB500FFDE
                B500FFDEB500FFD6A500FFCEB5008C5A5A00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00CEEFF7005AB5F7003984DE006373AD00A58C9C00DEBDB500FFEF
                D600FFEFD600FFE7CE00FFE7CE00FFE7CE00FFE7C600FFDEBD00FFDEBD00FFDE
                B500FFDEB500FFD6AD00FFD6BD008C5A5A00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF009C8C94005ABDFF003984DE006373AD00A58C9C00DEBD
                B500FFEFD600FFEFD600FFE7CE00FFE7CE00FFE7CE00FFE7C600FFDEBD00FFDE
                BD00FFDEB500FFD6AD00FFD6BD008C5A5A00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00AD847B00CEBDB5005AB5F7003984DE006373AD00B5AD
                AD00F7E7D600DEBDB500C6A59C00C6A59C00CEADA500DEBDAD00F7D6BD00FFDE
                BD00FFDEBD00FFDEB500FFD6BD0094635A00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00B5847B00F7EFE700FFF7E7005ABDFF008CA5CE009C94
                9400C69C9C00DEB59C00F7E7BD00FFFFCE00F7F7CE00DECEB500C6A59C00EFCE
                B500FFDEBD00FFDEB500FFD6BD0094636300FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00BD8C7B00F7F7EF00FFF7EF00F7F7EF00E7D6D600BD94
                8C00F7DEAD00FFFFCE00FFFFCE00FFFFDE00FFFFE700FFFFEF00F7EFE700C69C
                9400F7D6BD00FFDEB500FFD6C60094636300FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00BD8C7B00F7F7EF00FFF7EF00FFFFF700D6B5B500E7C6
                A500FFF7C600FFF7BD00FFFFD600FFFFE700FFFFF700FFFFFF00FFFFFF00E7D6
                C600CEA59C00FFDEBD00FFD6C6009C6B6300FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00C6948400FFF7F700FFFFF700FFFFF700CEADA500F7EF
                C600FFE7B500FFF7C600FFFFD600FFFFE700FFFFF700FFFFF700FFFFEF00F7F7
                CE00C69C9400FFE7C600FFD6C6009C6B6300FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00C6948400FFF7F700FFFFF700FFFFFF00CEA59C00FFFF
                CE00FFDEA500FFEFB500FFFFCE00FFFFDE00FFFFE700FFFFEF00FFFFE700FFFF
                DE00BD9C9400FFE7C600FFD6C600A5736B00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00CE9C8400FFFFFF00FFFFFF00FFFFFF00CEAD9C00F7EF
                C600FFE7BD00FFEFBD00FFFFCE00FFFFD600FFFFD600FFFFDE00FFFFD600F7EF
                CE00C69C9400FFE7CE00FFD6CE00A5736B00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00CEA58400FFFFFF00FFFFFF00FFFFFF00D6BDB500EFDE
                C600FFF7DE00FFE7BD00FFE7AD00FFF7C600FFF7C600FFFFC600FFF7C600EFD6
                B500C69C9400FFE7CE00FFD6C600AD736B00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00D6A58400FFFFFF00FFFFFF00FFFFFF00E7D6D600D6BD
                AD00FFF7F700FFFFFF00FFE7B500FFEFB500FFDEAD00FFEFB500FFEFBD00D6AD
                9400E7C6BD00FFE7CE00FFCEC600AD7B6B00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00DEAD8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6B5
                B500D6C6BD00EFE7DE00F7F7D600FFEFB500F7EFBD00EFDEB500D6AD9400CEA5
                9C00FFD6CE00FFCEC600FFBDB500AD7B7300FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00DEAD8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00D6BDBD00CEA59C00CEADA500CEB5A500D6B5A500D6AD9C00DEBDB500FFD6
                CE00FFBDBD00FFADAD00FF9C9C00B57B7300FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00E7B58C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00E7DEDE00EFDEDE00F7E7DE00FFFFF700B5847300B584
                7300B5847300B5847300B5847300B5847300FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00E7B58C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700B5847300EFB5
                8C00FFAD3900EF942100CE946B00CE9C8400FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00EFBD9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700B5847300EFCE
                9C00FFC67B00DEA57B00CEA58C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00EFBD9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700B5847300EFCE
                A500DEB58C00D6A58C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00F7BD9400FFF7E700FFEFE700F7EFDE00F7EFDE00F7E7
                DE00EFE7D600EFDED600EFDED600E7DED600E7D6CE00DED6CE00B5847300DEAD
                8C00DEAD8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00F7C69400DEAD8400DEAD8400DEAD8400DEAD8400DEAD
                8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B5847300DEAD
                8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Layout = blGlyphTop
              Spacing = 0
              TabOrder = 0
            end
            object btnOnOff: TcxButton
              Left = 0
              Top = 47
              Width = 57
              Height = 48
              Action = actOnOff
              Layout = blGlyphTop
              Spacing = 0
              TabOrder = 1
            end
            object btnSave: TcxButton
              Left = 0
              Top = 94
              Width = 57
              Height = 48
              Action = actShot
              Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000000000000000000000000000000000000000000000000000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000040000003F01000C72120012A22100025F06000000
                000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
                FF00000000000000000000000000000000000000000000000000000000000000
                00000000000000000000024F0400049205002FCB4B0008B5190009AF1800002B
                020000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
                FF00000000000000000000000000000000000000000000000000000000000000
                000000000000001D00000B930F0028B93D0015BE2B000BB41C000CB81E000892
                110000120000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
                0000000800000B7F12001DAE2D002CCE4A000BB31C000FB821000EB620000FBA
                2200037A0700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
                0000045A070022B234003BD35C0011B8240014BA280014B9280014B9280014BB
                280010AB2000004F0200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004174
                410021AA33003CD15D0023C83E0017BD2C0019BD2E0019BD2E0019BD2E0019BD
                2D0019C12F00098C1100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000D85
                170041D763003BDA5F0019BF30001BC334001BC333001BC333001BC333001BC3
                33001BC3340018BE300041944200FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003D8D3F0042D6
                67004FE77A0021C63C0022C73C0022C73C0022C73C0022C73C0022C73C0022C7
                3C0022C63B0022C93D0011A422007FB07E00FF00FF00FF00FF00FF00FF00FF00
                FF007BB07A007FB47F0084BC860084BB870084BB870083B785002DB348005FF7
                8F0035D6560024C9400026CA420026CA420028CA440028CA430028CA430028CA
                440026CA430026C9430029D1480002800B00FF00FF00FF00FF00FF00FF00FF00
                FF0028AC420048D370003ECE67004EE27F004EE37F003BC6610059E8880065FF
                9C0049E9730040E0670040E0670030D24F002DCF4C002DCF4C002ECF4D002CCF
                4B0033D554002DCC4D001DB0320000730100FF00FF00FF00FF00FF00FF00FF00
                FF0031BD550051E5830038C4640048DF800047DD7E0047DC7D0032BC5B00209B
                37001385200043CF6E005CF394003ADB5E0034D5560035D6570034D5560036DB
                5A0017972800409042007DB27E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0023A9440048DC7C0027B0530034C96E0033C66C0033C66C0037CC72001B9D
                3B00428A400038C563004EE586003FDE64003BDB5F003CDC5F003BDB5F003FE2
                65000A851400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0016952F0042D97D001DA23E0028BA570026B7540026B7540027B956001B9F
                3A000064000037C96A004AE1800044E46B0042E16A0042E16B0042E16A0045E5
                6E0002730800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00088018003DD57A001A9E36001BAE3E001BAB3D001BAB3D001CAC3E0018A1
                3400046E080037CB70004BE27F004CE975004AE975004BE975004BE9760046E3
                6F003F8F4100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00006C010035CB710020A74400109E240013A02A0012A0290013A12900129F
                29000F851F0035C9700052EA850052EF800052F0820052EF820054F183003ACB
                5C007DAE7C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0080B3800025B355002DBB6000078E11000B9919000A9918000B9719000894
                130021A7460034C86D005DF78F005BF78C005BF78C005BF68C0060FD94001C9A
                2E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000E8C270034CB73000F9023000290080003920C0003920B000587
                0D002EBF660040D6790068FF9C0066FD990066FD990066FD990063F596003F91
                4300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF003D8F40002FC266002EBE640005830C00008600000080010025AE
                50002EC369006DF39D0089FFB20088FFB20088FFB10090FFBA003BAA4E00C1D8
                C100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00118C260045DD81003FD275002DB5540039C86A0040D6
                7A0053E68800AFFFCA00ADFFC900AEFFC900B3FFCE0087DA9F003A883A00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF003787360022A7400057F0900056F0910054EE8D0064F2
                9900CFFFE300DDFFEB00DBFFEA00E1FFF000A0D8AD0044904400FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00C3DAC200077D12002BB0470034B7500078B9
                7D0080B882008FC393008CC090004495460037863700FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Layout = blGlyphTop
              Spacing = 0
              TabOrder = 2
            end
            object chkResizeImage: TcxCheckBox
              Left = 0
              Top = 148
              Caption = 'Resize'
              ParentColor = False
              Properties.NullStyle = nssUnchecked
              TabOrder = 3
              Transparent = True
              Width = 121
            end
            object edtResizeImage: TcxCalcEdit
              Left = 0
              Top = 168
              EditValue = 300.000000000000000000
              TabOrder = 4
              Width = 57
            end
          end
        end
      end
    end
    object dpPerusahaan: TdxDockPanel
      Left = 0
      Top = 0
      Width = 300
      Height = 611
      AllowFloating = True
      AutoHide = False
      Caption = 'Perusahaan'
      CaptionButtons = [cbHide]
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPegawai: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 589
        Align = alClient
        TabOrder = 0
        object cgvPegawai: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmGeneral.dsPegawai
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cgvPegawaiPegawaiId: TcxGridDBColumn
            DataBinding.FieldName = 'PegawaiId'
          end
          object cgvPegawaiNoPeg: TcxGridDBColumn
            DataBinding.FieldName = 'NoPeg'
          end
          object cgvPegawaiBarcode: TcxGridDBColumn
            DataBinding.FieldName = 'Barcode'
          end
          object cgvPegawaiNama: TcxGridDBColumn
            DataBinding.FieldName = 'Nama'
          end
          object cgvPegawaiAlamat: TcxGridDBColumn
            DataBinding.FieldName = 'Alamat'
          end
          object cgvPegawaiTelp: TcxGridDBColumn
            DataBinding.FieldName = 'Telp'
          end
          object cgvPegawaiTmpLahir: TcxGridDBColumn
            DataBinding.FieldName = 'TmpLahir'
          end
          object cgvPegawaiTglLahir: TcxGridDBColumn
            DataBinding.FieldName = 'TglLahir'
          end
          object cgvPegawaiSex: TcxGridDBColumn
            DataBinding.FieldName = 'Sex'
          end
          object cgvPegawaiAgama: TcxGridDBColumn
            DataBinding.FieldName = 'Agama'
          end
          object cgvPegawaiStSipil: TcxGridDBColumn
            DataBinding.FieldName = 'StSipil'
          end
          object cgvPegawaiTglMasuk: TcxGridDBColumn
            DataBinding.FieldName = 'TglMasuk'
          end
          object cgvPegawaiTglKeluar: TcxGridDBColumn
            DataBinding.FieldName = 'TglKeluar'
          end
          object cgvPegawaiNoKTP: TcxGridDBColumn
            DataBinding.FieldName = 'NoKTP'
          end
          object cgvPegawaiFlagAstek: TcxGridDBColumn
            DataBinding.FieldName = 'FlagAstek'
          end
          object cgvPegawaiNoAstek: TcxGridDBColumn
            DataBinding.FieldName = 'NoAstek'
          end
          object cgvPegawaiTglAstek: TcxGridDBColumn
            DataBinding.FieldName = 'TglAstek'
          end
          object cgvPegawaiFlagJpk: TcxGridDBColumn
            DataBinding.FieldName = 'FlagJpk'
          end
          object cgvPegawaiTglJpk: TcxGridDBColumn
            DataBinding.FieldName = 'TglJpk'
          end
          object cgvPegawaiBloodType: TcxGridDBColumn
            DataBinding.FieldName = 'BloodType'
          end
          object cgvPegawaiCityId: TcxGridDBColumn
            DataBinding.FieldName = 'CityId'
          end
          object cgvPegawaiKodePerusahaan: TcxGridDBColumn
            DataBinding.FieldName = 'KodePerusahaan'
          end
          object cgvPegawaiFlagProses: TcxGridDBColumn
            DataBinding.FieldName = 'FlagProses'
          end
          object cgvPegawaiFlagKeluar: TcxGridDBColumn
            DataBinding.FieldName = 'FlagKeluar'
          end
          object cgvPegawaiMemo: TcxGridDBColumn
            DataBinding.FieldName = 'Memo'
          end
          object cgvPegawaiKodeGroupShiftId: TcxGridDBColumn
            DataBinding.FieldName = 'KodeGroupShiftId'
          end
          object cgvPegawaiShift: TcxGridDBColumn
            DataBinding.FieldName = 'Shift'
          end
          object cgvPegawaiKodeJabatan: TcxGridDBColumn
            DataBinding.FieldName = 'KodeJabatan'
          end
          object cgvPegawaiKodeOutsourcing: TcxGridDBColumn
            DataBinding.FieldName = 'KodeOutsourcing'
          end
          object cgvPegawaiKodeDepartemen: TcxGridDBColumn
            DataBinding.FieldName = 'KodeDepartemen'
          end
          object cgvPegawaiKodeDivisi: TcxGridDBColumn
            DataBinding.FieldName = 'KodeDivisi'
          end
          object cgvPegawaiStatusSchedule: TcxGridDBColumn
            DataBinding.FieldName = 'StatusSchedule'
          end
          object cgvPegawaiStatusSPL: TcxGridDBColumn
            DataBinding.FieldName = 'StatusSPL'
          end
          object cgvPegawaiUrutReport: TcxGridDBColumn
            DataBinding.FieldName = 'UrutReport'
          end
          object cgvPegawaiKodeStatus: TcxGridDBColumn
            DataBinding.FieldName = 'KodeStatus'
          end
          object cgvPegawaiperusahaan: TcxGridDBColumn
            DataBinding.FieldName = 'perusahaan'
          end
          object cgvPegawaidivisi: TcxGridDBColumn
            DataBinding.FieldName = 'divisi'
          end
          object cgvPegawaidepartemen: TcxGridDBColumn
            DataBinding.FieldName = 'departemen'
          end
        end
        object cgPegawaiLevel1: TcxGridLevel
          GridView = cgvPegawai
        end
      end
    end
  end
  object ActionList2: TActionList
    Left = 344
    Top = 80
    object actDevice: TAction
      Caption = 'Device'
      ImageIndex = 9
      OnExecute = actDeviceExecute
    end
    object actOnOff: TAction
      Caption = 'On / Off'
      OnExecute = actOnOffExecute
    end
    object actShot: TAction
      Caption = 'Shot (F10)'
      ImageIndex = 12
      ShortCut = 121
      OnExecute = actShotExecute
    end
  end
  object dsFoto: TDataSource
    DataSet = qryFoto
    Left = 88
    Top = 197
  end
  object qryFoto: TADOQuery
    Connection = dmGlobal.conImage
    CursorType = ctStatic
    BeforePost = qryFotoBeforePost
    AfterPost = qryFotoAfter
    BeforeDelete = qryFotoBeforeDelete
    AfterDelete = qryFotoAfter
    DataSource = dmGeneral.dsPegawai
    Parameters = <>
    SQL.Strings = (
      'select * from pegawaifoto')
    Left = 48
    Top = 197
  end
end
