object frmaddproducts: Tfrmaddproducts
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Add New Products'
  ClientHeight = 377
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 633
    Height = 73
    BevelInner = bvLowered
    TabOrder = 0
  end
  object pnl2: TPanel
    Left = 8
    Top = 96
    Width = 401
    Height = 249
    BevelInner = bvLowered
    TabOrder = 1
    object lbl1: TLabel
      Left = 8
      Top = 8
      Width = 76
      Height = 13
      Caption = 'Select Vendor : '
    end
    object lbl2: TLabel
      Left = 8
      Top = 40
      Width = 69
      Height = 13
      Caption = 'Product SKU : '
    end
    object lbl3: TLabel
      Left = 8
      Top = 72
      Width = 99
      Height = 13
      Caption = 'Product Discription : '
    end
    object lbl4: TLabel
      Left = 8
      Top = 102
      Width = 59
      Height = 13
      Caption = 'Base Price : '
    end
    object lbl5: TLabel
      Left = 8
      Top = 131
      Width = 97
      Height = 13
      Caption = 'Default Order Qty : '
    end
    object lbl6: TLabel
      Left = 8
      Top = 160
      Width = 112
      Height = 13
      Caption = 'Select Main Category : '
    end
    object lbl7: TLabel
      Left = 8
      Top = 186
      Width = 141
      Height = 13
      Caption = 'Select Secondary Category : '
    end
    object lbl8: TLabel
      Left = 8
      Top = 211
      Width = 128
      Height = 13
      Caption = 'Select Tertiary Category : '
    end
    object edtpcode: TEdit
      Left = 113
      Top = 37
      Width = 280
      Height = 21
      TabOrder = 0
      TextHint = 'Product SKU'
    end
    object edtpdisc: TEdit
      Left = 113
      Top = 69
      Width = 280
      Height = 21
      TabOrder = 1
      TextHint = 'Product Discription'
    end
    object edtbprice: TEdit
      Left = 113
      Top = 98
      Width = 280
      Height = 21
      TabOrder = 2
      TextHint = 'Base Price'
    end
    object cbbvendor: TComboBox
      Left = 113
      Top = 5
      Width = 280
      Height = 21
      TabOrder = 3
      TextHint = '-- Select Vendor --'
    end
    object edtdefqty: TEdit
      Left = 113
      Top = 128
      Width = 280
      Height = 21
      TabOrder = 4
      TextHint = 'Order Qty'
    end
    object cbbmaincat: TComboBox
      Left = 155
      Top = 155
      Width = 238
      Height = 21
      TabOrder = 5
      TextHint = '-- Select Main Category --'
      OnChange = cbbmaincatChange
    end
    object cbbseccat: TComboBox
      Left = 155
      Top = 182
      Width = 238
      Height = 21
      TabOrder = 6
      TextHint = '-- Select Secondary Category --'
      OnChange = cbbseccatChange
    end
    object cbbtercat: TComboBox
      Left = 155
      Top = 209
      Width = 238
      Height = 21
      TabOrder = 7
      TextHint = '-- Select Tertiary Category --'
    end
  end
  object pnl3: TPanel
    Left = 415
    Top = 96
    Width = 226
    Height = 161
    BevelInner = bvLowered
    TabOrder = 2
    object btnaddproduct: TButton
      Left = 64
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Add Product '
      ImageIndex = 0
      Images = il1
      TabOrder = 0
      OnClick = btnaddproductClick
    end
    object btnclear: TButton
      Left = 64
      Top = 72
      Width = 97
      Height = 25
      Caption = 'Clear Fields'
      ImageIndex = 2
      Images = il1
      TabOrder = 1
      OnClick = btnclearClick
    end
    object btncancel: TButton
      Left = 64
      Top = 127
      Width = 97
      Height = 26
      Caption = 'Cancel'
      ImageIndex = 1
      Images = il1
      TabOrder = 2
    end
  end
  object mm1: TMainMenu
    Left = 576
    Top = 24
    object File1: TMenuItem
      Caption = 'File'
      object N2: TMenuItem
        Caption = '-'
      end
      object AddProduct1: TMenuItem
        Caption = 'Add Product'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object File2: TMenuItem
      Caption = 'Help'
    end
  end
  object il1: TImageList
    Left = 528
    Top = 24
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000656565000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000656565000000000000000000000000FF000000FF000000FF9D9D
      9D005656560052525200525252007A7A7A00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003B3B3B003C3C3C000000000000000000D5D5D5001212
      12008E8E8E000000000000000000000000000000000065656500000000006464
      6400000000000000000000000000000000000000000000000000000000000000
      000065656500000000006565650000000000000000FF000000FF828282001C1C
      1C009191910095979700959797004343430042424200000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000393939003B3B3B000000000000000000D4D4D4001111
      11008D8D8D000000000000000000000000000000000000000000656565000000
      0000646464000000000000000000000000000000000000000000000000006565
      650000000000646464000000000000000000000000FF898989001B1B1B00DADA
      DA00000000FF000000FF000000FF000000FF4B4B4B003C3C3C00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C2C2C200A9A9A900A9A9A900A9A9A900A9A9A900A9A9
      A900000000000000000000000000000000000000000000000000000000006969
      6900000000006262620000000000000000000000000000000000646464000000
      000064646400000000000000000000000000B3B3B3001A1A1A00DBDBDB000000
      00FF000000FF000000FF000000FF000000FFA6A6A60001010100424242000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCDCDC0001010100000000000000000000000000000000000000
      0000393939000000000000000000000000000000000000000000000000000000
      0000656565000000000064646400000000000000000065656500010101006363
      630000000000000000000000000000000000ACACAC0020202000000000FF0000
      00FF000000FF000000FF000000FFADADAD000E0E0E00B2B2B200494949004242
      4200000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007474740000000000000000005454540000000000000000000000
      000000000000D6D6D60000000000000000000000000000000000000000000000
      0000000000006666660000000000646464006464640001010100636363000000
      000000000000000000000000000000000000000000FF79797900242424000000
      00FF000000FF000000FFB5B5B50010101000B7B7B700000000FF000000FF4C4C
      4C003C3C3C00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000121212000000000071717100C5C5C50000000000A9A9A9003737
      3700000000007878780000000000000000000000000000000000000000000000
      0000000000000000000066666600000000000000000063636300000000000000
      000000000000000000000000000000000000000000FF000000FF797979002424
      2400000000FFB5B5B50010101000BABABA00000000FF000000FF000000FF0000
      00FF4B4B4B003C3C3C00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009F9F9F00000000000000000071717100C5C5C50000000000A9A9A9003737
      3700000000001B1B1B0000000000000000000000000000000000000000000000
      0000000000000000000065656500000000000000000064646400000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF7474
      74001D1D1D000E0E0E00BBBBBB00000000FF000000FF000000FF000000FF0000
      00FF000000FF4848480042424200000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000343434000000000000000000000000005454540000000000000000000000
      00000000000000000000B8B8B800000000000000000000000000000000000000
      0000000000006565650000000000646464006565650000000000646464000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF747474001F1F1F00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF323434009B9B9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C9C9
      C900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000067676700000000000000000000000000000000000000
      0000656565000000000064646400000000000000000065656500000000006464
      640000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF7474740023232300000000FF000000FF000000FF000000FF0000
      00FF000000FFB2B2B2000E0E0E00C9C9C9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005F5F
      5F0029292900A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9
      A900A9A9A900A9A9A900DDDDDD00000000000000000000000000000000006565
      6500000000006464640000000000000000000000000000000000696969000000
      000062626200000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF7979790023232300000000FF000000FF000000FF0000
      00FFB8B8B8000E0E0E00AEAEAE00000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C5C500A5A5A5000808
      0800979797000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000656565000000
      0000646464000000000000000000000000000000000000000000000000006565
      650000000000656565000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7979790024242400000000FF000000FFB8B8
      B8000E0E0E00B1B1B100000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000054545400000000003E3E
      3E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000065656500000000006565
      6500000000000000000000000000000000000000000000000000000000000000
      000065656500000000006565650000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7474740023232300999999000E0E
      0E00B5B5B500000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000656565000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000656565000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF8383830034343400B9B9
      B900000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFF9FF9E0FF0000
      FCC78FF1C07F0000FCC7C7E38F3F0000FC0FE3C71F1F0000F807F18F3E0F0000
      F843F81F9C670000F843FC3FC8F30000F043FC3FE1F90000F041F81FF3FC0000
      E001F18FF9F80000E001E3C7FCF1000087FFC7E3FE6300008FFF8FF1FF070000
      FFFF9FF9FF8F0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
end
