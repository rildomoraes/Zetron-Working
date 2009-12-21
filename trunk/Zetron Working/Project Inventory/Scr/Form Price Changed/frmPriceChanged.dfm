inherited fmPriceChanged: TfmPriceChanged
  Caption = 'Perubahan Harga'
  ClientHeight = 486
  ClientWidth = 763
  ExplicitWidth = 771
  ExplicitHeight = 520
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 763
    ExplicitWidth = 763
    object bvlSpacer12: TBevel [1]
      Left = 251
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 243
      ExplicitTop = -4
    end
    inherited btnRefresh: TcxButton
      Left = 203
      Action = DataSetCancel1
      ExplicitLeft = 203
    end
    object cxButton1: TcxButton
      Left = 97
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actRefresh
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
    object btnProses: TcxButton
      Left = 155
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = ActProses
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 4
    end
    object pnlProgressBar: TPanel
      Left = 261
      Top = 1
      Width = 136
      Height = 48
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 5
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
  object cgPrice: TcxGrid [1]
    Left = 0
    Top = 50
    Width = 763
    Height = 342
    Align = alClient
    TabOrder = 1
    object cgvPrice: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = True
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsPrice
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.PullFocusing = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsSelection.CellMultiSelect = True
      OptionsView.GridLines = glVertical
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.stGreen
      Bands = <
        item
          Caption = 'Barang'
          FixedKind = fkLeft
          Width = 296
        end
        item
          Caption = 'Level 1'
          Options.Moving = False
          Width = 143
        end
        item
          Caption = 'Level 2'
          Options.Moving = False
          Width = 155
        end
        item
          Caption = 'Level 3'
          Options.Moving = False
          Width = 148
        end
        item
          Caption = 'Level 4'
          Options.Moving = False
          Width = 150
        end
        item
          Caption = 'Level 5'
          Options.Moving = False
          Width = 140
        end
        item
          Caption = 'Level 6'
          Options.Moving = False
          Width = 140
        end
        item
          Caption = 'Level 7'
          Options.Moving = False
          Width = 140
        end>
      object cgvPriceitemid: TcxGridDBBandedColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemid'
        Visible = False
        VisibleForCustomization = False
        Width = 34
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvPriceitemidexternal: TcxGridDBBandedColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemidexternal'
        Visible = False
        Options.Editing = False
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvPriceitemname: TcxGridDBBandedColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'itemname'
        Options.Editing = False
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cgvPriceitemcategoryid: TcxGridDBBandedColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'itemcategoryid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmInventory.cgvPrevItemCategory
        Properties.KeyFieldNames = 'ItemCategoryId'
        Properties.ListFieldItem = dmInventory.cgvPrevItemCategoryItemCategoryName
        Visible = False
        Options.Editing = False
        VisibleForCustomization = False
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cgvPriceapprovedate: TcxGridDBBandedColumn
        Caption = 'Tgl Approve'
        DataBinding.FieldName = 'approvedate'
        Width = 91
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object cgvPriceeffectivedate: TcxGridDBBandedColumn
        Caption = 'Tgl Efektif'
        DataBinding.FieldName = 'effectivedate'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 128
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 1
      end
      object cgvPricestatusapprove: TcxGridDBBandedColumn
        Caption = 'Approval'
        DataBinding.FieldName = 'statusapprove'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Tetap'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Ubah'
            Value = '1'
          end
          item
            Description = 'Setuju'
            Value = '2'
          end>
        Width = 77
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 3
      end
      object cgvPricelastmodified: TcxGridDBBandedColumn
        Caption = 'Tgl Ubah Terakhir'
        DataBinding.FieldName = 'lastmodified'
        Options.Editing = False
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 3
      end
      object cgvPriceemployeeid: TcxGridDBBandedColumn
        Caption = 'Pegawai'
        DataBinding.FieldName = 'employeeid'
        Visible = False
        Width = 202
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object cgvPriceqty1: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty1'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 68
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvPriceunitmeasure1: TcxGridDBBandedColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'unitmeasure1'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvPriceprice1: TcxGridDBBandedColumn
        Caption = 'Harga Lama'
        DataBinding.FieldName = 'price1'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 69
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object cgvPricenewprice1: TcxGridDBBandedColumn
        Caption = 'Harga Baru'
        DataBinding.FieldName = 'newprice1'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ImmediatePost = True
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 60
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 1
      end
      object cgvPriceminqty1: TcxGridDBBandedColumn
        Caption = 'Qty Min'
        DataBinding.FieldName = 'minqty1'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object cgvPriceflagupdown1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'flagupdown1'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Description = 'Up'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Down'
            ImageIndex = 1
            Value = '1'
          end>
        Options.Filtering = False
        Width = 64
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cgvPriceqty2: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty2'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvPriceunitmeasure2: TcxGridDBBandedColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'unitmeasure2'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvPriceprice2: TcxGridDBBandedColumn
        Caption = 'Harga Lama'
        DataBinding.FieldName = 'price2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object cgvPricenewprice2: TcxGridDBBandedColumn
        Caption = 'Harga Baru'
        DataBinding.FieldName = 'newprice2'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ImmediatePost = True
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 1
      end
      object cgvPriceflagupdown2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'flagupdown2'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Description = 'Up'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Down'
            ImageIndex = 1
            Value = '1'
          end>
        Options.Filtering = False
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cgvPriceminqty2: TcxGridDBBandedColumn
        Caption = 'Qty Min'
        DataBinding.FieldName = 'minqty2'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
        Width = 73
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object cgvPriceqty3: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty3'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 71
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvPriceunitmeasure3: TcxGridDBBandedColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'unitmeasure3'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 65
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvPriceprice3: TcxGridDBBandedColumn
        Caption = 'Harga Lama'
        DataBinding.FieldName = 'price3'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 83
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 1
      end
      object cgvPricenewprice3: TcxGridDBBandedColumn
        Caption = 'Harga Baru'
        DataBinding.FieldName = 'newprice3'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ImmediatePost = True
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 65
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object cgvPriceflagupdown3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'flagupdown3'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Description = 'Up'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Down'
            ImageIndex = 1
            Value = '1'
          end>
        Options.Filtering = False
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cgvPriceminqty3: TcxGridDBBandedColumn
        Caption = 'Qty Min'
        DataBinding.FieldName = 'minqty3'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
        Width = 63
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object cgvPriceqty4: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty4'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 69
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvPriceunitmeasure4: TcxGridDBBandedColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'unitmeasure4'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 69
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvPriceprice4: TcxGridDBBandedColumn
        Caption = 'Harga Lama'
        DataBinding.FieldName = 'price4'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 81
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 1
      end
      object cgvPricenewprice4: TcxGridDBBandedColumn
        Caption = 'Harga Baru'
        DataBinding.FieldName = 'newprice4'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ImmediatePost = True
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 69
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object cgvPriceflagupdown4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'flagupdown4'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Description = 'Up'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Down'
            ImageIndex = 1
            Value = '1'
          end>
        Options.Filtering = False
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cgvPriceminqty4: TcxGridDBBandedColumn
        Caption = 'Qty Min'
        DataBinding.FieldName = 'minqty4'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
        Width = 66
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object cgvPriceqty5: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty5'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 67
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvPriceunitmeasure5: TcxGridDBBandedColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'unitmeasure5'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 67
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvPriceprice5: TcxGridDBBandedColumn
        Caption = 'Harga Lama'
        DataBinding.FieldName = 'price5'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 67
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object cgvPricenewprice5: TcxGridDBBandedColumn
        Caption = 'Harga Baru'
        DataBinding.FieldName = 'newprice5'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ImmediatePost = True
        Options.Filtering = False
        Options.Moving = False
        Options.Sorting = False
        Width = 73
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 1
      end
      object cgvPriceflagupdown5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'flagupdown5'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Description = 'Up'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Down'
            ImageIndex = 1
            Value = '1'
          end>
        Options.Filtering = False
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cgvPriceminqty5: TcxGridDBBandedColumn
        Caption = 'Qty Min'
        DataBinding.FieldName = 'minqty5'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Filtering = False
        Width = 62
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object cgvPriceqty6: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty6'
        Options.Filtering = False
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvPriceunitmeasure6: TcxGridDBBandedColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'unitmeasure6'
        Options.Filtering = False
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvPriceprice6: TcxGridDBBandedColumn
        Caption = 'Harga Lama'
        DataBinding.FieldName = 'price6'
        Options.Filtering = False
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object cgvPricenewprice6: TcxGridDBBandedColumn
        Caption = 'Harga Baru'
        DataBinding.FieldName = 'newprice6'
        Options.Filtering = False
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 1
      end
      object cgvPriceflagupdown6: TcxGridDBBandedColumn
        DataBinding.FieldName = 'flagupdown6'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Description = 'Up'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Down'
            ImageIndex = 1
            Value = '1'
          end>
        Options.Filtering = False
        Position.BandIndex = 6
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cgvPriceminqty6: TcxGridDBBandedColumn
        Caption = 'Qty Min'
        DataBinding.FieldName = 'minqty6'
        Options.Filtering = False
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object cgvPriceqty7: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty7'
        Options.Filtering = False
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvPriceprice7: TcxGridDBBandedColumn
        Caption = 'Harga Lama'
        DataBinding.FieldName = 'price7'
        Options.Filtering = False
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object cgvPriceunitmeasure7: TcxGridDBBandedColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'unitmeasure7'
        Options.Filtering = False
        Position.BandIndex = 7
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvPricenewprice7: TcxGridDBBandedColumn
        Caption = 'Harga Baru'
        DataBinding.FieldName = 'newprice7'
        Options.Filtering = False
        Position.BandIndex = 7
        Position.ColIndex = 1
        Position.RowIndex = 1
      end
      object cgvPriceflagupdown7: TcxGridDBBandedColumn
        DataBinding.FieldName = 'flagupdown7'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Description = 'Up'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Down'
            ImageIndex = 1
            Value = '1'
          end>
        Options.Filtering = False
        Position.BandIndex = 7
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cgvPriceminqty7: TcxGridDBBandedColumn
        Caption = 'Qty Min'
        DataBinding.FieldName = 'minqty7'
        Options.Filtering = False
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
    end
    object cgPriceLevel1: TcxGridLevel
      GridView = cgvPrice
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 392
    Width = 763
    Height = 94
    Align = alBottom
    TabOrder = 2
    object cxLabel1: TLabel
      Left = 8
      Top = 8
      Width = 25
      Height = 13
      Caption = 'Level'
      Color = clBtnFace
      ParentColor = False
      Transparent = True
    end
    object cxLabel2: TLabel
      Left = 8
      Top = 35
      Width = 63
      Height = 13
      Caption = 'Prosentase 1'
      Color = clBtnFace
      ParentColor = False
      Transparent = True
    end
    object cxLabel3: TLabel
      Left = 8
      Top = 60
      Width = 46
      Height = 13
      Caption = 'Nominal 1'
      Color = clBtnFace
      ParentColor = False
      Transparent = True
    end
    object cxLabel4: TLabel
      Left = 216
      Top = 35
      Width = 63
      Height = 13
      Caption = 'Prosentase 2'
      Color = clBtnFace
      ParentColor = False
      Transparent = True
    end
    object cxLabel5: TLabel
      Left = 216
      Top = 60
      Width = 46
      Height = 13
      Caption = 'Nominal 2'
      Color = clBtnFace
      ParentColor = False
      Transparent = True
    end
    object lblTglEfektif: TLabel
      Left = 216
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Tgl Efektif'
      Color = clBtnFace
      ParentColor = False
      Transparent = True
    end
    object lblApprove: TLabel
      Left = 415
      Top = 6
      Width = 41
      Height = 13
      Caption = 'Approve'
      Color = clBtnFace
      ParentColor = False
      Transparent = True
    end
    object chnaik: TcxCheckBox
      Left = 415
      Top = 31
      Caption = 'Naik'
      ParentColor = False
      Properties.DisplayChecked = 'Naik'
      Properties.DisplayUnchecked = 'Turun'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '-1'
      Properties.OnEditValueChanged = chnaikPropertiesEditValueChanged
      State = cbsChecked
      TabOrder = 0
      Transparent = True
      Width = 58
    end
    object chLevel: TcxImageComboBox
      Left = 80
      Top = 6
      Properties.Items = <
        item
          Description = '1'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = '2'
          Value = '2'
        end
        item
          Description = '3'
          Value = '3'
        end
        item
          Description = '4'
          Value = '4'
        end
        item
          Description = '5'
          Value = '5'
        end
        item
          Description = '6'
          Value = '6'
        end
        item
          Description = '7'
          Value = '7'
        end>
      TabOrder = 1
      Width = 57
    end
    object edtprosentase1: TcxCalcEdit
      Left = 79
      Top = 35
      EditValue = 0.000000000000000000
      TabOrder = 3
      Width = 121
    end
    object edtprosentase2: TcxCalcEdit
      Left = 288
      Top = 33
      EditValue = 0.000000000000000000
      TabOrder = 4
      Width = 121
    end
    object edtnominal1: TcxCalcEdit
      Left = 80
      Top = 60
      EditValue = 0.000000000000000000
      TabOrder = 5
      Width = 121
    end
    object edtnominal2: TcxCalcEdit
      Left = 288
      Top = 60
      EditValue = 0.000000000000000000
      TabOrder = 6
      Width = 121
    end
    object dtEfektif: TcxDateEdit
      Left = 288
      Top = 6
      TabOrder = 7
      Width = 121
    end
    object clSet: TcxCheckListBox
      Left = 576
      Top = 6
      Width = 82
      Height = 76
      Items = <
        item
          Text = 'Harga'
        end
        item
          Text = 'Tgl Efektif'
        end
        item
          Text = 'Approve'
        end>
      TabOrder = 8
    end
    object ciApprove: TcxImageComboBox
      Left = 465
      Top = 6
      Properties.Items = <
        item
          Description = 'Tetap'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'Ubah'
          Value = '1'
        end
        item
          Description = 'Setuju'
          Value = '2'
        end>
      TabOrder = 9
      Width = 105
    end
    object cbLevel: TcxCheckBox
      Left = 143
      Top = 6
      Caption = 'Per Level'
      ParentColor = False
      Properties.DisplayChecked = 'Naik'
      Properties.DisplayUnchecked = 'Turun'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '-1'
      Properties.OnEditValueChanged = cbLevelPropertiesEditValueChanged
      TabOrder = 2
      Transparent = True
      Width = 74
    end
  end
  inherited ActionList1: TActionList
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Enabled = False
      Hint = 'Cancel'
      ImageIndex = 0
      DataSource = dsPrice
    end
    object ActProses: TAction
      Category = 'Dataset'
      Caption = '&Proses'
      ImageIndex = 8
      OnExecute = ActProsesExecute
    end
  end
  object dsPrice: TDataSource [5]
    DataSet = qryPrice
    OnDataChange = dsPriceDataChange
    Left = 200
    Top = 112
  end
  object ImageList1: TImageList [6]
    Left = 264
    Top = 80
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFEFF00000000FC7FFC7F00000000FC7FF83F00000000FC7FF01F00000000
      FC7FE00F00000000FC7FFC7F00000000FC7FFC7F00000000FC7FFC7F00000000
      E00FFC7F00000000F01FFC7F00000000F83FFC7F00000000FC7FFC7F00000000
      FEFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object qryPrice: TUniQuery [7]
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select '
      '  a.*,'
      '  b.ItemIdExternal, b.ItemName, b.ItemCategoryId'
      'from Price a, item b '
      'where (a.StatusApprove = :StatusApprove1'
      'or a.StatusApprove = :StatusApprove2 )'
      'and a.itemid=b.itemid '
      'and b.flaginactive like :flaginactive'
      'order by b.ItemIdExternal')
    Left = 168
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'StatusApprove1'
      end
      item
        DataType = ftUnknown
        Name = 'StatusApprove2'
      end
      item
        DataType = ftUnknown
        Name = 'flaginactive'
      end>
  end
  object qrySetNew: TUniQuery [8]
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'update Price'
      'set '
      '  NewPrice1 = Price1,'
      '  NewPrice2 = Price2,'
      '  NewPrice3 = Price3,'
      '  NewPrice4 = Price4,'
      '  NewPrice5 = Price5,'
      '  NewPrice6 = Price6,'
      '  NewPrice7 = Price7'
      'where StatusApprove = '#39'0'#39)
    Left = 168
    Top = 144
  end
end
