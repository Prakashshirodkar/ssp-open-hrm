object dmBAOHIEM: TdmBAOHIEM
  OldCreateOrder = False
  Left = 500
  Top = 193
  Height = 171
  Width = 243
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_30_BHXH\Database\SSP_HRM_DB_30.GDB'
    IB_Connection = dmMain.connMain
    IB_Transaction = transaction
    Unicode = True
    RecordCountAccurate = True
    OnError = qryExecuteError
    BeforeOpen = qryExecuteBeforeOpen
    FieldOptions = []
    Left = 94
    Top = 18
  end
  object transaction: TIB_Transaction
    IB_Connection = dmMain.connMain
    AutoCommit = True
    Isolation = tiCommitted
    Left = 16
    Top = 45
  end
end
