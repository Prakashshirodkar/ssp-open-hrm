object WageDM: TWageDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 511
  Top = 223
  Height = 278
  Width = 319
  object qryGetValue: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    OnError = qryGetValueError
    BeforeOpen = qryGetValueBeforeOpen
    FieldOptions = []
    Left = 64
    Top = 16
  end
  object qryGetParamList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ORDER_INDEX'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select hr_get_param_list.param_no,'
      '       hr_get_param_list.param_type'
      'from hr_get_param_list(:ORDER_INDEX)')
    FieldOptions = []
    Left = 160
    Top = 16
    object qryGetParamListPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Size = 60
    end
    object qryGetParamListPARAM_TYPE: TWideStringField
      FieldName = 'PARAM_TYPE'
      Size = 30
    end
  end
  object qryGetParamValues: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DEPT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VIEW_ALL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'AT_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'AT_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'AT_PERIOD'
        ParamType = ptInput
      end>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      '    EMPLOYEE_NO,'
      '    FULL_NAME,'
      '    POSITION_NO,'
      '    TITLE_NO,'
      '    TITLE_NAME,'
      '    DEPT_NO,'
      '    DEPT_NAME,'
      '    WAGE_METHOD,'
      '    PARAM_NO,'
      '    PARAM_NAME,'
      '    PARAM_TYPE,'
      '    PARAM_VALUE,'
      '    PARAM_EXPRESSION,'
      '    PARAM_FLAG,'
      '    RESULT_TYPE'
      'from hr_wage_param_values(:USER_NAME,:DEPT_NO,:VIEW_ALL,:STATE,'
      ' :AT_MONTH,:AT_YEAR,:AT_PERIOD)')
    FieldOptions = []
    Left = 64
    Top = 88
    object qryGetParamValuesEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryGetParamValuesFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Size = 129
    end
    object qryGetParamValuesPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
    object qryGetParamValuesTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object qryGetParamValuesTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryGetParamValuesDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryGetParamValuesDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryGetParamValuesPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Size = 60
    end
    object qryGetParamValuesPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Size = 126
    end
    object qryGetParamValuesPARAM_TYPE: TWideStringField
      FieldName = 'PARAM_TYPE'
      Size = 30
    end
    object qryGetParamValuesPARAM_VALUE: TIBOFloatField
      FieldName = 'PARAM_VALUE'
    end
    object qryGetParamValuesPARAM_EXPRESSION: TWideStringField
      FieldName = 'PARAM_EXPRESSION'
      Size = 3072
    end
    object qryGetParamValuesPARAM_FLAG: TSmallintField
      FieldName = 'PARAM_FLAG'
    end
    object qryGetParamValuesWAGE_METHOD: TWideStringField
      FieldName = 'WAGE_METHOD'
      Size = 30
    end
    object qryGetParamValuesRESULT_TYPE: TSmallintField
      FieldName = 'RESULT_TYPE'
    end
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Working\Demo\Database\SSP_HRM_DB_20.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = dmMain.trConcurency
    Unicode = True
    RecordCountAccurate = True
    BeforeOpen = qryExecuteBeforeOpen
    FieldOptions = []
    Left = 160
    Top = 88
  end
end
