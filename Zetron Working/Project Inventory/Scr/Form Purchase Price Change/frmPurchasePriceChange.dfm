inherited fmPurchasePriceChange: TfmPurchasePriceChange
  Caption = 'Perubahan Harga Beli per Vendor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object bvlSpacer12: TBevel [1]
      Left = 203
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 600
      ExplicitTop = 2
    end
    object cxButton1: TcxButton
      Left = 155
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPost
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
    object pnlProgressBar: TPanel
      Left = 213
      Top = 1
      Width = 136
      Height = 48
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 4
      object Label8: TLabel
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
  object pnlHeader: TPanel [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 71
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Kode'
      Transparent = True
    end
    object Label4: TLabel
      Left = 8
      Top = 26
      Width = 34
      Height = 13
      Caption = 'Barang'
      Transparent = True
    end
    object Label1: TLabel
      Left = 388
      Top = 8
      Width = 54
      Height = 13
      Caption = 'Harga Baru'
      Transparent = True
    end
    object Label3: TLabel
      Left = 388
      Top = 26
      Width = 44
      Height = 13
      Caption = 'Disc Baru'
      Transparent = True
    end
    object Label5: TLabel
      Left = 531
      Top = 26
      Width = 11
      Height = 13
      Caption = '%'
      Transparent = True
    end
    object Label6: TLabel
      Left = 388
      Top = 44
      Width = 50
      Height = 13
      Caption = 'Disc2 Baru'
      Transparent = True
    end
    object Label7: TLabel
      Left = 531
      Top = 44
      Width = 11
      Height = 13
      Caption = '%'
      Transparent = True
    end
    object lcbItemId: TcxExtLookupComboBox
      Left = 62
      Top = 6
      Properties.View = dmInventory.cgvPrevItem
      Properties.KeyFieldNames = 'ItemId'
      Properties.ListFieldItem = dmInventory.cgvPrevItemItemIdExternal
      Properties.OnEditValueChanged = lcbItemIdPropertiesEditValueChanged
      TabOrder = 0
      Width = 305
    end
    object lcbItemName: TcxExtLookupComboBox
      Left = 62
      Top = 24
      Properties.View = dmInventory.cgvPrevItem
      Properties.KeyFieldNames = 'ItemId'
      Properties.ListFieldItem = dmInventory.cgvPrevItemItemName
      Properties.OnEditValueChanged = lcbItemNamePropertiesEditValueChanged
      TabOrder = 1
      Width = 305
    end
    object edtNewDisc: TcxSpinEdit
      Left = 460
      Top = 24
      BeepOnEnter = False
      TabOrder = 3
      Width = 65
    end
    object edtNewDisc2: TcxSpinEdit
      Left = 460
      Top = 42
      BeepOnEnter = False
      TabOrder = 4
      Width = 65
    end
    object edtNewPrice: TcxCurrencyEdit
      Left = 460
      Top = 6
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 2
      Width = 121
    end
  end
  object cgVendor: TcxGrid [2]
    Left = 0
    Top = 121
    Width = 592
    Height = 246
    Align = alClient
    TabOrder = 2
    object cgvVendor: TcxGridDBTableView
      PopupMenu = PopupMenu1
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevVendor
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          FieldName = 'flagcheck'
          Column = cgvVendorFlagCheck
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object cgvVendorFlagCheck: TcxGridDBColumn
        Caption = 'Proses'
        DataBinding.FieldName = 'FlagCheck'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 60
      end
      object cgvVendorvendorid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'vendorid'
        Options.Editing = False
      end
      object cgvVendorcustomername: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'vendorname'
        Options.Editing = False
        SortIndex = 0
        SortOrder = soAscending
      end
      object cgvVendorcontactperson: TcxGridDBColumn
        Caption = 'Contact Person'
        DataBinding.FieldName = 'contactperson'
        Options.Editing = False
      end
      object cgvVendoraddress: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'address'
        Visible = False
        Options.Editing = False
      end
      object cgvVendorcountryname: TcxGridDBColumn
        Caption = 'Negara'
        DataBinding.FieldName = 'countryname'
        Visible = False
        Options.Editing = False
      end
      object cgvVendorprovincename: TcxGridDBColumn
        Caption = 'Provinsi'
        DataBinding.FieldName = 'provincename'
        Visible = False
        Options.Editing = False
      end
      object cgvVendorcityname: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'cityname'
        Visible = False
        Options.Editing = False
      end
      object cgvVendorcategoryid: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'categoryid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevCategory
        Properties.KeyFieldNames = 'CategoryId'
        Properties.ListFieldItem = dmGeneral.cgvPrevCategoryCategoryName
        Visible = False
        Options.Editing = False
      end
      object cgvVendorcustomersince: TcxGridDBColumn
        Caption = 'Vendor Sejak'
        DataBinding.FieldName = 'vendorsince'
        PropertiesClassName = 'TcxDateEditProperties'
        Visible = False
        Options.Editing = False
        Width = 97
      end
    end
    object cgVendorLevel1: TcxGridLevel
      GridView = cgvVendor
    end
  end
  inherited ActionList1: TActionList
    object actPost: TAction
      Caption = 'Simpan'
      ImageIndex = 8
      ShortCut = 121
      OnExecute = actPostExecute
    end
  end
  object mdPrevVendor: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 200
    Top = 112
  end
  object dsPrevVendor: TDataSource
    DataSet = mdPrevVendor
    Left = 232
    Top = 112
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 112
    object DeselectAll1: TMenuItem
      Caption = 'Deselect All'
      OnClick = DeselectAll1Click
    end
  end
  object qryPrevVendor: TUniQuery
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select'
      '  cast(0 as int2) as FlagCheck,'
      '  a.* , b.CountryName, c.ProvinceName, d.CityName'
      'from Vendor a'
      'left join City d on a.CityId = d.CityId'
      'left join Province c on d.ProvinceId = c.ProvinceId'
      'left join Country b on c.CountryId = b.CountryId'
      'order by VendorName')
    Left = 168
    Top = 112
  end
  object qryPurchasePrice: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from PurchasePrice'
      'where VendorId = :VendorId'
      'and ItemId = :ItemId')
    Left = 168
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VendorId'
      end
      item
        DataType = ftUnknown
        Name = 'ItemId'
      end>
  end
end
