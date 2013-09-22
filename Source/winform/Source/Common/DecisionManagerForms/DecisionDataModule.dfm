object DecisionDM: TDecisionDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 318
  Top = 144
  Height = 572
  Width = 828
  object dsgDecision: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rpDecision
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 407
    Top = 62
  end
  object dsDecisions: TDataSource
    DataSet = qryDecisions
    Left = 18
    Top = 62
  end
  object dsDecision_Emp: TDataSource
    DataSet = qryDecision_Emp
    Left = 81
    Top = 62
  end
  object qryDecisions: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LANGUAGE_ID'
        ParamType = ptInput
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_DECISION'
      'WHERE'
      '   DECISION_NO = :OLD_DECISION_NO')
    EditSQL.Strings = (
      'UPDATE HR_DECISION SET'
      '   DECISION_NO = :DECISION_NO, /*PK*/'
      '   DECISION_DATE = :DECISION_DATE,'
      '   ISSUE_DATE = :ISSUE_DATE,'
      '   DECISION_TITLE = :DECISION_TITLE,'
      '   DEPT_NO = :DEPT_NO,'
      '   DECISION_TYPE_NO = :DECISION_TYPE_NO,'
      '   DECISION_SIGNER = :DECISION_SIGNER,'
      '   TEMPLATE_FILE = :TEMPLATE_FILE,'
      '   FILE_NAME = :FILE_NAME,'
      '   FILE_CONTENT = :FILE_CONTENT,'
      '   DECISION_NOTE = :DECISION_NOTE,'
      '   DECISION_CONTENT = :DECISION_CONTENT,'
      '   QD_THAT = :QD_THAT'
      'WHERE'
      '   DECISION_NO = :OLD_DECISION_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_DECISION('
      '   DECISION_NO, /*PK*/'
      '   DECISION_DATE,'
      '   ISSUE_DATE,'
      '   DECISION_TITLE,'
      '   DEPT_NO,'
      '   DECISION_TYPE_NO,'
      '   DECISION_SIGNER,'
      '   TEMPLATE_FILE,'
      '   FILE_NAME,'
      '   FILE_CONTENT,'
      '   DECISION_NOTE,'
      '   DECISION_CONTENT,'
      '   QD_THAT)'
      'VALUES ('
      '   :DECISION_NO,'
      '   :DECISION_DATE,'
      '   :ISSUE_DATE,'
      '   :DECISION_TITLE,'
      '   :DEPT_NO,'
      '   :DECISION_TYPE_NO,'
      '   :DECISION_SIGNER,'
      '   :TEMPLATE_FILE,'
      '   :FILE_NAME,'
      '   :FILE_CONTENT,'
      '   :DECISION_NOTE,'
      '   :DECISION_CONTENT,'
      '   :QD_THAT)')
    KeyLinks.Strings = (
      'HR_DECISION.DECISION_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforeDelete = qryDecisionsBeforeDelete
    AfterPost = qryDecisionsAfterPost
    OnNewRecord = qryDecisionsNewRecord
    SQL.Strings = (
      'SELECT HR_DECISION.DECISION_NO'
      '     , DECISION_DATE'
      '     , ISSUE_DATE'
      '     , DECISION_TITLE'
      '     , HR_DECISION.DEPT_NO'
      '     , HR_DEPARTMENT.DEPT_NAME'
      '     , HR_DECISION.decision_type_no'
      '     , hr_mask_decision_type.dcs_type_name'
      '     , DECISION_SIGNER'
      '     , TEMPLATE_FILE  '
      '     , FILE_NAME '
      '     , FILE_CONTENT'
      '     , DECISION_NOTE'
      '     , DECISION_CONTENT'
      '     , QD_THAT'
      'FROM HR_DECISION'
      'JOIN HR_DEPARTMENT '
      '  ON HR_DECISION.DEPT_NO=HR_DEPARTMENT.DEPT_NO'
      'JOIN hr_mask_decision_type(:USER_NAME,:LANGUAGE_ID)'
      
        '  ON HR_DECISION.DECISION_TYPE_NO=hr_mask_decision_type.DCS_TYPE' +
        '_NO')
    FieldOptions = []
    Left = 18
    Top = 8
    object qryDecisionsDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Required = True
      Size = 30
    end
    object qryDecisionsDECISION_DATE: TDateField
      FieldName = 'DECISION_DATE'
      Required = True
    end
    object qryDecisionsDECISION_TITLE: TWideStringField
      FieldName = 'DECISION_TITLE'
      Required = True
      Size = 126
    end
    object qryDecisionsDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 30
    end
    object qryDecisionsDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryDecisionsDECISION_TYPE_NO: TWideStringField
      FieldName = 'DECISION_TYPE_NO'
      Required = True
      Size = 30
    end
    object qryDecisionsDCS_TYPE_NAME: TWideStringField
      FieldName = 'DCS_TYPE_NAME'
      Size = 126
    end
    object qryDecisionsDECISION_SIGNER: TWideStringField
      FieldName = 'DECISION_SIGNER'
      Size = 63
    end
    object qryDecisionsTEMPLATE_FILE: TWideStringField
      FieldName = 'TEMPLATE_FILE'
      Size = 30
    end
    object qryDecisionsFILE_NAME: TWideStringField
      FieldName = 'FILE_NAME'
      Size = 30
    end
    object qryDecisionsFILE_CONTENT: TBlobField
      FieldName = 'FILE_CONTENT'
      Size = 8
    end
    object qryDecisionsDECISION_NOTE: TWideStringField
      FieldName = 'DECISION_NOTE'
      Size = 3072
    end
    object qryDecisionsDECISION_CONTENT: TBlobField
      FieldName = 'DECISION_CONTENT'
      Size = 8
    end
    object qryDecisionsISSUE_DATE: TDateField
      FieldName = 'ISSUE_DATE'
    end
    object qryDecisionsQD_THAT: TSmallintField
      FieldName = 'QD_THAT'
    end
  end
  object qryDecision_Emp: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_DECISION_EMP'
      'WHERE'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    EditSQL.Strings = (
      'UPDATE HR_DECISION_EMP SET'
      '   DECISION_NO = :DECISION_NO, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO  /*PK*/'
      'WHERE'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_DECISION_EMP('
      '   DECISION_NO, /*PK*/'
      '   EMPLOYEE_NO) /*PK*/'
      'VALUES ('
      '   :DECISION_NO,'
      '   :EMPLOYEE_NO)')
    KeyLinks.Strings = (
      'HR_DECISION_EMP.DECISION_NO'
      'HR_DECISION_EMP.EMPLOYEE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    AfterScroll = qryDecision_EmpAfterScroll
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT HR_DECISION_EMP.DECISION_NO'
      '     , HR_DECISION_EMP.EMPLOYEE_NO'
      '     , HR_MASK_EMPLOYEE.FULL_NAME '
      '     , HR_MASK_EMPLOYEE.BIRTH_DATE'
      '     , HR_MASK_EMPLOYEE.GENDER'
      '     , HR_MASK_EMPLOYEE.GENDER_TEXT'
      '     , HR_MASK_EMPLOYEE.GENDER_TEXT_ENG'
      '     , HR_EDU_LEVEL.EDU_LEVEL_NAME'
      '     , HR_CAREER.CAREER_NAME'
      '     , HR_MASK_EMPLOYEE.EMAIL '
      '     , (SELECT FIRST 1 HR_DEPARTMENT.DEPT_NAME'
      '        FROM HR_DEPARTMENT'
      
        '        JOIN HR_ASSIGNMENT ON HR_DEPARTMENT.DEPT_NO = HR_ASSIGNM' +
        'ENT.DEPT_NO'
      '        WHERE HR_ASSIGNMENT.IS_MAIN_POSITION =1'
      
        '        AND HR_ASSIGNMENT.ASSIGNED_DATE < HR_DECISION.DECISION_D' +
        'ATE'
      
        '        AND HR_ASSIGNMENT.EMPLOYEE_NO = HR_DECISION_EMP.EMPLOYEE' +
        '_NO'
      '        ORDER BY HR_ASSIGNMENT.ASSIGNED_DATE DESC ) DEPT_NAME'
      '     , (SELECT FIRST 1 HR_TITLE.TITLE_NAME '
      '        FROM HR_TITLE'
      
        '        JOIN HR_ASSIGNMENT ON HR_TITLE.TITLE_NO = HR_ASSIGNMENT.' +
        'TITLE_NO'
      '        WHERE HR_ASSIGNMENT.IS_MAIN_POSITION =1'
      
        '        AND HR_ASSIGNMENT.ASSIGNED_DATE <= HR_DECISION.DECISION_' +
        'DATE'
      
        '        AND HR_ASSIGNMENT.EMPLOYEE_NO = HR_DECISION_EMP.EMPLOYEE' +
        '_NO'
      '        ORDER BY HR_ASSIGNMENT.ASSIGNED_DATE DESC ) TITLE_NAME'
      
        '     , (SELECT FIRST 1 HR_TITLE.TITLE_NAME || '#39' - '#39' || HR_DEPART' +
        'MENT.DEPT_NAME'
      '        FROM HR_DEPARTMENT'
      
        '        JOIN HR_ASSIGNMENT ON HR_DEPARTMENT.DEPT_NO = HR_ASSIGNM' +
        'ENT.DEPT_NO'
      
        '        JOIN HR_TITLE ON HR_TITLE.TITLE_NO = HR_ASSIGNMENT.TITLE' +
        '_NO'
      '        WHERE HR_ASSIGNMENT.IS_MAIN_POSITION =1'
      
        '        AND HR_ASSIGNMENT.ASSIGNED_DATE <= HR_DECISION.DECISION_' +
        'DATE'
      
        '        AND HR_ASSIGNMENT.EMPLOYEE_NO = HR_DECISION_EMP.EMPLOYEE' +
        '_NO'
      
        '        ORDER BY HR_ASSIGNMENT.ASSIGNED_DATE DESC ) POSITION_NAM' +
        'E'
      '    ,  (SELECT FIRST 1 A.DECISION_NO'
      '        FROM HR_DECISION A'
      '        JOIN HR_DECISION_EMP B ON A.DECISION_NO = B.DECISION_NO '
      '        WHERE A.DECISION_TYPE_NO = '#39'BONHIEM'#39
      '        AND A.DECISION_DATE < HR_DECISION.DECISION_DATE'
      '        AND B.EMPLOYEE_NO = HR_DECISION_EMP.EMPLOYEE_NO'
      '        ORDER BY A.DECISION_DATE) PRE_DECISION_NO'
      '   ,  (SELECT FIRST 1 A.DECISION_DATE'
      '        FROM HR_DECISION A'
      '        JOIN HR_DECISION_EMP B ON A.DECISION_NO = B.DECISION_NO '
      '        WHERE A.DECISION_TYPE_NO = '#39'BONHIEM'#39
      '        AND A.DECISION_DATE < HR_DECISION.DECISION_DATE'
      '        AND B.EMPLOYEE_NO = HR_DECISION_EMP.EMPLOYEE_NO'
      '        ORDER BY A.DECISION_DATE) PRE_DECISION_DATE'
      'FROM HR_DECISION_EMP'
      'JOIN HR_MASK_EMPLOYEE(:USER_NAME) '
      '  on HR_DECISION_EMP.EMPLOYEE_NO=HR_MASK_EMPLOYEE.EMPLOYEE_NO '
      'JOIN HR_EMP_PRIVATE_INFO'
      
        '  ON HR_MASK_EMPLOYEE.EMPLOYEE_NO=HR_EMP_PRIVATE_INFO.EMPLOYEE_N' +
        'O'
      
        'JOIN HR_DECISION ON HR_DECISION_EMP.DECISION_NO = HR_DECISION.DE' +
        'CISION_NO'
      'LEFT JOIN HR_EDU_LEVEL on TRINH_DO=EDU_LEVEL_NO'
      'LEFT JOIN HR_CAREER on NGHE_NGHIEP=CAREER_NO'
      'WHERE HR_DECISION_EMP.DECISION_NO=:DECISION_NO')
    FieldOptions = []
    Left = 81
    Top = 8
    object qryDecision_EmpDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Required = True
      Size = 30
    end
    object qryDecision_EmpEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryDecision_EmpFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Required = True
      Size = 96
    end
    object qryDecision_EmpBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object qryDecision_EmpGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryDecision_EmpGENDER_TEXT: TWideStringField
      FieldName = 'GENDER_TEXT'
      Size = 30
    end
    object qryDecision_EmpGENDER_TEXT_ENG: TWideStringField
      FieldName = 'GENDER_TEXT_ENG'
      Size = 30
    end
    object qryDecision_EmpEDU_LEVEL_NAME: TWideStringField
      FieldName = 'EDU_LEVEL_NAME'
      Size = 126
    end
    object qryDecision_EmpCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Size = 126
    end
    object qryDecision_EmpEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 63
    end
    object qryDecision_EmpDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryDecision_EmpTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryDecision_EmpPOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      ReadOnly = True
      Size = 261
    end
    object qryDecision_EmpPRE_DECISION_NO: TWideStringField
      FieldName = 'PRE_DECISION_NO'
      ReadOnly = True
      Size = 30
    end
    object qryDecision_EmpPRE_DECISION_DATE: TDateField
      FieldName = 'PRE_DECISION_DATE'
      ReadOnly = True
    end
  end
  object dsChitietBonhiem: TDataSource
    DataSet = qryChitietBonhiem
    Left = 138
    Top = 62
  end
  object qryChitietBonhiem: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_ASSIGNMENT'
      'WHERE'
      '   ASSIGNED_DATE = :OLD_ASSIGNED_DATE AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    EditSQL.Strings = (
      'UPDATE HR_ASSIGNMENT SET'
      '   ASSIGNED_DATE = :ASSIGNED_DATE, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   POSITION_NO = :POSITION_NO, /*PK*/'
      '   ENDED_DATE = :ENDED_DATE,'
      '   IS_MAIN_POSITION = :IS_MAIN_POSITION,'
      '   DECISION_NO = :DECISION_NO,'
      '   TG_GIU_CHUCVU = :TG_GIU_CHUCVU'
      'WHERE'
      '   ASSIGNED_DATE = :OLD_ASSIGNED_DATE AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_ASSIGNMENT('
      '   ASSIGNED_DATE, /*PK*/'
      '   EMPLOYEE_NO, /*PK*/'
      '   POSITION_NO, /*PK*/'
      '   ENDED_DATE,'
      '   IS_MAIN_POSITION,'
      '   DECISION_NO,'
      '   TG_GIU_CHUCVU)'
      'VALUES ('
      '   :ASSIGNED_DATE,'
      '   :EMPLOYEE_NO,'
      '   :POSITION_NO,'
      '   :ENDED_DATE,'
      '   :IS_MAIN_POSITION,'
      '   :DECISION_NO,'
      '   :TG_GIU_CHUCVU)')
    KeyLinks.Strings = (
      'HR_ASSIGNMENT.ASSIGNED_DATE'
      'HR_ASSIGNMENT.EMPLOYEE_NO'
      'HR_ASSIGNMENT.POSITION_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryChitietBonhiemBeforePost
    AfterPost = qryChitietBonhiemAfterPost
    OnNewRecord = qryChitietBonhiemNewRecord
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT HR_ASSIGNMENT.EMPLOYEE_NO'
      '     , HR_MASK_EMPLOYEE.FULL_NAME'
      '     , HR_MASK_EMPLOYEE.GENDER_TEXT'
      '     , HR_MASK_EMPLOYEE.GENDER_TEXT_ENG'
      '     , HR_ASSIGNMENT.POSITION_NO'
      
        '     , HR_TITLE.TITLE_NAME||'#39' - '#39'||HR_DEPARTMENT.DEPT_NAME POSIT' +
        'ION_TITLE'
      '     , HR_ASSIGNMENT.ASSIGNED_DATE'
      '     , HR_ASSIGNMENT.ENDED_DATE'
      '     , HR_ASSIGNMENT.IS_MAIN_POSITION'
      '     , HR_ASSIGNMENT.DECISION_NO'
      '     , HR_POSITION.DEPT_NO'
      '     , HR_POSITION.TITLE_NO'
      '     , HR_DEPARTMENT.DEPT_NAME'
      '     , HR_TITLE.TITLE_NAME'
      '     , HR_ASSIGNMENT.TG_GIU_CHUCVU'
      'FROM HR_ASSIGNMENT'
      'JOIN HR_MASK_EMPLOYEE(:USER_NAME) '
      ' on HR_ASSIGNMENT.EMPLOYEE_NO=HR_MASK_EMPLOYEE.EMPLOYEE_NO'
      'JOIN HR_POSITION '
      ' on HR_ASSIGNMENT.POSITION_NO=HR_POSITION.POSITION_NO'
      'JOIN HR_TITLE ON HR_POSITION.TITLE_NO=HR_TITLE.TITLE_NO'
      'JOIN HR_DEPARTMENT ON HR_POSITION.DEPT_NO=HR_DEPARTMENT.DEPT_NO'
      'where HR_ASSIGNMENT.DECISION_NO=:DECISION_NO')
    FieldOptions = []
    Left = 138
    Top = 8
    object qryChitietBonhiemEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryChitietBonhiemFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Required = True
      Size = 96
    end
    object qryChitietBonhiemPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryChitietBonhiemPOSITION_TITLE: TWideStringField
      FieldName = 'POSITION_TITLE'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object qryChitietBonhiemASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
      Required = True
    end
    object qryChitietBonhiemENDED_DATE: TDateField
      FieldName = 'ENDED_DATE'
    end
    object qryChitietBonhiemIS_MAIN_POSITION: TSmallintField
      FieldName = 'IS_MAIN_POSITION'
    end
    object qryChitietBonhiemDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Size = 30
    end
    object qryChitietBonhiemDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryChitietBonhiemTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object qryChitietBonhiemDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryChitietBonhiemTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryChitietBonhiemGENDER_TEXT: TWideStringField
      FieldName = 'GENDER_TEXT'
      Size = 30
    end
    object qryChitietBonhiemGENDER_TEXT_ENG: TWideStringField
      FieldName = 'GENDER_TEXT_ENG'
      Size = 30
    end
    object qryChitietBonhiemTG_GIU_CHUCVU: TIBOFloatField
      FieldName = 'TG_GIU_CHUCVU'
    end
  end
  object qryGetMainPositionList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryChitietBonhiemNewRecord
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT'
      '  POSITION_NO ,'
      '  TITLE_NAME ,'
      '  DEPT_NAME ,'
      '  ASSIGNED_DATE,'
      '  DECISION_NO '
      'from HR_SP_MAINPOSITION_LIST(:EMPLOYEE_NO)')
    FieldOptions = []
    Left = 407
    Top = 304
    object qryGetMainPositionListPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 60
    end
    object qryGetMainPositionListTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryGetMainPositionListDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryGetMainPositionListASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
    end
    object qryGetMainPositionListDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Size = 30
    end
  end
  object dsChitietThoiCV: TDataSource
    DataSet = qryChitietThoiCV
    Left = 199
    Top = 62
  end
  object qryChitietThoiCV: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_DISMISSION'
      'WHERE'
      '   ASSIGNED_DATE = :OLD_ASSIGNED_DATE AND'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    EditSQL.Strings = (
      'UPDATE HR_DISMISSION SET'
      '   ASSIGNED_DATE = :ASSIGNED_DATE, /*PK*/'
      '   DECISION_NO = :DECISION_NO, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   POSITION_NO = :POSITION_NO, /*PK*/'
      '   DISMISS_DATE = :DISMISS_DATE,'
      '   DISMISS_NOTES = :DISMISS_NOTES,'
      '   THOIGIAN_CHOVIEC= :THOIGIAN_CHOVIEC,'
      '   NGAY_HETHAN_CHOVIEC = :NGAY_HETHAN_CHOVIEC'
      'WHERE'
      '   ASSIGNED_DATE = :OLD_ASSIGNED_DATE AND'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   POSITION_NO = :OLD_POSITION_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_DISMISSION('
      '   ASSIGNED_DATE, /*PK*/'
      '   DECISION_NO, /*PK*/'
      '   EMPLOYEE_NO, /*PK*/'
      '   POSITION_NO, /*PK*/'
      '   DISMISS_DATE,'
      '   DISMISS_NOTES,'
      '   THOIGIAN_CHOVIEC,'
      '   NGAY_HETHAN_CHOVIEC)'
      'VALUES ('
      '   :ASSIGNED_DATE,'
      '   :DECISION_NO,'
      '   :EMPLOYEE_NO,'
      '   :POSITION_NO,'
      '   :DISMISS_DATE,'
      '   :DISMISS_NOTES,'
      '   :THOIGIAN_CHOVIEC,'
      '   :NGAY_HETHAN_CHOVIEC)')
    KeyLinks.Strings = (
      'HR_DISMISSION.DECISION_NO'
      'HR_DISMISSION.EMPLOYEE_NO'
      'HR_DISMISSION.POSITION_NO'
      'HR_DISMISSION.ASSIGNED_DATE')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryChitietThoiCVNewRecord
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT HR_DISMISSION.DECISION_NO'
      '     , HR_DISMISSION.EMPLOYEE_NO'
      '     , HR_MASK_EMPLOYEE.FULL_NAME'
      '     , HR_MASK_EMPLOYEE.GENDER_TEXT'
      '     , HR_MASK_EMPLOYEE.GENDER_TEXT_ENG'
      '     , HR_DISMISSION.POSITION_NO'
      
        '     , HR_TITLE.TITLE_NAME||'#39' - '#39'||HR_DEPARTMENT.DEPT_NAME POSIT' +
        'ION_TITLE'
      '     , HR_DISMISSION.ASSIGNED_DATE'
      '     , HR_DISMISSION.DISMISS_DATE'
      '     , HR_DISMISSION.DISMISS_NOTES'
      '     , HR_POSITION.DEPT_NO'
      '     , HR_POSITION.TITLE_NO'
      '     , HR_DEPARTMENT.DEPT_NAME'
      '     , HR_TITLE.TITLE_NAME'
      '     , THOIGIAN_CHOVIEC'
      '     , NGAY_HETHAN_CHOVIEC'
      'FROM HR_DISMISSION'
      'JOIN HR_MASK_EMPLOYEE(:USER_NAME) '
      ' on HR_DISMISSION.EMPLOYEE_NO=HR_MASK_EMPLOYEE.EMPLOYEE_NO'
      'JOIN HR_POSITION '
      ' on HR_DISMISSION.POSITION_NO=HR_POSITION.POSITION_NO'
      'JOIN HR_TITLE ON HR_POSITION.TITLE_NO=HR_TITLE.TITLE_NO'
      'JOIN HR_DEPARTMENT ON HR_POSITION.DEPT_NO=HR_DEPARTMENT.DEPT_NO'
      'where HR_DISMISSION.DECISION_NO=:DECISION_NO')
    FieldOptions = []
    Left = 199
    Top = 8
    object qryChitietThoiCVDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Required = True
      Size = 30
    end
    object qryChitietThoiCVEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryChitietThoiCVFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Required = True
      Size = 96
    end
    object qryChitietThoiCVPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Required = True
      Size = 30
    end
    object qryChitietThoiCVPOSITION_TITLE: TWideStringField
      FieldName = 'POSITION_TITLE'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object qryChitietThoiCVASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
      Required = True
    end
    object qryChitietThoiCVDISMISS_DATE: TDateField
      FieldName = 'DISMISS_DATE'
      Required = True
      OnChange = qryChitietThoiCVDISMISS_DATEChange
    end
    object qryChitietThoiCVDISMISS_NOTES: TWideStringField
      FieldName = 'DISMISS_NOTES'
      Size = 3072
    end
    object qryChitietThoiCVDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 15
    end
    object qryChitietThoiCVTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 15
    end
    object qryChitietThoiCVDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryChitietThoiCVTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryChitietThoiCVGENDER_TEXT: TWideStringField
      FieldName = 'GENDER_TEXT'
      Size = 30
    end
    object qryChitietThoiCVGENDER_TEXT_ENG: TWideStringField
      FieldName = 'GENDER_TEXT_ENG'
      Size = 30
    end
    object qryChitietThoiCVTHOIGIAN_CHOVIEC: TIBOFloatField
      FieldName = 'THOIGIAN_CHOVIEC'
      OnChange = qryChitietThoiCVTHOIGIAN_CHOVIECChange
    end
    object qryChitietThoiCVNGAY_HETHAN_CHOVIEC: TDateField
      FieldName = 'NGAY_HETHAN_CHOVIEC'
    end
  end
  object qryOffWork: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_OFF_WORK'
      'WHERE'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    EditSQL.Strings = (
      'UPDATE HR_OFF_WORK SET'
      '   DECISION_NO = :DECISION_NO, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   OFF_DATE = :OFF_DATE,'
      '   OFF_NOTE = :OFF_NOTE,'
      '   OFF_REASON = :OFF_REASON'
      'WHERE'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_OFF_WORK('
      '   DECISION_NO, /*PK*/'
      '   EMPLOYEE_NO, /*PK*/'
      '   OFF_DATE,'
      '   OFF_NOTE,'
      '   OFF_REASON)'
      'VALUES ('
      '   :DECISION_NO,'
      '   :EMPLOYEE_NO,'
      '   :OFF_DATE,'
      '   :OFF_NOTE,'
      '   :OFF_REASON)')
    KeyLinks.Strings = (
      'hr_off_work.DECISION_NO'
      'hr_off_work.EMPLOYEE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryOffWorkNewRecord
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT  HR_OFF_WORK.DECISION_NO'
      '     , HR_OFF_WORK.EMPLOYEE_NO'
      
        '     , HR_EMPLOYEE.LAST_NAME||'#39' '#39'||HR_EMPLOYEE.MIDDLE_NAME||'#39' '#39'|' +
        '|HR_EMPLOYEE.FIRST_NAME FULL_NAME'
      '     , HR_OFF_WORK.OFF_DATE'
      '     , HR_OFF_WORK.OFF_NOTE'
      '     , HR_EMPLOYEE.BIRTH_DATE'
      '     , HR_EMPLOYEE.GENDER'
      
        '     , CASE HR_EMPLOYEE.GENDER WHEN 1 THEN '#39#195#8221'ng'#39' ELSE '#39'B'#195#160#39' END' +
        ' GENDER_TEXT'
      
        '     , CASE HR_EMPLOYEE.GENDER WHEN 1 THEN '#39'Mr'#39' ELSE '#39'Ms'#39' END GE' +
        'NDER_TEXT_ENG'
      '     , OFF_REASON'
      '     , REASON_NAME'
      '     , (SELECT FIRST 1 HR_DEPARTMENT.DEPT_NAME'
      '        FROM HR_DEPARTMENT'
      
        '        JOIN HR_ASSIGNMENT ON HR_DEPARTMENT.DEPT_NO = HR_ASSIGNM' +
        'ENT.DEPT_NO'
      '        WHERE HR_ASSIGNMENT.IS_MAIN_POSITION =1'
      '        AND HR_ASSIGNMENT.ASSIGNED_DATE <= HR_OFF_WORK.OFF_DATE'
      '        AND HR_ASSIGNMENT.EMPLOYEE_NO = HR_OFF_WORK.EMPLOYEE_NO '
      '        ORDER BY HR_ASSIGNMENT.ASSIGNED_DATE DESC ) DEPT_NAME'
      '     , (SELECT FIRST 1 HR_TITLE.TITLE_NAME '
      '        FROM HR_TITLE'
      
        '        JOIN HR_ASSIGNMENT ON HR_TITLE.TITLE_NO = HR_ASSIGNMENT.' +
        'TITLE_NO'
      '        WHERE HR_ASSIGNMENT.IS_MAIN_POSITION =1'
      '        AND HR_ASSIGNMENT.ASSIGNED_DATE <= HR_OFF_WORK.OFF_DATE'
      '        AND HR_ASSIGNMENT.EMPLOYEE_NO = HR_OFF_WORK.EMPLOYEE_NO'
      '        ORDER BY HR_ASSIGNMENT.ASSIGNED_DATE DESC ) TITLE_NAME'
      
        '     , (SELECT FIRST 1 HR_TITLE.TITLE_NAME || '#39' - '#39' || HR_DEPART' +
        'MENT.DEPT_NAME'
      '        FROM HR_DEPARTMENT'
      
        '        JOIN HR_ASSIGNMENT ON HR_DEPARTMENT.DEPT_NO = HR_ASSIGNM' +
        'ENT.DEPT_NO'
      
        '        JOIN HR_TITLE ON HR_TITLE.TITLE_NO = HR_ASSIGNMENT.TITLE' +
        '_NO'
      '        WHERE HR_ASSIGNMENT.IS_MAIN_POSITION =1'
      '        AND HR_ASSIGNMENT.ASSIGNED_DATE <= HR_OFF_WORK.OFF_DATE'
      '        AND HR_ASSIGNMENT.EMPLOYEE_NO = HR_OFF_WORK.EMPLOYEE_NO'
      
        '        ORDER BY HR_ASSIGNMENT.ASSIGNED_DATE DESC ) POSITION_NAM' +
        'E'
      '     , (SELECT FIRST 1 HR_CONTRACT.CONTRACT_NO'
      '        FROM HR_CONTRACT'
      '        WHERE HR_CONTRACT.STARTED_DATE <= HR_OFF_WORK.OFF_DATE '
      '        AND HR_CONTRACT.EMPLOYEE_NO = HR_OFF_WORK.EMPLOYEE_NO '
      '        ORDER BY HR_CONTRACT.STARTED_DATE DESC) CONTRACT_NO'
      '     , (SELECT FIRST 1 HR_CONTRACT.EXPIRED_DATE '
      '        FROM HR_CONTRACT'
      '        WHERE HR_CONTRACT.STARTED_DATE <= HR_OFF_WORK.OFF_DATE '
      '        AND HR_CONTRACT.EMPLOYEE_NO = HR_OFF_WORK.EMPLOYEE_NO '
      
        '        ORDER BY HR_CONTRACT.STARTED_DATE DESC)  NGAY_HETHAN_HDL' +
        'D'
      '     , (SELECT FIRST 1 HR_CONTRACT.STARTED_DATE'
      '        FROM HR_CONTRACT'
      '        WHERE HR_CONTRACT.STARTED_DATE <= HR_OFF_WORK.OFF_DATE '
      '        AND HR_CONTRACT.EMPLOYEE_NO = HR_OFF_WORK.EMPLOYEE_NO '
      '        ORDER BY HR_CONTRACT.STARTED_DATE DESC)  NGAY_KY_HDLD'
      '     , (SELECT FIRST 1 HR_CONTRACT_TYPE.CONTRACT_TYPE_NAME'
      '        FROM HR_CONTRACT'
      
        '        JOIN HR_CONTRACT_TYPE ON HR_CONTRACT.CONTRACT_TYPE_NO = ' +
        'HR_CONTRACT_TYPE.CONTRACT_TYPE_NO '
      '        WHERE HR_CONTRACT.STARTED_DATE <= HR_OFF_WORK.OFF_DATE '
      '        AND HR_CONTRACT.EMPLOYEE_NO = HR_OFF_WORK.EMPLOYEE_NO '
      
        '        ORDER BY HR_CONTRACT.STARTED_DATE DESC) CONTRACT_TYPE_NA' +
        'ME'
      '     , HR_EMPLOYEE.BIRTH_PLACE_ID'
      '     , HR_EMPLOYEE.RESIDENT_ADDR '
      '     , HR_EMPLOYEE.CONTACT_ADDR '
      '     , HR_BAOHIEM_SODANGKY.MASO_BHXH '
      'FROM HR_OFF_WORK'
      
        'LEFT JOIN HR_EMPLOYEE ON HR_OFF_WORK.EMPLOYEE_NO = HR_EMPLOYEE.E' +
        'MPLOYEE_NO'
      'LEFT JOIN HR_OFF_WORK_REASON ON OFF_REASON=REASON_NO'
      
        'LEFT JOIN HR_BAOHIEM_SODANGKY ON HR_EMPLOYEE.EMPLOYEE_NO = HR_BA' +
        'OHIEM_SODANGKY.EMPLOYEE_NO '
      'WHERE HR_OFF_WORK.DECISION_NO=:DECISION_NO')
    FieldOptions = []
    Left = 265
    Top = 8
    object qryOffWorkDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Size = 30
    end
    object qryOffWorkFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Required = True
      Size = 129
    end
    object qryOffWorkEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryOffWorkOFF_DATE: TDateField
      FieldName = 'OFF_DATE'
      Required = True
    end
    object qryOffWorkOFF_NOTE: TWideStringField
      FieldName = 'OFF_NOTE'
      Size = 3072
    end
    object qryOffWorkBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object qryOffWorkGENDER: TSmallintField
      FieldName = 'GENDER'
    end
    object qryOffWorkGENDER_TEXT: TWideStringField
      FieldName = 'GENDER_TEXT'
      ReadOnly = True
      Size = 9
    end
    object qryOffWorkOFF_REASON: TWideStringField
      FieldName = 'OFF_REASON'
      Size = 30
    end
    object qryOffWorkREASON_NAME: TWideStringField
      FieldName = 'REASON_NAME'
      Size = 126
    end
    object qryOffWorkGENDER_TEXT_ENG: TWideStringField
      FieldName = 'GENDER_TEXT_ENG'
      ReadOnly = True
      Size = 6
    end
    object qryOffWorkDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryOffWorkTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryOffWorkPOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      ReadOnly = True
      Size = 261
    end
    object qryOffWorkCONTRACT_NO: TWideStringField
      FieldName = 'CONTRACT_NO'
      ReadOnly = True
      Size = 30
    end
    object qryOffWorkNGAY_HETHAN_HDLD: TDateField
      FieldName = 'NGAY_HETHAN_HDLD'
      ReadOnly = True
    end
    object qryOffWorkNGAY_KY_HDLD: TDateField
      FieldName = 'NGAY_KY_HDLD'
      ReadOnly = True
    end
    object qryOffWorkCONTRACT_TYPE_NAME: TWideStringField
      FieldName = 'CONTRACT_TYPE_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryOffWorkBIRTH_PLACE_ID: TWideStringField
      FieldName = 'BIRTH_PLACE_ID'
      Size = 126
    end
    object qryOffWorkRESIDENT_ADDR: TWideStringField
      FieldName = 'RESIDENT_ADDR'
      Size = 255
    end
    object qryOffWorkCONTACT_ADDR: TWideStringField
      FieldName = 'CONTACT_ADDR'
      Size = 255
    end
    object qryOffWorkMASO_BHXH: TWideStringField
      FieldName = 'MASO_BHXH'
      Size = 30
    end
  end
  object dsOffWork: TDataSource
    DataSet = qryOffWork
    Left = 265
    Top = 62
  end
  object qryAddDeparment: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CHANGE_DEPARTMENTS'
      'WHERE'
      '   CHANGE_TYPE = '#39'NEW'#39' AND'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   DEPT_NO = :OLD_DEPT_NO')
    EditSQL.Strings = (
      'UPDATE HR_CHANGE_DEPARTMENTS SET'
      '   CHANGE_TYPE = '#39'NEW'#39', /*PK*/'
      '   DECISION_NO = :DECISION_NO, /*PK*/'
      '   DEPT_NO = :DEPT_NO, /*PK*/'
      '   CHANGE_NOTE = :CHANGE_NOTE'
      'WHERE'
      '   CHANGE_TYPE = '#39'NEW'#39' AND'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   DEPT_NO = :OLD_DEPT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CHANGE_DEPARTMENTS('
      '   CHANGE_TYPE, /*PK*/'
      '   DECISION_NO, /*PK*/'
      '   DEPT_NO, /*PK*/'
      '   CHANGE_NOTE)'
      'VALUES ('
      '   '#39'NEW'#39','
      '   :DECISION_NO,'
      '   :DEPT_NO,'
      '   :CHANGE_NOTE)')
    KeyLinks.Strings = (
      'HR_CHANGE_DEPARTMENTS.DECISION_NO'
      'HR_CHANGE_DEPARTMENTS.DEPT_NO'
      'HR_CHANGE_DEPARTMENTS.CHANGE_TYPE')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryAddDeparmentNewRecord
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT HR_CHANGE_DEPARTMENTS.DECISION_NO'
      '     , HR_CHANGE_DEPARTMENTS.DEPT_NO'
      '     , HR_CHANGE_DEPARTMENTS.CHANGE_TYPE'
      '     , HR_CHANGE_DEPARTMENTS.CHANGE_NOTE'
      '     , HR_DEPARTMENT.DEPT_NAME'
      '     , HR_DEPARTMENT.FOUNDED_DATE'
      '     , HR_DEPARTMENT.ENDED_DATE'
      'FROM HR_CHANGE_DEPARTMENTS'
      'JOIN HR_DEPARTMENT on'
      '  HR_CHANGE_DEPARTMENTS.DEPT_NO=HR_DEPARTMENT.DEPT_NO'
      'where HR_CHANGE_DEPARTMENTS.CHANGE_TYPE='#39'NEW'#39
      '  and HR_CHANGE_DEPARTMENTS.DECISION_NO=:DECISION_NO')
    FieldOptions = []
    Left = 18
    Top = 240
    object qryAddDeparmentDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Required = True
      Size = 30
    end
    object qryAddDeparmentDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 15
    end
    object qryAddDeparmentCHANGE_TYPE: TWideStringField
      FieldName = 'CHANGE_TYPE'
      Required = True
      Size = 15
    end
    object qryAddDeparmentCHANGE_NOTE: TWideStringField
      FieldName = 'CHANGE_NOTE'
      Size = 3072
    end
    object qryAddDeparmentDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      OnChange = qryAddDeparmentDEPT_NAMEChange
      Size = 126
    end
    object qryAddDeparmentFOUNDED_DATE: TDateField
      FieldName = 'FOUNDED_DATE'
      LookupResultField = 'ENDED_DATE'
    end
    object qryAddDeparmentENDED_DATE: TDateField
      FieldName = 'ENDED_DATE'
    end
  end
  object dsAddDepartment: TDataSource
    DataSet = qryAddDeparment
    Left = 18
    Top = 304
  end
  object qryFromDept: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CHANGE_DEPARTMENTS'
      'WHERE'
      '   CHANGE_TYPE = '#39'REMOVE'#39' AND'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   DEPT_NO = :OLD_DEPT_NO')
    EditSQL.Strings = (
      'UPDATE HR_CHANGE_DEPARTMENTS SET'
      '   CHANGE_TYPE = '#39'REMOVE'#39', /*PK*/'
      '   DECISION_NO = :DECISION_NO, /*PK*/'
      '   DEPT_NO = :DEPT_NO, /*PK*/'
      '   CHANGE_NOTE = :CHANGE_NOTE,'
      '   CHANGE_DATE = :CHANGE_DATE'
      'WHERE'
      '   CHANGE_TYPE = '#39'REMOVE'#39' AND'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   DEPT_NO = :OLD_DEPT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CHANGE_DEPARTMENTS('
      '   CHANGE_TYPE, /*PK*/'
      '   DECISION_NO, /*PK*/'
      '   DEPT_NO, /*PK*/'
      '   CHANGE_NOTE,'
      '   CHANGE_DATE)'
      'VALUES ('
      '   '#39'REMOVE'#39','
      '   :DECISION_NO,'
      '   :DEPT_NO,'
      '   :CHANGE_NOTE,'
      '   :CHANGE_DATE)')
    KeyLinks.Strings = (
      'HR_CHANGE_DEPARTMENTS.DECISION_NO'
      'HR_CHANGE_DEPARTMENTS.DEPT_NO'
      'HR_CHANGE_DEPARTMENTS.CHANGE_TYPE')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryFromDeptBeforePost
    OnNewRecord = qryFromDeptNewRecord
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT HR_CHANGE_DEPARTMENTS.DECISION_NO'
      '     , HR_CHANGE_DEPARTMENTS.DEPT_NO'
      '     , HR_CHANGE_DEPARTMENTS.CHANGE_TYPE'
      '     , HR_CHANGE_DEPARTMENTS.CHANGE_NOTE'
      '     , HR_DEPARTMENT.DEPT_NAME'
      '     , HR_DEPARTMENT.FOUNDED_DATE'
      '     , HR_CHANGE_DEPARTMENTS.CHANGE_DATE '
      'FROM HR_CHANGE_DEPARTMENTS'
      'JOIN HR_DEPARTMENT on'
      '  HR_CHANGE_DEPARTMENTS.DEPT_NO=HR_DEPARTMENT.DEPT_NO'
      'where HR_CHANGE_DEPARTMENTS.CHANGE_TYPE='#39'REMOVE'#39
      '  and HR_CHANGE_DEPARTMENTS.DECISION_NO=:DECISION_NO')
    FieldOptions = []
    Left = 81
    Top = 240
    object qryFromDeptDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Required = True
      Size = 30
    end
    object qryFromDeptDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 15
    end
    object qryFromDeptCHANGE_TYPE: TWideStringField
      FieldName = 'CHANGE_TYPE'
      Required = True
      Size = 15
    end
    object qryFromDeptCHANGE_NOTE: TWideStringField
      FieldName = 'CHANGE_NOTE'
      Size = 3072
    end
    object qryFromDeptDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 126
    end
    object qryFromDeptFOUNDED_DATE: TDateField
      FieldName = 'FOUNDED_DATE'
      LookupResultField = 'CHANGE_DATE'
    end
    object qryFromDeptCHANGE_DATE: TDateField
      FieldName = 'CHANGE_DATE'
      Required = True
    end
  end
  object dsFromDept: TDataSource
    DataSet = qryFromDept
    Left = 81
    Top = 304
  end
  object qryToDept: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CHANGE_DEPARTMENTS'
      'WHERE'
      '   CHANGE_TYPE = '#39'NEW'#39' AND'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   DEPT_NO = :OLD_DEPT_NO')
    EditSQL.Strings = (
      'UPDATE HR_CHANGE_DEPARTMENTS SET'
      '   CHANGE_TYPE = '#39'NEW'#39', /*PK*/'
      '   DECISION_NO = :DECISION_NO, /*PK*/'
      '   DEPT_NO = :DEPT_NO, /*PK*/'
      '   CHANGE_NOTE = :CHANGE_NOTE'
      'WHERE'
      '   CHANGE_TYPE = '#39'NEW'#39' AND'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   DEPT_NO = :OLD_DEPT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CHANGE_DEPARTMENTS('
      '   CHANGE_TYPE, /*PK*/'
      '   DECISION_NO, /*PK*/'
      '   DEPT_NO, /*PK*/'
      '   CHANGE_NOTE)'
      'VALUES ('
      '   '#39'NEW'#39','
      '   :DECISION_NO,'
      '   :DEPT_NO,'
      '   :CHANGE_NOTE)')
    KeyLinks.Strings = (
      'HR_CHANGE_DEPARTMENTS.DECISION_NO'
      'HR_CHANGE_DEPARTMENTS.DEPT_NO'
      'HR_CHANGE_DEPARTMENTS.CHANGE_TYPE')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryToDeptNewRecord
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT HR_CHANGE_DEPARTMENTS.DECISION_NO'
      '     , HR_CHANGE_DEPARTMENTS.DEPT_NO'
      '     , HR_CHANGE_DEPARTMENTS.CHANGE_TYPE'
      '     , HR_CHANGE_DEPARTMENTS.CHANGE_NOTE'
      '     , HR_DEPARTMENT.DEPT_NAME'
      '     , HR_DEPARTMENT.FOUNDED_DATE'
      '     , HR_DEPARTMENT.ENDED_DATE'
      'FROM HR_CHANGE_DEPARTMENTS'
      'JOIN HR_DEPARTMENT on'
      '  HR_CHANGE_DEPARTMENTS.DEPT_NO=HR_DEPARTMENT.DEPT_NO'
      'where HR_CHANGE_DEPARTMENTS.CHANGE_TYPE='#39'NEW'#39
      '  and HR_CHANGE_DEPARTMENTS.DECISION_NO=:DECISION_NO'
      '  ')
    FieldOptions = []
    Left = 138
    Top = 240
    object qryToDeptDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Required = True
      Size = 30
    end
    object qryToDeptDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 15
    end
    object qryToDeptCHANGE_TYPE: TWideStringField
      FieldName = 'CHANGE_TYPE'
      Required = True
      Size = 15
    end
    object qryToDeptCHANGE_NOTE: TWideStringField
      FieldName = 'CHANGE_NOTE'
      Size = 3072
    end
    object qryToDeptDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      OnChange = qryToDeptDEPT_NAMEChange
      Size = 126
    end
    object qryToDeptFOUNDED_DATE: TDateField
      FieldName = 'FOUNDED_DATE'
      LookupResultField = 'ENDED_DATE'
    end
    object qryToDeptENDED_DATE: TDateField
      FieldName = 'ENDED_DATE'
    end
  end
  object dsToDept: TDataSource
    DataSet = qryToDept
    Left = 138
    Top = 304
  end
  object dsDeleteDept: TDataSource
    DataSet = qryDeleteDept
    Left = 199
    Top = 304
  end
  object qryDeleteDept: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_CHANGE_DEPARTMENTS'
      'WHERE'
      '   CHANGE_TYPE = '#39'REMOVE'#39' AND'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   DEPT_NO = :OLD_DEPT_NO')
    EditSQL.Strings = (
      'UPDATE HR_CHANGE_DEPARTMENTS SET'
      '   CHANGE_TYPE = '#39'REMOVE'#39', /*PK*/'
      '   DECISION_NO = :DECISION_NO, /*PK*/'
      '   DEPT_NO = :DEPT_NO, /*PK*/'
      '   CHANGE_NOTE = :CHANGE_NOTE,'
      '   CHANGE_DATE = :CHANGE_DATE'
      'WHERE'
      '   CHANGE_TYPE = '#39'REMOVE'#39' AND'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   DEPT_NO = :OLD_DEPT_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_CHANGE_DEPARTMENTS('
      '   CHANGE_TYPE, /*PK*/'
      '   DECISION_NO, /*PK*/'
      '   DEPT_NO, /*PK*/'
      '   CHANGE_NOTE,'
      '   CHANGE_DATE)'
      'VALUES ('
      '   '#39'REMOVE'#39','
      '   :DECISION_NO,'
      '   :DEPT_NO,'
      '   :CHANGE_NOTE,'
      '   :CHANGE_DATE)')
    KeyLinks.Strings = (
      'HR_CHANGE_DEPARTMENTS.DECISION_NO'
      'HR_CHANGE_DEPARTMENTS.DEPT_NO'
      'HR_CHANGE_DEPARTMENTS.CHANGE_TYPE')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryDeleteDeptBeforePost
    OnNewRecord = qryDeleteDeptNewRecord
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT HR_CHANGE_DEPARTMENTS.DECISION_NO'
      '     , HR_CHANGE_DEPARTMENTS.DEPT_NO'
      '     , HR_CHANGE_DEPARTMENTS.CHANGE_TYPE'
      '     , HR_CHANGE_DEPARTMENTS.CHANGE_NOTE'
      '     , HR_DEPARTMENT.DEPT_NAME'
      '     , HR_DEPARTMENT.FOUNDED_DATE'
      '     , HR_CHANGE_DEPARTMENTS.CHANGE_DATE '
      'FROM HR_CHANGE_DEPARTMENTS'
      'JOIN HR_DEPARTMENT on'
      '  HR_CHANGE_DEPARTMENTS.DEPT_NO=HR_DEPARTMENT.DEPT_NO'
      'where HR_CHANGE_DEPARTMENTS.CHANGE_TYPE='#39'REMOVE'#39
      '  and HR_CHANGE_DEPARTMENTS.DECISION_NO=:DECISION_NO')
    FieldOptions = []
    Left = 199
    Top = 240
    object qryDeleteDeptDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Required = True
      Size = 30
    end
    object qryDeleteDeptDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Required = True
      Size = 15
    end
    object qryDeleteDeptCHANGE_TYPE: TWideStringField
      FieldName = 'CHANGE_TYPE'
      Required = True
      Size = 15
    end
    object qryDeleteDeptCHANGE_NOTE: TWideStringField
      FieldName = 'CHANGE_NOTE'
      Size = 3072
    end
    object qryDeleteDeptDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      OnChange = qryDeleteDeptDEPT_NAMEChange
      Size = 126
    end
    object qryDeleteDeptFOUNDED_DATE: TDateField
      FieldName = 'FOUNDED_DATE'
      LookupResultField = 'CHANGE_DATE'
    end
    object qryDeleteDeptCHANGE_DATE: TDateField
      FieldName = 'CHANGE_DATE'
      Required = True
    end
  end
  object qryRewardDecision: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_DECISION_REWARD'
      'WHERE'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   EMP_NO = :OLD_EMP_NO AND'
      '   REWARD_LIST_NO = :OLD_REWARD_LIST_NO')
    EditSQL.Strings = (
      'UPDATE HR_DECISION_REWARD SET'
      '   DECISION_NO = :DECISION_NO, /*PK*/'
      '   EMP_NO = :EMP_NO, /*PK*/'
      '   REWARD_LIST_NO = :REWARD_LIST_NO, /*PK*/'
      '   DECISION_LEVEL = :DECISION_LEVEL,'
      '   REWARD_FORM_NO = :REWARD_FORM_NO,'
      '   DSC_REWARD_NOTE = :DSC_REWARD_NOTE'
      'WHERE'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   EMP_NO = :OLD_EMP_NO AND'
      '   REWARD_LIST_NO = :OLD_REWARD_LIST_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_DECISION_REWARD('
      '   DECISION_NO, /*PK*/'
      '   EMP_NO, /*PK*/'
      '   REWARD_LIST_NO, /*PK*/'
      '   DECISION_LEVEL,'
      '   REWARD_FORM_NO,'
      '   DSC_REWARD_NOTE)'
      'VALUES ('
      '   :DECISION_NO,'
      '   :EMP_NO,'
      '   :REWARD_LIST_NO,'
      '   :DECISION_LEVEL,'
      '   :REWARD_FORM_NO,'
      '   :DSC_REWARD_NOTE)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT HR_DECISION_REWARD.DECISION_NO'
      '     , HR_DECISION_REWARD.EMP_NO'
      '     , HR_EMPLOYEE.LAST_NAME||'#39' '#39'||'
      '     HR_EMPLOYEE.MIDDLE_NAME||'#39' '#39'|| '
      '     HR_EMPLOYEE.FIRST_NAME FULL_NAME'
      
        '     , CASE WHEN HR_EMPLOYEE.GENDER = 1  THEN '#39#195#8221'ng'#39' ELSE '#39'B'#195#160#39' ' +
        'END GENDER_TEXT'
      
        '     , CASE WHEN HR_EMPLOYEE.GENDER = 1  THEN '#39'Mr'#39' ELSE '#39'Ms'#39' END' +
        ' GENDER_TEXT_ENG'
      '     , HR_DECISION_REWARD.REWARD_LIST_NO'
      '     , HR_REWARD_LIST.REWARD_LIST_NAME'
      '     , HR_DECISION_REWARD.DECISION_LEVEL'
      '     , HR_DECISION_LEVEL.LEVEL_NAME'
      '     , HR_DECISION_REWARD.REWARD_FORM_NO'
      '     , HR_REWARD_FORM.REWARD_NAME'
      '     , HR_DECISION_REWARD.DSC_REWARD_NOTE'
      '     , (SELECT FIRST 1 HR_DEPARTMENT.DEPT_NAME'
      '        FROM HR_DEPARTMENT'
      
        '        JOIN HR_ASSIGNMENT ON HR_DEPARTMENT.DEPT_NO = HR_ASSIGNM' +
        'ENT.DEPT_NO'
      '        WHERE HR_ASSIGNMENT.IS_MAIN_POSITION =1'
      
        '        AND HR_ASSIGNMENT.ASSIGNED_DATE <= HR_DECISION.DECISION_' +
        'DATE'
      
        '        AND HR_ASSIGNMENT.EMPLOYEE_NO = HR_DECISION_REWARD.EMP_N' +
        'O'
      '        ORDER BY HR_ASSIGNMENT.ASSIGNED_DATE DESC ) DEPT_NAME'
      '     , (SELECT FIRST 1 HR_TITLE.TITLE_NAME '
      '        FROM HR_TITLE'
      
        '        JOIN HR_ASSIGNMENT ON HR_TITLE.TITLE_NO = HR_ASSIGNMENT.' +
        'TITLE_NO'
      '        WHERE HR_ASSIGNMENT.IS_MAIN_POSITION =1'
      
        '        AND HR_ASSIGNMENT.ASSIGNED_DATE <= HR_DECISION.DECISION_' +
        'DATE'
      
        '        AND HR_ASSIGNMENT.EMPLOYEE_NO = HR_DECISION_REWARD.EMP_N' +
        'O'
      '        ORDER BY HR_ASSIGNMENT.ASSIGNED_DATE DESC ) TITLE_NAME'
      
        '     , (SELECT FIRST 1 HR_TITLE.TITLE_NAME || '#39' - '#39' || HR_DEPART' +
        'MENT.DEPT_NAME'
      '        FROM HR_DEPARTMENT'
      
        '        JOIN HR_ASSIGNMENT ON HR_DEPARTMENT.DEPT_NO = HR_ASSIGNM' +
        'ENT.DEPT_NO'
      
        '        JOIN HR_TITLE ON HR_TITLE.TITLE_NO = HR_ASSIGNMENT.TITLE' +
        '_NO'
      '        WHERE HR_ASSIGNMENT.IS_MAIN_POSITION =1'
      
        '        AND HR_ASSIGNMENT.ASSIGNED_DATE <= HR_DECISION.DECISION_' +
        'DATE'
      
        '        AND HR_ASSIGNMENT.EMPLOYEE_NO = HR_DECISION_REWARD.EMP_N' +
        'O'
      
        '        ORDER BY HR_ASSIGNMENT.ASSIGNED_DATE DESC ) POSITION_NAM' +
        'E'
      'FROM HR_DECISION_REWARD'
      'JOIN HR_EMPLOYEE'
      ' on HR_DECISION_REWARD.EMP_NO=HR_EMPLOYEE.EMPLOYEE_NO'
      'JOIN HR_REWARD_LIST'
      
        ' on HR_DECISION_REWARD.REWARD_LIST_NO=HR_REWARD_LIST.REWARD_LIST' +
        '_NO'
      'JOIN HR_DECISION'
      ' ON HR_DECISION.DECISION_NO = HR_DECISION_REWARD.DECISION_NO'
      'LEFT JOIN HR_REWARD_FORM'
      ' on HR_DECISION_REWARD.REWARD_FORM_NO=HR_REWARD_FORM.REWARD_NO'
      'LEFT JOIN HR_DECISION_LEVEL'
      ' on HR_DECISION_REWARD.DECISION_LEVEL=HR_DECISION_LEVEL.LEVEL_NO'
      'where HR_DECISION_REWARD.DECISION_NO=:DECISION_NO'
      
        'ORDER BY HR_DECISION_REWARD.REWARD_LIST_NO, HR_DECISION_REWARD.E' +
        'MP_NO'
      ''
      ' ')
    FieldOptions = []
    Left = 265
    Top = 240
    object qryRewardDecisionDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Required = True
      Size = 30
    end
    object qryRewardDecisionEMP_NO: TWideStringField
      FieldName = 'EMP_NO'
      Required = True
      Size = 30
    end
    object qryRewardDecisionFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Required = True
      OnChange = qryRewardDecisionFULL_NAMEChange
      Size = 92
    end
    object qryRewardDecisionREWARD_LIST_NO: TWideStringField
      FieldName = 'REWARD_LIST_NO'
      Required = True
      Size = 30
    end
    object qryRewardDecisionREWARD_LIST_NAME: TWideStringField
      FieldName = 'REWARD_LIST_NAME'
      Required = True
      OnChange = qryRewardDecisionREWARD_LIST_NAMEChange
      Size = 126
    end
    object qryRewardDecisionDECISION_LEVEL: TWideStringField
      FieldName = 'DECISION_LEVEL'
      Size = 30
    end
    object qryRewardDecisionLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      OnChange = qryRewardDecisionLEVEL_NAMEChange
      Size = 126
    end
    object qryRewardDecisionREWARD_FORM_NO: TWideStringField
      FieldName = 'REWARD_FORM_NO'
      Size = 30
    end
    object qryRewardDecisionREWARD_NAME: TWideStringField
      FieldName = 'REWARD_NAME'
      OnChange = qryRewardDecisionREWARD_NAMEChange
      Size = 126
    end
    object qryRewardDecisionDSC_REWARD_NOTE: TWideStringField
      FieldName = 'DSC_REWARD_NOTE'
      Size = 3072
    end
    object qryRewardDecisionGENDER_TEXT: TWideStringField
      FieldName = 'GENDER_TEXT'
      ReadOnly = True
      Size = 9
    end
    object qryRewardDecisionGENDER_TEXT_ENG: TWideStringField
      FieldName = 'GENDER_TEXT_ENG'
      ReadOnly = True
      Size = 6
    end
    object qryRewardDecisionDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryRewardDecisionTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryRewardDecisionPOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      ReadOnly = True
      Size = 261
    end
  end
  object dsRewardDecision: TDataSource
    DataSet = qryRewardDecision
    Left = 265
    Top = 304
  end
  object qryDisciplineDecision: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_DECISION_DISC'
      'WHERE'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   DISC_LIST_NO = :OLD_DISC_LIST_NO AND'
      '   EMP_NO = :OLD_EMP_NO')
    EditSQL.Strings = (
      'UPDATE HR_DECISION_DISC SET'
      '   DECISION_NO = :DECISION_NO, /*PK*/'
      '   DISC_LIST_NO = :DISC_LIST_NO, /*PK*/'
      '   EMP_NO = :EMP_NO, /*PK*/'
      '   DECISION_LEVEL = :DECISION_LEVEL,'
      '   DISC_FORM_NO = :DISC_FORM_NO,'
      '   DSC_DISC_NOTE = :DSC_DISC_NOTE'
      'WHERE'
      '   DECISION_NO = :OLD_DECISION_NO AND'
      '   DISC_LIST_NO = :OLD_DISC_LIST_NO AND'
      '   EMP_NO = :OLD_EMP_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_DECISION_DISC('
      '   DECISION_NO, /*PK*/'
      '   DISC_LIST_NO, /*PK*/'
      '   EMP_NO, /*PK*/'
      '   DECISION_LEVEL,'
      '   DISC_FORM_NO,'
      '   DSC_DISC_NOTE)'
      'VALUES ('
      '   :DECISION_NO,'
      '   :DISC_LIST_NO,'
      '   :EMP_NO,'
      '   :DECISION_LEVEL,'
      '   :DISC_FORM_NO,'
      '   :DSC_DISC_NOTE)')
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT HR_DECISION_DISC.DECISION_NO'
      '     , HR_DECISION_DISC.EMP_NO'
      '     , HR_EMPLOYEE.LAST_NAME||'#39' '#39'||'
      '     HR_EMPLOYEE.MIDDLE_NAME||'#39' '#39'|| '
      '     HR_EMPLOYEE.FIRST_NAME FULL_NAME'
      
        '     , CASE WHEN HR_EMPLOYEE.GENDER = 1  THEN '#39#195#8221'ng'#39' ELSE '#39'B'#195#160#39' ' +
        'END GENDER_TEXT'
      
        '     , CASE WHEN HR_EMPLOYEE.GENDER = 1  THEN '#39'Mr'#39' ELSE '#39'Ms'#39' END' +
        ' GENDER_TEXT_ENG'
      '     , HR_DECISION_DISC.DISC_LIST_NO'
      '     , HR_DISCIPLINE_LIST.DISC_LIST_NAME'
      '     , HR_DECISION_DISC.DECISION_LEVEL'
      '     , HR_DECISION_LEVEL.LEVEL_NAME'
      '     , HR_DECISION_DISC.DISC_FORM_NO'
      '     , HR_DISCIPLINE_FORM.DISC_NAME'
      '     , HR_DECISION_DISC.DSC_DISC_NOTE'
      '     , (SELECT FIRST 1 HR_DEPARTMENT.DEPT_NAME'
      '        FROM HR_DEPARTMENT'
      
        '        JOIN HR_ASSIGNMENT ON HR_DEPARTMENT.DEPT_NO = HR_ASSIGNM' +
        'ENT.DEPT_NO'
      '        WHERE HR_ASSIGNMENT.IS_MAIN_POSITION =1'
      
        '        AND HR_ASSIGNMENT.ASSIGNED_DATE <= HR_DECISION.DECISION_' +
        'DATE'
      '        AND HR_ASSIGNMENT.EMPLOYEE_NO = HR_DECISION_DISC.EMP_NO'
      '        ORDER BY HR_ASSIGNMENT.ASSIGNED_DATE DESC ) DEPT_NAME'
      '     , (SELECT FIRST 1 HR_TITLE.TITLE_NAME '
      '        FROM HR_TITLE'
      
        '        JOIN HR_ASSIGNMENT ON HR_TITLE.TITLE_NO = HR_ASSIGNMENT.' +
        'TITLE_NO'
      '        WHERE HR_ASSIGNMENT.IS_MAIN_POSITION =1'
      
        '        AND HR_ASSIGNMENT.ASSIGNED_DATE <= HR_DECISION.DECISION_' +
        'DATE'
      '        AND HR_ASSIGNMENT.EMPLOYEE_NO = HR_DECISION_DISC.EMP_NO'
      '        ORDER BY HR_ASSIGNMENT.ASSIGNED_DATE DESC ) TITLE_NAME'
      
        '     , (SELECT FIRST 1 HR_TITLE.TITLE_NAME || '#39' - '#39' || HR_DEPART' +
        'MENT.DEPT_NAME'
      '        FROM HR_DEPARTMENT'
      
        '        JOIN HR_ASSIGNMENT ON HR_DEPARTMENT.DEPT_NO = HR_ASSIGNM' +
        'ENT.DEPT_NO'
      
        '        JOIN HR_TITLE ON HR_TITLE.TITLE_NO = HR_ASSIGNMENT.TITLE' +
        '_NO'
      '        WHERE HR_ASSIGNMENT.IS_MAIN_POSITION =1'
      
        '        AND HR_ASSIGNMENT.ASSIGNED_DATE <= HR_DECISION.DECISION_' +
        'DATE'
      '        AND HR_ASSIGNMENT.EMPLOYEE_NO = HR_DECISION_DISC.EMP_NO'
      
        '        ORDER BY HR_ASSIGNMENT.ASSIGNED_DATE DESC ) POSITION_NAM' +
        'E'
      'FROM HR_DECISION_DISC'
      'JOIN HR_EMPLOYEE'
      ' ON HR_DECISION_DISC.EMP_NO=HR_EMPLOYEE.EMPLOYEE_NO'
      'JOIN HR_DISCIPLINE_LIST'
      
        ' ON HR_DECISION_DISC.DISC_LIST_NO=HR_DISCIPLINE_LIST.DISC_LIST_N' +
        'O'
      'JOIN HR_DECISION'
      ' ON HR_DECISION.DECISION_NO = HR_DECISION_DISC.DECISION_NO'
      'LEFT JOIN HR_DISCIPLINE_FORM'
      ' ON HR_DECISION_DISC.DISC_FORM_NO=HR_DISCIPLINE_FORM.DISC_NO'
      'LEFT JOIN HR_DECISION_LEVEL'
      ' ON HR_DECISION_DISC.DECISION_LEVEL=HR_DECISION_LEVEL.LEVEL_NO'
      'WHERE HR_DECISION_DISC.DECISION_NO=:DECISION_NO')
    FieldOptions = []
    Left = 331
    Top = 240
    object qryDisciplineDecisionDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Required = True
      Size = 30
    end
    object qryDisciplineDecisionEMP_NO: TWideStringField
      FieldName = 'EMP_NO'
      Required = True
      Size = 30
    end
    object qryDisciplineDecisionFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      OnChange = qryDisciplineDecisionFULL_NAMEChange
      Size = 92
    end
    object qryDisciplineDecisionDISC_LIST_NO: TWideStringField
      FieldName = 'DISC_LIST_NO'
      Required = True
      Size = 30
    end
    object qryDisciplineDecisionDISC_LIST_NAME: TWideStringField
      FieldName = 'DISC_LIST_NAME'
      Required = True
      OnChange = qryDisciplineDecisionDISC_LIST_NAMEChange
      Size = 126
    end
    object qryDisciplineDecisionDECISION_LEVEL: TWideStringField
      FieldName = 'DECISION_LEVEL'
      Size = 30
    end
    object qryDisciplineDecisionLEVEL_NAME: TWideStringField
      FieldName = 'LEVEL_NAME'
      OnChange = qryDisciplineDecisionLEVEL_NAMEChange
      Size = 126
    end
    object qryDisciplineDecisionDISC_FORM_NO: TWideStringField
      FieldName = 'DISC_FORM_NO'
      Size = 30
    end
    object qryDisciplineDecisionDISC_NAME: TWideStringField
      FieldName = 'DISC_NAME'
      OnChange = qryDisciplineDecisionDISC_NAMEChange
      Size = 126
    end
    object qryDisciplineDecisionDSC_DISC_NOTE: TWideStringField
      FieldName = 'DSC_DISC_NOTE'
      Size = 3072
    end
    object qryDisciplineDecisionGENDER_TEXT: TWideStringField
      FieldName = 'GENDER_TEXT'
      ReadOnly = True
      Size = 9
    end
    object qryDisciplineDecisionGENDER_TEXT_ENG: TWideStringField
      FieldName = 'GENDER_TEXT_ENG'
      ReadOnly = True
      Size = 6
    end
    object qryDisciplineDecisionDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryDisciplineDecisionTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryDisciplineDecisionPOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      ReadOnly = True
      Size = 261
    end
  end
  object dsDisciplineDecision: TDataSource
    DataSet = qryDisciplineDecision
    Left = 331
    Top = 304
  end
  object ppCanhan_ChiuTN: TppDBPipeline
    DataSource = dsDecision_Emp
    UserName = 'Canhan_ChiuTN'
    Left = 81
    Top = 126
    MasterDataPipelineName = 'ppThongtinQD'
  end
  object ppChitiet_QD_Bonhiem: TppDBPipeline
    DataSource = dsChitietBonhiem
    UserName = 'Chitiet_QD_Bonhiem'
    Left = 138
    Top = 126
    MasterDataPipelineName = 'ppThongtinQD'
  end
  object ppChitiet_QD_ThoiCV: TppDBPipeline
    DataSource = dsChitietThoiCV
    UserName = 'Chitiet_QD_ThoiChucvu'
    Left = 199
    Top = 126
    MasterDataPipelineName = 'ppThongtinQD'
    object ppChitiet_QD_ThoiCVppField1: TppField
      FieldAlias = 'DECISION_NO'
      FieldName = 'DECISION_NO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppChitiet_QD_ThoiCVppField2: TppField
      FieldAlias = 'EMPLOYEE_NO'
      FieldName = 'EMPLOYEE_NO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object ppChitiet_QD_ThoiCVppField3: TppField
      FieldAlias = 'FULL_NAME'
      FieldName = 'FULL_NAME'
      FieldLength = 96
      DisplayWidth = 96
      Position = 2
    end
    object ppChitiet_QD_ThoiCVppField4: TppField
      FieldAlias = 'POSITION_NO'
      FieldName = 'POSITION_NO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object ppChitiet_QD_ThoiCVppField5: TppField
      FieldAlias = 'POSITION_TITLE'
      FieldName = 'POSITION_TITLE'
      FieldLength = 255
      DisplayWidth = 255
      Position = 4
    end
    object ppChitiet_QD_ThoiCVppField6: TppField
      FieldAlias = 'ASSIGNED_DATE'
      FieldName = 'ASSIGNED_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppChitiet_QD_ThoiCVppField7: TppField
      FieldAlias = 'DISMISS_DATE'
      FieldName = 'DISMISS_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppChitiet_QD_ThoiCVppField8: TppField
      FieldAlias = 'DISMISS_NOTES'
      FieldName = 'DISMISS_NOTES'
      FieldLength = 3072
      DisplayWidth = 3072
      Position = 7
    end
    object ppChitiet_QD_ThoiCVppField9: TppField
      FieldAlias = 'DEPT_NO'
      FieldName = 'DEPT_NO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 8
    end
    object ppChitiet_QD_ThoiCVppField10: TppField
      FieldAlias = 'TITLE_NO'
      FieldName = 'TITLE_NO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object ppChitiet_QD_ThoiCVppField11: TppField
      FieldAlias = 'DEPT_NAME'
      FieldName = 'DEPT_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 10
    end
    object ppChitiet_QD_ThoiCVppField12: TppField
      FieldAlias = 'TITLE_NAME'
      FieldName = 'TITLE_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 11
    end
  end
  object ppChitiet_QD_Nghiviec: TppDBPipeline
    DataSource = dsOffWork
    UserName = 'Chitiet_QD_Nghiviec'
    Left = 265
    Top = 126
    MasterDataPipelineName = 'ppThongtinQD'
  end
  object ppChitiet_QD_ChuyenCT: TppDBPipeline
    DataSource = dsChangePosition
    UserName = 'Chitiet_QD_ChuyenCT'
    Left = 331
    Top = 126
    MasterDataPipelineName = 'ppThongtinQD'
  end
  object ppChitiet_QD_Thanhlap_Phongban: TppDBPipeline
    DataSource = dsAddDepartment
    UserName = 'Chitiet_QD_Thanhlap_Phongban'
    Left = 18
    Top = 188
    MasterDataPipelineName = 'ppThongtinQD'
  end
  object ppThongtinQD: TppDBPipeline
    DataSource = dsDecisions
    UserName = 'Thongtin_QD'
    Left = 18
    Top = 126
  end
  object ppChitiet_QD_ChuyendoiPB_TuPB: TppDBPipeline
    DataSource = dsFromDept
    UserName = 'Chitiet_QD_ChuyendoiPB_TuPB'
    Left = 81
    Top = 188
    MasterDataPipelineName = 'ppThongtinQD'
  end
  object ppChitiet_QD_ChuyendoiPB_DenBP: TppDBPipeline
    DataSource = dsToDept
    UserName = 'Chitiet_QD_ChuyendoiPB_DenBP'
    Left = 138
    Top = 188
    MasterDataPipelineName = 'ppThongtinQD'
  end
  object ppChitiet_QD_XoaPB: TppDBPipeline
    DataSource = dsDeleteDept
    UserName = 'Chitiet_QD_XoaPB'
    Left = 199
    Top = 188
    MasterDataPipelineName = 'ppThongtinQD'
  end
  object ppChitiet_QD_Khenthuong: TppDBPipeline
    DataSource = dsRewardDecision
    UserName = 'Chitiet_QD_Khenthuong'
    Left = 265
    Top = 188
    MasterDataPipelineName = 'ppThongtinQD'
  end
  object ppChitiet_QD_Kyluat: TppDBPipeline
    DataSource = dsDisciplineDecision
    UserName = 'Chitiet_QD_Kyluat'
    Left = 331
    Top = 188
    MasterDataPipelineName = 'ppThongtinQD'
  end
  object rpDecision: TppReport
    AutoStop = False
    DataPipeline = ppThongtinTochuc
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    PreviewFormSettings.WindowState = wsMaximized
    Left = 407
    Top = 8
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppThongtinTochuc'
  end
  object dsThongtinTochuc: TDataSource
    DataSet = dmMain.qryOrgInfo
    Left = 486
    Top = 126
  end
  object ppThongtinTochuc: TppDBPipeline
    DataSource = dsThongtinTochuc
    UserName = 'Thongtin_Tochuc'
    Left = 486
    Top = 188
  end
  object qryFormalParam: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT PARAM_NO'
      '     , HR_FORMAL_DETAIL.EMPLOYEE_NO'
      '     , LAST_NAME||'#39' '#39'||MIDDLE_NAME||'#39' '#39'||FIRST_NAME FULL_NAME'
      '     , PARAM_VALUE'
      'FROM HR_FORMAL_DETAIL'
      'JOIN HR_EMPLOYEE '
      ' on HR_FORMAL_DETAIL.EMPLOYEE_NO=HR_EMPLOYEE.EMPLOYEE_NO'
      'where  (DOC_NO=:DECISION_NO) and'
      '       (DOC_TYPE='#39'DECISION'#39')'
      'order by HR_FORMAL_DETAIL.EMPLOYEE_NO '
      '')
    FieldOptions = []
    Left = 407
    Top = 188
    object qryFormalParamPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Required = True
      Size = 63
    end
    object qryFormalParamEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryFormalParamFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 125
    end
    object qryFormalParamPARAM_VALUE: TIBOFloatField
      FieldName = 'PARAM_VALUE'
    end
  end
  object qryFormalParamList: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT PARAM_NO'
      '     , PARAM_NAME'
      'FROM HR_FORMAL_PARAM'
      'where FOLLOW_DECISION=1')
    FieldOptions = []
    Left = 407
    Top = 240
    object qryFormalParamListPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Required = True
      Size = 63
    end
    object qryFormalParamListPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Required = True
      Size = 126
    end
  end
  object qryWageStandardChange: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_STANDARD_CHANGE'
      'WHERE'
      '   CHANGE_NO = :OLD_CHANGE_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_STANDARD_CHANGE SET'
      '   CHANGE_NO = :CHANGE_NO, /*PK*/'
      '   CHANGE_NAME = :CHANGE_NAME,'
      '   DEFAULT_MONTH = :DEFAULT_MONTH,'
      '   DEFAULT_YEAR = :DEFAULT_YEAR,'
      '   DEFAULT_PERIOD = :DEFAULT_PERIOD,'
      '   FROM_DECISION = :FROM_DECISION,'
      '   FROM_CONTRACT = :FROM_CONTRACT'
      'WHERE'
      '   CHANGE_NO = :OLD_CHANGE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_STANDARD_CHANGE('
      '   CHANGE_NO, /*PK*/'
      '   CHANGE_NAME,'
      '   DEFAULT_MONTH,'
      '   DEFAULT_YEAR,'
      '   DEFAULT_PERIOD,'
      '   FROM_DECISION,'
      '   FROM_CONTRACT)'
      'VALUES ('
      '   :CHANGE_NO,'
      '   :CHANGE_NAME,'
      '   :DEFAULT_MONTH,'
      '   :DEFAULT_YEAR,'
      '   :DEFAULT_PERIOD,'
      '   :FROM_DECISION,'
      '   :FROM_CONTRACT)')
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryWageStandardChangeNewRecord
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT CHANGE_NO'
      '     , CHANGE_NAME'
      '     , DEFAULT_MONTH'
      '     , DEFAULT_YEAR'
      '     , DEFAULT_PERIOD'
      '     , FROM_DECISION'
      '     , FROM_CONTRACT'
      'FROM HR_WAGE_STANDARD_CHANGE'
      'where FROM_DECISION=:DECISION_NO')
    FieldOptions = []
    Left = 486
    Top = 8
    object qryWageStandardChangeCHANGE_NO: TWideStringField
      FieldName = 'CHANGE_NO'
      Required = True
      Size = 30
    end
    object qryWageStandardChangeCHANGE_NAME: TWideStringField
      FieldName = 'CHANGE_NAME'
      Required = True
      Size = 126
    end
    object qryWageStandardChangeDEFAULT_MONTH: TIntegerField
      FieldName = 'DEFAULT_MONTH'
    end
    object qryWageStandardChangeDEFAULT_YEAR: TIntegerField
      FieldName = 'DEFAULT_YEAR'
    end
    object qryWageStandardChangeDEFAULT_PERIOD: TIntegerField
      FieldName = 'DEFAULT_PERIOD'
    end
    object qryWageStandardChangeFROM_DECISION: TWideStringField
      FieldName = 'FROM_DECISION'
      Size = 30
    end
    object qryWageStandardChangeFROM_CONTRACT: TWideStringField
      FieldName = 'FROM_CONTRACT'
      Size = 30
    end
  end
  object dsWageStandardChange: TDataSource
    DataSet = qryWageStandardChange
    Left = 486
    Top = 62
  end
  object qryEmpStandardWage: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHANGE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_WAGE_STANDARD_DETAIL'
      'WHERE'
      '   CHANGE_NO = :OLD_CHANGE_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    EditSQL.Strings = (
      'UPDATE HR_WAGE_STANDARD_DETAIL SET'
      '   CHANGE_NO = :CHANGE_NO, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   WAGE_SCALE = :WAGE_SCALE,'
      '   WAGE_LEVEL = :WAGE_LEVEL,'
      '   WAGE_COEFF = :WAGE_COEFF,'
      '   APPLY_MONTH = :APPLY_MONTH,'
      '   APPLY_YEAR = :APPLY_YEAR,'
      '   APPLY_PERIOD = :APPLY_PERIOD,'
      '   PERIOD_ID = :PERIOD_ID,'
      '   NEXT_WAGE_SCALE = :NEXT_WAGE_SCALE,'
      '   NEXT_WAGE_LEVEL = :NEXT_WAGE_LEVEL,'
      '   NEXT_MONTH = :NEXT_MONTH,'
      '   NEXT_YEAR = :NEXT_YEAR'
      'WHERE'
      '   CHANGE_NO = :OLD_CHANGE_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_WAGE_STANDARD_DETAIL('
      '   CHANGE_NO, /*PK*/'
      '   EMPLOYEE_NO, /*PK*/'
      '   WAGE_SCALE,'
      '   WAGE_LEVEL,'
      '   WAGE_COEFF,'
      '   APPLY_MONTH,'
      '   APPLY_YEAR,'
      '   APPLY_PERIOD,'
      '   PERIOD_ID,'
      '   NEXT_WAGE_SCALE,'
      '   NEXT_WAGE_LEVEL,'
      '   NEXT_MONTH,'
      '   NEXT_YEAR)'
      'VALUES ('
      '   :CHANGE_NO,'
      '   :EMPLOYEE_NO,'
      '   :WAGE_SCALE,'
      '   :WAGE_LEVEL,'
      '   :WAGE_COEFF,'
      '   :APPLY_MONTH,'
      '   :APPLY_YEAR,'
      '   :APPLY_PERIOD,'
      '   :PERIOD_ID,'
      '   :NEXT_WAGE_SCALE,'
      '   :NEXT_WAGE_LEVEL,'
      '   :NEXT_MONTH,'
      '   :NEXT_YEAR)')
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryEmpStandardWageAfterPost
    OnNewRecord = qryEmpStandardWageNewRecord
    DataSource = dsWageStandardChange
    SQL.Strings = (
      'SELECT CHANGE_NO'
      '     , HR_WAGE_STANDARD_DETAIL.EMPLOYEE_NO'
      '     , FULL_NAME'
      '     , HR_MASK_EMPLOYEE.GENDER_TEXT'
      '     , HR_MASK_EMPLOYEE.GENDER_TEXT_ENG'
      '     , WAGE_SCALE'
      '     , HR_CAREER.CAREER_NAME'
      '     , WAGE_LEVEL'
      '     , WAGE_COEFF'
      '     , APPLY_MONTH'
      '     , APPLY_YEAR'
      '     , APPLY_PERIOD'
      '     , PERIOD_ID'
      '     , NEXT_WAGE_SCALE'
      '     , NEXT_CAREER.CAREER_NAME NEXT_CAREER_NAME'
      '     , NEXT_WAGE_LEVEL'
      '     , NEXT_MONTH'
      '     , NEXT_YEAR'
      '     , (SELECT MAX(HR_WAGE_STANDARD.WAGE_LEVEL)'
      '        FROM HR_WAGE_STANDARD'
      
        '        WHERE HR_WAGE_STANDARD.WAGE_SCALE = HR_WAGE_STANDARD_DET' +
        'AIL.WAGE_SCALE) MAX_LEVEL'
      '     /* LAY MUC LUONG CU */'
      '     , (SELECT FIRST 1 A.WAGE_LEVEL'
      '       FROM HR_WAGE_STANDARD_DETAIL A'
      
        '       WHERE A.EMPLOYEE_NO = HR_WAGE_STANDARD_DETAIL.EMPLOYEE_NO' +
        ' AND'
      '             A.PERIOD_ID < HR_WAGE_STANDARD_DETAIL.PERIOD_ID'
      
        '       ORDER BY HR_WAGE_STANDARD_DETAIL.PERIOD_ID DESC) OLD_WAGE' +
        '_LEVEL'
      '     , (SELECT FIRST 1 A.WAGE_COEFF'
      '       FROM HR_WAGE_STANDARD_DETAIL A'
      
        '       WHERE A.EMPLOYEE_NO = HR_WAGE_STANDARD_DETAIL.EMPLOYEE_NO' +
        ' AND'
      '             A.PERIOD_ID < HR_WAGE_STANDARD_DETAIL.PERIOD_ID'
      
        '       ORDER BY HR_WAGE_STANDARD_DETAIL.PERIOD_ID DESC) OLD_WAGE' +
        '_COEFF'
      '    , (SELECT FIRST 1 A.WAGE_SCALE'
      '       FROM HR_WAGE_STANDARD_DETAIL A'
      
        '       WHERE A.EMPLOYEE_NO = HR_WAGE_STANDARD_DETAIL.EMPLOYEE_NO' +
        ' AND'
      '             A.PERIOD_ID < HR_WAGE_STANDARD_DETAIL.PERIOD_ID'
      
        '       ORDER BY HR_WAGE_STANDARD_DETAIL.PERIOD_ID DESC) OLD_WAGE' +
        '_SCALE'
      '    , (SELECT FIRST 1 CAREER_NAME'
      '       FROM HR_WAGE_STANDARD_DETAIL A'
      '       LEFT JOIN HR_CAREER ON WAGE_SCALE=CAREER_NO'
      
        '       WHERE A.EMPLOYEE_NO = HR_WAGE_STANDARD_DETAIL.EMPLOYEE_NO' +
        ' AND'
      '             A.PERIOD_ID < HR_WAGE_STANDARD_DETAIL.PERIOD_ID'
      
        '       ORDER BY HR_WAGE_STANDARD_DETAIL.PERIOD_ID DESC) OLD_CARE' +
        'ER_NAME'
      '    , (SELECT MAX(HR_WAGE_STANDARD.WAGE_LEVEL)'
      '        FROM HR_WAGE_STANDARD'
      
        '        WHERE HR_WAGE_STANDARD.WAGE_SCALE = (SELECT FIRST 1 A.WA' +
        'GE_SCALE'
      
        '                                            FROM HR_WAGE_STANDAR' +
        'D_DETAIL A'
      
        '                                            WHERE A.EMPLOYEE_NO ' +
        '= HR_WAGE_STANDARD_DETAIL.EMPLOYEE_NO AND'
      
        '                                                A.PERIOD_ID < HR' +
        '_WAGE_STANDARD_DETAIL.PERIOD_ID'
      
        '                                            ORDER BY HR_WAGE_STA' +
        'NDARD_DETAIL.PERIOD_ID DESC)) OLD_MAX_LEVEL'
      'FROM HR_WAGE_STANDARD_DETAIL'
      'JOIN HR_MASK_EMPLOYEE(:USER_NAME) '
      
        '  ON HR_WAGE_STANDARD_DETAIL.EMPLOYEE_NO=HR_MASK_EMPLOYEE.EMPLOY' +
        'EE_NO '
      'LEFT JOIN HR_CAREER ON WAGE_SCALE=CAREER_NO'
      
        'LEFT JOIN HR_CAREER NEXT_CAREER ON NEXT_CAREER.CAREER_NO = HR_WA' +
        'GE_STANDARD_DETAIL.NEXT_WAGE_SCALE'
      'WHERE CHANGE_NO=:CHANGE_NO'
      '')
    FieldOptions = []
    Left = 575
    Top = 8
    object qryEmpStandardWageCHANGE_NO: TWideStringField
      FieldName = 'CHANGE_NO'
      Required = True
      Size = 30
    end
    object qryEmpStandardWageEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryEmpStandardWageFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Required = True
      OnChange = qryEmpStandardWageFULL_NAMEChange
      Size = 96
    end
    object qryEmpStandardWageWAGE_SCALE: TWideStringField
      FieldName = 'WAGE_SCALE'
      Size = 30
    end
    object qryEmpStandardWageCAREER_NAME: TWideStringField
      FieldName = 'CAREER_NAME'
      Required = True
      OnChange = qryEmpStandardWageCAREER_NAMEChange
      Size = 126
    end
    object qryEmpStandardWageWAGE_LEVEL: TIntegerField
      FieldName = 'WAGE_LEVEL'
    end
    object qryEmpStandardWageWAGE_COEFF: TIBOFloatField
      FieldName = 'WAGE_COEFF'
      Required = True
    end
    object qryEmpStandardWageAPPLY_MONTH: TIntegerField
      FieldName = 'APPLY_MONTH'
      Required = True
    end
    object qryEmpStandardWageAPPLY_YEAR: TIntegerField
      FieldName = 'APPLY_YEAR'
      Required = True
    end
    object qryEmpStandardWageAPPLY_PERIOD: TIntegerField
      FieldName = 'APPLY_PERIOD'
      Required = True
    end
    object qryEmpStandardWagePERIOD_ID: TIntegerField
      FieldName = 'PERIOD_ID'
    end
    object qryEmpStandardWageGENDER_TEXT: TWideStringField
      FieldName = 'GENDER_TEXT'
      Size = 30
    end
    object qryEmpStandardWageMAX_LEVEL: TIntegerField
      FieldName = 'MAX_LEVEL'
      ReadOnly = True
    end
    object qryEmpStandardWageOLD_WAGE_LEVEL: TIntegerField
      FieldName = 'OLD_WAGE_LEVEL'
      ReadOnly = True
    end
    object qryEmpStandardWageOLD_WAGE_COEFF: TIBOFloatField
      FieldName = 'OLD_WAGE_COEFF'
      ReadOnly = True
    end
    object qryEmpStandardWageOLD_WAGE_SCALE: TWideStringField
      FieldName = 'OLD_WAGE_SCALE'
      ReadOnly = True
      Size = 30
    end
    object qryEmpStandardWageOLD_CAREER_NAME: TWideStringField
      FieldName = 'OLD_CAREER_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryEmpStandardWageOLD_MAX_LEVEL: TIntegerField
      FieldName = 'OLD_MAX_LEVEL'
      ReadOnly = True
    end
    object qryEmpStandardWageGENDER_TEXT_ENG: TWideStringField
      FieldName = 'GENDER_TEXT_ENG'
      Size = 30
    end
    object qryEmpStandardWageNEXT_WAGE_SCALE: TWideStringField
      FieldName = 'NEXT_WAGE_SCALE'
      Size = 30
    end
    object qryEmpStandardWageNEXT_CAREER_NAME: TWideStringField
      FieldName = 'NEXT_CAREER_NAME'
      Size = 126
    end
    object qryEmpStandardWageNEXT_WAGE_LEVEL: TIntegerField
      FieldName = 'NEXT_WAGE_LEVEL'
    end
    object qryEmpStandardWageNEXT_MONTH: TIntegerField
      FieldName = 'NEXT_MONTH'
    end
    object qryEmpStandardWageNEXT_YEAR: TIntegerField
      FieldName = 'NEXT_YEAR'
    end
  end
  object dsEmpStandardWage: TDataSource
    DataSet = qryEmpStandardWage
    Left = 575
    Top = 62
  end
  object qryOffWorkResume: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'EMPLOYEE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    KeyLinks.Strings = (
      'EMPLOYEE_NO')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsOffWork
    SQL.Strings = (
      'SELECT first 1 HR_assignment.EMPLOYEE_NO'
      ' , LAST_NAME||'#39' '#39'||MIDDLE_NAME||'#39' '#39'||FIRST_NAME FULL_NAME'
      ' , DEPT_NAME'
      ' , TITLE_NAME'
      'FROM HR_assignment'
      
        'left join hr_employee on HR_assignment.employee_no=hr_employee.e' +
        'mployee_no'
      
        'left join hr_position on hr_assignment.position_no=hr_position.p' +
        'osition_no'
      
        'left join hr_department on hr_position.dept_no=hr_department.dep' +
        't_no'
      'left join hr_title on hr_position.title_no=hr_title.title_no'
      'where HR_assignment.EMPLOYEE_NO=:EMPLOYEE_NO'
      ' and hr_assignment.is_main_position=1'
      'order by hr_assignment.assigned_date desc')
    FieldOptions = []
    Left = 575
    Top = 126
    object qryOffWorkResumeEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryOffWorkResumeFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Size = 125
    end
    object qryOffWorkResumeDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryOffWorkResumeTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
  end
  object dsOffWorkResume: TDataSource
    DataSet = qryOffWorkResume
    Left = 575
    Top = 188
  end
  object ppLilichNHANVIEN: TppDBPipeline
    DataSource = dsOffWorkResume
    UserName = 'LilichNHANVIEN_Nghiviec'
    Left = 575
    Top = 240
    MasterDataPipelineName = 'ppChitiet_QD_Nghiviec'
    object ppLilichNHANVIENppField1: TppField
      FieldAlias = 'EMPLOYEE_NO'
      FieldName = 'EMPLOYEE_NO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppLilichNHANVIENppField2: TppField
      FieldAlias = 'FULL_NAME'
      FieldName = 'FULL_NAME'
      FieldLength = 125
      DisplayWidth = 125
      Position = 1
    end
    object ppLilichNHANVIENppField3: TppField
      FieldAlias = 'DEPT_NAME'
      FieldName = 'DEPT_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 2
    end
    object ppLilichNHANVIENppField4: TppField
      FieldAlias = 'TITLE_NAME'
      FieldName = 'TITLE_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 3
    end
  end
  object qryChangePosition: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'DECISION_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_ASSIGNMENT'
      'WHERE'
      '   ASS_KEY_ID = :OLD_ASS_KEY_ID')
    EditSQL.Strings = (
      'UPDATE HR_ASSIGNMENT SET'
      '   ASS_KEY_ID = :ASS_KEY_ID, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO,'
      '   FROM_ASS_KEY_ID = :FROM_ASS_KEY_ID,'
      '   POSITION_NO = :POSITION_NO,'
      '   DEPT_NO = :DEPT_NO,'
      '   TITLE_NO = :TITLE_NO,'
      '   ASSIGNED_DATE = :ASSIGNED_DATE,'
      '   IS_MAIN_POSITION = :IS_MAIN_POSITION,'
      '   DECISION_NO = :DECISION_NO,'
      '   ENDED_DATE = :ENDED_DATE'
      'WHERE'
      '   ASS_KEY_ID = :OLD_ASS_KEY_ID')
    GeneratorLinks.Strings = (
      'ASS_KEY_ID = GEN_HR_ASSIGNMENT_ID')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_ASSIGNMENT('
      '   ASS_KEY_ID, /*PK*/'
      '   EMPLOYEE_NO,'
      '   FROM_ASS_KEY_ID,'
      '   POSITION_NO,'
      '   DEPT_NO,'
      '   TITLE_NO,'
      '   ASSIGNED_DATE,'
      '   IS_MAIN_POSITION,'
      '   DECISION_NO,'
      '   ENDED_DATE)'
      'VALUES ('
      '   :ASS_KEY_ID,'
      '   :EMPLOYEE_NO,'
      '   :FROM_ASS_KEY_ID,'
      '   :POSITION_NO,'
      '   :DEPT_NO,'
      '   :TITLE_NO,'
      '   :ASSIGNED_DATE,'
      '   :IS_MAIN_POSITION,'
      '   :DECISION_NO,'
      '   :ENDED_DATE)')
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryChangePositionBeforePost
    AfterPost = qryChangePositionAfterPost
    OnNewRecord = qryChangePositionNewRecord
    DataSource = dsDecisions
    SQL.Strings = (
      'SELECT'
      '    /* VI tri moi chuyen den */'
      '    TO_ASSIGNMENT.ASS_KEY_ID,'
      '    TO_ASSIGNMENT.EMPLOYEE_NO,'
      
        '    HR_EMPLOYEE.LAST_NAME || '#39' '#39' || HR_EMPLOYEE.MIDDLE_NAME || '#39 +
        ' '#39' || HR_EMPLOYEE.FIRST_NAME FULL_NAME,'
      
        '    CASE WHEN HR_EMPLOYEE.GENDER = 1  THEN '#39#195#8221'ng'#39' ELSE '#39'B'#195#160#39' END' +
        ' GENDER_TEXT,'
      
        '    CASE WHEN HR_EMPLOYEE.GENDER = 1  THEN '#39'Mr'#39' ELSE '#39'Ms'#39' END GE' +
        'NDER_TEXT_ENG,'
      '    TO_ASSIGNMENT.FROM_ASS_KEY_ID,'
      '    TO_ASSIGNMENT.POSITION_NO,'
      '    TO_ASSIGNMENT.DEPT_NO,'
      '    TO_DEPARTMENT.DEPT_NAME,'
      '    TO_ASSIGNMENT.TITLE_NO,'
      '    TO_TITLE.TITLE_NAME,'
      
        '    TO_TITLE.TITLE_NAME || '#39'-'#39' || TO_DEPARTMENT.DEPT_NAME POSITI' +
        'ON_NAME,'
      '    TO_ASSIGNMENT.ASSIGNED_DATE ,'
      '    TO_ASSIGNMENT.IS_MAIN_POSITION,'
      '    TO_ASSIGNMENT.DECISION_NO,'
      '    TO_ASSIGNMENT.ENDED_DATE,'
      '    /*Vi tri cu chuyen di */'
      '    FROM_ASSIGNMENT.POSITION_NO FROM_POSITION_NO,'
      '    FROM_ASSIGNMENT.DEPT_NO FROM_DEPT_NO,'
      '    FROM_DEPARTMENT.DEPT_NAME FROM_DEPT_NAME,'
      '    FROM_ASSIGNMENT.TITLE_NO FROM_TITLE_NO,'
      '    FROM_TITLE.TITLE_NAME FROM_TITLE_NAME,'
      
        '    FROM_TITLE.TITLE_NAME || '#39'-'#39' || FROM_DEPARTMENT.DEPT_NAME FR' +
        'OM_POSITION_NAME,'
      '    FROM_ASSIGNMENT.ASSIGNED_DATE FROM_ASSIGNED_DATE,'
      '    FROM_ASSIGNMENT.IS_MAIN_POSITION FROM_IS_MAIN_POSITION,'
      '    FROM_ASSIGNMENT.DISMISS_DATE FROM_DISMISS_DATE'
      'FROM HR_ASSIGNMENT TO_ASSIGNMENT'
      
        'JOIN HR_EMPLOYEE ON TO_ASSIGNMENT.EMPLOYEE_NO = HR_EMPLOYEE.EMPL' +
        'OYEE_NO '
      
        'JOIN HR_DEPARTMENT TO_DEPARTMENT ON TO_DEPARTMENT.DEPT_NO = TO_A' +
        'SSIGNMENT.DEPT_NO'
      
        'JOIN HR_TITLE TO_TITLE ON TO_ASSIGNMENT.TITLE_NO = TO_TITLE.TITL' +
        'E_NO '
      
        'JOIN HR_ASSIGNMENT FROM_ASSIGNMENT ON TO_ASSIGNMENT.FROM_ASS_KEY' +
        '_ID = FROM_ASSIGNMENT.ASS_KEY_ID '
      
        'JOIN HR_DEPARTMENT FROM_DEPARTMENT ON FROM_DEPARTMENT.DEPT_NO = ' +
        'FROM_ASSIGNMENT.DEPT_NO'
      
        'JOIN HR_TITLE FROM_TITLE ON FROM_ASSIGNMENT.TITLE_NO = FROM_TITL' +
        'E.TITLE_NO'
      'WHERE TO_ASSIGNMENT.DECISION_NO = :DECISION_NO')
    FieldOptions = []
    Left = 331
    Top = 8
    object qryChangePositionEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryChangePositionFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      ReadOnly = True
      Required = True
      Size = 129
    end
    object qryChangePositionGENDER_TEXT: TWideStringField
      FieldName = 'GENDER_TEXT'
      ReadOnly = True
      Size = 9
    end
    object qryChangePositionGENDER_TEXT_ENG: TWideStringField
      FieldName = 'GENDER_TEXT_ENG'
      ReadOnly = True
      Size = 6
    end
    object qryChangePositionPOSITION_NAME: TWideStringField
      FieldName = 'POSITION_NAME'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object qryChangePositionDEPT_NO: TWideStringField
      FieldName = 'DEPT_NO'
      Size = 30
    end
    object qryChangePositionDEPT_NAME: TWideStringField
      FieldName = 'DEPT_NAME'
      Size = 126
    end
    object qryChangePositionTITLE_NO: TWideStringField
      FieldName = 'TITLE_NO'
      Size = 30
    end
    object qryChangePositionTITLE_NAME: TWideStringField
      FieldName = 'TITLE_NAME'
      Size = 126
    end
    object qryChangePositionASSIGNED_DATE: TDateField
      FieldName = 'ASSIGNED_DATE'
      Required = True
    end
    object qryChangePositionIS_MAIN_POSITION: TSmallintField
      FieldName = 'IS_MAIN_POSITION'
      Required = True
    end
    object qryChangePositionDECISION_NO: TWideStringField
      FieldName = 'DECISION_NO'
      Size = 30
    end
    object qryChangePositionENDED_DATE: TDateField
      FieldName = 'ENDED_DATE'
    end
    object qryChangePositionFROM_POSITION_NO: TWideStringField
      FieldName = 'FROM_POSITION_NO'
      Size = 30
    end
    object qryChangePositionFROM_DEPT_NO: TWideStringField
      FieldName = 'FROM_DEPT_NO'
      Size = 30
    end
    object qryChangePositionFROM_DEPT_NAME: TWideStringField
      FieldName = 'FROM_DEPT_NAME'
      Size = 126
    end
    object qryChangePositionFROM_TITLE_NO: TWideStringField
      FieldName = 'FROM_TITLE_NO'
      Size = 30
    end
    object qryChangePositionFROM_TITLE_NAME: TWideStringField
      FieldName = 'FROM_TITLE_NAME'
      Size = 126
    end
    object qryChangePositionFROM_POSITION_NAME: TWideStringField
      FieldName = 'FROM_POSITION_NAME'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object qryChangePositionFROM_ASSIGNED_DATE: TDateField
      FieldName = 'FROM_ASSIGNED_DATE'
    end
    object qryChangePositionFROM_IS_MAIN_POSITION: TSmallintField
      FieldName = 'FROM_IS_MAIN_POSITION'
    end
    object qryChangePositionFROM_DISMISS_DATE: TDateField
      FieldName = 'FROM_DISMISS_DATE'
    end
    object qryChangePositionASS_KEY_ID: TIntegerField
      FieldName = 'ASS_KEY_ID'
    end
    object qryChangePositionFROM_ASS_KEY_ID: TIntegerField
      FieldName = 'FROM_ASS_KEY_ID'
    end
    object qryChangePositionPOSITION_NO: TWideStringField
      FieldName = 'POSITION_NO'
      Size = 30
    end
  end
  object dsChangePosition: TDataSource
    DataSet = qryChangePosition
    Left = 331
    Top = 62
  end
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    FieldOptions = []
    Left = 18
    Top = 357
  end
  object qryDSHeso: TIBOQuery
    Params = <>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT PARAM_NO'
      '     , PARAM_NAME'
      'FROM HR_FORMAL_PARAM'
      'where FOLLOW_DECISION=1')
    FieldOptions = []
    Left = 88
    Top = 357
    object qryDSHesoPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Required = True
      Size = 63
    end
    object qryDSHesoPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Required = True
      Size = 126
    end
  end
  object memHesoDikem: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 160
    Top = 357
  end
  object dsHeso_Dikem: TDataSource
    DataSet = memHesoDikem
    Left = 160
    Top = 406
  end
  object ppHeSoDiKemQD: TppDBPipeline
    DataSource = dsHeso_Dikem
    UserName = 'HesoLuongKemQD'
    Left = 160
    Top = 462
  end
  object qryHesoDikem: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DECISION_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_FORMAL_DETAIL'
      'WHERE'
      '   DOC_NO = :OLD_DOC_NO AND'
      '   DOC_TYPE = :OLD_DOC_TYPE AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   PARAM_NO = :OLD_PARAM_NO')
    EditSQL.Strings = (
      'UPDATE HR_FORMAL_DETAIL SET'
      '   DOC_NO = :DOC_NO, /*PK*/'
      '   DOC_TYPE = :DOC_TYPE, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   PARAM_NO = :PARAM_NO, /*PK*/'
      '   PARAM_VALUE = :PARAM_VALUE,'
      '   NOTE = :NOTE'
      'WHERE'
      '   DOC_NO = :OLD_DOC_NO AND'
      '   DOC_TYPE = :OLD_DOC_TYPE AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO AND'
      '   PARAM_NO = :OLD_PARAM_NO')
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDecision_Emp
    SQL.Strings = (
      'SELECT HR_FORMAL_DETAIL.PARAM_NO'
      '     , PARAM_NAME'
      '     , EMPLOYEE_NO'
      '     , DOC_NO'
      '     , DOC_TYPE'
      '     , PARAM_VALUE'
      '     , HR_FORMAL_DETAIL.NOTE'
      'FROM HR_FORMAL_DETAIL'
      'JOIN HR_FORMAL_PARAM on '
      ' HR_FORMAL_DETAIL.PARAM_NO=HR_FORMAL_PARAM.PARAM_NO'
      'where EMPLOYEE_NO=:EMPLOYEE_NO and  '
      '      DOC_NO=:DECISION_NO and'
      '      DOC_TYPE='#39'DECISION'#39)
    FieldOptions = []
    Left = 88
    Top = 406
    object qryHesoDikemPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Required = True
      Size = 63
    end
    object qryHesoDikemPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Required = True
      Size = 126
    end
    object qryHesoDikemEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Required = True
      Size = 30
    end
    object qryHesoDikemDOC_NO: TWideStringField
      FieldName = 'DOC_NO'
      Required = True
      Size = 30
    end
    object qryHesoDikemDOC_TYPE: TWideStringField
      FieldName = 'DOC_TYPE'
      Required = True
      Size = 30
    end
    object qryHesoDikemPARAM_VALUE: TIBOFloatField
      FieldName = 'PARAM_VALUE'
    end
    object qryHesoDikemNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 3072
    end
  end
  object dsHesoDikem: TDataSource
    DataSet = qryHesoDikem
    Left = 88
    Top = 462
  end
  object qryHeSoDiKem_Cu: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'EMPLOYEE_NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DECISION_NO'
        ParamType = ptUnknown
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    Unicode = True
    RecordCountAccurate = True
    DataSource = dsDecision_Emp
    SQL.Strings = (
      'SELECT PARAM_NO,'
      '       PARAM_NAME,'
      '       PARAM_VALUE'
      'FROM HR_DECISION_MUCLUONG_CU(:EMPLOYEE_NO,:DECISION_NO)')
    FieldOptions = []
    Left = 224
    Top = 357
    object qryHeSoDiKem_CuPARAM_NO: TWideStringField
      FieldName = 'PARAM_NO'
      Size = 30
    end
    object qryHeSoDiKem_CuPARAM_NAME: TWideStringField
      FieldName = 'PARAM_NAME'
      Size = 126
    end
    object qryHeSoDiKem_CuPARAM_VALUE: TIBOFloatField
      FieldName = 'PARAM_VALUE'
    end
  end
  object DecisionActions: TActionList
    Left = 224
    Top = 406
    object acCreateMem: TAction
      Caption = 'acCreateMem'
      OnExecute = acCreateMemExecute
    end
    object acRefreshMem: TAction
      Caption = 'acRefreshMem'
      OnExecute = acRefreshMemExecute
    end
    object acFreeMem: TAction
      Caption = 'acFreeMem'
      OnExecute = acFreeMemExecute
    end
  end
  object qryEmpCompanyWage: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHANGE_NO'
        ParamType = ptInput
      end>
    DatabaseName = 'E:\OSC\Code\Database\SSP_HRM_DB_30.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM HR_COMP_WAGE_STANDARD_DETAIL'
      'WHERE'
      '   CHANGE_NO = :OLD_CHANGE_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    EditSQL.Strings = (
      'UPDATE HR_COMP_WAGE_STANDARD_DETAIL SET'
      '   CHANGE_NO = :CHANGE_NO, /*PK*/'
      '   EMPLOYEE_NO = :EMPLOYEE_NO, /*PK*/'
      '   WAGE_SCALE = :WAGE_SCALE,'
      '   WAGE_LEVEL = :WAGE_LEVEL,'
      '   WAGE_COEFF = :WAGE_COEFF,'
      '   APPLY_MONTH = :APPLY_MONTH,'
      '   APPLY_YEAR = :APPLY_YEAR,'
      '   APPLY_PERIOD = :APPLY_PERIOD,'
      '   PERIOD_ID = :PERIOD_ID,'
      '   NEXT_WAGE_SCALE = :NEXT_WAGE_SCALE,'
      '   NEXT_WAGE_LEVEL = :NEXT_WAGE_LEVEL,'
      '   NEXT_MONTH = :NEXT_MONTH,'
      '   NEXT_YEAR = :NEXT_YEAR'
      'WHERE'
      '   CHANGE_NO = :OLD_CHANGE_NO AND'
      '   EMPLOYEE_NO = :OLD_EMPLOYEE_NO')
    IB_Connection = dmMain.connMain
    InsertSQL.Strings = (
      'INSERT INTO HR_COMP_WAGE_STANDARD_DETAIL('
      '   CHANGE_NO, /*PK*/'
      '   EMPLOYEE_NO, /*PK*/'
      '   WAGE_SCALE,'
      '   WAGE_LEVEL,'
      '   WAGE_COEFF,'
      '   APPLY_MONTH,'
      '   APPLY_YEAR,'
      '   APPLY_PERIOD,'
      '   PERIOD_ID,'
      '   NEXT_WAGE_SCALE,'
      '   NEXT_WAGE_LEVEL,'
      '   NEXT_MONTH,'
      '   NEXT_YEAR)'
      'VALUES ('
      '   :CHANGE_NO,'
      '   :EMPLOYEE_NO,'
      '   :WAGE_SCALE,'
      '   :WAGE_LEVEL,'
      '   :WAGE_COEFF,'
      '   :APPLY_MONTH,'
      '   :APPLY_YEAR,'
      '   :APPLY_PERIOD,'
      '   :PERIOD_ID,'
      '   :NEXT_WAGE_SCALE,'
      '   :NEXT_WAGE_LEVEL,'
      '   :NEXT_MONTH,'
      '   :NEXT_YEAR)')
    Unicode = True
    RecordCountAccurate = True
    AfterPost = qryEmpCompanyWageAfterPost
    OnNewRecord = qryEmpCompanyWageNewRecord
    DataSource = dsWageStandardChange
    SQL.Strings = (
      'SELECT CHANGE_NO'
      '     , HR_COMP_WAGE_STANDARD_DETAIL.EMPLOYEE_NO'
      '     , FULL_NAME'
      '     , HR_COMP_WAGE_STANDARD_DETAIL.WAGE_SCALE'
      '     , HR_COMPANY_WAGE_SCALE.WAGE_SCALE_NAME'
      '     , WAGE_LEVEL'
      '     , WAGE_COEFF'
      '     , APPLY_MONTH'
      '     , APPLY_YEAR'
      '     , APPLY_PERIOD'
      '     , PERIOD_ID'
      '     , NEXT_WAGE_SCALE'
      
        '     , NEXT_COMPANY_WAGE_SCALE.WAGE_SCALE_NAME NEXT_WAGE_SCALE_N' +
        'AME'
      '     , NEXT_WAGE_LEVEL'
      '     , NEXT_MONTH'
      '     , NEXT_YEAR'
      '     /* LAY MUC LUONG CU */'
      '     , (SELECT FIRST 1 A.WAGE_LEVEL'
      '       FROM HR_COMP_WAGE_STANDARD_DETAIL A'
      
        '       WHERE A.EMPLOYEE_NO = HR_COMP_WAGE_STANDARD_DETAIL.EMPLOY' +
        'EE_NO AND'
      
        '             A.PERIOD_ID < HR_COMP_WAGE_STANDARD_DETAIL.PERIOD_I' +
        'D'
      
        '       ORDER BY HR_COMP_WAGE_STANDARD_DETAIL.PERIOD_ID DESC) OLD' +
        '_WAGE_LEVEL'
      '     , (SELECT FIRST 1 A.WAGE_COEFF'
      '       FROM HR_COMP_WAGE_STANDARD_DETAIL A'
      
        '       WHERE A.EMPLOYEE_NO = HR_COMP_WAGE_STANDARD_DETAIL.EMPLOY' +
        'EE_NO AND'
      
        '             A.PERIOD_ID < HR_COMP_WAGE_STANDARD_DETAIL.PERIOD_I' +
        'D'
      
        '       ORDER BY HR_COMP_WAGE_STANDARD_DETAIL.PERIOD_ID DESC) OLD' +
        '_WAGE_COEFF'
      '    , (SELECT FIRST 1 A.WAGE_SCALE'
      '       FROM HR_COMP_WAGE_STANDARD_DETAIL A'
      
        '       WHERE A.EMPLOYEE_NO = HR_COMP_WAGE_STANDARD_DETAIL.EMPLOY' +
        'EE_NO AND'
      
        '             A.PERIOD_ID < HR_COMP_WAGE_STANDARD_DETAIL.PERIOD_I' +
        'D'
      
        '       ORDER BY HR_COMP_WAGE_STANDARD_DETAIL.PERIOD_ID DESC) OLD' +
        '_WAGE_SCALE'
      '    , (SELECT FIRST 1 CAREER_NAME'
      '       FROM HR_COMP_WAGE_STANDARD_DETAIL A'
      '       LEFT JOIN HR_CAREER ON WAGE_SCALE=CAREER_NO'
      
        '       WHERE A.EMPLOYEE_NO = HR_COMP_WAGE_STANDARD_DETAIL.EMPLOY' +
        'EE_NO AND'
      
        '             A.PERIOD_ID < HR_COMP_WAGE_STANDARD_DETAIL.PERIOD_I' +
        'D'
      
        '       ORDER BY HR_COMP_WAGE_STANDARD_DETAIL.PERIOD_ID DESC) OLD' +
        '_CAREER_NAME'
      '    , (SELECT MAX(HR_COMPANY_WAGE_STANDARD.WAGE_LEVEL)'
      '        FROM HR_COMPANY_WAGE_STANDARD'
      
        '        WHERE HR_COMPANY_WAGE_STANDARD.WAGE_SCALE = (SELECT FIRS' +
        'T 1 A.WAGE_SCALE'
      
        '                                            FROM HR_COMP_WAGE_ST' +
        'ANDARD_DETAIL A'
      
        '                                            WHERE A.EMPLOYEE_NO ' +
        '= HR_COMP_WAGE_STANDARD_DETAIL.EMPLOYEE_NO AND'
      
        '                                                A.PERIOD_ID < HR' +
        '_COMP_WAGE_STANDARD_DETAIL.PERIOD_ID'
      
        '                                            ORDER BY HR_COMP_WAG' +
        'E_STANDARD_DETAIL.PERIOD_ID DESC)) OLD_MAX_LEVEL'
      'FROM HR_COMP_WAGE_STANDARD_DETAIL'
      'JOIN HR_MASK_EMPLOYEE(:USER_NAME) '
      
        '  ON HR_COMP_WAGE_STANDARD_DETAIL.EMPLOYEE_NO=HR_MASK_EMPLOYEE.E' +
        'MPLOYEE_NO'
      
        'LEFT JOIN HR_COMPANY_WAGE_SCALE ON HR_COMPANY_WAGE_SCALE.WAGE_SC' +
        'ALE=HR_COMP_WAGE_STANDARD_DETAIL.WAGE_SCALE'
      
        'LEFT JOIN HR_COMPANY_WAGE_SCALE NEXT_COMPANY_WAGE_SCALE ON NEXT_' +
        'COMPANY_WAGE_SCALE.WAGE_SCALE=HR_COMP_WAGE_STANDARD_DETAIL.NEXT_' +
        'WAGE_SCALE'
      'WHERE CHANGE_NO=:CHANGE_NO')
    FieldOptions = []
    Left = 677
    Top = 8
    object qryEmpCompanyWageCHANGE_NO: TWideStringField
      FieldName = 'CHANGE_NO'
      Required = True
      Size = 30
    end
    object qryEmpCompanyWageFULL_NAME: TWideStringField
      FieldName = 'FULL_NAME'
      Required = True
      Size = 96
    end
    object qryEmpCompanyWageEMPLOYEE_NO: TWideStringField
      FieldName = 'EMPLOYEE_NO'
      Size = 30
    end
    object qryEmpCompanyWageWAGE_SCALE_NAME: TWideStringField
      FieldName = 'WAGE_SCALE_NAME'
      Required = True
      Size = 63
    end
    object qryEmpCompanyWageWAGE_SCALE: TWideStringField
      FieldName = 'WAGE_SCALE'
      Size = 30
    end
    object qryEmpCompanyWageWAGE_LEVEL: TIntegerField
      FieldName = 'WAGE_LEVEL'
    end
    object qryEmpCompanyWageWAGE_COEFF: TIBOFloatField
      FieldName = 'WAGE_COEFF'
      Required = True
    end
    object qryEmpCompanyWageAPPLY_MONTH: TIntegerField
      FieldName = 'APPLY_MONTH'
      Required = True
    end
    object qryEmpCompanyWageAPPLY_YEAR: TIntegerField
      FieldName = 'APPLY_YEAR'
      Required = True
    end
    object qryEmpCompanyWageAPPLY_PERIOD: TIntegerField
      FieldName = 'APPLY_PERIOD'
      Required = True
    end
    object qryEmpCompanyWagePERIOD_ID: TIntegerField
      FieldName = 'PERIOD_ID'
    end
    object qryEmpCompanyWageNEXT_WAGE_SCALE: TWideStringField
      FieldName = 'NEXT_WAGE_SCALE'
      Size = 30
    end
    object qryEmpCompanyWageNEXT_WAGE_SCALE_NAME: TWideStringField
      FieldName = 'NEXT_WAGE_SCALE_NAME'
      Size = 63
    end
    object qryEmpCompanyWageNEXT_WAGE_LEVEL: TIntegerField
      FieldName = 'NEXT_WAGE_LEVEL'
    end
    object qryEmpCompanyWageNEXT_MONTH: TIntegerField
      FieldName = 'NEXT_MONTH'
    end
    object qryEmpCompanyWageNEXT_YEAR: TIntegerField
      FieldName = 'NEXT_YEAR'
    end
    object qryEmpCompanyWageOLD_WAGE_LEVEL: TIntegerField
      FieldName = 'OLD_WAGE_LEVEL'
      ReadOnly = True
    end
    object qryEmpCompanyWageOLD_WAGE_COEFF: TIBOFloatField
      FieldName = 'OLD_WAGE_COEFF'
      ReadOnly = True
    end
    object qryEmpCompanyWageOLD_WAGE_SCALE: TWideStringField
      FieldName = 'OLD_WAGE_SCALE'
      ReadOnly = True
      Size = 30
    end
    object qryEmpCompanyWageOLD_CAREER_NAME: TWideStringField
      FieldName = 'OLD_CAREER_NAME'
      ReadOnly = True
      Size = 126
    end
    object qryEmpCompanyWageOLD_MAX_LEVEL: TIntegerField
      FieldName = 'OLD_MAX_LEVEL'
      ReadOnly = True
    end
  end
  object dsEmpCompanyWage: TDataSource
    DataSet = qryEmpCompanyWage
    Left = 677
    Top = 62
  end
  object ppEmpCompanyWage: TppDBPipeline
    DataSource = dsEmpCompanyWage
    UserName = 'ThongTinHeSoSXKD'
    Left = 676
    Top = 126
    object ppField1: TppField
      FieldAlias = 'EMPLOYEE_NO'
      FieldName = 'EMPLOYEE_NO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField2: TppField
      FieldAlias = 'FULL_NAME'
      FieldName = 'FULL_NAME'
      FieldLength = 125
      DisplayWidth = 125
      Position = 1
    end
    object ppField3: TppField
      FieldAlias = 'DEPT_NAME'
      FieldName = 'DEPT_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'TITLE_NAME'
      FieldName = 'TITLE_NAME'
      FieldLength = 126
      DisplayWidth = 126
      Position = 3
    end
  end
end
