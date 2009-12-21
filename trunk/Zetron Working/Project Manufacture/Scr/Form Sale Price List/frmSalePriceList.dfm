inherited fmSalePriceList: TfmSalePriceList
  Caption = 'Harga Price List (Penjualan)'
  ClientHeight = 486
  ClientWidth = 763
  ExplicitWidth = 771
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 763
    ExplicitWidth = 763
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
    object Progress: TcxProgressBar
      Left = 616
      Top = 25
      ParentColor = False
      TabOrder = 5
      Width = 121
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
          Caption = 'Item'
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
        end>
      object cgvPriceeffectivedate: TcxGridDBBandedColumn
        Caption = 'Tgl Efektif'
        DataBinding.FieldName = 'effectivedate'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 128
        Position.BandIndex = 0
        Position.ColIndex = 2
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
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object cgvPriceqty1: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty1'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
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
        Width = 34
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
      object cgvPricelastmodified: TcxGridDBBandedColumn
        Caption = 'Tgl Ubah Terakhir'
        DataBinding.FieldName = 'lastmodified'
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object cgvPriceapprovedate: TcxGridDBBandedColumn
        Caption = 'Tgl Approve'
        DataBinding.FieldName = 'approvedate'
        Width = 91
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 1
      end
      object cgvPriceemployeeid: TcxGridDBBandedColumn
        Caption = 'Pegawai'
        DataBinding.FieldName = 'employeeid'
        Width = 202
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 2
      end
      object cgvPriceminqty1: TcxGridDBBandedColumn
        Caption = 'Min'
        DataBinding.FieldName = 'minqty1'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object cgvPriceminqty2: TcxGridDBBandedColumn
        Caption = 'Min'
        DataBinding.FieldName = 'minqty2'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 73
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object cgvPriceminqty3: TcxGridDBBandedColumn
        Caption = 'Min'
        DataBinding.FieldName = 'minqty3'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 63
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object cgvPriceminqty4: TcxGridDBBandedColumn
        Caption = 'Min'
        DataBinding.FieldName = 'minqty4'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 66
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object cgvPriceminqty5: TcxGridDBBandedColumn
        Caption = 'Min'
        DataBinding.FieldName = 'minqty5'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 62
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object cgvPricememo1: TcxGridDBBandedColumn
        Caption = 'Memo'
        DataBinding.FieldName = 'memo1'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 63
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 2
      end
      object cgvPricememo2: TcxGridDBBandedColumn
        Caption = 'Memo'
        DataBinding.FieldName = 'memo2'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 82
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 2
      end
      object cgvPricememo3: TcxGridDBBandedColumn
        Caption = 'Memo'
        DataBinding.FieldName = 'memo3'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 85
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 2
      end
      object cgvPricememo4: TcxGridDBBandedColumn
        Caption = 'Memo'
        DataBinding.FieldName = 'memo4'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 84
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 2
      end
      object cgvPricememo5: TcxGridDBBandedColumn
        Caption = 'Memo'
        DataBinding.FieldName = 'memo5'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 78
        Position.BandIndex = 5
        Position.ColIndex = 1
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
        Width = 30
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
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
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
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
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
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
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
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
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cgvPriceitemid: TcxGridDBBandedColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemid'
        Options.Editing = False
        Width = 34
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cgvPriceitemcode: TcxGridDBBandedColumn
        Caption = 'Kode Barang'
        DataBinding.FieldName = 'itemcode'
        Options.Editing = False
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cgvPriceitemname: TcxGridDBBandedColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'itemname'
        Options.Editing = False
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cgvPriceitemcategoryid: TcxGridDBBandedColumn
        Caption = 'Kode Kategori'
        DataBinding.FieldName = 'itemcategoryid'
        Options.Editing = False
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cgvPriceitemcategoryname: TcxGridDBBandedColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'itemcategoryname'
        Options.Editing = False
        Width = 56
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
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
    Left = 264
    Top = 16
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 9
      DataSource = dsPrice
    end
    object ActProses: TAction
      Category = 'Dataset'
      Caption = '&Proses'
      ImageIndex = 8
      OnExecute = ActProsesExecute
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 304
    Top = 16
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 344
    Top = 16
  end
  object dsPrice: TDataSource
    DataSet = qryPrice
    OnDataChange = dsPriceDataChange
    Left = 48
    Top = 176
  end
  object ImageList1: TImageList
    Left = 384
    Top = 232
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
  object qryPrice: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'StatusApprove1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'StatusApprove2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'flaginactive'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'select a.*,b.itemcode,itemname,c.*'
      'from Price a'
      'left join item b on a.itemid=b.itemid'
      'left join itemcategory c on b.itemcategoryid=c.itemcategoryid '
      'where (a.StatusApprove = :StatusApprove1'
      'or a.StatusApprove = :StatusApprove2 )'
      'and a.itemid=b.itemid and b.flaginactive like :flaginactive'
      'order by b.ItemCode')
    Left = 16
    Top = 178
  end
  object qrySetNew: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <>
    SQL.Strings = (
      'update Price'
      'set '
      '  NewPrice1 = Price1,'
      '  NewPrice2 = Price2,'
      '  NewPrice3 = Price3,'
      '  NewPrice4 = Price4,'
      '  NewPrice5 = Price5'
      'where StatusApprove = '#39'0'#39
      '')
    Left = 16
    Top = 218
  end
end
