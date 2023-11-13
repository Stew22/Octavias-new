object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 150
  Width = 215
  object tblstock: TADOTable
    Connection = constock
    Left = 96
    Top = 80
  end
  object constock: TADOConnection
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object dsstock: TDataSource
    DataSet = tblstock
    Left = 32
    Top = 88
  end
end
