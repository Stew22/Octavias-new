object frmdeleteproductvendor: Tfrmdeleteproductvendor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Delete Product Vendor'
  ClientHeight = 209
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mm1
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 8
    Width = 593
    Height = 41
    BevelInner = bvLowered
    TabOrder = 0
    object lbl1: TLabel
      Left = 32
      Top = 13
      Width = 530
      Height = 15
      Caption = 
        'Use The Following Form To Delete A Product Vendor And All Associ' +
        'ated Products From The Database'
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 64
    Width = 593
    Height = 137
    BevelInner = bvLowered
    TabOrder = 1
    object lbl2: TLabel
      Left = 16
      Top = 19
      Width = 126
      Height = 15
      Caption = 'Product Vendor Name : '
    end
    object lbl3: TLabel
      Left = 16
      Top = 64
      Width = 122
      Height = 15
      Caption = 'Product Vendor Code : '
    end
    object cbbvedeletename: TComboBox
      Left = 148
      Top = 16
      Width = 429
      Height = 23
      TabOrder = 0
      TextHint = '--- Product Vendor Name ---'
    end
    object cbbvdeletecode: TComboBox
      Left = 148
      Top = 62
      Width = 429
      Height = 23
      TabOrder = 1
      TextHint = '--- Product Vendor Code ---'
    end
    object pnl3: TPanel
      Left = 16
      Top = 91
      Width = 561
      Height = 41
      BevelInner = bvLowered
      TabOrder = 2
      object btn1: TButton
        Left = 16
        Top = 8
        Width = 153
        Height = 25
        Caption = 'Delete Product Vendor'
        ImageIndex = 0
        Images = il1
        TabOrder = 0
        OnClick = btn1Click
      end
      object btncancel: TButton
        Left = 264
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Cancel'
        ImageIndex = 1
        Images = il1
        TabOrder = 1
        OnClick = btncancelClick
      end
      object btnexit: TButton
        Left = 464
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Exit'
        ImageIndex = 2
        Images = il1
        TabOrder = 2
        OnClick = btnexitClick
      end
    end
  end
  object il1: TImageList
    Left = 448
    Top = 16
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000535353005353
      5300535353005353530053535300535353005353530053535300535353005353
      5300535353005353530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001313130032323200323232003232
      3200323232003232320032323200323232003232320032323200383838000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005353530000000000000000000000000000000000656565000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000065656500000000000000000033333300000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF333333000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353000000
      0000000000009D9D9D0000000000CDCDCD00CECECE00000000009D9D9D000000
      0000000000005353530000000000000000000000000065656500000000006464
      6400000000000000000000000000000000000000000000000000000000000000
      00006565650000000000656565000000000033333300000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF333333000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      0000000000005353530000000000000000000000000000000000656565000000
      0000646464000000000000000000000000000000000000000000000000006565
      65000000000064646400000000000000000033333300000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF333333000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      0000000000005353530000000000000000000000000000000000000000006969
      6900000000006262620000000000000000000000000000000000646464000000
      00006464640000000000000000000000000033333300000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF333333000000
      00FF80808000000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      0000000000005353530000000000000000000000000000000000000000000000
      0000656565000000000064646400000000000000000065656500010101006363
      63000000000000000000000000000000000033333300000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF333333000000
      00FF7B7B7B0063636300000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      0000000000005353530000000000000000000000000000000000000000000000
      0000000000006666660000000000646464006464640001010100636363000000
      00000000000000000000000000000000000033333300000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF333333000000
      00FF000000FF7E7E7E0059595900000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      0000000000005353530000000000000000000000000000000000000000000000
      0000000000000000000066666600000000000000000063636300000000000000
      00000000000000000000000000000000000033333300000000FF000000FF0000
      00FF9999990098989800989898009898980098989800989898001E1E1E009898
      980098989800989898004D4D4D002B2B2B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      0000000000005353530000000000000000000000000000000000000000000000
      0000000000000000000065656500000000000000000064646400000000000000
      00000000000000000000000000000000000033333300000000FF000000FF0000
      00FF9999990098989800989898009898980098989800989898001E1E1E009898
      980098989800989898004D4D4D002B2B2B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      0000000000005353530000000000000000000000000000000000000000000000
      0000000000006565650000000000646464006565650000000000646464000000
      00000000000000000000000000000000000033333300000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF333333000000
      00FF000000FF8787870058585800000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353000000
      0000000000005454540000000000A9A9A900A9A9A90000000000545454000000
      0000000000005353530000000000000000000000000000000000000000000000
      0000656565000000000064646400000000000000000065656500000000006464
      64000000000000000000000000000000000033333300000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF333333000000
      00FF7C7C7C0062626200000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353000000
      000000000000D5D5D50000000000000000000000000000000000D5D5D5000000
      0000000000005353530000000000000000000000000000000000000000006565
      6500000000006464640000000000000000000000000000000000696969000000
      00006262620000000000000000000000000033333300000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF333333000000
      00FF80808000000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000535353000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005353530000000000000000000000000000000000656565000000
      0000646464000000000000000000000000000000000000000000000000006565
      65000000000065656500000000000000000033333300000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF333333000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000053535300535353002D2D2D001B1B
      1B00080808000808080008080800080808000808080008080800080808000808
      08001B1B1B002D2D2D0053535300535353000000000065656500000000006565
      6500000000000000000000000000000000000000000000000000000000000000
      00006565650000000000656565000000000033333300000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF333333000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000535353000000000000000000000000000000000000000000000000005353
      5300000000000000000000000000000000000000000000000000656565000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000065656500000000000000000033333300000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF333333000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C005353530053535300535353005353530053535300535353008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001313130032323200323232003232
      3200323232003232320032323200323232003232320032323200383838000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00C003FFFF001F0000DFFB9FF97FDF0000
      DA5B8FF17FDF0000DA5BC7E37FDF0000DA5BE3C77FD70000DA5BF18F7FD30000
      DA5BF81F7FD90000DA5BFC3F70000000DA5BFC3F70000000DA5BF81F7FD90000
      DA5BF18F7FD30000DBDBE3C77FD70000DFFBC7E37FDF000000008FF17FDF0000
      F7EF9FF97FDF0000F00FFFFF001F000000000000000000000000000000000000
      000000000000}
  end
  object mm1: TMainMenu
    Left = 504
    Top = 16
    object File1: TMenuItem
      Caption = 'File'
      object N1: TMenuItem
        Caption = '-'
      end
      object File2: TMenuItem
        Caption = 'Delete Vendor'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Cancel1: TMenuItem
        Caption = 'Cancel'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Cancel2: TMenuItem
        Caption = 'Exit'
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
    end
  end
end
