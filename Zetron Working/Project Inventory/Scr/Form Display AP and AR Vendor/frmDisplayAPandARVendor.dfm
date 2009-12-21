inherited fmDisplayAPandARVendor: TfmDisplayAPandARVendor
  Caption = 'Display Hutang Piutang Ke Vendor'
  ExplicitWidth = 600
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object pnlProgressBar: TPanel
      Left = 203
      Top = 1
      Width = 136
      Height = 48
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 4
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
  inherited pnlCustom: TPanel
    ExplicitLeft = 0
    ExplicitWidth = 592
    object lblInfo: TLabel [1]
      Left = 240
      Top = 5
      Width = 98
      Height = 13
      Caption = 'Melebihi batas kredit'
      Transparent = True
    end
    object imgInfo: TImage [2]
      Left = 216
      Top = 5
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
      Transparent = True
    end
  end
  object pcAccountPayable: TcxPageControl [2]
    Left = 0
    Top = 75
    Width = 592
    Height = 292
    ActivePage = tsAccountPayable
    Align = alClient
    TabOrder = 2
    OnChange = pcAccountPayableChange
    ClientRectBottom = 286
    ClientRectLeft = 3
    ClientRectRight = 586
    ClientRectTop = 26
    object tsAccountPayable: TcxTabSheet
      Caption = '&1. Hutang && Piutang'
      ImageIndex = 0
      object cgPrevAccountPayable: TcxGrid
        Left = 0
        Top = 0
        Width = 583
        Height = 260
        Align = alClient
        TabOrder = 0
        object cgvPrevAccountPayable: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevAccountPayable
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'Amount'
              Column = cgvPrevAccountPayableAmount
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'AR'
              Column = cgvPrevAccountPayableAR
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'Amount'
              Column = cgvPrevAccountPayableAmount
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'AR'
              Column = cgvPrevAccountPayableAR
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.BandHeaders = False
          Styles.OnGetContentStyle = cgvPrevAccountPayableStylesGetContentStyle
          Bands = <
            item
              FixedKind = fkLeft
            end
            item
            end>
          object cgvPrevAccountPayablevendorid: TcxGridDBBandedColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'vendorid'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayablevendorname: TcxGridDBBandedColumn
            Caption = 'Vendor'
            DataBinding.FieldName = 'vendorname'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayablecreditlimit: TcxGridDBBandedColumn
            Caption = 'Batas Kredit'
            DataBinding.FieldName = 'creditlimit'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCurrencyId: TcxGridDBBandedColumn
            Caption = 'Mata Uang'
            DataBinding.FieldName = 'CurrencyId'
            Visible = False
            GroupIndex = 0
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableAmount: TcxGridDBBandedColumn
            Caption = 'Hutang'
            DataBinding.FieldName = 'Amount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Styles.Content = dmGlobal.stYellowLight
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableAR: TcxGridDBBandedColumn
            Caption = 'Piutang'
            DataBinding.FieldName = 'AR'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableaddress: TcxGridDBBandedColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'address'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayablecityname: TcxGridDBBandedColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'cityname'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayablecategoryname: TcxGridDBBandedColumn
            Caption = 'Kategori'
            DataBinding.FieldName = 'categoryname'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object cgPrevAccountPayableLevel1: TcxGridLevel
          GridView = cgvPrevAccountPayable
        end
      end
    end
    object tsAccountPayableCard: TcxTabSheet
      Caption = '&2. Kartu Hutang'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cgPrevAccountPayableCard: TcxGrid
        Left = 0
        Top = 0
        Width = 588
        Height = 264
        Align = alClient
        TabOrder = 0
        object cgvPrevAccountPayableCard: TcxGridBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Column = cgvPrevAccountPayableCardDebit
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Column = cgvPrevAccountPayableCardCredit
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Column = cgvPrevAccountPayableCardDebitRp
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Column = cgvPrevAccountPayableCardCreditRp
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'Keterangan'
            end
            item
              Caption = 'Debet'
            end
            item
              Caption = 'Kredit'
            end
            item
              Caption = 'Saldo'
            end>
          object cgvPrevAccountPayableCardTransactionDate: TcxGridBandedColumn
            Caption = 'Tanggal'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardTransaction: TcxGridBandedColumn
            Caption = 'Transaksi'
            Options.Filtering = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardMemo: TcxGridBandedColumn
            Caption = 'Memo'
            PropertiesClassName = 'TcxRichEditProperties'
            Visible = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardCashBankRef: TcxGridBandedColumn
            Caption = 'Kas Bank Ref'
            Visible = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardCashBankExternal: TcxGridBandedColumn
            Caption = 'Kas Bank External'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardInvoiceId: TcxGridBandedColumn
            Caption = 'Nota'
            Visible = False
            Options.Filtering = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardInvoiceIdExt: TcxGridBandedColumn
            Caption = 'Nota Ext'
            Options.Filtering = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardPaymentId: TcxGridBandedColumn
            Caption = 'Pembayaran'
            Options.Filtering = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardKurs: TcxGridBandedColumn
            Caption = 'Kurs'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
            Options.Moving = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardDebit: TcxGridBandedColumn
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object cgvPrevAccountPayableCardDebitRp: TcxGridBandedColumn
            Caption = 'Rp'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardCredit: TcxGridBandedColumn
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object cgvPrevAccountPayableCardCreditRp: TcxGridBandedColumn
            Caption = 'Rp'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardBalance: TcxGridBandedColumn
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 80
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object cgvPrevAccountPayableCardBalanceRp: TcxGridBandedColumn
            Caption = 'Rp'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 80
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cgPrevAccountPayableCardLevel1: TcxGridLevel
          GridView = cgvPrevAccountPayableCard
        end
      end
    end
    object tsAccountReceivableCard: TcxTabSheet
      Caption = '&3. Kartu Piutang'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cgPrevAccountReceivableCard: TcxGrid
        Left = 0
        Top = 0
        Width = 588
        Height = 264
        Align = alClient
        TabOrder = 0
        object cgvPrevAccountReceivableCard: TcxGridBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Column = cgvPrevAccountReceivableCardDebit
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Column = cgvPrevAccountReceivableCardDebitRp
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Column = cgvPrevAccountReceivableCardCredit
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Column = cgvPrevAccountReceivableCardCreditRp
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'Keterangan'
            end
            item
              Caption = 'Debet'
            end
            item
              Caption = 'Kredit'
            end
            item
              Caption = 'Saldo'
            end>
          object cgvPrevAccountReceivableCardTransactionDate: TcxGridBandedColumn
            Caption = 'Tanggal'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardTransaction: TcxGridBandedColumn
            Caption = 'Transaksi'
            Options.Filtering = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardMemo: TcxGridBandedColumn
            Caption = 'Memo'
            Visible = False
            Options.Filtering = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardCashBankRef: TcxGridBandedColumn
            Caption = 'Kas Bank Ref'
            Visible = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardCashBankExternal: TcxGridBandedColumn
            Caption = 'Kas Bank External'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardInvoiceId: TcxGridBandedColumn
            Caption = 'Nota'
            Visible = False
            Options.Filtering = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardInvoiceIdRef: TcxGridBandedColumn
            Caption = 'Nota Ext'
            Options.Filtering = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardPaymentId: TcxGridBandedColumn
            Caption = 'Pembayaran'
            Options.Filtering = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardKurs: TcxGridBandedColumn
            Caption = 'Kurs'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardDebit: TcxGridBandedColumn
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object cgvPrevAccountReceivableCardDebitRp: TcxGridBandedColumn
            Caption = 'Rp'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardCredit: TcxGridBandedColumn
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object cgvPrevAccountReceivableCardCreditRp: TcxGridBandedColumn
            Caption = 'Rp'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardBalance: TcxGridBandedColumn
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 80
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object cgvPrevAccountReceivableCardBalanceRp: TcxGridBandedColumn
            Caption = 'Rp'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 80
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cgPrevAccountReceivableCardLevel1: TcxGridLevel
          GridView = cgvPrevAccountReceivableCard
        end
      end
    end
    object tsAccountPayableAging: TcxTabSheet
      Caption = '&4. Umur Hutang'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBChart1: TDBChart
        Left = 0
        Top = 0
        Width = 588
        Height = 264
        BackWall.Gradient.EndColor = 11118482
        BackWall.Pen.Visible = False
        BottomWall.Gradient.EndColor = 16580349
        BottomWall.Gradient.StartColor = 3114493
        BottomWall.Pen.Visible = False
        BottomWall.Size = 4
        LeftWall.Gradient.EndColor = 2413052
        LeftWall.Gradient.StartColor = 900220
        LeftWall.Pen.Visible = False
        LeftWall.Size = 4
        Title.Color = clInfoBk
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Frame.Color = clGray
        Title.Shadow.HorizSize = 0
        Title.Shadow.VertSize = 0
        Title.Text.Strings = (
          'Umur Hutang')
        Title.Transparent = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 13421772
        BottomAxis.Grid.Visible = False
        DepthAxis.Automatic = False
        DepthAxis.AutomaticMaximum = False
        DepthAxis.AutomaticMinimum = False
        DepthAxis.Maximum = -0.500000000000000000
        DepthAxis.Minimum = -0.500000000000000000
        DepthTopAxis.Automatic = False
        DepthTopAxis.AutomaticMaximum = False
        DepthTopAxis.AutomaticMinimum = False
        DepthTopAxis.Maximum = -0.500000000000000000
        DepthTopAxis.Minimum = -0.500000000000000000
        Frame.Visible = False
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Visible = False
        Legend.Alignment = laBottom
        Legend.CheckBoxesStyle = cbsRadio
        Legend.Color = clInfoBk
        Legend.Frame.Color = clGray
        Legend.Frame.Visible = False
        Legend.Gradient.Direction = gdTopBottom
        Legend.Gradient.EndColor = clYellow
        Legend.Gradient.StartColor = clWhite
        Legend.Shadow.Color = 13421772
        Legend.TextStyle = ltsRightValue
        RightAxis.Automatic = False
        RightAxis.AutomaticMaximum = False
        RightAxis.AutomaticMinimum = False
        Shadow.Color = clBlack
        View3DOptions.Elevation = 315
        View3DOptions.HorizOffset = -4
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DOptions.Zoom = 120
        Align = alClient
        Color = clWhite
        TabOrder = 0
        PrintMargins = (
          15
          25
          15
          25)
        ColorPaletteIndex = 9
        object Series1: TPieSeries
          Marks.Arrow.Color = clBlack
          Marks.Arrow.Width = 2
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Color = clBlack
          Marks.Callout.Arrow.Width = 2
          Marks.Callout.Arrow.Visible = True
          Marks.Frame.Color = clGray
          Marks.Shadow.Color = 13421772
          Marks.Shadow.HorizSize = 2
          Marks.Shadow.VertSize = 2
          Marks.Visible = True
          DataSource = qryPrevAPAging
          Title = 'Umur Hutang'
          ValueFormat = '#.###,##'
          XLabelsSource = 'memo'
          Gradient.Direction = gdRadial
          OtherSlice.Legend.Visible = False
          PiePen.Visible = False
          PieValues.Name = 'Pie'
          PieValues.Order = loNone
          PieValues.ValueSource = 'amount'
        end
      end
    end
    object tsAccountPayableVendorAging: TcxTabSheet
      Caption = '&5. Umur Hutang (Per Vendor)'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBChart2: TDBChart
        Left = 0
        Top = 0
        Width = 249
        Height = 264
        BackWall.Gradient.EndColor = 11118482
        BackWall.Pen.Visible = False
        BottomWall.Gradient.EndColor = 16580349
        BottomWall.Gradient.StartColor = 3114493
        BottomWall.Pen.Visible = False
        BottomWall.Size = 4
        LeftWall.Gradient.EndColor = 2413052
        LeftWall.Gradient.StartColor = 900220
        LeftWall.Pen.Visible = False
        LeftWall.Size = 4
        Title.Color = clInfoBk
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Frame.Color = clGray
        Title.Shadow.HorizSize = 0
        Title.Shadow.VertSize = 0
        Title.Text.Strings = (
          'Umur Hutang Per Vendor')
        Title.Transparent = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 13421772
        BottomAxis.Grid.Visible = False
        Frame.Visible = False
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Visible = False
        Legend.Alignment = laBottom
        Legend.CheckBoxesStyle = cbsRadio
        Legend.Color = clInfoBk
        Legend.Frame.Color = clGray
        Legend.Frame.Visible = False
        Legend.Gradient.Direction = gdTopBottom
        Legend.Gradient.EndColor = clYellow
        Legend.Gradient.StartColor = clWhite
        Legend.Shadow.Color = 13421772
        Legend.TextStyle = ltsRightValue
        Shadow.Color = clBlack
        View3DOptions.Elevation = 315
        View3DOptions.HorizOffset = -4
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DOptions.Zoom = 120
        Align = alLeft
        Color = clWhite
        TabOrder = 0
        PrintMargins = (
          15
          25
          15
          25)
        ColorPaletteIndex = 9
        object PieSeries1: TPieSeries
          Marks.Arrow.Color = clBlack
          Marks.Arrow.Width = 2
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Color = clBlack
          Marks.Callout.Arrow.Width = 2
          Marks.Callout.Arrow.Visible = True
          Marks.Frame.Color = clGray
          Marks.Shadow.Color = 13421772
          Marks.Shadow.HorizSize = 2
          Marks.Shadow.VertSize = 2
          Marks.Visible = True
          DataSource = qryPrevAPVendorAging
          Title = 'Umur Hutang Per Vendor'
          ValueFormat = '#.###,##'
          XLabelsSource = 'Memo'
          Gradient.Direction = gdRadial
          OtherSlice.Legend.Visible = False
          PiePen.Visible = False
          PieValues.Name = 'Pie'
          PieValues.Order = loNone
          PieValues.ValueSource = 'Amount'
        end
      end
      object cgPrevDetailPI: TcxGrid
        Left = 257
        Top = 0
        Width = 331
        Height = 264
        Align = alClient
        TabOrder = 1
        object cgvPrevDetailPI: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevPI
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'outstandingtotalamount'
              Column = cgvPrevDetailPIoutstandingtotalamount
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cgvPrevDetailPIpurchaseinvoiceid: TcxGridDBColumn
            Caption = 'Nota'
            DataBinding.FieldName = 'purchaseinvoiceid'
            Options.Filtering = False
          end
          object cgvPrevDetailPIpurchaseinvoicedate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'purchaseinvoicedate'
            Options.Filtering = False
            Width = 80
          end
          object cgvPrevDetailPIJatuhTempo: TcxGridDBColumn
            Caption = 'Jatuh Tempo'
            DataBinding.FieldName = 'JatuhTempo'
            Options.Filtering = False
            Width = 80
          end
          object cgvPrevDetailPIpurchaseinvoiceidinternal: TcxGridDBColumn
            Caption = 'No Nota Internal'
            DataBinding.FieldName = 'purchaseinvoiceidinternal'
            Options.Filtering = False
            Width = 100
          end
          object cgvPrevDetailPIoutletid: TcxGridDBColumn
            Caption = 'Outlet'
            DataBinding.FieldName = 'outletid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevOutlet
            Properties.KeyFieldNames = 'OutletId'
            Properties.ListFieldItem = dmGeneral.cgvPrevOutletOutletName
            Options.Filtering = False
          end
          object cgvPrevDetailPItotalamount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'totalamount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
            Width = 100
          end
          object cgvPrevDetailPIoutstandingtotalamount: TcxGridDBColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'outstandingtotalamount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
            Width = 100
          end
          object cgvPrevDetailPIPeriodeJatuhTempo: TcxGridDBColumn
            Caption = 'Umur Hutang'
            DataBinding.FieldName = 'PeriodeJatuhTempo'
            Visible = False
            GroupIndex = 0
            Options.Filtering = False
            Width = 120
          end
        end
        object cgvPrevDetailPP: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevPP
          DataController.DetailKeyFieldNames = 'purchaseinvoiceid'
          DataController.MasterKeyFieldNames = 'purchaseinvoiceid'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevDetailPPpurchasepaymentdate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'purchasepaymentdate'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cgvPrevDetailPPpurchasepaymentid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'purchasepaymentid'
            Visible = False
          end
          object cgvPrevDetailPPpurchaseinvoiceid: TcxGridDBColumn
            Caption = 'Nota'
            DataBinding.FieldName = 'purchaseinvoiceid'
            Visible = False
          end
          object cgvPrevDetailPPpaymenttypename: TcxGridDBColumn
            Caption = 'Pembayaran'
            DataBinding.FieldName = 'paymenttypename'
          end
          object cgvPrevDetailPPgironumber: TcxGridDBColumn
            Caption = 'No Giro'
            DataBinding.FieldName = 'gironumber'
          end
          object cgvPrevDetailPPreferenceid: TcxGridDBColumn
            Caption = 'Kas Bank Ref'
            DataBinding.FieldName = 'referenceid'
          end
          object cgvPrevDetailPPamount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'amount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPrevDetailPPemployeename: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'employeename'
            Visible = False
          end
        end
        object cgPrevDetailPILevel1: TcxGridLevel
          GridView = cgvPrevDetailPI
          object cgPrevDetailPILevel2: TcxGridLevel
            GridView = cgvPrevDetailPP
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 249
        Top = 0
        Width = 4
        Height = 264
        HotZoneClassName = 'TcxXPTaskBarStyle'
        Control = DBChart2
      end
    end
  end
  object dsPrevAccountPayable: TDataSource [6]
    DataSet = qryPrevAccountPayable
    Left = 200
    Top = 144
  end
  object dsPrevAPAging: TDataSource [7]
    DataSet = qryPrevAPAging
    Left = 200
    Top = 208
  end
  object dsPrevAPVendorAging: TDataSource [8]
    DataSet = qryPrevAPVendorAging
    Left = 200
    Top = 240
  end
  object dsPrevPI: TDataSource [9]
    DataSet = qryPrevPI
    Left = 200
    Top = 272
  end
  object dsPrevPP: TDataSource [10]
    DataSet = qryPrevPP
    Left = 200
    Top = 304
  end
  object qryPrevAccountPayable: TUniQuery [11]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  a.VendorId, a.VendorName, a.Address, b.CityName,'
      '  c.CategoryName, a.CreditLimit,'
      
        '  fnGetAPBalanceVendor(a.VendorId, :Year, :Month, d.CurrencyId) ' +
        'as Amount,'
      
        '  fnGetAPBalanceVendorRp(a.VendorId, :Year, :Month, d.CurrencyId' +
        ') as AmountRp,'
      
        '  fnGetARBalanceVendor(a.VendorId, :Year, :Month, d.CurrencyId) ' +
        'as AR,'
      
        '  fnGetARBalanceVendorRp(a.VendorId, :Year, :Month, d.CurrencyId' +
        ') as ARRp,'
      '  d.CurrencyId'
      'from Vendor a'
      'left join City b on a.CityId = b.CityId '
      'left join Category c on a.CategoryId = c.CategoryId'
      ', CurrencyMaster d'
      ''
      'order by a.VendorName')
    Left = 168
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'Month'
      end>
  end
  object qryPrevAPCard: TUniQuery [12]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      
        '  GetFirstDateOfMonth(cast(:TransactionDate as date)) as Transac' +
        'tionDate,'
      '  '#39'Saldo Awal'#39' as Transaksi,'
      '  '#39'Saldo Awal'#39' as Memo,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  '#39' '#39' as InvoiceId,'
      '  '#39' '#39' as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  cast(1 as currency) as Kurs,'
      '  cast(0 as currency) as Debit,'
      '  cast(0 as currency) as DebitRp,'
      
        '  fnGetAPOpeningBalanceVendor(:VendorId, :Year, :Month, :Currenc' +
        'yId) as Credit,'
      
        '  fnGetAPOpeningBalanceVendorRp(:VendorId, :Year, :Month, :Curre' +
        'ncyId) as CreditRp,'
      '  0 as OrderNo,'
      '  0 as SubOrderNo'
      ''
      'union all'
      ''
      'select'
      '  a.PurchaseInvoiceDate as TransactionDate,'
      '  '#39'Pembelian'#39' as Transaksi,'
      
        '  '#39'Jatuh tempo '#39' || a.PurchaseInvoiceDate + a.InvoiceDueDay as M' +
        'emo,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  a.PurchaseInvoiceId as InvoiceId,'
      '  a.VendorPurchaseInvoiceId as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  a.Kurs,'
      '  cast(0 as currency) as Debit,'
      '  cast(0 as currency) as DebitRp,'
      '  a.TotalAmount as Credit,'
      '  (a.TotalAmount * a.Kurs) as CreditRp,'
      '  1 as OrderNo,'
      '  1 as SubOrderNo'
      'from PurchaseInvoiceHd a'
      'where a.VendorId = :VendorId'
      'and extract(year from a.PurchaseInvoiceDate) = :Year'
      'and extract(month from a.PurchaseInvoiceDate) = :Month'
      'and a.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  b.PurchasePaymentDate as TransactionDate,'
      '  c.PaymentTypeName as Transaksi,'
      '  b.StatementMemo as Memo,'
      '  IsVarcharNull(a.ReferenceId, '#39#39') as CashBankRef,'
      '  case'
      
        '     when e.ExternalId is null then IsVarcharNull(f.ExternalId, ' +
        #39#39')'
      '  else'
      '     e.ExternalId'
      '  end as CashBankExternal,'
      '  a.PurchaseInvoiceId as InvoiceId,'
      '  d.VendorPurchaseInvoiceId as InvoiceIdExt,'
      '  a.PurchasePaymentId as PaymentId,'
      '  a.Kurs,'
      '  a.Amount as Debit,'
      '  (a.Amount * a.Kurs) as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  1 as OrderNo,'
      '  2 as SubOrderNo'
      'from PurchasePaymentDt a'
      
        'left join PurchasePayment b on a.PurchasePaymentId = b.PurchaseP' +
        'aymentId'
      'left join PaymentType c on a.PaymentTypeId = c.PaymentTypeId'
      
        'left join PurchaseInvoiceHd d on a.PurchaseInvoiceId = d.Purchas' +
        'eInvoiceId'
      
        'left join CashTransaction e on a.ReferenceId = e.CashTransaction' +
        'Id'
      
        'left join BankTransaction f on a.ReferenceId = f.BankTransaction' +
        'Id'
      'where b.VendorId = :VendorId'
      'and extract(year from b.PurchasePaymentDate) = :Year'
      'and extract(month from b.PurchasePaymentDate) = :Month'
      'and b.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  a.APAdjustmentVendorDate as TransactionDate,'
      '  '#39'Selisih Kurs (+)'#39' as Transaksi,'
      '  a.Memo,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  a.APAdjustmentVendorId as InvoiceId,'
      '  a.ExternalId as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  cast(1 as currency) as Kurs,'
      '  cast(0 as currency) as Debit,'
      '  cast(0 as currency) as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  a.Amount as CreditRp,'
      '  1 as OrderNo,'
      '  3 as SubOrderNo'
      'from APAdjustmentVendor a'
      'where a.VendorId = :VendorId'
      'and extract(year from a.APAdjustmentVendorDate) = :Year'
      'and extract(month from a.APAdjustmentVendorDate) = :Month'
      'and a.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      'and a.Amount > 0'
      ''
      'union all'
      ''
      'select'
      '  a.APAdjustmentVendorDate as TransactionDate,'
      '  '#39'Selisih Kurs (-)'#39' as Transaksi,'
      '  a.Memo,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  a.APAdjustmentVendorId as InvoiceId,'
      '  a.ExternalId as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  cast(1 as currency) as Kurs,'
      '  cast(0 as currency) as Debit,'
      '  Abs(a.Amount) as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  1 as OrderNo,'
      '  3 as SubOrderNo'
      'from APAdjustmentVendor a'
      'where a.VendorId = :VendorId'
      'and extract(year from a.APAdjustmentVendorDate) = :Year'
      'and extract(month from a.APAdjustmentVendorDate) = :Month'
      'and a.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      'and a.Amount < 0'
      ''
      'order by OrderNo, TransactionDate, SubOrderNo')
    Left = 168
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TransactionDate'
      end
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'Month'
      end
      item
        DataType = ftUnknown
        Name = 'CurrencyId'
      end>
  end
  object qryPrevARCard: TUniQuery [13]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      
        '  GetFirstDateOfMonth(cast(:TransactionDate as date)) as Transac' +
        'tionDate,'
      '  '#39'Saldo Awal'#39' as Transaksi,'
      '  '#39'Saldo Awal'#39' as Memo,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  '#39' '#39' as InvoiceId,'
      '  '#39' '#39' as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  cast(1 as currency) as Kurs,'
      
        '  fnGetAROpeningBalanceVendor(:VendorId, :Year, :Month, :Currenc' +
        'yId) as Debit,'
      
        '  fnGetAROpeningBalanceVendorRp(:VendorId, :Year, :Month, :Curre' +
        'ncyId) as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  0 as OrderNo,'
      '  0 as SubOrderNo'
      ''
      'union all'
      ''
      'select'
      '  a.CashTransactionDate as TransactionDate,'
      '  b.CashBankTransactionTypeName as Transaksi,'
      '  a.Memo  as Memo,'
      '  a.CashTransactionId as CashBankRef,'
      '  a.ExternalId as CashBankExternal,'
      '  '#39' '#39' as InvoiceId,'
      '  '#39' '#39' as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  a.Kurs,'
      '  a.Amount as Debit,'
      '  (a.Amount * a.Kurs) as Debit,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  1 as OrderNo,'
      '  1 as SubOrderNo'
      'from CashTransaction a'
      
        'left join CashBankTransactionType b on (a.CashBankTransactionTyp' +
        'eId = b.CashBankTransactionTypeId)'
      'where a.VendorId = :VendorId'
      'and a.StatusApprove = '#39'1'#39
      'and a.CashBankTransactionTypeId = '#39'C0005'#39
      'and extract(year from a.CashTransactionDate) = :Year'
      'and extract(month from a.CashTransactionDate) = :Month'
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  a.CashTransactionDate as TransactionDate,'
      '  b.CashBankTransactionTypeName as Transaksi,'
      '  a.Memo  as Memo,'
      '  a.CashTransactionId as CashBankRef,'
      '  a.ExternalId as CashBankExternal,'
      '  '#39' '#39' as InvoiceId,'
      '  '#39' '#39' as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  a.Kurs,'
      '  cast(0 as currency) as Debit,'
      '  cast(0 as currency) as DebitRp,'
      '  a.Amount as Credit,'
      '  (a.Amount * a.Kurs) as CreditRp,'
      '  1 as OrderNo,'
      '  1 as SubOrderNo'
      'from CashTransaction a'
      
        'left join CashBankTransactionType b on (a.CashBankTransactionTyp' +
        'eId = b.CashBankTransactionTypeId)'
      'where a.VendorId = :VendorId'
      'and a.StatusApprove = '#39'1'#39
      'and a.CashBankTransactionTypeId = '#39'C0006'#39
      'and extract(year from a.CashTransactionDate) = :Year'
      'and extract(month from a.CashTransactionDate) = :Month'
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  a.BankTransactionDate as TransactionDate,'
      '  b.CashBankTransactionTypeName as Transaksi,'
      '  a.Memo as Memo,'
      '  a.BankTransactionId as CashBankRef,'
      '  a.ExternalId as CashBankExternal,'
      '  '#39' '#39' as InvoiceId,'
      '  '#39' '#39' as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  a.Kurs,'
      '  a.Amount as Debit,'
      '  (a.Amount * a.Kurs) as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  1 as OrderNo,'
      '  1 as SubOrderNo'
      'from BankTransaction a'
      
        'left join CashBankTransactionType b on (a.CashBankTransactionTyp' +
        'eId = b.CashBankTransactionTypeId)'
      'where a.VendorId = :VendorId'
      'and a.StatusApprove = '#39'1'#39
      'and a.CashBankTransactionTypeId = '#39'B0005'#39
      'and extract(year from a.BankTransactionDate) = :Year'
      'and extract(month from a.BankTransactionDate) = :Month'
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  a.BankTransactionDate as TransactionDate,'
      '  b.CashBankTransactionTypeName as Transaksi,'
      '  a.Memo as Memo,'
      '  a.BankTransactionId as CashBankRef,'
      '  a.ExternalId as CashBankExternal,'
      '  '#39' '#39' as InvoiceId,'
      '  '#39' '#39' as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  a.Kurs,'
      '  cast(0 as currency) as Debit,'
      '  cast(0 as currency) as DebitRp,'
      '  a.Amount as Credit,'
      '  (a.Amount * a.Kurs) as CreditRp,'
      '  1 as OrderNo,'
      '  1 as SubOrderNo'
      'from BankTransaction a'
      
        'left join CashBankTransactionType b on (a.CashBankTransactionTyp' +
        'eId = b.CashBankTransactionTypeId)'
      'where a.VendorId = :VendorId'
      'and a.StatusApprove = '#39'1'#39
      'and a.CashBankTransactionTypeId = '#39'B0006'#39
      'and extract(year from a.BankTransactionDate) = :Year'
      'and extract(month from a.BankTransactionDate) = :Month'
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select '
      '  a.PurchaseReturnDate as TransactionDate,'
      '  '#39'Retur Pembelian'#39' as Transaksi,'
      '  '#39'Retur Pembelian'#39' as Memo,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  a.PurchaseReturnId as InvoiceId,'
      '  a.VendorPurchaseReturnId as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  a.Kurs,'
      '  a.TotalAmount as Debit,'
      '  (a.TotalAmount * a.Kurs) as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  1 as OrderNo,'
      '  2 as SubOrderNo'
      'from PurchaseReturnHd a'
      'where a.VendorId = :VendorId'
      'and extract(year from a.PurchaseReturnDate) = :Year'
      'and extract(month from a.PurchaseReturnDate) = :Month'
      'and a.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select '
      '  b.PurchaseReturnPaymentDate as TransactionDate,'
      '  c.PaymentTypeName as Transaksi,'
      '  '#39'Pembayaran Retur'#39' as Memo,  '
      '  IsVarcharNull(a.ReferenceId, '#39#39') as CashBankRef,'
      '  case '
      
        '     when e.ExternalId is null then IsVarcharNull(f.ExternalId, ' +
        #39#39') '
      '  else '
      '     e.ExternalId'
      '  end as CashBankExternal, '
      '  a.PurchaseReturnId as InvoiceId,'
      '  d.VendorPurchaseReturnId as InvoiceIdExt,'
      '  a.PurchaseReturnPaymentId as PaymentId,'
      '  a.Kurs,'
      '  cast(0 as currency) as Debit,'
      '  cast(0 as currency) as DebitRp,'
      '  a.Amount as Credit,'
      '  (a.Amount * a.Kurs) as CreditRp,'
      '  1 as OrderNo,'
      '  3 as SubOrderNo'
      'from PurchaseReturnPaymentDt a'
      
        'left join PurchaseReturnPaymentHd b on a.PurchaseReturnPaymentId' +
        ' = b.PurchaseReturnPaymentId'
      'left join PaymentType c on a.PaymentTypeId = c.PaymentTypeId'
      
        'left join PurchaseReturnHd d on a.PurchaseReturnId = d.PurchaseR' +
        'eturnId'
      
        'left join CashTransaction e on a.ReferenceId = e.CashTransaction' +
        'Id'
      
        'left join BankTransaction f on a.ReferenceId = f.BankTransaction' +
        'Id'
      'where b.VendorId = :VendorId'
      'and extract(year from b.PurchaseReturnPaymentDate) = :Year'
      'and extract(month from b.PurchaseReturnPaymentDate) = :Month'
      'and b.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      '   '
      'select '
      '  b.PurchaseReturnPaymentDate as TransactionDate,'
      '  c.PaymentTypeName as Transaksi,'
      '  '#39'Tambah Deposit (Pembayaran Retur)'#39' as Memo,'
      '  IsVarcharNull(a.ReferenceId, '#39#39') as CashBankRef,'
      '  case '
      
        '     when e.ExternalId is null then IsVarcharNull(f.ExternalId, ' +
        #39#39') '
      '  else '
      '     e.ExternalId'
      '  end as CashBankExternal, '
      '  a.PurchaseReturnId as InvoiceId,'
      '  d.VendorPurchaseReturnId as InvoiceIdExt,'
      '  a.PurchaseReturnPaymentId as PaymentId,'
      '  a.Kurs,'
      '  a.Amount as Debit,'
      '  (a.Amount * a.Kurs) as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  1 as OrderNo,'
      '  4 as SubOrderNo'
      'from PurchaseReturnPaymentDt a'
      
        'left join PurchaseReturnPaymentHd b on a.PurchaseReturnPaymentId' +
        ' = b.PurchaseReturnPaymentId'
      'left join PaymentType c on a.PaymentTypeId = c.PaymentTypeId'
      
        'left join PurchaseReturnHd d on a.PurchaseReturnId = d.PurchaseR' +
        'eturnId'
      
        'left join CashTransaction e on a.ReferenceId = e.CashTransaction' +
        'Id'
      
        'left join BankTransaction f on a.ReferenceId = f.BankTransaction' +
        'Id'
      'where b.VendorId = :VendorId'
      'and extract(year from b.PurchaseReturnPaymentDate) = :Year'
      'and extract(month from b.PurchaseReturnPaymentDate) = :Month'
      'and b.StatusApprove = '#39'1'#39
      'and a.PaymentTypeId = '#39'PT005'#39
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  b.PurchasePaymentDate as TransactionDate,'
      '  c.PaymentTypeName as Transaksi,'
      '  '#39'Potong Deposit (Pembayaran Nota)'#39' as Memo,'
      '  IsVarcharNull(a.ReferenceId, '#39#39') as CashBankRef,'
      '  case '
      
        '     when e.ExternalId is null then IsVarcharNull(f.ExternalId, ' +
        #39#39') '
      '  else '
      '     e.ExternalId'
      '  end as CashBankExternal, '
      '  a.PurchaseInvoiceId as InvoiceId,'
      '  d.VendorPurchaseInvoiceId as InvoiceIdExt,'
      '  a.PurchasePaymentId as PaymentId,'
      '  a.Kurs,'
      '  cast(0 as currency) as Debit,'
      '  cast(0 as currency) as DebitRp,'
      '  a.Amount as Credit,'
      '  (a.Amount * a.Kurs) as CreditRp,'
      '  1 as OrderNo,'
      '  5 as SubOrderNo'
      'from PurchasePaymentDt a'
      
        'left join PurchasePayment b on a.PurchasePaymentId = b.PurchaseP' +
        'aymentId'
      'left join PaymentType c on a.PaymentTypeId = c.PaymentTypeId'
      
        'left join PurchaseInvoiceHd d on a.PurchaseInvoiceId = d.Purchas' +
        'eInvoiceId'
      
        'left join CashTransaction e on a.ReferenceId = e.CashTransaction' +
        'Id'
      
        'left join BankTransaction f on a.ReferenceId = f.BankTransaction' +
        'Id'
      'where b.VendorId = :VendorId'
      'and extract(year from b.PurchasePaymentDate) = :Year'
      'and extract(month from b.PurchasePaymentDate) = :Month'
      'and b.StatusApprove = '#39'1'#39
      'and a.PaymentTypeId = '#39'PT003'#39
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  a.ARAdjustmentVendorDate as TransactionDate,'
      '  '#39'Selisih Kurs (+)'#39' as Transaksi,'
      '  a.Memo,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  a.ARAdjustmentVendorId as InvoiceId,'
      '  a.ExternalId as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  cast(1 as currency) as Kurs,'
      '  cast(0 as currency) as Debit,'
      '  a.Amount as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  1 as OrderNo,'
      '  6 as SubOrderNo'
      'from ARAdjustmentVendor a'
      'where a.VendorId = :VendorId'
      'and extract(year from a.ARAdjustmentVendorDate) = :Year'
      'and extract(month from a.ARAdjustmentVendorDate) = :Month'
      'and a.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      'and a.Amount > 0'
      ''
      'union all'
      ''
      'select'
      '  a.ARAdjustmentVendorDate as TransactionDate,'
      '  '#39'Selisih Kurs (+)'#39' as Transaksi,'
      '  a.Memo,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  a.ARAdjustmentVendorId as InvoiceId,'
      '  a.ExternalId as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  cast(1 as currency) as Kurs,'
      '  cast(0 as currency) as Debit,'
      '  cast(0 as currency) as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  abs(a.Amount) as CreditRp,'
      '  1 as OrderNo,'
      '  6 as SubOrderNo'
      'from ARAdjustmentVendor a'
      'where a.VendorId = :VendorId'
      'and extract(year from a.ARAdjustmentVendorDate) = :Year'
      'and extract(month from a.ARAdjustmentVendorDate) = :Month'
      'and a.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      'and a.Amount < 0'
      ''
      'order by OrderNo, TransactionDate, SubOrderNo')
    Left = 200
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TransactionDate'
      end
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end
      item
        DataType = ftUnknown
        Name = 'Year'
      end
      item
        DataType = ftUnknown
        Name = 'Month'
      end
      item
        DataType = ftUnknown
        Name = 'CurrencyId'
      end>
  end
  object qryPrevAPAging: TUniQuery [14]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  cast('#39'0-30 hari'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount  '
      'from PurchaseInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      
        'and Date_Part('#39'days'#39', GetDate() - PurchaseInvoiceDate) between 0' +
        ' and 31'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  cast('#39'31-60 hari'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from PurchaseInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      
        'and Date_Part('#39'day'#39', GetDate() - PurchaseInvoiceDate) between 31' +
        ' and 60'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  cast('#39'61-90 hari'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from PurchaseInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      
        'and Date_Part('#39'day'#39', GetDate() - PurchaseInvoiceDate) between 61' +
        ' and 90'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  cast('#39'91 hari lebih'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from PurchaseInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and Date_Part('#39'day'#39', GetDate() - PurchaseInvoiceDate) >= 91'
      'and StatusApprove = '#39'1'#39)
    Left = 168
    Top = 208
  end
  object qryPrevAPVendorAging: TUniQuery [15]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  cast('#39'0-30 hari'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from PurchaseInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and VendorId = :VendorId'
      
        'and Date_Part('#39'day'#39', GetDate() - PurchaseInvoiceDate) between 0 ' +
        'and 30'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  cast('#39'31-60 hari'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from PurchaseInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and VendorId = :VendorId'
      
        'and Date_Part('#39'day'#39', GetDate() - PurchaseInvoiceDate) between 31' +
        ' and 60'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  cast('#39'61-90 hari'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from PurchaseInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and VendorId = :VendorId'
      
        'and Date_Part('#39'day'#39', GetDate() - PurchaseInvoiceDate) between 61' +
        ' and 90'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  cast('#39'91 hari lebih'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from PurchaseInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and VendorId = :VendorId'
      'and Date_Part('#39'day'#39', GetDate() - PurchaseInvoiceDate) >= 91'
      'and StatusApprove = '#39'1'#39)
    Left = 168
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end>
  end
  object qryPrevPI: TUniQuery [16]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  *, '#39'0-30 hari'#39' as PeriodeJatuhTempo,'
      '  (Purchaseinvoicedate + invoicedueday) as JatuhTempo, '
      '  '#39'0'#39' as NoOrder'
      'from PurchaseInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and VendorId = :VendorId'
      
        'and Date_Part('#39'day'#39', GetDate() - PurchaseInvoiceDate) between 0 ' +
        'and 30'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  *, '#39'31-60 hari'#39' as PeriodeJatuhTempo,'
      '  (Purchaseinvoicedate + invoicedueday) as JatuhTempo, '
      '  '#39'1'#39' as NoOrder'
      'from PurchaseInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and VendorId = :VendorId'
      
        'and Date_Part('#39'day'#39', GetDate() - PurchaseInvoiceDate) between 31' +
        ' and 60'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  *, '#39'61-90 hari'#39' as PeriodeJatuhTempo,'
      '  (Purchaseinvoicedate + invoicedueday) as JatuhTempo, '
      '  '#39'2'#39' as NoOrder  '
      'from PurchaseInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and VendorId = :VendorId'
      
        'and Date_Part('#39'day'#39', GetDate() - PurchaseInvoiceDate) between 61' +
        ' and 90'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  *, '#39'91 hari lebih'#39' as PeriodeJatuhTempo,'
      '  (Purchaseinvoicedate + invoicedueday) as JatuhTempo, '
      '  '#39'3'#39' as NoOrder  '
      'from PurchaseInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and VendorId = :VendorId'
      'and Date_Part('#39'day'#39', GetDate() - PurchaseInvoiceDate) >= 91'
      'and StatusApprove = '#39'1'#39
      ''
      'order by NoOrder, PurchaseInvoiceId')
    Left = 168
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end>
  end
  object qryPrevPP: TUniQuery [17]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.*, d.PaymentTypeName,'
      '  c.purchasepaymentdate, e.EmployeeName'
      'from PurchasePaymentDt a'
      
        'left join PurchaseInvoiceHd b on a.PurchaseInvoiceId = b.Purchas' +
        'eInvoiceId'
      
        'left join PurchasePayment c on a.PurchasePaymentId = c.PurchaseP' +
        'aymentId'
      'left join PaymentType d on a.PaymentTypeId = d.PaymentTypeId'
      'left join Employee e on a.EmployeeId = e.EmployeeId'
      'where b.OutstandingTotalAmount <> 0'
      'and b.VendorId = :VendorId'
      'and b.StatusApprove <> '#39'2'#39
      'and c.StatusApprove <> '#39'2'#39)
    Left = 168
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end>
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
