object DM: TDM
  OldCreateOrder = False
  Left = 253
  Top = 111
  Height = 305
  Width = 358
  object DB: TIBDatabase
    Connected = True
    DatabaseName = 'D:\TU\diplomna\application\DBIB.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = Trans
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 48
    Top = 32
  end
  object Trans: TIBTransaction
    Active = True
    DefaultDatabase = DB
    AutoStopAction = saNone
    Left = 104
    Top = 32
  end
  object Query: TIBQuery
    Database = DB
    Transaction = Trans
    BufferChunks = 1000
    CachedUpdates = False
    Left = 200
    Top = 48
  end
end
