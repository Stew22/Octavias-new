object frmaddtreatment: Tfrmaddtreatment
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Life Day Spa Treatment Menu --- Add A Treatment To The Menu'
  ClientHeight = 458
  ClientWidth = 623
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
    Width = 616
    Height = 49
    BevelInner = bvLowered
    TabOrder = 0
    object lbl3: TLabel
      Left = 144
      Top = 17
      Width = 316
      Height = 15
      Caption = 'Use The Following Form To Add  Products To The Spa Menu '
    end
    object btnhelp: TButton
      Left = 584
      Top = 7
      Width = 25
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 3
      Images = il1
      TabOrder = 0
      OnClick = btnhelpClick
    end
  end
  object pnl2: TPanel
    Left = -1
    Top = 72
    Width = 616
    Height = 385
    BevelInner = bvLowered
    TabOrder = 1
    object lbl1: TLabel
      Left = 8
      Top = 19
      Width = 97
      Height = 15
      Caption = 'Treatment Name : '
    end
    object lbl2: TLabel
      Left = 8
      Top = 59
      Width = 105
      Height = 15
      Caption = 'Cost Of Treatment : '
    end
    object edtaddtname: TEdit
      Left = 119
      Top = 16
      Width = 298
      Height = 23
      TabOrder = 0
      TextHint = '--- Treatment Name ---'
      OnChange = edtaddtnameChange
    end
    object pnl3: TPanel
      Left = 490
      Top = 2
      Width = 120
      Height = 130
      BevelInner = bvLowered
      TabOrder = 1
      object btnaddtreatment: TButton
        Left = 8
        Top = 8
        Width = 105
        Height = 25
        Caption = 'Add Treatment'
        ImageIndex = 0
        Images = il1
        TabOrder = 0
        OnClick = btnaddtreatmentClick
      end
      object btncancel: TButton
        Left = 8
        Top = 48
        Width = 105
        Height = 25
        Caption = 'Cancel'
        ImageIndex = 1
        Images = il1
        TabOrder = 1
        OnClick = btncancelClick
      end
      object btnexit: TButton
        Left = 8
        Top = 96
        Width = 105
        Height = 25
        Caption = 'Exit'
        ImageIndex = 2
        Images = il1
        TabOrder = 2
        OnClick = btnexitClick
      end
    end
    object medtprice: TMaskEdit
      Left = 120
      Top = 56
      Width = 297
      Height = 23
      TabOrder = 2
      Text = ''
      TextHint = '--- Price Of Treatment ---'
      OnChange = medtpriceChange
      OnExit = medtpriceExit
    end
    object scrlbx1: TScrollBox
      Left = 8
      Top = 85
      Width = 453
      Height = 292
      VertScrollBar.Style = ssFlat
      TabOrder = 3
      UseWheelForScrolling = True
      object pnl4: TPanel
        Left = 11
        Top = 0
        Width = 409
        Height = 576
        BevelInner = bvLowered
        TabOrder = 0
        object chklst1: TCheckListBox
          Left = 8
          Top = 1
          Width = 97
          Height = 568
          AutoComplete = False
          CheckBoxPadding = 13
          ItemHeight = 28
          Items.Strings = (
            'Product 1 '
            'Product 2 '
            'Product 3 '
            'Product 4 '
            'Product 5'
            'Product 6'
            'Product 7'
            'Product 8'
            'Product 9'
            'Product 10'
            'Product 11'
            'Product 12'
            'Product 13'
            'Product 14'
            'Product 15'
            'Product 16'
            'Product 17'
            'Product 18'
            'Product 19'
            'Product 20')
          TabOrder = 0
          OnClickCheck = chklst1ClickCheck
        end
        object cbbaproduct11: TComboBox
          Left = 111
          Top = 285
          Width = 290
          Height = 23
          TabOrder = 1
          OnChange = cbbaproduct11Change
        end
        object cbbaproduct12: TComboBox
          Left = 111
          Top = 314
          Width = 290
          Height = 23
          TabOrder = 2
          OnChange = cbbaproduct12Change
        end
        object cbbaproduct13: TComboBox
          Left = 111
          Top = 341
          Width = 290
          Height = 23
          TabOrder = 3
          OnChange = cbbaproduct13Change
        end
        object cbbaddproduct14: TComboBox
          Left = 111
          Top = 370
          Width = 290
          Height = 23
          TabOrder = 4
          OnChange = cbbaddproduct14Change
        end
        object cbbaproduct15: TComboBox
          Left = 111
          Top = 398
          Width = 290
          Height = 23
          TabOrder = 5
          OnChange = cbbaproduct15Change
        end
        object cbbaproduct16: TComboBox
          Left = 111
          Top = 426
          Width = 290
          Height = 23
          TabOrder = 6
          OnChange = cbbaproduct16Change
        end
        object cbbaproduct17: TComboBox
          Left = 111
          Top = 454
          Width = 290
          Height = 23
          TabOrder = 7
          OnChange = cbbaproduct17Change
        end
        object cbbaproduct18: TComboBox
          Left = 111
          Top = 483
          Width = 290
          Height = 23
          TabOrder = 8
          OnChange = cbbaproduct18Change
        end
        object cbbaproduct19: TComboBox
          Left = 111
          Top = 510
          Width = 290
          Height = 23
          TabOrder = 9
          OnChange = cbbaproduct19Change
        end
        object cbbaproduct10: TComboBox
          Left = 111
          Top = 259
          Width = 290
          Height = 23
          TabOrder = 10
          OnChange = cbbaproduct10Change
        end
        object cbbaddproduct20: TComboBox
          Left = 111
          Top = 539
          Width = 290
          Height = 23
          TabOrder = 11
          OnChange = cbbaddproduct20Change
        end
        object cbbaproduct9: TComboBox
          Left = 111
          Top = 230
          Width = 289
          Height = 23
          TabOrder = 12
          OnChange = cbbaproduct9Change
        end
        object cbbaproduct8: TComboBox
          Left = 112
          Top = 201
          Width = 289
          Height = 23
          TabOrder = 13
          OnChange = cbbaproduct8Change
        end
        object cbbaproduct7: TComboBox
          Left = 111
          Top = 173
          Width = 290
          Height = 23
          TabOrder = 14
          OnChange = cbbaproduct7Change
        end
        object cbbaproduct6: TComboBox
          Left = 111
          Top = 146
          Width = 290
          Height = 23
          TabOrder = 15
          OnChange = cbbaproduct6Change
        end
        object cbbaproduct5: TComboBox
          Left = 111
          Top = 119
          Width = 290
          Height = 23
          TabOrder = 16
          OnChange = cbbaproduct5Change
        end
        object cbbaddproduct4: TComboBox
          Left = 111
          Top = 90
          Width = 290
          Height = 23
          TabOrder = 17
          OnChange = cbbaddproduct4Change
        end
        object cbbaproduct3: TComboBox
          Left = 111
          Top = 63
          Width = 290
          Height = 23
          TabOrder = 18
          OnChange = cbbaproduct3Change
        end
        object cbbaproduct2: TComboBox
          Left = 111
          Top = 34
          Width = 290
          Height = 23
          TabOrder = 19
          OnChange = cbbaproduct2Change
        end
        object cbbaproduct1: TComboBox
          Left = 111
          Top = 5
          Width = 290
          Height = 23
          TabOrder = 20
          OnChange = cbbaproduct1Change
        end
      end
    end
  end
  object mm1: TMainMenu
    Left = 512
    Top = 240
    object File1: TMenuItem
      Caption = 'File'
      object N4: TMenuItem
        Caption = '-'
      end
      object File2: TMenuItem
        Caption = 'Add Treatment'
        OnClick = File2Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Cancel1: TMenuItem
        Caption = 'Cancel'
        OnClick = Cancel1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Cancel2: TMenuItem
        Caption = 'Exit'
        OnClick = Cancel2Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      OnClick = Help1Click
    end
  end
  object il1: TImageList
    Left = 560
    Top = 240
    Bitmap = {
      494C010104000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008787
      8700848484004C4C4C00424242004343430043434300434343004D4D4D008787
      87008A8A8A0000000000000000000000000000000000C9C9C900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9C9C900000000001313130032323200323232003232
      3200323232003232320032323200323232003232320032323200383838000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000007D7D
      7D00000000007273730021212100212121002121210021212100747474000000
      00007E7E7E00000000000000000000000000C9C9C900000000008D8D8D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C0000000000C9C9C9003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFB2B2B2008989890092929200B7B7B700000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000009292
      9200B5B5B500000000000000000000000000000000000000000000000000B8B8
      B80092929200000000000000000000000000000000008D8D8D00000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000086868600000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF8E8E8E001919190040404000737474006464640033333300121212009595
      9500000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000B8B8B800797979007D7D7D0000000000000000007D7D7D007A7A7A00B8B8
      B8000000000000000000000000000000000000000000000000008D8D8D000000
      0000868686000000000000000000000000000000000000000000000000008E8E
      8E00000000008686860000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      000000000000000000000000000000000000000000FF000000FF000000FF6363
      630039393900D4D4D400000000FFCBCCCC00CBCCCC00000000FFD0D0D0002F2F
      2F005F5F5F00000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000008B8B8B006D6D6D006D6D6D008B8B8B00000000000000
      0000000000000000000000000000000000000000000000000000000000008D8D
      8D000000000086868600000000000000000000000000000000008B8B8B000000
      0000868686000000000000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      000080808000000000000000000000000000000000FF000000FF989898003A3A
      3A00000000FF000000FF000000FFCDCDCD00CECECE00000000FF000000FF0000
      00FF2F2F2F0093939300000000FF000000FF0000000000000000000000000000
      0000000000008D8D8D009D9D9D00DFE0E000E0E0E000999999008A8A8A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E00000000008686860000000000000000008B8B8B00010101008383
      8300000000000000000000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      00007B7B7B00636363000000000000000000000000FF000000FF13131300DADA
      DA00000000FF000000FF000000FFCECECE00D0D0D000000000FF000000FF0000
      00FFD7D7D70014141400000000FF000000FF0000000000000000000000000000
      0000C8C8C8009E9E9E00DEDEDE000000000000000000DADBDB009B9B9B00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000008E8E8E0000000000868686008B8B8B0001010100838383000000
      0000000000000000000000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      0000000000007E7E7E005959590000000000000000FFB6B6B600424242000000
      00FF000000FF000000FF000000FF7E7E7E007E7E7E00000000FF000000FF0000
      00FF000000FF3D3D3D00B8B8B800000000FF0000000000000000000000000000
      000036363600D6D6D60000000000868686008383830000000000D2D2D2003A3A
      3A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000008D8D8D0000000000000000008A8A8A00000000000000
      0000000000000000000000000000000000003333330000000000000000000000
      00009999990098989800989898009898980098989800989898001E1E1E009898
      980098989800989898004D4D4D002B2B2B00000000FF91919100707070000000
      00FF000000FF000000FF000000FF7F7F7F005B5B5B00000000FF000000FF0000
      00FF000000FF6767670090909000000000FF0000000000000000000000008282
      82001010100000000000B9B9B9000000000000000000B9B9B900000000001010
      1000858585000000000000000000000000000000000000000000000000000000
      000000000000000000008D8D8D0000000000000000008D8D8D00000000000000
      0000000000000000000000000000000000003333330000000000000000000000
      00009999990098989800989898009898980098989800989898001E1E1E009898
      980098989800989898004D4D4D002B2B2B00000000FF8E8E8E00707070000000
      00FF000000FF000000FF000000FFDADADA004141410032323200000000FF0000
      00FF000000FF6A6A6A008A8A8A00000000FF0000000000000000000000005454
      5400000000008989890073737300DDDDDD000000000073737300838383000101
      0100565656000000000000000000000000000000000000000000000000000000
      0000000000008E8E8E0000000000858585008D8D8D0000000000868686000000
      0000000000000000000000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      000000000000878787005858580000000000000000FFBEBEBE00414141000000
      00FF000000FFD4D4D400D2D2D200000000FF000000FF525252009A9A9A000000
      00FF000000FF3D3D3D00BBBCBC00000000FF0000000000000000000000004747
      4700000000000D0D0D00A3A3A30000000000DCDCDC009D9D9D00060606000000
      0000484848000000000000000000000000000000000000000000000000000000
      00008E8E8E00000000008585850000000000000000008D8D8D00000000008686
      8600000000000000000000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      00007C7C7C00626262000000000000000000000000FF000000FF18181800D5D5
      D500000000FF9797970059595900000000FF000000FF575757009B9B9B000000
      00FFCECECE0019191900000000FF000000FF0000000000000000000000007474
      7400000000000000000000000000181818002121210025252500000000000000
      0000757575000000000000000000000000000000000000000000000000008E8E
      8E000000000085858500000000000000000000000000000000008D8D8D000000
      0000868686000000000000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      000080808000000000000000000000000000000000FF000000FF9B9B9B003838
      3800000000FF000000FF24242400585858005757570028282800000000FF0000
      00FF3535350095959500000000FF000000FF000000000000000000000000D9D9
      D90004040400000000000000000000000000010101007F7F7F002E2E2E000404
      0400DBDBDB0000000000000000000000000000000000000000008E8E8E000000
      0000858585000000000000000000000000000000000000000000000000008D8D
      8D00000000008686860000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      000000000000000000000000000000000000000000FF000000FF000000FF6666
      660034343400D2D2D200000000FF999999009A9A9A00000000FFCECECE003737
      37006B6B6B00000000FF000000FF000000FF0000000000000000000000000000
      00009B9B9B0001010100000000000000000000000000000000001A1A1A009E9E
      9E0000000000000000000000000000000000000000008E8E8E00000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      00008D8D8D000000000086868600000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF929292001A1A1A003E3E3E006B6B6B00D2D2D200B4B4B400181818009696
      9600000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000005656560000000000000000000000000000000000585858000000
      000000000000000000000000000000000000C5C5C500000000008D8D8D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C0000000000C9C9C9003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFB9B9B90093939300D1D1D100000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000064646400434343004343430064646400000000000000
      00000000000000000000000000000000000000000000C5C5C500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9C9C900000000001313130032323200323232003232
      3200323232003232320032323200323232003232320032323200383838000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E007BFFD001FFFFFE8171FF87FDFFC3F
      E7E78FF17FDFF00FF18FC7E37FDFE247FC3FE3C77FD7CE73F81FF18F7FD3CE73
      F18FF81F7FD99E79F24FFC3F70009E79E5A7FC3F70009E39E087F81F7FD99999
      E107F18F7FD3C993E007E3C77FD7CC33E007C7E37FDFE247F00F8FF17FDFF00F
      F81F1FF87FDFFC7FFC3FBFFD001FFFFF00000000000000000000000000000000
      000000000000}
  end
end
