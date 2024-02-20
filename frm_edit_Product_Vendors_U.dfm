object frmeditproductvendor: Tfrmeditproductvendor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Edit Product Vendor Details'
  ClientHeight = 324
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mm1
  Position = poScreenCenter
  OnActivate = FormActivate
  OnShow = FormShow
  TextHeight = 15
  object pnl1: TPanel
    Left = 7
    Top = 8
    Width = 377
    Height = 41
    BevelInner = bvLowered
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 13
      Width = 327
      Height = 15
      Caption = 'Please Use The Following Form To Edit Product Vendor Details '
    end
    object btnhelp: TButton
      Left = 349
      Top = 5
      Width = 24
      Height = 25
      ImageIndex = 3
      Images = il1
      TabOrder = 0
      OnClick = btnhelpClick
    end
  end
  object pnl2: TPanel
    Left = 7
    Top = 55
    Width = 377
    Height = 214
    BevelInner = bvLowered
    TabOrder = 1
    object lbl2: TLabel
      Left = 5
      Top = 18
      Width = 81
      Height = 15
      Caption = 'Vendor Name : '
    end
    object lbl3: TLabel
      Left = 5
      Top = 74
      Width = 126
      Height = 15
      Caption = 'Vendor Contact Name : '
    end
    object lbl4: TLabel
      Left = 5
      Top = 104
      Width = 138
      Height = 15
      Caption = 'Vendor Contact Number : '
    end
    object lbl5: TLabel
      Left = 5
      Top = 133
      Width = 123
      Height = 15
      Caption = 'Vendor Contact Email : '
    end
    object lbl6: TLabel
      Left = 5
      Top = 45
      Width = 77
      Height = 15
      Caption = 'Vendor Code : '
    end
    object lbl7: TLabel
      Left = 5
      Top = 163
      Width = 94
      Height = 15
      Caption = 'Vendor Address  : '
    end
    object lbl8: TLabel
      Left = 6
      Top = 187
      Width = 116
      Height = 15
      Caption = 'Vendor Service Type  : '
    end
    object edtvemail: TEdit
      Left = 134
      Top = 128
      Width = 235
      Height = 23
      TabOrder = 0
      TextHint = '-- Product Vendor Contact Email --'
    end
    object edtvaddress: TEdit
      Left = 134
      Top = 157
      Width = 235
      Height = 23
      TabOrder = 1
      TextHint = '-- Product Vendor Address --'
    end
    object edtvcontactname: TEdit
      Left = 134
      Top = 70
      Width = 235
      Height = 23
      TabOrder = 2
      TextHint = '-- Product Vendor Contact Name --'
    end
    object edtvcontactphone: TEdit
      Left = 134
      Top = 99
      Width = 235
      Height = 23
      TabOrder = 3
      TextHint = '-- Product Vendor Contact Number --'
    end
    object cbbvendortype: TComboBox
      Left = 134
      Top = 184
      Width = 235
      Height = 23
      TabOrder = 4
      TextHint = '-- Select A Vendor Type --'
      Items.Strings = (
        'Consumables'
        'Profesional'
        'Retail'
        'Cleaning '
        'Packaging')
    end
    object cbbevpname: TComboBox
      Left = 134
      Top = 15
      Width = 235
      Height = 23
      Sorted = True
      TabOrder = 5
      TextHint = '--- Product Vendor Name ---'
      OnChange = cbbevpnameChange
    end
    object cbbevpcode: TComboBox
      Left = 134
      Top = 42
      Width = 235
      Height = 23
      Sorted = True
      TabOrder = 6
      TextHint = '--- Product Vendor Code ---'
      OnChange = cbbevpcodeChange
    end
  end
  object pnl3: TPanel
    Left = 7
    Top = 275
    Width = 377
    Height = 38
    BevelInner = bvLowered
    TabOrder = 2
    object btneditvendor: TButton
      Left = 6
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Save Edits'
      Enabled = False
      ImageIndex = 0
      Images = il1
      TabOrder = 0
      OnClick = btneditvendorClick
    end
    object btncancel: TButton
      Left = 280
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Cancel'
      ImageIndex = 1
      Images = il1
      TabOrder = 1
      OnClick = btncancelClick
    end
    object btnclear: TButton
      Left = 144
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Clear'
      ImageIndex = 4
      Images = il1
      TabOrder = 2
      OnClick = btnclearClick
    end
  end
  object mm1: TMainMenu
    Left = 264
    object File1: TMenuItem
      Caption = 'File'
      object N3: TMenuItem
        Caption = '-'
      end
      object File2: TMenuItem
        Caption = 'Save Edits'
        OnClick = File2Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Cancel1: TMenuItem
        Caption = 'Cancel'
        OnClick = Cancel1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Cancel2: TMenuItem
        Caption = 'Exit'
        OnClick = Cancel2Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      OnClick = Help1Click
    end
  end
  object il1: TImageList
    Left = 232
    Top = 65528
    Bitmap = {
      494C010105000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF9D9D
      9D005656560052525200525252007A7A7A00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF828282001C1C
      1C009191910095979700959797004343430042424200000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF898989001B1B1B00DADA
      DA00000000FF000000FF000000FF000000FF4B4B4B003C3C3C00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3B3B3001A1A1A00DBDBDB000000
      00FF000000FF000000FF000000FF000000FFA6A6A60001010100424242000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC0020202000000000FF0000
      00FF000000FF000000FF000000FFADADAD000E0E0E00B2B2B200494949004242
      4200000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF79797900242424000000
      00FF000000FF000000FFB5B5B50010101000B7B7B700000000FF000000FF4C4C
      4C003C3C3C00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF797979002424
      2400000000FFB5B5B50010101000BABABA00000000FF000000FF000000FF0000
      00FF4B4B4B003C3C3C00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF7474
      74001D1D1D000E0E0E00BBBBBB00000000FF000000FF000000FF000000FF0000
      00FF000000FF4848480042424200000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF747474001F1F1F00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF323434009B9B9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF7474740023232300000000FF000000FF000000FF000000FF0000
      00FF000000FFB2B2B2000E0E0E00C9C9C9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF7979790023232300000000FF000000FF000000FF0000
      00FFB8B8B8000E0E0E00AEAEAE00000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7979790024242400000000FF000000FFB8B8
      B8000E0E0E00B1B1B100000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7474740023232300999999000E0E
      0E00B5B5B500000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6B6B6007C7C7C00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000656565000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006565650000000000000000000000000000000000000000000E0E
      0E00000000000000000000000000000000000000000000000000000000000000
      00001B1B1B000000000000000000000000000000000000000000000000000000
      00000000000000000000B2B2B2008989890092929200B7B7B700000000000000
      0000000000000000000000000000000000000000000000000000AFAFAF003030
      30002121210021212100595959007E7E7E0021212100212121006E6E6E000000
      0000000000000000000000000000000000000000000065656500000000006464
      6400000000000000000000000000000000000000000000000000000000000000
      0000656565000000000065656500000000000000000000000000000000000808
      0800000000000000000000000000000000000000000000000000000000000000
      0000050505000000000000000000000000000000000000000000000000000000
      00008E8E8E001919190040404000737474006464640033333300121212009595
      95000000000000000000000000000000000000000000000000002F2F2F00D0D0
      D000212121000000000000000000BFBFBF002121210021212100212121006F6F
      6F00000000000000000000000000000000000000000000000000656565000000
      0000646464000000000000000000000000000000000000000000000000006565
      6500000000006464640000000000000000000000000000000000000000000808
      0800000000000000000000000000000000000000000000000000000000000000
      0000040404000000000000000000000000000000000000000000000000006363
      630039393900D4D4D40000000000CBCCCC00CBCCCC0000000000D0D0D0002F2F
      2F005F5F5F000000000000000000000000000000000000000000212121000000
      0000212121000000000000000000000000006E6E6E0021212100212121002121
      21006F6F6F000000000000000000000000000000000000000000000000006969
      6900000000006262620000000000000000000000000000000000646464000000
      0000646464000000000000000000000000000000000000000000000000000808
      0800000000000000000000000000000000000000000000000000000000000000
      0000A1A1A1000000000000000000000000000000000000000000989898003A3A
      3A00000000000000000000000000CDCDCD00CECECE0000000000000000000000
      00002F2F2F009393930000000000000000000000000000000000212121000000
      0000212121000000000000000000000000000000000070707000212121002121
      2100212121006B6B6B0000000000000000000000000000000000000000000000
      0000656565000000000064646400000000000000000065656500010101006363
      6300000000000000000000000000000000000000000000000000000000000808
      0800000000000000000000000000000000000000000000000000000000000000
      00009D9D9D00000000000000000000000000000000000000000013131300DADA
      DA00000000000000000000000000CECECE00D0D0D00000000000000000000000
      0000D7D7D7001414140000000000000000000000000000000000212121000000
      00002424240000000000000000000000000000000000000000006F6F6F002121
      2100212121002121210096969600000000000000000000000000000000000000
      0000000000006666660000000000646464006464640001010100636363000000
      0000000000000000000000000000000000000000000000000000000000000808
      0800000000000000000000000000000000000000000000000000000000000000
      00004848480056565600000000000000000000000000B6B6B600424242000000
      00000000000000000000000000007E7E7E007E7E7E0000000000000000000000
      0000000000003D3D3D00B8B8B800000000000000000000000000212121000000
      0000888888002424240021212100212121002121210020202000A3A3A3006F6F
      6F0021212100212121007E7E7E00000000000000000000000000000000000000
      0000000000000000000066666600000000000000000063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      0800000000000000000000000000CACACA007676760076767600767676007676
      7600727272002020200020202000000000000000000091919100707070000000
      00000000000000000000000000007F7F7F005B5B5B0000000000000000000000
      0000000000006767670090909000000000000000000000000000212121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000959595007D7D7D0000000000000000000000000000000000000000000000
      0000000000000000000065656500000000000000000064646400000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      0800000000000000000000000000CBCBCB008787870087878700878787008787
      870083838300242424002222220000000000000000008E8E8E00707070000000
      0000000000000000000000000000DADADA004141410032323200000000000000
      0000000000006A6A6A008A8A8A00000000000000000000000000212121000000
      000000000000DFDFDF00B3B3B300B3B3B300B3B3B300C6C6C600000000000000
      0000000000005858580000000000000000000000000000000000000000000000
      0000000000006565650000000000646464006565650000000000646464000000
      0000000000000000000000000000000000000000000000000000000000000808
      0800000000000000000000000000000000000000000000000000000000000000
      00004848480056565600000000000000000000000000BEBEBE00414141000000
      000000000000D4D4D400D2D2D2000000000000000000525252009A9A9A000000
      0000000000003D3D3D00BBBCBC00000000000000000000000000212121000000
      0000DEDEDE002F2F2F00686868006969690069696900414141009C9C9C000000
      0000000000002525250000000000000000000000000000000000000000000000
      0000656565000000000064646400000000000000000065656500000000006464
      6400000000000000000000000000000000000000000000000000000000000808
      0800000000000000000000000000000000000000000000000000000000000000
      00009D9D9D00000000000000000000000000000000000000000018181800D5D5
      D5000000000097979700595959000000000000000000575757009B9B9B000000
      0000CECECE001919190000000000000000000000000000000000212121000000
      0000B4B4B40068686800000000000000000000000000B3B3B300696969000000
      0000838383006767670000000000000000000000000000000000000000006565
      6500000000006464640000000000000000000000000000000000696969000000
      0000626262000000000000000000000000000000000000000000000000000808
      0800000000000000000000000000000000000000000000000000000000000000
      00009494940000000000000000000000000000000000000000009B9B9B003838
      3800000000000000000024242400585858005757570028282800000000000000
      00003535350095959500000000000000000000000000000000002F2F2F00D1D1
      D100B3B3B30069696900000000000000000000000000B3B3B300606060008181
      81004C4C4C000000000000000000000000000000000000000000656565000000
      0000646464000000000000000000000000000000000000000000000000006565
      6500000000006565650000000000000000000000000000000000000000000808
      0800000000000000000000000000000000000000000000000000000000000000
      0000040404000000000000000000000000000000000000000000000000006666
      660034343400D2D2D20000000000999999009A9A9A0000000000CECECE003737
      37006B6B6B000000000000000000000000000000000000000000ACACAC002F2F
      2F00212121002121210021212100212121002121210021212100242424006666
      6600000000000000000000000000000000000000000065656500000000006565
      6500000000000000000000000000000000000000000000000000000000000000
      0000656565000000000065656500000000000000000000000000000000000808
      0800000000000000000000000000000000000000000000000000000000000000
      0000050505000000000000000000000000000000000000000000000000000000
      0000929292001A1A1A003E3E3E006B6B6B00D2D2D200B4B4B400181818009696
      9600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000656565000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006565650000000000000000000000000000000000000000000D0D
      0D00000000000000000000000000000000000000000000000000000000000000
      00001B1B1B000000000000000000000000000000000000000000000000000000
      00000000000000000000B9B9B90093939300D1D1D10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000E0FF000000000000
      C07F0000000000008F3F0000000000001F1F0000000000003E0F000000000000
      9C67000000000000C8F3000000000000E1F9000000000000F3FC000000000000
      F9F8000000000000FCF1000000000000FE63000000000000FF07000000000000
      FF8F000000000000FFFF000000000000FFFFFFFFFFFFFFFFFE3F9FF9E007FC3F
      C01F8FF1EFF7F00FC60FC7E3EFF7E247D707E3C7EFF7CE73D783F18FEFF7CE73
      D7C1F81FEFF39E79D001FC3FEE019E79DFF3FC3FEE019E39D83BF81FEFF39999
      D01BF18FEFF7C993D393E3C7EFF7CC33C387C7E3EFF7E247C00F8FF1EFF7F00F
      FFFF9FF9E007FC7FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
