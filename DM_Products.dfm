object DataModuleProducts: TDataModuleProducts
  OldCreateOrder = False
  Height = 150
  Width = 215
  object conproducts: TADOConnection
    LoginPrompt = False
    Left = 64
    Top = 24
  end
  object tblproducts: TADOTable
    Connection = conproducts
    Left = 16
    Top = 80
  end
  object dsproducts: TDataSource
    DataSet = tblproducts
    Left = 96
    Top = 88
  end
end
