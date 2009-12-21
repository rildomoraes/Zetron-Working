inherited fmSalePrice: TfmSalePrice
  Caption = 'Harga Jual per Customer'
  ExplicitWidth = 320
  ExplicitHeight = 240
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
      Left = 384
      Top = 8
      Width = 54
      Height = 13
      Caption = 'Harga Baru'
      Transparent = True
    end
    object Label3: TLabel
      Left = 384
      Top = 26
      Width = 44
      Height = 13
      Caption = 'Disc Baru'
      Transparent = True
    end
    object Label5: TLabel
      Left = 528
      Top = 26
      Width = 11
      Height = 13
      Caption = '%'
      Transparent = True
    end
    object Label6: TLabel
      Left = 384
      Top = 44
      Width = 50
      Height = 13
      Caption = 'Disc2 Baru'
      Transparent = True
    end
    object Label7: TLabel
      Left = 528
      Top = 44
      Width = 11
      Height = 13
      Caption = '%'
      Transparent = True
    end
    object lcbItemId: TcxExtLookupComboBox
      Left = 56
      Top = 6
      Properties.View = dmInventory.cgvItem
      Properties.KeyFieldNames = 'ItemId'
      Properties.ListFieldItem = dmInventory.cgvItemItemCode
      Properties.OnEditValueChanged = lcbItemIdPropertiesEditValueChanged
      TabOrder = 0
      Width = 305
    end
    object lcbItemName: TcxExtLookupComboBox
      Left = 56
      Top = 24
      Properties.View = dmInventory.cgvItem
      Properties.KeyFieldNames = 'ItemId'
      Properties.ListFieldItem = dmInventory.cgvItemItemName
      Properties.OnEditValueChanged = lcbItemNamePropertiesEditValueChanged
      TabOrder = 1
      Width = 305
    end
    object edtNewPrice: TcxCalcEdit
      Left = 456
      Top = 6
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 2
      Width = 121
    end
    object edtNewDisc: TcxCalcEdit
      Left = 456
      Top = 24
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 3
      Width = 65
    end
    object edtNewDisc2: TcxCalcEdit
      Left = 456
      Top = 42
      BeepOnEnter = False
      EditValue = 0.000000000000000000
      TabOrder = 4
      Width = 65
    end
  end
  object cgCustomer: TcxGrid [2]
    Left = 0
    Top = 121
    Width = 592
    Height = 246
    Align = alClient
    TabOrder = 2
    object cgvCustomer: TcxGridDBTableView
      PopupMenu = PopupMenu1
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevCustomer
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          FieldName = 'flagcheck'
          Column = cgvCustomerFlagCheck
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object cgvCustomerFlagCheck: TcxGridDBColumn
        Caption = 'Proses'
        DataBinding.FieldName = 'FlagCheck'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 60
      end
      object cgvCustomercustomerid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'customerid'
        Options.Editing = False
      end
      object cgvCustomercustomername: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'customername'
        Options.Editing = False
        SortIndex = 0
        SortOrder = soAscending
      end
      object cgvCustomercontactperson: TcxGridDBColumn
        Caption = 'Contact Person'
        DataBinding.FieldName = 'contactperson'
        Options.Editing = False
      end
      object cgvCustomeraddress: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'address'
        Options.Editing = False
      end
      object cgvCustomercountryname: TcxGridDBColumn
        Caption = 'Negara'
        DataBinding.FieldName = 'countryname'
        Visible = False
        Options.Editing = False
      end
      object cgvCustomerprovincename: TcxGridDBColumn
        Caption = 'Provinsi'
        DataBinding.FieldName = 'provincename'
        Visible = False
        Options.Editing = False
      end
      object cgvCustomercityname: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'cityname'
        Visible = False
        Options.Editing = False
      end
      object cgvCustomercategoryid: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'categoryid'
        Options.Editing = False
      end
      object cgvCustomermemberid: TcxGridDBColumn
        Caption = 'Kode Member'
        DataBinding.FieldName = 'memberid'
        Options.Editing = False
        Width = 87
      end
      object cgvCustomercustomersince: TcxGridDBColumn
        Caption = 'Customer Sejak'
        DataBinding.FieldName = 'customersince'
        PropertiesClassName = 'TcxDateEditProperties'
        Options.Editing = False
        Width = 97
      end
    end
    object cgCustomerLevel1: TcxGridLevel
      GridView = cgvCustomer
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
  object mdPrevCustomer: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 200
    Top = 112
  end
  object dsPrevCustomer: TDataSource
    DataSet = mdPrevCustomer
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
  object qryPrevCustomer: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      '  cast(0 as int) as FlagCheck,'
      '  a.* , b.CountryName, c.ProvinceName, d.CityName'
      'from Customer a'
      'left join City d on a.CityId = d.CityId'
      'left join Province c on d.ProvinceId = c.ProvinceId'
      'left join Country b on c.CountryId = b.CountryId'
      'order by CustomerName')
    Left = 168
    Top = 112
  end
  object qryGetSalePrice: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CustomerId'
        Size = -1
        Value = Null
      end
      item
        Name = 'ItemId'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from SalePrice'
      'where CustomerId = :CustomerId'
      'and ItemId = :ItemId')
    Left = 168
    Top = 152
  end
end
