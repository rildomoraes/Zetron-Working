inherited fmPhysicalCounter: TfmPhysicalCounter
  Caption = 'Counter Fisik Mesin Harian'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 391
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object lblEngineCode: TLabel
          Left = 9
          Top = 45
          Width = 28
          Height = 13
          Caption = 'Mesin'
          Transparent = True
        end
        object lblJobType: TLabel
          Left = 9
          Top = 63
          Width = 48
          Height = 13
          Caption = 'Pekerjaan'
          Transparent = True
        end
        object lblValueStart: TLabel
          Left = 9
          Top = 81
          Width = 63
          Height = 13
          Caption = 'Counter Awal'
          Transparent = True
        end
        object lblValueEnd: TLabel
          Left = 9
          Top = 99
          Width = 64
          Height = 13
          Caption = 'Counter Akhir'
          Transparent = True
        end
        object lblCounterDate: TLabel
          Left = 9
          Top = 9
          Width = 55
          Height = 13
          Caption = 'Tgl Counter'
          Transparent = True
        end
        object lblShift: TLabel
          Left = 9
          Top = 27
          Width = 21
          Height = 13
          Caption = 'Shift'
          Transparent = True
        end
        object dbeJobType: TcxDBExtLookupComboBox
          Left = 81
          Top = 60
          DataBinding.DataField = 'jobcode'
          DataBinding.DataSource = dsDefault
          Properties.View = dmInventory.cgvPrevJobType
          Properties.KeyFieldNames = 'jobcode'
          Properties.ListFieldItem = dmInventory.cgvPrevJobTypejobname
          TabOrder = 3
          Width = 145
        end
        object dbValueStart: TcxDBCalcEdit
          Left = 81
          Top = 78
          DataBinding.DataField = 'valuestart'
          DataBinding.DataSource = dsDefault
          TabOrder = 4
          Width = 88
        end
        object dbValueEnd: TcxDBCalcEdit
          Left = 81
          Top = 96
          DataBinding.DataField = 'valueend'
          DataBinding.DataSource = dsDefault
          TabOrder = 5
          Width = 88
        end
        object dbeCounterDate: TcxDBDateEdit
          Left = 81
          Top = 6
          DataBinding.DataField = 'counterdate'
          DataBinding.DataSource = dsDefault
          TabOrder = 0
          Width = 121
        end
        object dbeShiftCode: TcxDBExtLookupComboBox
          Left = 81
          Top = 24
          DataBinding.DataField = 'shiftcode'
          DataBinding.DataSource = dsDefault
          Properties.View = dmInventory.cgvPrevShift
          Properties.KeyFieldNames = 'shiftcode'
          Properties.ListFieldItem = dmInventory.cgvPrevShiftshiftname
          TabOrder = 1
          Width = 145
        end
        object dbeEngineCode: TcxDBButtonEdit
          Left = 81
          Top = 42
          DataBinding.DataField = 'enginecode'
          DataBinding.DataSource = dsDefault
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = dbeEngineCodePropertiesButtonClick
          TabOrder = 2
          Width = 145
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
      object cgPrevDisplay: TcxGrid
        Left = 0
        Top = 0
        Width = 296
        Height = 365
        Align = alClient
        TabOrder = 0
        object cgvPrevDisplay: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDefault
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Counter = 0'
              Kind = skCount
              FieldName = 'counterdate'
              Column = cgvPrevDisplaycounterdate
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'counterdate'
              Column = cgvPrevDisplaycounterdate
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cgvPrevDisplaystatusapprove: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'statusapprove'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = dmGlobal.imgIcon16
            Properties.Items = <
              item
                Description = 'Unposting'
                ImageIndex = 7
                Value = '0'
              end
              item
                Description = 'Posting'
                ImageIndex = 6
                Value = '1'
              end
              item
                Description = 'Void'
                ImageIndex = 8
                Value = '2'
              end>
          end
          object cgvPrevDisplaycounterdate: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'counterdate'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cgvPrevDisplayshiftcode: TcxGridDBColumn
            Caption = 'Shift'
            DataBinding.FieldName = 'shiftcode'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevShift
            Properties.KeyFieldNames = 'shiftcode'
            Properties.ListFieldItem = dmInventory.cgvPrevShiftshiftname
          end
          object cgvPrevDisplayenginecode: TcxGridDBColumn
            Caption = 'Mesin'
            DataBinding.FieldName = 'enginecode'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevEngine
            Properties.KeyFieldNames = 'enginecode'
            Properties.ListFieldItem = dmInventory.cgvPrevEngineenginename
          end
          object cgvPrevDisplayjobcode: TcxGridDBColumn
            Caption = 'Pekerjaan'
            DataBinding.FieldName = 'jobcode'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmInventory.cgvPrevJobType
            Properties.KeyFieldNames = 'jobcode'
            Properties.ListFieldItem = dmInventory.cgvPrevJobTypejobname
          end
          object cgvPrevDisplayvaluestart: TcxGridDBColumn
            Caption = 'Counter Awal'
            DataBinding.FieldName = 'valuestart'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object cgvPrevDisplayvalueend: TcxGridDBColumn
            Caption = 'Counter Akhir'
            DataBinding.FieldName = 'valueend'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object cgvPrevDisplayemployeeid: TcxGridDBColumn
            Caption = 'Pegawai'
            DataBinding.FieldName = 'employeeid'
            PropertiesClassName = 'TcxExtLookupComboBoxProperties'
            Properties.View = dmGlobal.cgvPrevEmployee
            Properties.KeyFieldNames = 'EmployeeId'
            Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
            Visible = False
          end
        end
        object cgPrevDisplayLevel1: TcxGridLevel
          GridView = cgvPrevDisplay
        end
      end
    end
  end
  inherited dsDefault: TDataSource
    DataSet = qryPhysicalCounter
  end
  object qryPhysicalCounter: TUniQuery
    Connection = dmGlobal.conGlobal
    SQL.Strings = (
      'select *'
      'from PhysicalCounter'
      'where extract(year from CounterDate) = :Year'
      'and extract(month from CounterDate) = :Month'
      'order by CounterDate')
    BeforePost = qryPhysicalCounterBeforePost
    OnNewRecord = qryPhysicalCounterNewRecord
    Left = 136
    Top = 112
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
  object IvSearchBoxDAC1: TIvSearchBoxDAC
    About = 'Created by Ivan Handoyo'
    Connection = dmGlobal.conReadOnly
    ColumnOptions = <
      item
        ColumnName = 'EngineJob.enginecode'
        Caption = 'Mesin'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = True
      end
      item
        ColumnName = 'EngineJob.jobcode'
        Caption = 'Pekerjaan'
        PropertiesClass = pcText
        DisplayFormatType = dfNull
        Visible = True
      end>
    Parameters = <>
    ShowKeyword = False
    SQL.Strings = (
      'Select EngineJob.enginecode, EngineJob.jobcode'
      'From EngineJob')
    Title = 'Counter Pekerjaan Mesin'
    Version = '1.0'
    SettingFilename = 'Setting fmPhysicalCounter.cfg'
    Left = 136
    Top = 144
  end
end
