object Datamoduleorder: TDatamoduleorder
  Height = 150
  Width = 215
  object conorder: TADOConnection
    LoginPrompt = False
    Left = 24
    Top = 24
  end
  object tblorder: TADOTable
    Connection = conorder
    Left = 112
    Top = 72
  end
  object dsorder: TDataSource
    DataSet = tblorder
    Left = 24
    Top = 80
  end
end
