object DataModuleSpaMenu: TDataModuleSpaMenu
  Height = 224
  Width = 317
  object dsspamenu: TDataSource
    DataSet = tblspamenu
    Left = 72
    Top = 120
  end
  object conspamenu: TADOConnection
    LoginPrompt = False
    Left = 120
    Top = 56
  end
  object tblspamenu: TADOTable
    Connection = conspamenu
    Left = 160
    Top = 120
  end
end
