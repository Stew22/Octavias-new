object DataModuleUsers: TDataModuleUsers
  Height = 150
  Width = 215
  object dsusers: TDataSource
    DataSet = tblusers
    Left = 32
    Top = 24
  end
  object conusers: TADOConnection
    LoginPrompt = False
    Left = 32
    Top = 88
  end
  object tblusers: TADOTable
    Connection = conusers
    Left = 104
    Top = 72
  end
end