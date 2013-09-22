object dmLuong: TdmLuong
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 317
  Top = 317
  Height = 208
  Width = 390
  object qryExecute: TIBOQuery
    Params = <>
    DatabaseName = 'E:\SSP_HRM_3.0\Database\SSP_HRM_DB_30.GDB'
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
