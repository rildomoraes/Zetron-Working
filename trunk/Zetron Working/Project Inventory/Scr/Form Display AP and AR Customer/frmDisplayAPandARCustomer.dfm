inherited fmDisplayAPandARCustomer: TfmDisplayAPandARCustomer
  Caption = 'Display Hutang Piutang ke Customer'
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
    object imgInfo: TImage [1]
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
    object lblInfo: TLabel [2]
      Left = 240
      Top = 5
      Width = 98
      Height = 13
      Caption = 'Melebihi batas kredit'
      Transparent = True
    end
    inherited cbYear: TcxComboBox
      Left = 124
      ExplicitLeft = 124
    end
  end
  object pcAccountReceivable: TcxPageControl [2]
    Left = 0
    Top = 75
    Width = 592
    Height = 292
    ActivePage = tsAccountReceivable
    Align = alClient
    TabOrder = 2
    OnChange = pcAccountReceivableChange
    ClientRectBottom = 286
    ClientRectLeft = 3
    ClientRectRight = 586
    ClientRectTop = 26
    object tsAccountReceivable: TcxTabSheet
      Caption = '&1. Hutang && Piutang '
      ImageIndex = 0
      object cgPrevAccountReceivable: TcxGrid
        Left = 0
        Top = 0
        Width = 583
        Height = 260
        Align = alClient
        TabOrder = 0
        object cgvPrevAccountReceivable: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevAccountReceivable
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'Amount'
              Column = cgvPrevAccountReceivableAmount
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'AP'
              Column = cgvPrevAccountReceivableAP
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'Amount'
              Column = cgvPrevAccountReceivableAmount
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              FieldName = 'AP'
              Column = cgvPrevAccountReceivableAP
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.BandHeaders = False
          Styles.OnGetContentStyle = cgvPrevAccountReceivableStylesGetContentStyle
          Bands = <
            item
              FixedKind = fkLeft
            end
            item
            end>
          object cgvPrevAccountReceivableCustomerid: TcxGridDBBandedColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'Customerid'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCustomername: TcxGridDBBandedColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'Customername'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivablecreditlimit: TcxGridDBBandedColumn
            Caption = 'Batas Kredit'
            DataBinding.FieldName = 'creditlimit'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCurrencyId: TcxGridDBBandedColumn
            Caption = 'Mata Uang'
            DataBinding.FieldName = 'CurrencyId'
            Visible = False
            GroupIndex = 0
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableAP: TcxGridDBBandedColumn
            Caption = 'Hutang'
            DataBinding.FieldName = 'AP'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableAmount: TcxGridDBBandedColumn
            Caption = 'Piutang'
            DataBinding.FieldName = 'Amount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Styles.Content = dmGlobal.stYellowLight
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableaddress: TcxGridDBBandedColumn
            Caption = 'Alamat'
            DataBinding.FieldName = 'address'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivablecityname: TcxGridDBBandedColumn
            Caption = 'Kota'
            DataBinding.FieldName = 'cityname'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivablecategoryname: TcxGridDBBandedColumn
            Caption = 'Kategori'
            DataBinding.FieldName = 'categoryname'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object cgPrevAccountReceivableLevel1: TcxGridLevel
          GridView = cgvPrevAccountReceivable
        end
      end
    end
    object tsAccountPayableCard: TcxTabSheet
      Caption = '&2. Kartu Hutang'
      ImageIndex = 4
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
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardInvoiceIdExt: TcxGridBandedColumn
            Caption = 'Nota Int'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardPaymentId: TcxGridBandedColumn
            Caption = 'Pelunasan'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cgvPrevAccountPayableCardKurs: TcxGridBandedColumn
            Caption = 'Kurs'
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            FooterAlignmentHorz = taRightJustify
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
      ImageIndex = 1
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
              Column = cgvPrevAccountReceivableCardCredit
            end
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Column = cgvPrevAccountReceivableCardDebitRp
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
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardMemo: TcxGridBandedColumn
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
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardInvoiceIdExt: TcxGridBandedColumn
            Caption = 'Nota Int'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardPaymentId: TcxGridBandedColumn
            Caption = 'Pembayaran'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cgvPrevAccountReceivableCardKurs: TcxGridBandedColumn
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
    object tsAccountReceivableAging: TcxTabSheet
      Caption = '&4. Umur Piutang'
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
          'Umur Piutang')
        Title.Transparent = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 13421772
        BottomAxis.Grid.Visible = False
        Frame.Visible = False
        LeftAxis.Axis.Color = 4210752
        LeftAxis.AxisValuesFormat = '#.###.##'
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
          DataSource = qryPrevARAging
          Title = 'Umur Piutang'
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
    end
    object tsAccountReceivableCustomerAging: TcxTabSheet
      Caption = '&5. Umur Piutang (Per Customer)'
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
          'Umur Piutang Per Customer')
        Title.Transparent = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 13421772
        BottomAxis.Grid.Visible = False
        Frame.Visible = False
        LeftAxis.Axis.Color = 4210752
        LeftAxis.AxisValuesFormat = '#.###.##'
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
          32
          15
          32
          15)
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
          DataSource = qryPrevARCustAging
          Title = 'Umur Piutang Per Customer'
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
      object cgPrevDetailSI: TcxGrid
        Left = 257
        Top = 0
        Width = 331
        Height = 264
        Align = alClient
        TabOrder = 1
        object cgvPrevDetailSI: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevSI
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0.00;-#,##0.00'
              Kind = skSum
              Position = spFooter
              FieldName = 'outstandingtotalamount'
              Column = cgvPrevDetailSIoutstandingtotalamount
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cgvPrevDetailSIsalesinvoiceid: TcxGridDBColumn
            Caption = 'Nota'
            DataBinding.FieldName = 'salesinvoiceid'
            Options.Filtering = False
          end
          object cgvPrevDetailSIsalesinvoicedate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'salesinvoicedate'
            Options.Filtering = False
            Width = 80
          end
          object cgvPrevDetailSIJatuhTempo: TcxGridDBColumn
            Caption = 'Jatuh Tempo'
            DataBinding.FieldName = 'JatuhTempo'
            Options.Filtering = False
            Width = 80
          end
          object cgvPrevDetailSIsalesinvoiceidinternal: TcxGridDBColumn
            Caption = 'No Nota Internal'
            DataBinding.FieldName = 'salesinvoiceidinternal'
            Options.Filtering = False
            Width = 100
          end
          object cgvPrevDetailSIoutletid: TcxGridDBColumn
            Caption = 'Outlet'
            DataBinding.FieldName = 'outletid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGeneral.cgvPrevOutlet
            Properties.KeyFieldNames = 'OutletId'
            Properties.ListFieldItem = dmGeneral.cgvPrevOutletOutletName
            Options.Filtering = False
          end
          object cgvPrevDetailSItotalamount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'totalamount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
            Width = 100
          end
          object cgvPrevDetailSIoutstandingtotalamount: TcxGridDBColumn
            Caption = 'Sisa'
            DataBinding.FieldName = 'outstandingtotalamount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Filtering = False
            Width = 100
          end
          object cgvPrevDetailSIPeriodeJatuhTempo: TcxGridDBColumn
            Caption = 'Umur Piutang'
            DataBinding.FieldName = 'PeriodeJatuhTempo'
            Visible = False
            GroupIndex = 0
            Options.Filtering = False
            Width = 120
          end
        end
        object cgvPrevDetailSP: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPrevSP
          DataController.DetailKeyFieldNames = 'salesinvoiceid'
          DataController.MasterKeyFieldNames = 'salesinvoiceid'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cgvPrevDetailSPsalespaymentdate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'salespaymentdate'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cgvPrevDetailSPsalespaymentid: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'salespaymentid'
            Visible = False
          end
          object cgvPrevDetailSPsalesinvoiceid: TcxGridDBColumn
            Caption = 'Nota'
            DataBinding.FieldName = 'salesinvoiceid'
            Visible = False
          end
          object cgvPrevDetailSPpaymenttypename: TcxGridDBColumn
            Caption = 'Pembayaran'
            DataBinding.FieldName = 'paymenttypename'
          end
          object cgvPrevDetailSPgironumber: TcxGridDBColumn
            Caption = 'No Giro'
            DataBinding.FieldName = 'gironumber'
          end
          object cgvPrevDetailSPreferenceid: TcxGridDBColumn
            Caption = 'Kas Bank Ref'
            DataBinding.FieldName = 'referenceid'
          end
          object cgvPrevDetailSPamount: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'amount'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cgvPrevDetailSPemployeename: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'employeename'
            Visible = False
          end
        end
        object cgPrevDetailSILevel1: TcxGridLevel
          GridView = cgvPrevDetailSI
          object cgPrevDetailSILevel2: TcxGridLevel
            GridView = cgvPrevDetailSP
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
  object dsPrevAccountReceivable: TDataSource [6]
    DataSet = qryPrevAccountReceivable
    Left = 200
    Top = 144
  end
  object dsPrevARAging: TDataSource [7]
    DataSet = qryPrevARAging
    Left = 200
    Top = 208
  end
  object dsPrevARCustAging: TDataSource [8]
    DataSet = qryPrevARCustAging
    Left = 200
    Top = 240
  end
  object dsPrevSI: TDataSource [9]
    DataSet = qryPrevSI
    Left = 200
    Top = 272
  end
  object dsPrevSP: TDataSource [10]
    DataSet = qryPrevSP
    Left = 200
    Top = 304
  end
  object qryPrevAccountReceivable: TUniQuery [11]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  a.CustomerId, a.CustomerName, a.Address, b.CityName,'
      '  c.CategoryName, '
      '  a.CreditLimit,'
      
        '  fnGetARBalanceCustomer(a.CustomerId, :Year, :Month, d.Currency' +
        'Id) as Amount,'
      
        '  fnGetARBalanceCustomerRp(a.CustomerId, :Year, :Month, d.Curren' +
        'cyId) as AmountRp,'
      
        '  fnGetAPBalanceCustomer(a.CustomerId, :Year, :Month, d.Currency' +
        'Id) as AP,'
      
        '  fnGetAPBalanceCustomerRp(a.CustomerId, :Year, :Month, d.Curren' +
        'cyId) as APRp,'
      '  d.CurrencyId'
      'from Customer a'
      'left join City b on a.CityId = b.CityId '
      'left join Category c on a.CategoryId = c.CategoryId'
      ', CurrencyMaster d'
      ''
      'order by a.CustomerName')
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
  object qryPrevARCard: TUniQuery [12]
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
      
        '  fnGetAROpeningBalanceCustomer(:Customer, :Year, :Month, :Curre' +
        'ncyId) as Debit,'
      
        '  fnGetAROpeningBalanceCustomer(:Customer, :Year, :Month, :Curre' +
        'ncyId) as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  0 as OrderNo,'
      '  0 as SubOrderNo'
      ''
      'union all'
      ''
      'select'
      '  a.SalesInvoiceDate as TransactionDate,'
      '  '#39'Penjualan'#39' as Transaksi,'
      
        '  '#39'(jatuh tempo '#39' || a.SalesInvoiceDate + a.InvoiceDueDay as Mem' +
        'o,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  a.SalesInvoiceId as InvoiceId,'
      '  a.SalesInvoiceIdInternal as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  a.Kurs,'
      '  a.TotalAmount as Debit,'
      '  (a.TotalAmount * Kurs)as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  1 as OrderNo,'
      '  1 as SubOrderNo'
      'from SalesInvoiceHd a'
      'where a.CustomerId = :Customer'
      'and extract(year from a.SalesInvoiceDate) = :Year'
      'and extract(month from a.SalesInvoiceDate) = :Month'
      'and a.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  b.SalesPaymentDate as TransactionDate,'
      '  c.PaymentTypeName as Transaksi,'
      '  b.StatementMemo as Memo,'
      '  IsVarcharNull(a.ReferenceId, '#39#39') as CashBankRef,'
      '  case'
      
        '     when e.ExternalId is null then IsVarcharNull(f.ExternalId, ' +
        #39#39')'
      '  else'
      '     e.ExternalId'
      '  end as CashBankExternal,'
      '  a.SalesInvoiceId as InvoiceId,'
      '  d.SalesInvoiceIdInternal as InvoiceIdExt,'
      '  a.SalesPaymentId as PaymentId,'
      '  a.Kurs,'
      '  cast(0 as currency) as Debit,'
      '  cast(0 as currency) as DebitRp,'
      '  a.Amount as Credit,'
      '  (a.Amount * a.Kurs) as CreditRp,'
      '  1 as OrderNo,'
      '  2 as SubOrderNo'
      'from SalesPaymentDt a'
      'left join SalesPayment b on a.SalesPaymentId = b.SalesPaymentId'
      'left join PaymentType c on a.PaymentTypeId = c.PaymentTypeId'
      
        'left join SalesInvoiceHd d on a.SalesInvoiceId = d.SalesInvoiceI' +
        'd'
      
        'left join CashTransaction e on a.ReferenceId = e.CashTransaction' +
        'Id'
      
        'left join BankTransaction f on a.ReferenceId = f.BankTransaction' +
        'Id'
      'where b.CustomerId = :Customer'
      'and extract(year from b.SalesPaymentDate) = :Year'
      'and extract(month from b.SalesPaymentDate) = :Month'
      'and b.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  a.APAdjustmentCustomerDate as TransactionDate,'
      '  '#39'Selisih Kurs (+)'#39' as Transaksi,'
      '  a.Memo,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  a.APAdjustmentCustomerId as InvoiceId,'
      '  a.ExternalId as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  cast(1 as currency) as Kurs,'
      '  cast(0 as currency) as Debit,'
      '  a.Amount as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  1 as OrderNo,'
      '  3 as SubOrderNo'
      'from APAdjustmentCustomer a'
      'where a.CustomerId = :CustomerId'
      'and extract(year from a.APAdjustmentCustomerDate) = :Year'
      'and extract(month from a.APAdjustmentCustomerDate) = :Month'
      'and a.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      'and a.Amount > 0'
      ''
      'union all'
      ''
      'select'
      '  a.APAdjustmentCustomerDate as TransactionDate,'
      '  '#39'Selisih Kurs (-)'#39' as Transaksi,'
      '  a.Memo,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  a.APAdjustmentCustomerId as InvoiceId,'
      '  a.ExternalId as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  cast(1 as currency) as Kurs,'
      '  cast(0 as currency) as Debit,'
      '  cast(0 as currency) as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  abs(a.Amount) as CreditRp,'
      '  1 as OrderNo,'
      '  3 as SubOrderNo'
      'from APAdjustmentCustomer a'
      'where a.CustomerId = :CustomerId'
      'and extract(year from a.APAdjustmentCustomerDate) = :Year'
      'and extract(month from a.APAdjustmentCustomerDate) = :Month'
      'and a.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      'and a.Amount < 0'
      ''
      'order by OrderNo, TransactionDate,  SubOrderNo')
    Left = 168
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TransactionDate'
      end
      item
        DataType = ftUnknown
        Name = 'Customer'
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
      end
      item
        DataType = ftUnknown
        Name = 'CustomerId'
      end>
  end
  object qryPrevAPCard: TUniQuery [13]
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
      
        '  fnGetAPOpeningBalanceCustomer(:CustomerId, :Year, :Month, :Cur' +
        'rencyId) as Credit,'
      
        '  fnGetAPOpeningBalanceCustomerRp(:CustomerId, :Year, :Month, :C' +
        'urrencyId) as CreditRp,'
      '  0 as OrderNo,'
      '  0 as SubOrderNo'
      ''
      'union all'
      ''
      'select'
      '  a.CashTransactionDate as TransactionDate,'
      '  b.CashBankTransactionTypeName as Transaksi,'
      '  a.Memo,'
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
      'where a.CustomerId = :CustomerId'
      'and a.StatusApprove = '#39'1'#39
      'and a.CashBankTransactionTypeId = '#39'C0003'#39
      'and extract(year from a.CashTransactionDate) = :Year'
      'and extract(month from a.CashTransactionDate) = :Month'
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  a.CashTransactionDate as TransactionDate,'
      '  b.CashBankTransactionTypeName as Transaksi,'
      '  a.Memo,'
      '  a.CashTransactionId as CashBankRef,'
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
      'from CashTransaction a'
      
        'left join CashBankTransactionType b on (a.CashBankTransactionTyp' +
        'eId = b.CashBankTransactionTypeId)'
      'where a.CustomerId = :CustomerId'
      'and a.StatusApprove = '#39'1'#39
      'and a.CashBankTransactionTypeId = '#39'C0004'#39
      'and extract(year from a.CashTransactionDate) = :Year'
      'and extract(month from a.CashTransactionDate) = :Month'
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  a.BankTransactionDate as TransactionDate,'
      '  b.CashBankTransactionTypeName as Transaksi,'
      '  a.Memo,'
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
      'where a.CustomerId = :CustomerId'
      'and a.StatusApprove = '#39'1'#39
      'and a.CashBankTransactionTypeId = '#39'B0003'#39
      'and extract(year from a.BankTransactionDate) = :Year'
      'and extract(month from a.BankTransactionDate) = :Month'
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  a.BankTransactionDate as TransactionDate,'
      '  b.CashBankTransactionTypeName as Transaksi,'
      '  a.Memo,'
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
      'where a.CustomerId = :CustomerId'
      'and a.StatusApprove = '#39'1'#39
      'and a.CashBankTransactionTypeId = '#39'B0004'#39
      'and extract(year from a.BankTransactionDate) = :Year'
      'and extract(month from a.BankTransactionDate) = :Month'
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  a.SalesReturnDate as TransactionDate,'
      '  '#39'Retur Penjualan'#39' as Transaksi,'
      '  '#39'Retur Penjualan'#39'  as Memo,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  a.SalesReturnId as InvoiceId,'
      '  a.SalesReturnIdInternal as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  a.Kurs,'
      '  cast(0 as currency) as Debit,'
      '  cast(0 as currency) as DebitRp,'
      '  a.TotalAmount as Credit,'
      '  (a.TotalAmount * a.Kurs) as CreditRp,'
      '  1 as OrderNo,'
      '  2 as SubOrderNo'
      'from SalesReturnHd a'
      'where a.CustomerId = :CustomerId'
      'and extract(year from a.SalesReturnDate) = :Year'
      'and extract(month from a.SalesReturnDate) = :Month'
      'and a.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  b.SalesReturnPaymentDate as TransactionDate,'
      '  c.PaymentTypeName as Transaksi,'
      '  '#39'Pembayaran Retur'#39' as Memo,'
      '  IsVarcharNull(a.ReferenceId, '#39#39')as CashBankRef,'
      '  case'
      
        '     when e.ExternalId is null then IsVarcharNull(f.ExternalId, ' +
        #39#39')'
      '  else'
      '     e.ExternalId'
      '  end as CashBankExternal,'
      '  a.SalesReturnId as InvoiceId,'
      '  d.SalesReturnIdInternal as InvoiceIdExt,'
      '  a.SalesReturnPaymentId as PaymentId,'
      '  a.Kurs,'
      '  a.Amount as Debit,'
      '  (a.Amount * a.Kurs) as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  1 as OrderNo,'
      '  3 as SubOrderNo'
      'from SalesReturnPaymentDt a'
      
        'left join SalesReturnPaymentHd b on a.SalesReturnPaymentId = b.S' +
        'alesReturnPaymentId'
      'left join PaymentType c on a.PaymentTypeId = c.PaymentTypeId'
      'left join SalesReturnHd d on a.SalesReturnId = d.SalesReturnId'
      
        'left join CashTransaction e on a.ReferenceId = e.CashTransaction' +
        'Id'
      
        'left join BankTransaction f on a.ReferenceId = f.BankTransaction' +
        'Id'
      'where b.CustomerId = :CustomerId'
      'and extract(year from b.SalesReturnPaymentDate) = :Year'
      'and extract(month from b.SalesReturnPaymentDate) = :Month'
      'and b.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  b.SalesReturnPaymentDate as TransactionDate,'
      '  c.PaymentTypeName as Transaksi,'
      '  '#39'Tambah Deposit (Pembayaran Retur)'#39' as Memo,'
      '  IsVarcharNull(a.ReferenceId, '#39#39') as CashBankRef,'
      '  case'
      
        '     when e.ExternalId is null then IsVarcharNull(f.ExternalId, ' +
        #39#39')'
      '  else'
      '     e.ExternalId'
      '  end as CashBankExternal,'
      '  a.SalesReturnId as InvoiceId,'
      '  d.SalesReturnIdInternal as InvoiceIdExt,'
      '  a.SalesReturnPaymentId as PaymentId,'
      '  a.Kurs,'
      '  cast(0 as currency) as Debit,'
      '  cast(0 as currency) as DebitRp,'
      '  a.Amount as Credit,'
      '  (a.Amount * a.Kurs) as CreditRp,'
      '  1 as OrderNo,'
      '  4 as SubOrderNo'
      'from SalesReturnPaymentDt a'
      
        'left join SalesReturnPaymentHd b on a.SalesReturnPaymentId = b.S' +
        'alesReturnPaymentId'
      'left join PaymentType c on a.PaymentTypeId = c.PaymentTypeId'
      'left join SalesReturnHd d on a.SalesReturnId = d.SalesReturnId'
      
        'left join CashTransaction e on a.ReferenceId = e.CashTransaction' +
        'Id'
      
        'left join BankTransaction f on a.ReferenceId = f.BankTransaction' +
        'Id'
      'where b.CustomerId = :CustomerId'
      'and extract(year from b.SalesReturnPaymentDate) = :Year'
      'and extract(month from b.SalesReturnPaymentDate) = :Month'
      'and b.StatusApprove = '#39'1'#39
      'and a.PaymentTypeId = '#39'PT006'#39
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  b.SalesPaymentDate as TransactionDate,'
      '  c.PaymentTypeName as Transaksi,'
      '  '#39'Potong Deposit (Pembayaran Nota)'#39' as Memo,'
      '  IsVarcharNull(a.ReferenceId, '#39#39') as CashBankRef,'
      '  case'
      
        '     when e.ExternalId is null then IsVarcharNull(f.ExternalId, ' +
        #39#39')'
      '  else'
      '     e.ExternalId'
      '  end as CashBankExternal,'
      '  a.SalesInvoiceId as InvoiceId,'
      '  d.SalesInvoiceIdInternal as InvoiceIdExt,'
      '  a.SalesPaymentId as PaymentId,'
      '  a.Kurs,'
      '  a.Amount as Debit,'
      '  (a.Amount * a.Kurs) as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  1 as OrderNo,'
      '  5 as SubOrderNo'
      'from SalesPaymentDt a'
      'left join SalesPayment b on a.SalesPaymentId = b.SalesPaymentId'
      'left join PaymentType c on a.PaymentTypeId = c.PaymentTypeId'
      
        'left join SalesInvoiceHd d on a.SalesInvoiceId = d.SalesInvoiceI' +
        'd'
      
        'left join CashTransaction e on a.ReferenceId = e.CashTransaction' +
        'Id'
      
        'left join BankTransaction f on a.ReferenceId = f.BankTransaction' +
        'Id'
      'where b.CustomerId = :CustomerId'
      'and extract(year from b.SalesPaymentDate) = :Year'
      'and extract(month from b.SalesPaymentDate) = :Month'
      'and b.StatusApprove = '#39'1'#39
      'and a.PaymentTypeId = '#39'PT004'#39
      'and a.CurrencyId = :CurrencyId'
      ''
      'union all'
      ''
      'select'
      '  a.ARAdjustmentCustomerDate as TransactionDate,'
      '  '#39'Selisih Kurs (+)'#39' as Transaksi,'
      '  a.Memo,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  a.ARAdjustmentCustomerId as InvoiceId,'
      '  a.ExternalId as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  cast(1 as currency) as Kurs,'
      '  cast(0 as currency) as Debit,'
      '  cast(0 as currency) as DebitRp,'
      '  cast(0 as currency) as Credit,'
      '  a.Amount as CreditRp,'
      '  1 as OrderNo,'
      '  6 as SubOrderNo'
      'from ARAdjustmentCustomer a'
      'where a.CustomerId = :CustomerId'
      'and extract(year from a.ARAdjustmentCustomerDate) = :Year'
      'and extract(month from a.ARAdjustmentCustomerDate) = :Month'
      'and a.StatusApprove = '#39'1'#39
      'and a.CurrencyId = :CurrencyId'
      'and a.Amount > 0'
      ''
      'union all'
      ''
      'select'
      '  a.ARAdjustmentCustomerDate as TransactionDate,'
      '  '#39'Selisih Kurs (-)'#39' as Transaksi,'
      '  a.Memo,'
      '  '#39' '#39' as CashBankRef,'
      '  '#39' '#39' as CashBankExternal,'
      '  a.ARAdjustmentCustomerId as InvoiceId,'
      '  a.ExternalId as InvoiceIdExt,'
      '  '#39' '#39' as PaymentId,'
      '  cast(1 as currency) as Kurs,'
      '  cast(0 as currency) as Credit,'
      '  cast(0 as currency) as CreditRp,'
      '  cast(0 as currency) as Debit,'
      '  abs(a.Amount) as DebitRp,'
      '  1 as OrderNo,'
      '  6 as SubOrderNo'
      'from ARAdjustmentCustomer a'
      'where a.CustomerId = :CustomerId'
      'and extract(year from a.ARAdjustmentCustomerDate) = :Year'
      'and extract(month from a.ARAdjustmentCustomerDate) = :Month'
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
        Name = 'CustomerId'
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
  object qryPrevARAging: TUniQuery [14]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  cast('#39'0-30 hari'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from SalesInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      
        'and Date_Part('#39'day'#39', GetDate() - SalesInvoiceDate) between 0 and' +
        ' 30'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  cast('#39'31-60 hari'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from SalesInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      
        'and Date_Part('#39'day'#39', GetDate() - SalesInvoiceDate) between 31 an' +
        'd 60'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  cast('#39'61-90 hari'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from SalesInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      
        'and Date_Part('#39'day'#39', GetDate() - SalesInvoiceDate) between 61 an' +
        'd 90'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  cast('#39'91 hari lebih'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from SalesInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and Date_Part('#39'day'#39', GetDate() - SalesInvoiceDate) >= 91'
      'and StatusApprove = '#39'1'#39)
    Left = 168
    Top = 208
  end
  object qryPrevARCustAging: TUniQuery [15]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  cast('#39'0-30 hari'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from SalesInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and CustomerId = :CustomerId'
      
        'and Date_Part('#39'day'#39', GetDate() - SalesInvoiceDate) between 0 and' +
        ' 30'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  cast('#39'31-60 hari'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from SalesInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and CustomerId = :CustomerId'
      
        'and Date_Part('#39'day'#39', GetDate() - SalesInvoiceDate) between 31 an' +
        'd 60'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  cast('#39'61-90 hari'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from SalesInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and CustomerId = :CustomerId'
      
        'and Date_Part('#39'day'#39', GetDate() - SalesInvoiceDate) between 61 an' +
        'd 90'
      'and StatusApprove = '#39'1'#39
      ''
      'union all'
      ''
      'select'
      '  cast('#39'91 hari lebih'#39' as varchar(20)) as Memo,'
      '  Sum(OutstandingTotalAmount) as Amount'
      'from SalesInvoiceHd'
      'where OutstandingTotalAmount <> 0'
      'and CustomerId = :CustomerId'
      'and Date_Part('#39'day'#39', GetDate() - SalesInvoiceDate) >= 91'
      'and StatusApprove = '#39'1'#39)
    Left = 168
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CustomerId'
      end>
  end
  object qryPrevSI: TUniQuery [16]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  case'
      
        '    when Date_Part('#39'day'#39', cast(:TransactionDate as timestamp) - ' +
        'a.SalesInvoiceDate) between 0 and 30 then '#39'0-30 hari'#39
      
        '    when Date_Part('#39'day'#39', cast(:TransactionDate as timestamp) - ' +
        'a.SalesInvoiceDate) between 31 and 60 then '#39'31-60 hari'#39
      
        '    when Date_Part('#39'day'#39', cast(:TransactionDate as timestamp) - ' +
        'a.SalesInvoiceDate) between 61 and 90 then '#39'61-90 hari'#39
      
        '    when Date_Part('#39'day'#39', cast(:TransactionDate as timestamp) - ' +
        'SalesInvoiceDate) >= 91 then '#39'91 hari lebih'#39
      '  end as PeriodeJatuhTempo,'
      '  salesinvoicedate + invoicedueday as JatuhTempo, '
      '  a.*'
      'from SalesInvoiceHd a'
      'where a.OutstandingTotalAmount <> 0'
      'and a.CustomerId = :CustomerId'
      'and a.StatusApprove = '#39'1'#39
      'order by PeriodeJatuhTempo')
    Left = 168
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TransactionDate'
      end
      item
        DataType = ftUnknown
        Name = 'CustomerId'
      end>
  end
  object qryPrevSP: TUniQuery [17]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.*, d.PaymentTypeName, '
      '  c.salespaymentdate, e.EmployeeName'
      ''
      'from SalesPaymentDt a'
      
        'left join SalesInvoiceHd b on a.SalesInvoiceId = b.SalesInvoiceI' +
        'd'
      'left join SalesPayment c on a.SalesPaymentId = c.SalesPaymentId'
      'left join PaymentType d on a.PaymentTypeId = d.PaymentTypeId'
      'left join Employee e on a.EmployeeId = e.EmployeeId'
      'where b.OutstandingTotalAmount <> 0'
      'and b.CustomerId = :CustomerId'
      'and b.StatusApprove <> '#39'2'#39
      'and c.StatusApprove <> '#39'2'#39)
    Left = 168
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CustomerId'
      end>
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
