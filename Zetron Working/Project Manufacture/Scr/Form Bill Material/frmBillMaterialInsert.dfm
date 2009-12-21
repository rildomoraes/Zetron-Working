object fmBillMaterialInsert: TfmBillMaterialInsert
  Left = 388
  Top = 205
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderIcons = [biSystemMenu]
  Caption = 'Bill of Material - Insert'
  ClientHeight = 471
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButton: TPanel
    Left = 0
    Top = 409
    Width = 592
    Height = 62
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      592
      62)
    object Image1: TImage
      Left = 411
      Top = 4
      Width = 16
      Height = 16
      Anchors = [akTop, akRight]
      AutoSize = True
      Picture.Data = {
        07544269746D617036040000424D360400000000000036000000280000001000
        0000100000000100200000000000000400000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000052F6C60052F6E70052F6E70052F6E70052F6E70052F6E70052
        F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6E70052F6C60000
        00000052F6BD1429FFFF814DFFFF8851FFFF8851FFFF8851FFFF814DFFFF814D
        FFFF794DFFFF794DFFFF794DFFFF734DFFFF6F44FFFF5E3CFEFF042EFFFF0052
        F6BD0052F6F78851FFFF8F55FFFF8F55FFFF8F55FFFF8851FFFF8851FFFF8851
        FFFF8251FFFF8251FFFF7B51FFFF7B51FFFF794DFFFF6F44FFFF4F3CFEFF0052
        F6F70049FBF78851FFFF8851FFFF8251FFFF8251FFFF8251FFFF7B51FFFF794D
        FFFF734DFFFF6F44FFFF6F44FFFF6844FFFF6844FFFF6844FFFF5840FEFF0052
        F6F70049FBF78251FFFF7B51FFFF794DFFFF734DFFFF6F44FFFF6F44FFFF6844
        FFFF6844FFFF6144FFFF6040FEFF6040FEFF5840FEFF5840FEFF4F3CFEFF0052
        F6F70049FBF76F44FFFF6F44FFFF6844FFFF6844FFFF6144FFFF6040FEFF6040
        FEFF5840FEFF5840FEFF5140FEFF5140FEFF4F3CFEFF473CFEFF3D34FEFF0052
        F6F70049FBF7654DFFFF6040FEFF6040FEFF5840FEFF5840FEFF5140FEFF5140
        FEFF4F3CFEFF473CFEFF4434FEFF3D34FEFF3D34FEFF3D34FEFF4555FFFF0052
        F6F70049FBF75D62FFFF5D62FFFF5851FFFF5449FFFF473CFEFF4434FEFF3D34
        FEFF3D34FEFF3D34FEFF3C40FEFF454EFFFF5160FFFF6180FFFF6180FFFF0052
        F6F70049FBF7645DFFFF6865FFFF6568FFFF6568FFFF6568FFFF5E5DFFFF5D62
        FFFF5D62FFFF656FFFFF656FFFFF656FFFFF6575FFFF6575FFFF6575FFFF0052
        F6F70049FBF77561FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6E61FFFF6761
        FFFF6761FFFF645DFFFF645DFFFF6568FFFF6568FFFF6568FFFF5D62FFFF0052
        F6F70049FBF77B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7561FFFF7561
        FFFF7561FFFF7561FFFF7561FFFF6E61FFFF6E61FFFF6E61FFFF5E5DFFFF0052
        F6F70052F6F77E59FFFF8A65FFFF8A65FFFF8A65FFFF8365FFFF8365FFFF8161
        FFFF8161FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF7B61FFFF4E4DFFFF0052
        F6F70052F6BD242EFFFF8C5DFFFF9665FFFF9065FFFF9065FFFF9065FFFF9065
        FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF8A65FFFF7759FFFF1038FFFF0052
        F6BD000000000052F6C60049FBE70040FFE70049FBE70053FBE70053FBE70053
        FBE70053FBE70053FBE70053FBE70053FBE70052F6E70052F6E70052F6C60000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000}
      Transparent = True
      Visible = False
    end
    object lblFixed: TLabel
      Left = 435
      Top = 6
      Width = 149
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Data yang tidak dapat disimpan'
      Transparent = True
      Visible = False
    end
    object btnSave: TcxButton
      Left = 11
      Top = 6
      Width = 57
      Height = 48
      Caption = 'Simpan'
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
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object btnCancel: TcxButton
      Left = 74
      Top = 6
      Width = 57
      Height = 48
      Caption = 'Batal'
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
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object pnlProgressBar: TPanel
      Left = 151
      Top = 6
      Width = 136
      Height = 50
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object Label5: TLabel
        Left = 50
        Top = 4
        Width = 32
        Height = 13
        Caption = 'Proses'
        Transparent = True
      end
      object pbProcess: TcxProgressBar
        Left = 8
        Top = 20
        ParentColor = False
        Properties.PeakValue = 5.000000000000000000
        TabOrder = 0
        Width = 115
      end
    end
  end
  object gbParent: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Untuk membuat :'
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    Transparent = True
    Height = 95
    Width = 592
    object lblTebal: TLabel
      Left = 293
      Top = 20
      Width = 27
      Height = 13
      Caption = 'Tebal'
      Transparent = True
    end
    object lblLebar: TLabel
      Left = 339
      Top = 20
      Width = 27
      Height = 13
      Caption = 'Lebar'
      Transparent = True
    end
    object lblPanjang: TLabel
      Left = 385
      Top = 20
      Width = 39
      Height = 13
      Caption = 'Panjang'
      Transparent = True
    end
    object Label2: TLabel
      Left = 453
      Top = 20
      Width = 15
      Height = 13
      Caption = 'M2'
      Transparent = True
    end
    object Label3: TLabel
      Left = 499
      Top = 20
      Width = 15
      Height = 13
      Caption = 'M3'
      Transparent = True
    end
    object rbRoot: TcxRadioButton
      Left = 11
      Top = 38
      Width = 30
      Height = 17
      TabOrder = 0
      OnClick = rbRootClick
      Transparent = True
    end
    object rbSubRoot: TcxRadioButton
      Left = 11
      Top = 62
      Width = 30
      Height = 17
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbSubRootClick
      Transparent = True
    end
    object edtItemIdSubRoot: TcxTextEdit
      Left = 42
      Top = 62
      TabStop = False
      TabOrder = 3
      Width = 245
    end
    object edtItemIdRoot: TcxTextEdit
      Left = 42
      Top = 37
      TabStop = False
      TabOrder = 2
      Width = 245
    end
    object edtRoot_T: TcxCurrencyEdit
      Left = 293
      Top = 37
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 4
      Width = 47
    end
    object edtRoot_L: TcxCurrencyEdit
      Left = 339
      Top = 37
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 5
      Width = 47
    end
    object edtRoot_P: TcxCurrencyEdit
      Left = 385
      Top = 37
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 6
      Width = 47
    end
    object edtSub_T: TcxCurrencyEdit
      Left = 293
      Top = 62
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 7
      Width = 47
    end
    object edtSub_L: TcxCurrencyEdit
      Left = 339
      Top = 62
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 8
      Width = 47
    end
    object edtSub_P: TcxCurrencyEdit
      Left = 385
      Top = 62
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 9
      Width = 47
    end
    object edtRoot_M2: TcxCurrencyEdit
      Left = 438
      Top = 37
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 10
      Width = 47
    end
    object edtRoot_M3: TcxCurrencyEdit
      Left = 484
      Top = 37
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 11
      Width = 47
    end
    object edtSub_M2: TcxCurrencyEdit
      Left = 438
      Top = 62
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 12
      Width = 47
    end
    object edtSub_M3: TcxCurrencyEdit
      Left = 484
      Top = 62
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 13
      Width = 47
    end
  end
  object gbChild: TcxGroupBox
    Left = 0
    Top = 95
    Align = alClient
    Caption = 'Dibutuhkan  :'
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    Transparent = True
    Height = 314
    Width = 592
    object pnlTop: TPanel
      Left = 2
      Top = 17
      Width = 588
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblItemTypeId: TLabel
        Left = 8
        Top = 5
        Width = 91
        Height = 13
        Caption = 'Kelompok Produksi'
        Transparent = True
      end
      object lcbStatusProduction: TcxExtLookupComboBox
        Left = 105
        Top = 3
        BeepOnEnter = False
        Properties.View = dmInventory.cgvPrevStatusProduction
        Properties.KeyFieldNames = 'StatusProduction'
        Properties.ListFieldItem = dmInventory.cgvPrevStatusProductionName
        Properties.OnEditValueChanged = lcbStatusProductionPropertiesEditValueChanged
        EditValue = '0'
        TabOrder = 0
        Width = 180
      end
    end
    object pcItem: TcxPageControl
      Left = 2
      Top = 45
      Width = 588
      Height = 262
      ActivePage = tsNewItem
      Align = alClient
      TabOrder = 1
      ExplicitHeight = 267
      ClientRectBottom = 256
      ClientRectLeft = 3
      ClientRectRight = 582
      ClientRectTop = 26
      object tsNewItem: TcxTabSheet
        Caption = 'Barang Baru'
        ImageIndex = 1
        ExplicitHeight = 235
        object cgNewItem: TcxGrid
          Left = 0
          Top = 0
          Width = 579
          Height = 230
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 235
          object cgvNewItem: TcxGridDBTableView
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
            DataController.DataSource = dsBillMaterialDt_New
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            Styles.OnGetContentStyle = cgvNewItemStylesGetContentStyle
            object cgvNewItemRecId: TcxGridDBColumn
              DataBinding.FieldName = 'RecId'
              Visible = False
            end
            object cgvNewItemOrderNo: TcxGridDBColumn
              Caption = 'No'
              DataBinding.FieldName = 'OrderNo'
              PropertiesClassName = 'TcxSpinEditProperties'
              SortIndex = 0
              SortOrder = soAscending
              Width = 30
            end
            object cgvNewItemItemName: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'ItemName'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 100
            end
            object cgvNewItemItemCode: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'ItemCode'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Visible = False
              Width = 100
            end
            object cgvNewItemItemCategoryId: TcxGridDBColumn
              Caption = 'Kel. Stok'
              DataBinding.FieldName = 'ItemCategoryId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevItemCategory
              Properties.KeyFieldNames = 'ItemCategoryId'
              Properties.ListFieldItem = dmInventory.cgvPrevItemCategoryItemCategoryName
            end
            object cgvNewItemRawMaterial: TcxGridDBColumn
              Caption = 'Bahan'
              DataBinding.FieldName = 'ItemIdRawMaterial'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevItemRawMaterial
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = cgvPrevItemRawMaterialItemName
              Styles.Content = dmGlobal.stGreenLight
            end
            object cgvNewItemMaterialId: TcxGridDBColumn
              Caption = 'Material'
              DataBinding.FieldName = 'MaterialId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevMaterial
              Properties.KeyFieldNames = 'MaterialId'
              Properties.ListFieldItem = dmInventory.cgvPrevMaterialMaterialName
            end
            object cgvNewItemUnitMeasure: TcxGridDBColumn
              Caption = 'Satuan'
              DataBinding.FieldName = 'UnitMeasure'
              PropertiesClassName = 'TcxTextEditProperties'
            end
            object cgvNewItemT: TcxGridDBColumn
              DataBinding.FieldName = 'T'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvNewItemTConstanta: TcxGridDBColumn
              Caption = 'Satuan T'
              DataBinding.FieldName = 'TConstanta'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'M'
                  ImageIndex = 0
                  Value = 1.000000000000000000
                end
                item
                  Description = 'CM'
                  Value = 0.010000000000000000
                end
                item
                  Description = 'MM'
                  Value = 0.001000000000000000
                end>
              Visible = False
            end
            object cgvNewItemL: TcxGridDBColumn
              DataBinding.FieldName = 'L'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvNewItemLConstanta: TcxGridDBColumn
              Caption = 'Satuan L'
              DataBinding.FieldName = 'LConstanta'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'M'
                  ImageIndex = 0
                  Value = 1.000000000000000000
                end
                item
                  Description = 'CM'
                  Value = 0.010000000000000000
                end
                item
                  Description = 'MM'
                  Value = 0.001000000000000000
                end>
              Visible = False
            end
            object cgvNewItemP: TcxGridDBColumn
              DataBinding.FieldName = 'P'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvNewItemPConstanta: TcxGridDBColumn
              Caption = 'Satuan P'
              DataBinding.FieldName = 'PConstanta'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'M'
                  ImageIndex = 0
                  Value = 1.000000000000000000
                end
                item
                  Description = 'CM'
                  Value = 0.010000000000000000
                end
                item
                  Description = 'MM'
                  Value = 0.001000000000000000
                end>
              Visible = False
            end
            object cgvNewItemM2: TcxGridDBColumn
              DataBinding.FieldName = 'M2'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.ReadOnly = True
            end
            object cgvNewItemM3: TcxGridDBColumn
              DataBinding.FieldName = 'M3'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.ReadOnly = True
            end
            object cgvNewItemBerat: TcxGridDBColumn
              Caption = 'Berat (Kg)'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.ReadOnly = False
            end
            object cgvNewItemStatusDimensi: TcxGridDBColumn
              Caption = 'Pengukuran'
              DataBinding.FieldName = 'StatusDimensi'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = dmInventory.cgvPrevStatusDimensi
              Properties.KeyFieldNames = 'StatusDimensi'
              Properties.ListFieldItem = dmInventory.cgvPrevStatusDimensiName
              Width = 73
            end
            object cgvNewItemQty: TcxGridDBColumn
              DataBinding.FieldName = 'Qty'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvNewItemFlagColor: TcxGridDBColumn
              DataBinding.FieldName = 'FlagColor'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object cgNewItemLevel1: TcxGridLevel
            GridView = cgvNewItem
          end
        end
      end
      object tsMasterItem: TcxTabSheet
        Caption = 'Master Barang'
        ImageIndex = 0
        object cgMasterItem: TcxGrid
          Left = 0
          Top = 0
          Width = 579
          Height = 230
          Align = alClient
          TabOrder = 0
          object cgvMasterItem: TcxGridDBTableView
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
            DataController.DataSource = dsBillMaterialDt_Master
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            Styles.OnGetContentStyle = cgvMasterItemStylesGetContentStyle
            object cgvMasterItemOrderNo: TcxGridDBColumn
              Caption = 'No'
              DataBinding.FieldName = 'OrderNo'
              PropertiesClassName = 'TcxSpinEditProperties'
              SortIndex = 0
              SortOrder = soAscending
              Width = 30
            end
            object cgvMasterItemItemId: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = cgvPrevItemItemName
            end
            object cgvMasterItemItemIdMaterialId: TcxGridDBColumn
              Caption = 'Material'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = cgvPrevItemMaterialId
            end
            object cgvMasterItemItemIdT: TcxGridDBColumn
              Caption = 'Tebal'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = cgvPrevItemT
            end
            object cgvMasterItemItemIdL: TcxGridDBColumn
              Caption = 'Lebar'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = cgvPrevItemL
            end
            object cgvMasterItemItemIdP: TcxGridDBColumn
              Caption = 'Panjang'
              DataBinding.FieldName = 'ItemId'
              PropertiesClassName = 'TcxExtLookupComboBoxProperties'
              Properties.View = cgvPrevItem
              Properties.KeyFieldNames = 'ItemId'
              Properties.ListFieldItem = cgvPrevItemP
            end
            object cgvMasterItemQty: TcxGridDBColumn
              DataBinding.FieldName = 'Qty'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvMasterItemFlagColor: TcxGridDBColumn
              DataBinding.FieldName = 'FlagColor'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object cgMasterItemLevel1: TcxGridLevel
            Caption = 'Master Barang'
            GridView = cgvMasterItem
          end
        end
      end
    end
  end
  object qryBillMaterialDt_Ins: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Bil_ItemId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'ItemId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'Qty'
        Attributes = [paSigned]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'OrderNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'EmployeeId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'insert into BillMaterialDt'
      '  (Bil_ItemId, ItemId, Qty, OrderNo, EmployeeId)'
      'values'
      '  (:Bil_ItemId, :ItemId, :Qty, :OrderNo, :EmployeeId)')
    Left = 136
    Top = 280
  end
  object qryBillMaterialHd: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'ItemId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from BillMaterialHd'
      'where ItemId = :ItemId')
    Left = 104
    Top = 280
  end
  object qryPrevItem: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    BeforeOpen = qryPrevItemBeforeOpen
    Parameters = <
      item
        Name = 'StatusProduction'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from Item'
      'where StatusProduction = :StatusProduction')
    Left = 72
    Top = 312
  end
  object dsPrevItem: TDataSource
    DataSet = qryPrevItem
    Left = 104
    Top = 312
  end
  object gvrBillOfMaterial: TcxGridViewRepository
    Left = 40
    Top = 312
    object cgvPrevItem: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItem
      DataController.KeyFieldNames = 'ItemId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevItemItemId: TcxGridDBColumn
        DataBinding.FieldName = 'ItemId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevItemItemCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemCode'
        Visible = False
      end
      object cgvPrevItemItemName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'ItemName'
        Width = 80
      end
      object cgvPrevItemMaterialId: TcxGridDBColumn
        Caption = 'Material'
        DataBinding.FieldName = 'MaterialId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvPrevMaterial
        Properties.KeyFieldNames = 'MaterialId'
        Properties.ListFieldItem = dmInventory.cgvPrevMaterialMaterialName
      end
      object cgvPrevItemItemCategoryId: TcxGridDBColumn
        Caption = 'Kel. Stok'
        DataBinding.FieldName = 'ItemCategoryId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvPrevItemCategory
        Properties.KeyFieldNames = 'ItemCategoryId'
        Properties.ListFieldItem = dmInventory.cgvPrevItemCategoryItemCategoryName
      end
      object cgvPrevItemT: TcxGridDBColumn
        DataBinding.FieldName = 'T'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPrevItemL: TcxGridDBColumn
        DataBinding.FieldName = 'L'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvPrevItemP: TcxGridDBColumn
        DataBinding.FieldName = 'P'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object cgvPrevItemRawMaterial: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevItemRawMaterial
      DataController.KeyFieldNames = 'ItemId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevItemRawMaterialItemId: TcxGridDBColumn
        DataBinding.FieldName = 'ItemId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevItemRawMaterialItemCode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'ItemCode'
        Visible = False
      end
      object cgvPrevItemRawMaterialItemName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'ItemName'
        Width = 80
      end
      object cgvPrevItemRawMaterialMaterialId: TcxGridDBColumn
        Caption = 'Material'
        DataBinding.FieldName = 'MaterialId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvPrevMaterial
        Properties.KeyFieldNames = 'MaterialId'
        Properties.ListFieldItem = dmInventory.cgvPrevMaterialMaterialName
      end
      object cgvPrevItemRawMaterialItemCategoryId: TcxGridDBColumn
        Caption = 'Kel. Stok'
        DataBinding.FieldName = 'ItemCategoryId'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvPrevItemCategory
        Properties.KeyFieldNames = 'ItemCategoryId'
        Properties.ListFieldItem = dmInventory.cgvPrevItemCategoryItemCategoryName
      end
    end
  end
  object mdBillMaterialDt_Master: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforeEdit = mdBillMaterialDt_MasterBeforeEdit
    BeforeDelete = mdBillMaterialDt_MasterBeforeDelete
    OnNewRecord = mdBillMaterialDt_MasterNewRecord
    Left = 136
    Top = 248
    object mdBillMaterialDt_MasterOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object mdBillMaterialDt_MasterItemId: TIntegerField
      FieldName = 'ItemId'
      Required = True
    end
    object mdBillMaterialDt_MasterQty: TFloatField
      FieldName = 'Qty'
      Required = True
    end
    object mdBillMaterialDt_MasterFlagColor: TStringField
      FieldName = 'FlagColor'
      Size = 1
    end
  end
  object mdBillMaterialDt_New: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforeEdit = mdBillMaterialDt_NewBeforeEdit
    BeforeDelete = mdBillMaterialDt_NewBeforeDelete
    OnNewRecord = mdBillMaterialDt_NewNewRecord
    Left = 72
    Top = 248
    object mdBillMaterialDt_NewOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object mdBillMaterialDt_NewItemCode: TStringField
      FieldName = 'ItemCode'
      Required = True
      Size = 60
    end
    object mdBillMaterialDt_NewItemName: TStringField
      FieldName = 'ItemName'
      Required = True
      Size = 60
    end
    object mdBillMaterialDt_NewItemCategoryId: TIntegerField
      FieldName = 'ItemCategoryId'
    end
    object mdBillMaterialDt_NewItemIdRawMaterial: TIntegerField
      FieldName = 'ItemIdRawMaterial'
    end
    object mdBillMaterialDt_NewMaterialId: TIntegerField
      FieldName = 'MaterialId'
    end
    object mdBillMaterialDt_NewUnitMeasure: TStringField
      FieldName = 'UnitMeasure'
      Size = 10
    end
    object mdBillMaterialDt_NewT: TFloatField
      FieldName = 'T'
      Required = True
    end
    object mdBillMaterialDt_NewL: TFloatField
      FieldName = 'L'
      Required = True
    end
    object mdBillMaterialDt_NewP: TFloatField
      FieldName = 'P'
      Required = True
    end
    object mdBillMaterialDt_NewTConstanta: TFloatField
      FieldName = 'TConstanta'
      Required = True
    end
    object mdBillMaterialDt_NewLConstanta: TFloatField
      FieldName = 'LConstanta'
      Required = True
    end
    object mdBillMaterialDt_NewPConstanta: TFloatField
      FieldName = 'PConstanta'
      Required = True
    end
    object mdBillMaterialDt_NewM2: TFloatField
      FieldName = 'M2'
      Required = True
    end
    object mdBillMaterialDt_NewM3: TFloatField
      FieldName = 'M3'
      Required = True
    end
    object mdBillMaterialDt_NewBerat: TFloatField
      FieldName = 'Berat'
    end
    object mdBillMaterialDt_NewQty: TFloatField
      FieldName = 'Qty'
      Required = True
    end
    object mdBillMaterialDt_NewStatusDimensi: TStringField
      FieldName = 'StatusDimensi'
      Required = True
      Size = 1
    end
    object mdBillMaterialDt_NewFlagColor: TStringField
      FieldName = 'FlagColor'
      Size = 1
    end
  end
  object dsBillMaterialDt_Master: TDataSource
    DataSet = mdBillMaterialDt_Master
    Left = 168
    Top = 248
  end
  object dsBillMaterialDt_New: TDataSource
    DataSet = mdBillMaterialDt_New
    OnDataChange = dsBillMaterialDt_NewDataChange
    Left = 104
    Top = 248
  end
  object qryGetItemInfo: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'ItemId'
        Attributes = [paSigned]
        DataType = ftFMTBcd
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  ItemName,'
      '  T, L, P, M2, M3, '
      '  StatusDimensi'
      'from Item'
      'where ItemId = :ItemId')
    Left = 72
    Top = 280
  end
  object IvPositionStandard1: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Collection = <>
    Filename = 'Setting Bill Material Insert.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 72
    Top = 216
  end
  object qryPrevItemRawMaterial: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    BeforeOpen = qryPrevItemRawMaterialBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Item'
      'where StatusProduction = '#39'0'#39' -- Bahan baku')
    Left = 72
    Top = 344
  end
  object dsPrevItemRawMaterial: TDataSource
    DataSet = qryPrevItemRawMaterial
    Left = 104
    Top = 344
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Bill Material Insert.cfg'
    Sorting = False
    Version = '1.3'
    Left = 104
    Top = 216
  end
end
