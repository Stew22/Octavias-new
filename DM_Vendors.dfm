object Datamodulevendor: TDatamodulevendor
  Height = 157
  Width = 222
  object convendor: TADOConnection
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object tblvendor: TADOTable
    Connection = convendor
    Left = 104
    Top = 48
  end
  object dsvendor: TDataSource
    DataSet = tblvendor
    Left = 32
    Top = 72
  end
end
