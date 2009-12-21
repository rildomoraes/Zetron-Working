object dmAccounting: TdmAccounting
  OldCreateOrder = False
  Height = 267
  Width = 544
  object gvrAccounting: TcxGridViewRepository
    Left = 64
    Top = 16
    object cgvPrevCOA: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevCOA
      DataController.KeyFieldNames = 'COAId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevCOACOAId: TcxGridDBColumn
        DataBinding.FieldName = 'COAId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevCOACOACode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'COACode'
      end
      object cgvPrevCOACOAName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'COAName'
      end
      object cgvPrevCOAStatusType: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'StatusType'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Asset'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Hutang'
            Value = '1'
          end
          item
            Description = 'Modal'
            Value = '2'
          end
          item
            Description = 'Penjualan'
            Value = '3'
          end
          item
            Description = 'Biaya'
            Value = '4'
          end>
      end
      object cgvPrevCOACOAIdParent: TcxGridDBColumn
        Caption = 'COA Induk'
        DataBinding.FieldName = 'COAIdParent'
        PropertiesClassName = 'TcxExtLookupComboBoxProperties'
        Properties.View = cgvPrevCOAParent
        Properties.KeyFieldNames = 'COAId'
        Properties.ListFieldItem = cgvPrevCOAParentCOACode
      end
    end
    object cgvPrevCOAParent: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevCOAParent
      DataController.KeyFieldNames = 'COAId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cgvPrevCOAParentCOAId: TcxGridDBColumn
        DataBinding.FieldName = 'COAId'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevCOAParentCOACode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'COACode'
      end
      object cgvPrevCOAParentCOAName: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'COAName'
      end
    end
  end
  object qryCOA: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforePost = qryCOABeforePost
    AfterPost = qryCOAAfterPost
    OnNewRecord = qryCOANewRecord
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from ChartOfAccount')
    Left = 64
    Top = 64
  end
  object dsPrevCOA: TDataSource
    DataSet = qryCOA
    Left = 136
    Top = 64
  end
  object qryPrevCOAParent: TADOQuery
    Connection = dmGlobal.conReadOnly
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from ChartOfAccount')
    Left = 288
    Top = 64
  end
  object dsPrevCOAParent: TDataSource
    DataSet = qryPrevCOAParent
    Left = 392
    Top = 64
  end
end
