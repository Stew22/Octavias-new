object DataModuleLogger: TDataModuleLogger
  Height = 153
  Width = 244
  object conlogger: TADOConnection
    LoginPrompt = False
    Left = 56
    Top = 64
  end
  object tbllogger: TADOTable
    Connection = conlogger
    Left = 104
    Top = 64
  end
  object dslogger: TDataSource
    DataSet = tbllogger
    Left = 88
    Top = 24
  end
end
