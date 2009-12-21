object fmMainMenu: TfmMainMenu
  Left = 388
  Top = 223
  Caption = 'fmMainMenu'
  ClientHeight = 468
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object pcMenu: TcxPageControl
    Left = 0
    Top = 0
    Width = 892
    Height = 140
    ActivePage = tsInvoiceHd
    Align = alTop
    Images = imgIcon32
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'UserSkin'
    TabOrder = 0
    TabStop = False
    ClientRectBottom = 136
    ClientRectLeft = 2
    ClientRectRight = 888
    ClientRectTop = 39
    object tsInvoiceHd: TcxTabSheet
      Caption = '&1. Nota Register'
      ImageIndex = 0
      object bvlSpacer1: TBevel
        Left = 85
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 90
        ExplicitTop = 3
        ExplicitHeight = 107
      end
      object bvlSpacer6: TBevel
        Left = 560
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 416
        ExplicitTop = 1
        ExplicitHeight = 55
      end
      object bvlSpacer2: TBevel
        Left = 180
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 184
        ExplicitTop = 1
        ExplicitHeight = 107
      end
      object bvlSpacer3: TBevel
        Left = 275
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 284
        ExplicitTop = -2
        ExplicitHeight = 107
      end
      object bvlSpacer4: TBevel
        Left = 370
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 364
        ExplicitTop = 5
        ExplicitHeight = 95
      end
      object bvlSpacer8: TBevel
        Left = 750
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 740
        ExplicitTop = 3
        ExplicitHeight = 95
      end
      object bvlSpacer5: TBevel
        Left = 465
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 584
        ExplicitTop = -2
        ExplicitHeight = 107
      end
      object bvlSpacer7: TBevel
        Left = 655
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitTop = 3
        ExplicitHeight = 95
      end
      object btnClose: TcxButton
        Left = 0
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actExit
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        WordWrap = True
      end
      object btnInvoiceNew: TcxButton
        Left = 95
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actInvoiceNew
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        WordWrap = True
      end
      object btnInvoiceVoid: TcxButton
        Left = 380
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actInvoiceVoid
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        WordWrap = True
      end
      object btnInvoicePayment: TcxButton
        Left = 190
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actInvoicePayment
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        WordWrap = True
      end
      object btnInvoicePrev: TcxButton
        Left = 570
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actInvoiceSetQty
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        TabStop = False
        WordWrap = True
      end
      object btnInvoiceNext: TcxButton
        Left = 665
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actInvoiceSearch
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        TabStop = False
        WordWrap = True
      end
      object btnInvoiceReprint: TcxButton
        Left = 285
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actInvoiceReprint
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        TabStop = False
        WordWrap = True
      end
      object btnSearchItem: TcxButton
        Left = 475
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actInvoiceSearchItem
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        TabStop = False
        WordWrap = True
      end
      object btnClosingRegister: TcxButton
        Left = 760
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actClosingRegister
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        TabStop = False
        WordWrap = True
      end
    end
    object tsInvoiceDt: TcxTabSheet
      Caption = '&2. Detail Nota'
      ImageIndex = 1
      object bvlSpacer9: TBevel
        Left = 85
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 69
        ExplicitTop = -2
        ExplicitHeight = 95
      end
      object bvlSpacer10: TBevel
        Left = 180
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 174
        ExplicitTop = -2
        ExplicitHeight = 95
      end
      object bvlSpacer11: TBevel
        Left = 275
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 269
        ExplicitTop = -2
        ExplicitHeight = 95
      end
      object bvlSpacer12: TBevel
        Left = 370
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitTop = 3
        ExplicitHeight = 95
      end
      object bvlSpacer13: TBevel
        Left = 465
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 449
        ExplicitTop = -2
        ExplicitHeight = 95
      end
      object btnItemPrice: TcxButton
        Left = 0
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actItemChangePrice
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        WordWrap = True
      end
      object btnItemVoucher: TcxButton
        Left = 285
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actItemVoucher
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        WordWrap = True
      end
      object btnItemVoid: TcxButton
        Left = 475
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actItemVoid
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        WordWrap = True
      end
      object btnItemBonus: TcxButton
        Left = 380
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actItemBonus
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        WordWrap = True
      end
      object btnItemDisc1: TcxButton
        Left = 95
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actItemDisc1
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        TabStop = False
        WordWrap = True
      end
      object btnItemDisc2: TcxButton
        Left = 190
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actItemDisc2
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        TabStop = False
        WordWrap = True
      end
    end
    object tsPayment: TcxTabSheet
      Caption = '&3. Pembayaran'
      object bvlSpacer14: TBevel
        Left = 377
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 459
        ExplicitTop = -2
        ExplicitHeight = 95
      end
      object bvlSpacer17: TBevel
        Left = 472
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 668
        ExplicitTop = -2
        ExplicitHeight = 95
      end
      object bvlSpacer18: TBevel
        Left = 567
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 692
        ExplicitTop = -1
        ExplicitHeight = 95
      end
      object pnlPaymentLeft: TPanel
        Left = 0
        Top = 0
        Width = 292
        Height = 97
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object lblGrandTotal: TLabel
          Left = 2
          Top = 26
          Width = 30
          Height = 17
          Caption = 'Total'
          Transparent = True
        end
        object Label1: TLabel
          Left = 2
          Top = 48
          Width = 74
          Height = 17
          Caption = 'Pembayaran'
          Transparent = True
        end
        object Shape1: TShape
          Left = 104
          Top = 69
          Width = 180
          Height = 2
          Brush.Color = clBlack
        end
        object lblOutstanding: TLabel
          Left = 2
          Top = 73
          Width = 24
          Height = 17
          Alignment = taRightJustify
          Caption = 'Sisa'
          Transparent = True
        end
        object lblRounding: TLabel
          Left = 2
          Top = 4
          Width = 69
          Height = 17
          Caption = 'Pembulatan'
          Transparent = True
        end
        object edtGrandTotal2: TcxCurrencyEdit
          Left = 104
          Top = 23
          TabStop = False
          Enabled = False
          StyleDisabled.BorderColor = clWindowFrame
          StyleDisabled.Color = clWhite
          StyleDisabled.TextColor = clWindowText
          TabOrder = 1
          Width = 180
        end
        object edtTotalPayment: TcxCurrencyEdit
          Left = 104
          Top = 45
          TabStop = False
          Enabled = False
          StyleDisabled.BorderColor = clWindowFrame
          StyleDisabled.Color = clWhite
          StyleDisabled.TextColor = clWindowText
          TabOrder = 2
          Width = 180
        end
        object edtOutstandingTotalAmount: TcxCurrencyEdit
          Left = 104
          Top = 70
          TabStop = False
          Enabled = False
          Properties.ReadOnly = False
          StyleDisabled.BorderColor = clWindowFrame
          StyleDisabled.Color = clWhite
          StyleDisabled.TextColor = clWindowText
          TabOrder = 3
          Width = 180
        end
        object edtRounding: TcxCurrencyEdit
          Left = 104
          Top = 1
          TabStop = False
          Enabled = False
          StyleDisabled.BorderColor = clWindowFrame
          StyleDisabled.Color = clWhite
          StyleDisabled.TextColor = clWindowText
          TabOrder = 0
          Width = 180
        end
      end
      object btnPaymentDisplay: TcxButton
        Left = 292
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actPaymentDisplay
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        WordWrap = True
      end
      object btnPaymentVoid: TcxButton
        Left = 387
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actPaymentVoid
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        WordWrap = True
      end
      object btnPurchasePayment: TcxButton
        Left = 577
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actPurchasePayment
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        WordWrap = True
      end
      object btnSalesPayment: TcxButton
        Left = 482
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actSalesPayment
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        TabStop = False
        WordWrap = True
      end
    end
    object tsOthers: TcxTabSheet
      Caption = '&4. Lain-lain'
      ImageIndex = 2
      object bvlSpacer15: TBevel
        Left = 85
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 459
        ExplicitTop = -2
        ExplicitHeight = 95
      end
      object bvlSpacer16: TBevel
        Left = 180
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 252
        ExplicitTop = -2
        ExplicitHeight = 95
      end
      object Bevel1: TBevel
        Left = 275
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 291
        ExplicitTop = -2
        ExplicitHeight = 95
      end
      object Bevel2: TBevel
        Left = 370
        Top = 0
        Width = 10
        Height = 97
        Align = alLeft
        Shape = bsSpacer
        ExplicitLeft = 389
        ExplicitTop = -2
      end
      object btnSettingGrid: TcxButton
        Left = 0
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actSettingGrid
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        WordWrap = True
      end
      object btnReportClosing: TcxButton
        Left = 285
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actReportClosing
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        WordWrap = True
      end
      object btnRefreshItem: TcxButton
        Left = 95
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actRefreshItem
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        WordWrap = True
      end
      object btnPhysicalCounter: TcxButton
        Left = 190
        Top = 0
        Width = 85
        Height = 97
        Align = alLeft
        Action = actPhysicalCounter
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        WordWrap = True
      end
      object gbLegend: TcxGroupBox
        Left = 380
        Top = 0
        Align = alLeft
        Caption = 'Informasi'
        ParentBackground = False
        ParentColor = False
        TabOrder = 4
        Transparent = True
        Height = 97
        Width = 261
        object imgLevelQty: TImage
          Left = 6
          Top = 24
          Width = 16
          Height = 16
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
        end
        object lblInvalidLevelQty: TLabel
          Left = 32
          Top = 24
          Width = 173
          Height = 17
          Caption = 'Level quantity tidak terpenuhi'
        end
        object imgLevelPrice: TImage
          Left = 6
          Top = 47
          Width = 16
          Height = 16
          AutoSize = True
          Picture.Data = {
            055449636F6E0000010001001010000001002000680400001600000028000000
            1000000020000000010020000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000003D3D3D21575757C6575757E7575757E7575757E7575757E7575757E7
            575757E7575757E7575757E7575757E7575757E7575757E7575757E7575757C6
            3D3D3D21575757BD707070FF969696FF9C9C9CFF9C9C9CFF9C9C9CFF969696FF
            969696FF969696FF969696FF969696FF969696FF919191FF8A8A8AFF636363FF
            575757BD575757F79C9C9CFF9E9E9EFF9E9E9EFF9E9E9EFF9C9C9CFF9C9C9CFF
            9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF969696FF919191FF8A8A8AFF
            575757F7595959F79C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF
            969696FF969696FF919191FF919191FF919191FF919191FF919191FF8F8F8FFF
            575757F7595959F79C9C9CFF9C9C9CFF969696FF969696FF919191FF919191FF
            919191FF919191FF919191FF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8A8A8AFF
            575757F7595959F7919191FF919191FF919191FF919191FF919191FF8F8F8FFF
            8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8A8A8AFF8A8A8AFF878787FF
            575757F7595959F7969696FF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF
            8F8F8FFF8A8A8AFF8A8A8AFF878787FF878787FF878787FF878787FF8F8F8FFF
            575757F7595959F79C9C9CFF9C9C9CFF969696FF949494FF8A8A8AFF878787FF
            878787FF878787FF878787FF8A8A8AFF8F8F8FFF969696FF9E9E9EFF9E9E9EFF
            575757F7595959F79C9C9CFFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FF9C9C9CFF
            9C9C9CFF9C9C9CFFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FF
            575757F7595959F7A1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FF
            A1A1A1FFA1A1A1FF9C9C9CFF9C9C9CFFA1A1A1FFA1A1A1FFA1A1A1FF9C9C9CFF
            575757F7595959F7A1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FF
            A1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FF9C9C9CFF
            575757F7575757F79E9E9EFFA3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FF
            A1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FF919191FF
            575757F7575757BD7A7A7AFFA1A1A1FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FF
            A3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FF9E9E9EFF6B6B6BFF
            575757BD3D3D3D21575757C6595959E75E5E5EE7595959E7595959E7595959E7
            595959E7595959E7595959E7595959E7595959E7575757E7575757E7575757C6
            4545452100000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFAC410000AC410000AC410000AC410000AC410000AC410000AC41
            0000AC410000AC410000AC410000AC410000AC410000AC410000AC410000AC41
            FFFFAC41}
        end
        object lblInvalidLevelPrice: TLabel
          Left = 32
          Top = 47
          Width = 132
          Height = 17
          Caption = 'Harga belum di setting'
        end
      end
    end
    object tsHistory: TcxTabSheet
      Caption = '&5. History'
      ImageIndex = 3
      object dbeInternalMemo: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'internalmemo'
        DataBinding.DataSource = dsRegisterSalesHd
        Properties.ScrollBars = ssVertical
        TabOrder = 0
        Height = 97
        Width = 886
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 140
    Width = 892
    Height = 68
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    DesignSize = (
      892
      68)
    object lblRegisterSalesDate: TLabel
      Left = 6
      Top = 12
      Width = 54
      Height = 17
      Caption = 'Tanggal :'
      Transparent = True
    end
    object lblDate: TLabel
      Left = 66
      Top = 11
      Width = 108
      Height = 17
      Caption = '                           '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblNoNota: TLabel
      Left = 256
      Top = 12
      Width = 70
      Height = 17
      Caption = 'Nota No :   '
      Transparent = True
    end
    object lblQty: TLabel
      Left = 379
      Top = 12
      Width = 22
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Qty'
      Transparent = True
      ExplicitLeft = 344
    end
    object lblPrice: TLabel
      Left = 449
      Top = 12
      Width = 37
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Harga'
      Transparent = True
      ExplicitLeft = 414
    end
    object lblDBId: TDBText
      Left = 320
      Top = 11
      Width = 52
      Height = 17
      AutoSize = True
      DataField = 'registersalesid'
      DataSource = dsRegisterSalesHd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtGrandTotal: TcxCurrencyEdit
      Left = 571
      Top = 1
      Anchors = [akTop, akRight]
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnEditValueChanged = edtGrandTotalPropertiesEditValueChanged
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -48
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 0
      Width = 313
    end
    object edtBarcodeId: TcxTextEdit
      Left = 6
      Top = 33
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ValidateOnEnter = True
      Properties.OnEditValueChanged = edtBarcodeIdPropertiesEditValueChanged
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 1
      OnEnter = edtBarcodeIdEnter
      Width = 115
    end
    object edtItemName: TcxTextEdit
      Left = 121
      Top = 33
      Anchors = [akLeft, akTop, akRight]
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 2
      Width = 258
    end
    object edtItemQty: TcxCurrencyEdit
      Left = 379
      Top = 33
      Anchors = [akTop, akRight]
      Enabled = False
      ParentFont = False
      Properties.OnEditValueChanged = edtItemQtyPropertiesEditValueChanged
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = 13041663
      StyleDisabled.TextColor = clWindowText
      TabOrder = 4
      Width = 70
    end
    object edtItemPrice: TcxCurrencyEdit
      Left = 449
      Top = 33
      Anchors = [akTop, akRight]
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 3
      Width = 117
    end
    object dbeRegisterSalesId: TcxDBTextEdit
      Left = 584
      Top = 27
      DataBinding.DataField = 'registersalesid'
      DataBinding.DataSource = dsRegisterSalesHd
      Enabled = False
      Properties.OnEditValueChanged = dbeRegisterSalesIdPropertiesEditValueChanged
      TabOrder = 5
      Width = 121
    end
  end
  object sbMainMenu: TStatusBar
    Left = 0
    Top = 443
    Width = 892
    Height = 25
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    Panels = <
      item
        Width = 200
      end
      item
        Width = 150
      end
      item
        Width = 300
      end
      item
        Width = 300
      end
      item
        Width = 200
      end>
    UseSystemFont = False
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 352
    Width = 892
    Height = 91
    Align = alBottom
    TabOrder = 3
    object lblDisc2: TLabel
      Left = 453
      Top = 9
      Width = 18
      Height = 23
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblDisc1: TLabel
      Left = 180
      Top = 9
      Width = 18
      Height = 23
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblVoucherNo: TLabel
      Left = 643
      Top = 9
      Width = 31
      Height = 23
      Caption = 'No.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btnInvoiceDisc1: TcxButton
      Left = 6
      Top = 6
      Width = 85
      Height = 80
      Action = actInvoiceDisc1
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      TabOrder = 0
      TabStop = False
    end
    object btnInvoiceDisc2: TcxButton
      Left = 279
      Top = 6
      Width = 85
      Height = 80
      Action = actInvoiceDisc2
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      TabOrder = 1
      TabStop = False
    end
    object btnInvoiceVoucher: TcxButton
      Left = 552
      Top = 6
      Width = 85
      Height = 80
      Action = actInvoiceVoucher
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      TabOrder = 2
      TabStop = False
    end
    object dbeVoucher: TcxDBTextEdit
      Left = 678
      Top = 6
      TabStop = False
      DataBinding.DataField = 'voucher'
      DataBinding.DataSource = dsRegisterSalesHd
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.BorderStyle = ebsUltraFlat
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 3
      Width = 123
    end
    object dbeVoucherAmount: TcxDBCurrencyEdit
      Left = 643
      Top = 43
      TabStop = False
      DataBinding.DataField = 'voucheramount'
      DataBinding.DataSource = dsRegisterSalesHd
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 4
      Width = 158
    end
    object dbeDisc1: TcxDBCurrencyEdit
      Left = 97
      Top = 6
      TabStop = False
      DataBinding.DataField = 'disc'
      DataBinding.DataSource = dsRegisterSalesHd
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 5
      Width = 77
    end
    object dbeDisc2: TcxDBCurrencyEdit
      Left = 370
      Top = 6
      TabStop = False
      DataBinding.DataField = 'disc2'
      DataBinding.DataSource = dsRegisterSalesHd
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 6
      Width = 77
    end
    object edtDisc1Amount: TcxCurrencyEdit
      Left = 97
      Top = 43
      TabStop = False
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 7
      Width = 160
    end
    object edtDisc2Amount: TcxCurrencyEdit
      Left = 370
      Top = 43
      TabStop = False
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clWindowText
      TabOrder = 8
      Width = 159
    end
  end
  object pnlClient: TPanel
    Left = 0
    Top = 208
    Width = 892
    Height = 144
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object cgRegisterSalesDt: TcxGrid
      Left = 0
      Top = 0
      Width = 822
      Height = 144
      Align = alClient
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      object cgvRegisterSalesDt: TcxGridDBTableView
        OnKeyDown = cgvRegisterSalesDtKeyDown
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = cgvRegisterSalesDtCellDblClick
        DataController.DataSource = dsRegisterSalesDt
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'no'
            Column = cgvRegisterSalesDtno
          end
          item
            Kind = skSum
            FieldName = 'amount'
            Column = cgvRegisterSalesDtamount
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.OnAfterSummary = cgvRegisterSalesDtDataControllerSummaryAfterSummary
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.ScrollBars = ssNone
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 30
        OptionsView.IndicatorWidth = 30
        Styles.OnGetContentStyle = cgvRegisterSalesDtStylesGetContentStyle
        object cgvRegisterSalesDtno: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'no'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soAscending
          Width = 44
        end
        object cgvRegisterSalesDtbarcodeid: TcxGridDBColumn
          Caption = 'Barcode'
          DataBinding.FieldName = 'itemid'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'itemid'
          Properties.ListColumns = <
            item
              FieldName = 'barcodeid'
            end>
          Properties.ListSource = dsPrevItem
          HeaderAlignmentHorz = taCenter
          Width = 127
        end
        object cgvRegisterSalesDtItemIdExternal: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'itemid'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'itemid'
          Properties.ListColumns = <
            item
              FieldName = 'itemidexternal'
            end>
          Properties.ListSource = dsPrevItem
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cgvRegisterSalesDtItemname: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'itemid'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'itemid'
          Properties.ListColumns = <
            item
              FieldName = 'itemname'
            end>
          Properties.ListSource = dsPrevItem
          HeaderAlignmentHorz = taCenter
          Width = 250
        end
        object cgvRegisterSalesDtqty: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'qty'
          PropertiesClassName = 'TcxCalcEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 41
        end
        object cgvRegisterSalesDtprice: TcxGridDBColumn
          Caption = 'Harga'
          DataBinding.FieldName = 'price'
          PropertiesClassName = 'TcxCalcEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cgvRegisterSalesDtpricelevel: TcxGridDBColumn
          Caption = 'Level'
          DataBinding.FieldName = 'pricelevel'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Lv 1'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Lv 2'
              Value = 2
            end
            item
              Description = 'Lv 3'
              Value = 3
            end
            item
              Description = 'Lv 4'
              Value = 4
            end
            item
              Description = 'Lv 5'
              Value = 5
            end
            item
              Description = 'Lv 6'
              Value = 6
            end
            item
              Description = 'Lv 7'
              Value = 7
            end>
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cgvRegisterSalesDtdiscitem: TcxGridDBColumn
          Caption = 'Disc1 (%)'
          DataBinding.FieldName = 'discitem'
          PropertiesClassName = 'TcxCalcEditProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object cgvRegisterSalesDtdiscitemprice: TcxGridDBColumn
          Caption = 'Disc1 (Rp)'
          DataBinding.FieldName = 'discitemprice'
          PropertiesClassName = 'TcxCalcEditProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cgvRegisterSalesDtdiscitem2: TcxGridDBColumn
          Caption = 'Disc2 (%)'
          DataBinding.FieldName = 'discitem2'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cgvRegisterSalesDtdiscitemprice2: TcxGridDBColumn
          Caption = 'Disc2 (Rp)'
          DataBinding.FieldName = 'discitemprice2'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cgvRegisterSalesDtvoucheritem: TcxGridDBColumn
          Caption = 'Voucher'
          DataBinding.FieldName = 'voucheritem'
          PropertiesClassName = 'TcxCalcEditProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cgvRegisterSalesDtamount: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'amount'
          PropertiesClassName = 'TcxCalcEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cgvRegisterSalesDtstatuscolor: TcxGridDBColumn
          DataBinding.FieldName = 'statuscolor'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
      end
      object cgRegisterSalesDtLevel1: TcxGridLevel
        GridView = cgvRegisterSalesDt
      end
    end
    object pnlClientRight: TPanel
      Left = 822
      Top = 0
      Width = 70
      Height = 144
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnDetailUp: TcxButton
        Left = 0
        Top = 0
        Width = 70
        Height = 70
        Align = alTop
        Action = actDetailUp
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
        TabOrder = 0
        TabStop = False
      end
      object btnDetailDown: TcxButton
        Left = 0
        Top = 74
        Width = 70
        Height = 70
        Align = alBottom
        Action = actDetailDown
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
        TabOrder = 1
        TabStop = False
      end
    end
  end
  object tmMainMenuTimer: TTimer
    Enabled = False
    OnTimer = tmMainMenuTimerTimer
    Left = 328
    Top = 168
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Caption = '-'
              end
              item
                Caption = '-'
              end
              item
                Action = actExit
                ImageIndex = 3
              end>
            Caption = '&File'
          end
          item
            Items = <
              item
                Caption = '-'
              end>
            Caption = '&Options'
          end>
      end
      item
        Items = <
          item
            Action = actExit
            ImageIndex = 3
          end>
      end
      item
      end
      item
      end
      item
        Items = <
          item
            ChangesAllowed = [caModify]
            Items = <
              item
                Caption = '&ActionClientItem0'
              end>
            Caption = '&ActionClientItem0'
            KeyTip = 'F'
          end>
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Action = actExit
            ImageIndex = 3
          end>
      end
      item
        Items = <
          item
            Action = actExit
            ImageIndex = 3
          end>
      end
      item
        Items = <
          item
            Caption = '&cxButton1'
          end>
      end
      item
        Items = <
          item
            Caption = 'cxButton1'
            CommandStyle = csControl
            CommandProperties.Width = 150
          end>
      end>
    Images = dmGlobal.imgIcon48
    OnExecute = ActionManager1Execute
    Left = 296
    Top = 168
    StyleName = 'Platform Default'
    object actExit: TAction
      Category = 'InvoiceHd'
      Caption = 'Keluar (Alt+F4)'
      Hint = 'Keluar (Alt+F4)'
      ImageIndex = 3
      OnExecute = actExitExecute
    end
    object actSettingGrid: TAction
      Category = 'Others'
      Caption = 'Setting Grid (Ctrl+F1)'
      Hint = 'Setting Grid'
      ImageIndex = 20
      ShortCut = 16496
      OnExecute = actSettingGridExecute
    end
    object actInvoiceNew: TAction
      Category = 'InvoiceHd'
      Caption = 'Nota Baru (F2)'
      Hint = 'Nota Baru'
      ImageIndex = 4
      ShortCut = 113
      OnExecute = actInvoiceNewExecute
    end
    object actInvoicePayment: TAction
      Category = 'InvoiceHd'
      Caption = '   Bayar    (F3)'
      Hint = 'Bayar'
      ImageIndex = 5
      ShortCut = 114
      OnExecute = actInvoicePaymentExecute
    end
    object actInvoiceReprint: TAction
      Category = 'InvoiceHd'
      Caption = '    Cetak     (F4)'
      Hint = 'Cetak'
      ImageIndex = 6
      ShortCut = 115
      OnExecute = actInvoiceReprintExecute
    end
    object actInvoiceVoid: TAction
      Category = 'InvoiceHd'
      Caption = 'Void Nota (Ctrl+F2)'
      Hint = 'Void Nota'
      ImageIndex = 7
      ShortCut = 16497
      OnExecute = actInvoiceVoidExecute
    end
    object actPaymentDisplay: TAction
      Category = 'Payment'
      Caption = 'Display (Alt+F3)'
      Hint = 'Display Pembayaran (Alt+F3)'
      ImageIndex = 8
      ShortCut = 32882
      OnExecute = actPaymentDisplayExecute
    end
    object actInvoiceSearchItem: TAction
      Category = 'InvoiceHd'
      Caption = 'Cari Barang (F5)'
      Hint = 'Cari Barang'
      ImageIndex = 9
      ShortCut = 116
      OnExecute = actInvoiceSearchItemExecute
    end
    object actInvoiceSetQty: TAction
      Category = 'InvoiceHd'
      Caption = 'Set Quantity (F6)'
      Hint = 'Set Quantity'
      ImageIndex = 10
      ShortCut = 117
      OnExecute = actInvoiceSetQtyExecute
    end
    object actInvoiceSearch: TAction
      Category = 'InvoiceHd'
      Caption = 'Cari Nota (F12)'
      Hint = 'Cari Nota'
      ImageIndex = 11
      ShortCut = 123
      OnExecute = actInvoiceSearchExecute
    end
    object actInvoiceDisc1: TAction
      Category = 'InvoiceHd'
      Caption = 'Disc 1'
      Hint = 'Disc 1 Nota'
      ImageIndex = 12
      OnExecute = actInvoiceDisc1Execute
    end
    object actInvoiceDisc2: TAction
      Category = 'InvoiceHd'
      Caption = 'Disc 2'
      Hint = 'Disc 2 Nota'
      ImageIndex = 12
      OnExecute = actInvoiceDisc2Execute
    end
    object actInvoiceVoucher: TAction
      Category = 'InvoiceHd'
      Caption = 'Voucher'
      Hint = 'Voucher Nota'
      ImageIndex = 12
      OnExecute = actInvoiceVoucherExecute
    end
    object actItemChangePrice: TAction
      Category = 'InvoiceDt'
      Caption = 'Ganti Harga (F7)'
      Hint = 'Ganti Harga Barang'
      ImageIndex = 16
      ShortCut = 118
      OnExecute = actItemChangePriceExecute
    end
    object actItemDisc1: TAction
      Category = 'InvoiceDt'
      Caption = '  @ Disc 1   (F8)'
      Hint = 'Disc Harga 1 Barang'
      ImageIndex = 17
      ShortCut = 119
      OnExecute = actItemDisc1Execute
    end
    object actItemDisc2: TAction
      Category = 'InvoiceDt'
      Caption = '  @ Disc 2   (F9)'
      Hint = 'Disc Harga 2 Barang'
      ImageIndex = 17
      ShortCut = 120
      OnExecute = actItemDisc2Execute
    end
    object actItemVoucher: TAction
      Category = 'InvoiceDt'
      Caption = '@ Voucher (F10)'
      Hint = 'Voucher Harga Barang'
      ImageIndex = 17
      ShortCut = 121
      OnExecute = actItemVoucherExecute
    end
    object actItemBonus: TAction
      Category = 'InvoiceDt'
      Caption = '  Bonus   (F11)'
      Hint = 'Bonus Barang'
      ImageIndex = 19
      ShortCut = 122
      OnExecute = actItemBonusExecute
    end
    object actItemVoid: TAction
      Category = 'InvoiceDt'
      Caption = 'Void (Ctrl+F11)'
      Hint = 'Void Barang'
      ImageIndex = 18
      ShortCut = 16506
      OnExecute = actItemVoidExecute
    end
    object actClosingRegister: TAction
      Category = 'InvoiceHd'
      Caption = 'Tutup Kasir'
      Hint = 'Tutup Kasir'
      ImageIndex = 15
      ShortCut = 16499
      OnExecute = actClosingRegisterExecute
    end
    object actPaymentVoid: TAction
      Category = 'Payment'
      Caption = 'Void (Ctrl+F3)'
      Hint = 'Void Pembayaran (Ctrl+F3)'
      ImageIndex = 21
      ShortCut = 16498
      OnExecute = actPaymentVoidExecute
    end
    object actDetailUp: TAction
      Hint = 'Scroll Up (Ctrl+Up)'
      ImageIndex = 22
      OnExecute = actDetailUpExecute
    end
    object actDetailDown: TAction
      Hint = 'Scroll Down (Ctrl+Down)'
      ImageIndex = 23
      OnExecute = actDetailDownExecute
    end
    object actSalesPayment: TAction
      Category = 'Payment'
      Caption = 'Pembayaran Nota Jual'
      ImageIndex = 25
      OnExecute = actSalesPaymentExecute
    end
    object actPurchasePayment: TAction
      Category = 'Payment'
      Caption = 'Pembayaran Nota Beli'
      ImageIndex = 26
      OnExecute = actPurchasePaymentExecute
    end
    object actRefreshItem: TAction
      Category = 'Others'
      Caption = 'Refresh Barang'
      ImageIndex = 2
      OnExecute = actRefreshItemExecute
    end
    object actPhysicalCounter: TAction
      Category = 'Others'
      Caption = ' Counter  Fisik Mesin'
      ImageIndex = 28
      OnExecute = actPhysicalCounterExecute
    end
    object actReportClosing: TAction
      Category = 'Others'
      Caption = 'Laporan Tutup Kasir'
      ImageIndex = 27
      OnExecute = actReportClosingExecute
    end
  end
  object imgIcon32: TImageList
    Height = 32
    Width = 32
    Left = 296
    Top = 200
  end
  object qryRegisterSalesHd: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from RegisterSalesHd'
      'where CashRegisterTransactionId = :CashRegisterTransactionId'
      'order by RegisterSalesId')
    IndexFieldNames = 'registersalesid'
    OnNewRecord = qryRegisterSalesHdNewRecord
    Left = 296
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CashRegisterTransactionId'
      end>
  end
  object qryRegisterSalesDt: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from RegisterSalesDt'
      'where RegisterSalesId = :RegisterSalesId'
      'order by No')
    MasterSource = dsRegisterSalesHd
    AfterOpen = qryRegisterSalesDtAfterOpen
    Left = 296
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RegisterSalesId'
      end>
  end
  object dsRegisterSalesHd: TDataSource
    DataSet = qryRegisterSalesHd
    OnDataChange = dsRegisterSalesHdDataChange
    Left = 328
    Top = 232
  end
  object dsRegisterSalesDt: TDataSource
    DataSet = qryRegisterSalesDt
    OnDataChange = dsRegisterSalesDtDataChange
    Left = 328
    Top = 264
  end
  object qryPrevItem: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.ItemId, a.ItemIdExternal, a.ItemName, a.BarcodeId,'
      '  b.*'
      'from Item a'
      'left join Price b on a.ItemId = b.ItemId'
      'where a.FlagInactive = '#39'0'#39
      'order by a.BarcodeId')
    Left = 416
    Top = 232
  end
  object dsPrevItem: TDataSource
    DataSet = qryPrevItem
    Left = 448
    Top = 232
  end
  object qryGetLastRegisterSalesId: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select max(RegisterSalesId) as RegisterSalesId'
      'from RegisterSalesHd'
      'where RegisterSalesId like :RegisterSalesId')
    Left = 416
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RegisterSalesId'
      end>
  end
  object qryRegisterSalesPayment: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select * '
      'from RegisterSalesPayment'
      'where RegisterSalesId = :RegisterSalesId'
      'order by No')
    MasterSource = dsRegisterSalesHd
    AfterOpen = qryRegisterSalesDtAfterOpen
    Left = 296
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RegisterSalesId'
      end>
  end
  object dsRegisterSalesPayment: TDataSource
    DataSet = qryRegisterSalesPayment
    Left = 328
    Top = 296
  end
  object qryGetItemInfo: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.ItemId, a.ItemName, a.FlagNeedValidation, a.LevelValidation'
      'from Item a'
      'where a.ItemId = :ItemId')
    Left = 448
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
  object qryCashRegisterTransaction: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select *'
      'from CashRegisterTransaction'
      'where CashRegisterTransactionId = :CashRegisterTransactionId')
    Left = 480
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CashRegisterTransactionId'
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 392
    Top = 168
    PixelsPerInch = 96
    object stRedLight: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14540287
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindowText
    end
    object stGreyLight: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindowText
    end
  end
  object qryGetRegisterSalesPayment: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  sum(Amount) as TotalAmount '
      'from RegisterSalesPayment'
      'where RegisterSalesId = :RegisterSalesId')
    Left = 416
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RegisterSalesId'
      end>
  end
  object IvPositionDevExpress1: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Main Menu.cfg'
    Sorting = False
    Version = '1.3'
    Left = 360
    Top = 168
  end
  object spPostingCashRegisterTransaction: TUniStoredProc
    StoredProcName = 'spPostingCashRegisterTransaction'
    Connection = dmGlobal.conGlobal
    Left = 328
    Top = 200
    ParamData = <
      item
        DataType = ftWideString
        Name = 'acashregistertransactionid'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'spPostingCashRegisterTransaction'
  end
end
