inherited fmSalesman: TfmSalesman
  Caption = 'Salesman'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object btnPost: TcxButton
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
    object btnCancel: TcxButton
      Left = 203
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actCancel
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 4
    end
  end
  object cgSalesman: TcxGrid [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 317
    Align = alClient
    TabOrder = 1
    object cgvSalesman: TcxGridDBTableView
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
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsEmployee
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      object cgvSalesmanemployeeid: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'employeeid'
        Visible = False
        Options.Editing = False
      end
      object cgvSalesmanemployeename: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'employeename'
        Options.Editing = False
      end
      object cgvSalesmanpositionid: TcxGridDBColumn
        Caption = 'Jabatan'
        DataBinding.FieldName = 'positionid'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = dmGlobal.cgvPrevPosition
        Properties.KeyFieldNames = 'PositionId'
        Properties.ListFieldItem = dmGlobal.cgvPrevPositionPositionName
        Options.Editing = False
      end
      object cgvSalesmanflagsalesman: TcxGridDBColumn
        Caption = 'Salesman'
        DataBinding.FieldName = 'flagsalesman'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
      end
    end
    object cgSalesmanLevel1: TcxGridLevel
      GridView = cgvSalesman
    end
  end
  inherited ActionList1: TActionList
    object actPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'Simpan'
      Enabled = False
      Hint = 'Simpan'
      ImageIndex = 8
      ShortCut = 121
      DataSource = dsEmployee
    end
    object actCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Batal'
      Enabled = False
      Hint = 'Batal'
      ImageIndex = 9
      DataSource = dsEmployee
    end
  end
  object dsEmployee: TDataSource
    DataSet = dmGlobal.qryEmployee
    Left = 168
    Top = 112
  end
end
