inherited fmDisplayGaji4: TfmDisplayGaji4
  Caption = 'Display Pengambilan Insidentil'
  ExplicitWidth = 600
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    object btnOK: TcxButton
      Left = 203
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = ActOK
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 4
    end
  end
  object cgDisplay: TcxGrid [1]
    Left = 0
    Top = 105
    Width = 592
    Height = 262
    Align = alClient
    TabOrder = 1
    object cgvDisplayGaji: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDisplayGaji
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = 'Total = ,0.00;(,0.00)'
          Kind = skSum
          FieldName = 'total'
          Column = cgvDisplayGajitotal
          DisplayText = 'Total'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00;(,0.00)'
          Kind = skSum
          FieldName = 'total'
          Column = cgvDisplayGajitotal
          DisplayText = 'Total'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cgvDisplayGajinotransaksipengambilan: TcxGridDBColumn
        Caption = 'No Bukti Pengambilan'
        DataBinding.FieldName = 'notransaksipengambilan'
      end
      object cgvDisplayGajitglpengambilanpayroll: TcxGridDBColumn
        Caption = 'Tgl Ambil'
        DataBinding.FieldName = 'tglpengambilanpayroll'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cgvDisplayGajinopeg: TcxGridDBColumn
        Caption = 'No Peg'
        DataBinding.FieldName = 'nopeg'
      end
      object cgvDisplayGajinama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
      end
      object cgvDisplayGajikodejabatan: TcxGridDBColumn
        Caption = 'Kode Jabatan'
        DataBinding.FieldName = 'kodejabatan'
      end
      object cgvDisplayGajinamajabatan: TcxGridDBColumn
        Caption = 'Nama Jabatan'
        DataBinding.FieldName = 'namajabatan'
      end
      object cgvDisplayGajishift: TcxGridDBColumn
        Caption = 'Shift'
        DataBinding.FieldName = 'shift'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Pagi'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Siang'
            Value = '2'
          end
          item
            Description = 'Malam'
            Value = '3'
          end>
      end
      object cgvDisplayGajitotal: TcxGridDBColumn
        Caption = 'Nominal'
        DataBinding.FieldName = 'total'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cgvDisplayGajitglcetak: TcxGridDBColumn
        Caption = 'Tgl Cetak'
        DataBinding.FieldName = 'tglcetak'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Kind = ckDateTime
      end
    end
    object cgDisplayLevel1: TcxGridLevel
      GridView = cgvDisplayGaji
    end
  end
  object pnlCustom: TPanel [2]
    Left = 0
    Top = 50
    Width = 592
    Height = 55
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 10
      Top = 10
      Width = 38
      Height = 13
      Caption = 'Tanggal'
      Transparent = True
    end
    object Label3: TLabel
      Left = 10
      Top = 32
      Width = 22
      Height = 13
      Caption = 'Shift'
      Transparent = True
    end
    object Label2: TLabel
      Left = 188
      Top = 10
      Width = 17
      Height = 13
      Caption = 'S/D'
      Transparent = True
    end
    object Label4: TLabel
      Left = 188
      Top = 32
      Width = 17
      Height = 13
      Caption = 'S/D'
      Transparent = True
    end
    object dtTgl1: TcxDateEdit
      Left = 61
      Top = 7
      TabOrder = 0
      Width = 121
    end
    object dbimgShift1: TcxImageComboBox
      Left = 61
      Top = 29
      Properties.Items = <
        item
          Description = 'Pagi'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Siang'
          Value = '2'
        end
        item
          Description = 'Malam'
          Value = '3'
        end>
      TabOrder = 1
      Width = 121
    end
    object dtTgl2: TcxDateEdit
      Left = 211
      Top = 7
      TabOrder = 2
      Width = 121
    end
    object dbimgShift2: TcxImageComboBox
      Left = 211
      Top = 29
      Properties.Items = <
        item
          Description = 'Pagi'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Siang'
          Value = '2'
        end
        item
          Description = 'Malam'
          Value = '3'
        end>
      TabOrder = 3
      Width = 121
    end
  end
  inherited ActionList1: TActionList
    Left = 240
    Top = 192
    object ActOK: TAction
      Caption = 'OK'
      ImageIndex = 0
      OnExecute = ActOKExecute
    end
    object ActPrintSummary: TAction
      Caption = 'Summary'
      ImageIndex = 3
    end
    object ActPrintDetail1: TAction
      Caption = 'Detail 1'
      ImageIndex = 3
      OnExecute = ActPrintDetail1Execute
    end
    object ActPrintDetail2: TAction
      Caption = 'Detail 2'
      ImageIndex = 3
      OnExecute = ActPrintDetail2Execute
    end
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 272
    Top = 192
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 304
    Top = 192
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 240
    Top = 224
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  object dsDisplayGaji: TDataSource
    DataSet = qryDisplayGaji3
    Left = 200
    Top = 256
  end
  object qryDisplayGaji3: TADOQuery
    Connection = dmGlobal.conGlobal
    Parameters = <
      item
        Name = 'tgl1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'shift1'
        DataType = ftBCD
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'shift2'
        DataType = ftBCD
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tgl1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'shift1'
        DataType = ftBCD
        Size = -1
        Value = Null
      end
      item
        Name = 'shift2'
        DataType = ftBCD
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.notransaksipengambilan,a.tglpengambilanpayroll,c.nopeg,' +
        'c.nama,d.kodejabatan,d.namajabatan,a.shift,e.total,a.tglcetak'
      'from transaksipengambilanpayrollhd a'
      
        'left join transaksipengambilanpayrolldt b on a.notransaksipengam' +
        'bilan=b.notransaksipengambilan'
      'left join transaksipayrollhd e on b.nopayroll=e.nopayroll '
      'left join pegawai c on a.pegawaiid=c.pegawaiid'
      'left join jabatan d on c.kodejabatan=d.kodejabatan'
      
        'where a.tglpengambilanpayroll between cast(:tgl1 as datetime) an' +
        'd cast(:tgl2 as datetime)'
      
        'and ((a.shift >=:shift1 and (a.tglpengambilanpayroll>=cast(:tgl1' +
        ' as datetime) and a.tglpengambilanpayroll<>cast(:tgl2 as datetim' +
        'e))) or'
      
        '(a.shift <=:shift2 and a.tglpengambilanpayroll<=cast(:tgl2 as da' +
        'tetime)) and tglpengambilanpayroll<>cast(:tgl1 as datetime) or'
      
        '(cast(:tgl1 as datetime)=cast(:tgl1 as datetime) and a.shift bet' +
        'ween :shift1 and :shift2 )'
      ')'
      'and substring(b.nopayroll,1,1)='#39'M'#39
      
        'group by a.notransaksipengambilan,a.tglpengambilanpayroll,c.nope' +
        'g,c.nama,d.kodejabatan,d.namajabatan,a.shift,e.total,a.tglcetak')
    Left = 168
    Top = 256
  end
end
