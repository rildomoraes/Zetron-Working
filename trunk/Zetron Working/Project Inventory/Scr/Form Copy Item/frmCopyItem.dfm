inherited fmCopyItem: TfmCopyItem
  Caption = 'Copy Barang'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object cxButton1: TcxButton
      Left = 155
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actCopy
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
  end
  object cgMasterSetup: TcxGrid [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 284
    Align = alClient
    TabOrder = 1
    object cgvItem: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = cgvItemFocusedRecordChanged
      DataController.DataSource = dsPrevItem
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvItemitemid: TcxGridDBColumn
        Caption = 'Kode Internal'
        DataBinding.FieldName = 'itemid'
        Visible = False
      end
      object cgvItemflaginactive: TcxGridDBColumn
        DataBinding.FieldName = 'flaginactive'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            ImageIndex = 4
            Value = '0'
          end
          item
            ImageIndex = 6
            Value = '1'
          end>
        Width = 30
        IsCaptionAssigned = True
      end
      object cgvItemitemidexternal: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'itemidexternal'
      end
      object cgvItemitemname: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'itemname'
      end
      object cgvItemitemnamechinese: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'itemnamechinese'
      end
      object cgvItemtype: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'type'
      end
      object cgvItemunitmeasure: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'unitmeasure'
      end
      object cgvItemitemcategoryid: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'itemcategoryid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGeneral.cgvPrevCategory
        Properties.KeyFieldNames = 'CategoryId'
        Properties.ListFieldItem = dmGeneral.cgvPrevCategoryCategoryName
      end
      object cgvItemmemo: TcxGridDBColumn
        Caption = 'Memo'
        DataBinding.FieldName = 'memo'
        Visible = False
      end
    end
    object cgMasterSetupLevel1: TcxGridLevel
      GridView = cgvItem
    end
  end
  object pnlBottom: TPanel [2]
    Left = 0
    Top = 334
    Width = 592
    Height = 33
    Align = alBottom
    TabOrder = 2
    object lblNewItemIdExternal: TLabel
      Left = 5
      Top = 6
      Width = 49
      Height = 13
      Caption = '&Kode Baru'
      FocusControl = edtItemIdExternal
      Transparent = True
    end
    object lblJobOrder: TLabel
      Left = 373
      Top = 6
      Width = 8
      Height = 13
      Caption = '&#'
      FocusControl = edtJobOrder
      Transparent = True
    end
    object edtItemIdExternal: TcxTextEdit
      Left = 69
      Top = 6
      BeepOnEnter = False
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 300
    end
    object edtJobOrder: TcxTextEdit
      Left = 389
      Top = 6
      BeepOnEnter = False
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 97
    end
  end
  inherited ActionList1: TActionList
    object actCopy: TAction
      Caption = 'Copy'
      ImageIndex = 13
      OnExecute = actCopyExecute
    end
  end
  object dsPrevItem: TDataSource
    Left = 168
    Top = 112
  end
end
