inherited fmDisplayGiro: TfmDisplayGiro
  Caption = 'Display Giro'
  PixelsPerInch = 96
  TextHeight = 13
  object cgDisplay: TcxGrid [2]
    Left = 0
    Top = 75
    Width = 592
    Height = 292
    Align = alClient
    TabOrder = 2
    object cgvDisplay: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDisplay
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          FieldName = 'gironumber'
          Column = cgvDisplaygironumber
        end
        item
          Format = '#,##0.00;-#,##0.00'
          Kind = skSum
          FieldName = 'amount'
          Column = cgvDisplayamount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      object cgvDisplayStatusApprove: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'StatusApprove'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = dmGlobal.imgIcon16
        Properties.Items = <
          item
            ImageIndex = 7
            Value = '0'
          end
          item
            ImageIndex = 6
            Value = '1'
          end
          item
            ImageIndex = 8
            Value = '2'
          end>
        Width = 40
      end
      object cgvDisplayflaggiroout: TcxGridDBColumn
        DataBinding.FieldName = 'flaggiroout'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Masuk'
            ImageIndex = 7
            Value = '0'
          end
          item
            Description = 'Keluar'
            ImageIndex = 8
            Value = '1'
          end>
        IsCaptionAssigned = True
      end
      object cgvDisplaybankid: TcxGridDBColumn
        Caption = 'Bank'
        DataBinding.FieldName = 'bankid'
      end
      object cgvDisplaybankaccount: TcxGridDBColumn
        Caption = 'No Account'
        DataBinding.FieldName = 'bankaccount'
      end
      object cgvDisplaygironumber: TcxGridDBColumn
        Caption = 'No Giro'
        DataBinding.FieldName = 'gironumber'
      end
      object cgvDisplayissuedate: TcxGridDBColumn
        Caption = 'Tgl Giro'
        DataBinding.FieldName = 'issuedate'
      end
      object cgvDisplaystatusgiro: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'statusgiro'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Issue'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Setor'
            Value = '1'
          end
          item
            Description = 'Cair'
            Value = '2'
          end
          item
            Description = 'Tolak'
            Value = '3'
          end>
      end
      object cgvDisplaytransactiondate: TcxGridDBColumn
        Caption = 'Tanggal Status'
        DataBinding.FieldName = 'transactiondate'
      end
      object cgvDisplayamount: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'amount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.Content = dmGlobal.stYellowLight
      end
      object cgvDisplaycustomername: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'customername'
      end
      object cgvDisplayvendorname: TcxGridDBColumn
        Caption = 'Vendor'
        DataBinding.FieldName = 'vendorname'
      end
      object cgvDisplayreferenceid: TcxGridDBColumn
        DataBinding.FieldName = 'referenceid'
        Visible = False
      end
      object cgvDisplayemployeename: TcxGridDBColumn
        Caption = 'Pegawai'
        DataBinding.FieldName = 'employeename'
      end
    end
    object cgDisplayLevel1: TcxGridLevel
      GridView = cgvDisplay
    end
  end
  object dsDisplay: TDataSource [6]
    DataSet = qryDisplay
    Left = 200
    Top = 144
  end
  object qryDisplay: TUniQuery [7]
    Connection = dmGlobal.conReadOnly
    SQL.Strings = (
      'select '
      '  a.*, b.EmployeeName,'
      '  c.CustomerName, d.VendorName'
      'from Giro a'
      'left join Employee b on a.EmployeeId = b.EmployeeId'
      'left join Customer c on a.CustomerId = c.CustomerId'
      'left join Vendor d on a.VendorId = d.VendorId'
      'where extract(year from a.IssueDate) = :Year'
      'and extract(month from a.IssueDate) = :Month')
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
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
