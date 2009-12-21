object dmShare: TdmShare
  OldCreateOrder = False
  Height = 296
  Width = 338
  object qryGetShift: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'tglschedule'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end
      item
        Name = 'jam'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      
        'from scheduling a left join jamkerja b on a.shift=b.shift and b.' +
        'kodehari=extract(dow from tglschedule)'
      'where tglschedule=:tglschedule and pegawaiid=:pegawaiid '
      'and b.dutyon<:jam'
      'order by a.shift desc limit 1')
    Left = 72
    Top = 16
  end
  object qryCheckShift: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'tglschedule'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end
      item
        Name = 'pegawaiid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select a.shift '
      'from scheduling a left join pegawai b on a.pegawaiid=b.pegawaiid'
      'where a.tglschedule=:tglschedule and a.pegawaiid=:pegawaiid '
      'and b.statusschedule='#39'1'#39
      'union'
      'select shift '
      'from pegawai '
      'where pegawaiid=:pegawaiid '
      'and statusschedule='#39'0'#39)
    Left = 72
    Top = 64
  end
  object qryGetTransactionId: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'ATableName'
        Size = -1
        Value = Null
      end
      item
        Name = 'AFieldName'
        Size = -1
        Value = Null
      end
      item
        Name = 'APrefix'
        Size = -1
        Value = Null
      end
      item
        Name = 'ALength'
        Size = -1
        Value = Null
      end
      item
        Name = 'ATransactionDate'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      
        'from fnGetTransactionId(:ATableName, :AFieldName, :APrefix, :ALe' +
        'ngth, cast(:ATransactionDate as datewithouttime))')
    Left = 72
    Top = 112
  end
  object qryGetTransactionIdNotDate: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'ATableName'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'AFieldName'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'APrefix'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'ALength'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      
        'from fnGetTransactionIdNotDate(:ATableName, :AFieldName, :APrefi' +
        'x, :ALength)')
    Left = 72
    Top = 160
  end
  object qryGetTransactionStatus: TADOQuery
    Connection = dmGlobal.conReadOnly
    Parameters = <
      item
        Name = 'ATableName'
        Size = -1
        Value = Null
      end
      item
        Name = 'AFieldName'
        Size = -1
        Value = Null
      end
      item
        Name = 'ATransactionId'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      
        'from fnGetTransactionStatus(:ATableName, :AFieldName, :ATransact' +
        'ionId)')
    Left = 72
    Top = 208
  end
end
