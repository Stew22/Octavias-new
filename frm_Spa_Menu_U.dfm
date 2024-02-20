object frmspamenu: Tfrmspamenu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Life Day Spa Menu'
  ClientHeight = 433
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mm1
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 608
    Height = 41
    BevelInner = bvLowered
    TabOrder = 0
    object lbl2: TLabel
      Left = 176
      Top = 13
      Width = 250
      Height = 15
      Caption = 'Welcome To The Life Day Spa Treatment Menu !'
    end
    object btnhelp: TButton
      Left = 576
      Top = 9
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
    Left = 8
    Top = 55
    Width = 608
    Height = 50
    BevelInner = bvLowered
    TabOrder = 1
    object lbl1: TLabel
      Left = 12
      Top = 19
      Width = 62
      Height = 15
      Caption = 'Treatment : '
    end
    object cbbtreatment: TComboBox
      Left = 80
      Top = 16
      Width = 497
      Height = 23
      Sorted = True
      TabOrder = 0
      TextHint = '--- Select Treatment ---'
      OnChange = cbbtreatmentChange
    end
  end
  object redtoutput: TRichEdit
    Left = 8
    Top = 111
    Width = 608
    Height = 314
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'Name of Treatment : Treatment 1 '
      '--------------------------------------'
      'Products To Be Used : '
      '--------------------------------------'
      '1 X Product 1'
      '1 X Product 2'
      '1 X Product 3'
      '1 X Product 4 '
      '--------------------------------------'
      'Cost Of Treatment : R123.00'
      '--------------------------------------')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object mm1: TMainMenu
    Left = 520
    Top = 56
    object File1: TMenuItem
      Caption = 'File'
      object N7: TMenuItem
        Caption = '-'
      end
      object File2: TMenuItem
        Caption = 'Exit'
        OnClick = File2Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      OnClick = Help1Click
    end
  end
  object il1: TImageList
    Left = 472
    Top = 56
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
      00000000000000000000000000000000000000000000C9C9C900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9C9C900000000001313130032323200323232003232
      3200323232003232320032323200323232003232320032323200383838000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D5D5D5003E3E3E00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFC9C9C900000000008D8D8D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C0000000000C9C9C9003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7D7D7002F2F2F00D3D3D300000000FF000000FF000000FF0000
      00FF000000FF000000FFB2B2B2008989890092929200B7B7B700000000FF0000
      00FF000000FF000000FF000000FF000000FF000000008D8D8D00000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000086868600000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D7D7D7002F2F2F00D3D3D30000000000000000FF000000FF000000FF0000
      00FF8E8E8E001919190040404000737474006464640033333300121212009595
      9500000000FF000000FF000000FF000000FF00000000000000008D8D8D000000
      0000868686000000000000000000000000000000000000000000000000008E8E
      8E00000000008686860000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8D8
      D8002F2F2F00D3D3D3000000000000000000000000FF000000FF000000FF6363
      630039393900D4D4D400000000FFCBCCCC00CBCCCC00000000FFD0D0D0002F2F
      2F005F5F5F00000000FF000000FF000000FF0000000000000000000000008D8D
      8D000000000086868600000000000000000000000000000000008B8B8B000000
      0000868686000000000000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8D8D8002F2F
      2F00D3D3D300000000000000000000000000000000FF000000FF989898003A3A
      3A00000000FF000000FF000000FFCDCDCD00CECECE00000000FF000000FF0000
      00FF2F2F2F0093939300000000FF000000FF0000000000000000000000000000
      00008E8E8E00000000008686860000000000000000008B8B8B00010101008383
      8300000000000000000000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      00007B7B7B00636363000000000000000000000000000000000000000000AFAF
      AF0072727200686868008C8C8C000000000000000000D8D8D8002F2F2F00D3D3
      D30000000000000000000000000000000000000000FF000000FF13131300DADA
      DA00000000FF000000FF000000FFCECECE00D0D0D000000000FF000000FF0000
      00FFD7D7D70014141400000000FF000000FF0000000000000000000000000000
      0000000000008E8E8E0000000000868686008B8B8B0001010100838383000000
      0000000000000000000000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      0000000000007E7E7E00595959000000000000000000D9D9D900363636007272
      7200BDBDBD00C9C9C9009D9D9D00393939006F6F6F002F2F2F00D6D6D6000000
      000000000000000000000000000000000000000000FFB6B6B600424242000000
      00FF000000FF000000FF000000FF7E7E7E007E7E7E00000000FF000000FF0000
      00FF000000FF3D3D3D00B8B8B800000000FF0000000000000000000000000000
      000000000000000000008D8D8D0000000000000000008A8A8A00000000000000
      0000000000000000000000000000000000003333330000000000000000000000
      00009999990098989800989898009898980098989800989898001E1E1E009898
      980098989800989898004D4D4D002B2B2B000000000031313100D1D1D1000000
      000000000000000000000000000000000000454545006F6F6F00000000000000
      000000000000000000000000000000000000000000FF91919100707070000000
      00FF000000FF000000FF000000FF7F7F7F005B5B5B00000000FF000000FF0000
      00FF000000FF6767670090909000000000FF0000000000000000000000000000
      000000000000000000008D8D8D0000000000000000008D8D8D00000000000000
      0000000000000000000000000000000000003333330000000000000000000000
      00009999990098989800989898009898980098989800989898001E1E1E009898
      980098989800989898004D4D4D002B2B2B0074747400A6A6A600000000000000
      0000000000000000000000000000000000000000000038383800000000000000
      000000000000000000000000000000000000000000FF8E8E8E00707070000000
      00FF000000FF000000FF000000FFDADADA004141410032323200000000FF0000
      00FF000000FF6A6A6A008A8A8A00000000FF0000000000000000000000000000
      0000000000008E8E8E0000000000858585008D8D8D0000000000868686000000
      0000000000000000000000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      0000000000008787870058585800000000003131310000000000000000000000
      000000000000000000000000000000000000000000009D9D9D008D8D8D000000
      000000000000000000000000000000000000000000FFBEBEBE00414141000000
      00FF000000FFD4D4D400D2D2D200000000FF000000FF525252009A9A9A000000
      00FF000000FF3D3D3D00BBBCBC00000000FF0000000000000000000000000000
      00008E8E8E00000000008585850000000000000000008D8D8D00000000008686
      8600000000000000000000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      00007C7C7C006262620000000000000000003333330000000000000000000000
      00000000000000000000000000000000000000000000CACACA00676767000000
      000000000000000000000000000000000000000000FF000000FF18181800D5D5
      D500000000FF9797970059595900000000FF000000FF575757009B9B9B000000
      00FFCECECE0019191900000000FF000000FF0000000000000000000000008E8E
      8E000000000085858500000000000000000000000000000000008D8D8D000000
      0000868686000000000000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      0000808080000000000000000000000000003030300000000000000000000000
      00000000000000000000000000000000000000000000BCBCBC00727272000000
      000000000000000000000000000000000000000000FF000000FF9B9B9B003838
      3800000000FF000000FF24242400585858005757570028282800000000FF0000
      00FF3535350095959500000000FF000000FF00000000000000008E8E8E000000
      0000858585000000000000000000000000000000000000000000000000008D8D
      8D00000000008686860000000000000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      0000000000000000000000000000000000005C5C5C00C3C3C300000000000000
      0000000000000000000000000000000000000000000072727200AFAFAF000000
      000000000000000000000000000000000000000000FF000000FF000000FF6666
      660034343400D2D2D200000000FF999999009A9A9A00000000FFCECECE003737
      37006B6B6B00000000FF000000FF000000FF000000008E8E8E00000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      00008D8D8D000000000086868600000000003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      000000000000000000000000000000000000D5D5D50037373700000000000000
      000000000000000000000000000000000000D0D0D00037373700000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF929292001A1A1A003E3E3E006B6B6B00D2D2D200B4B4B400181818009696
      9600000000FF000000FF000000FF000000FFC5C5C500000000008D8D8D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C0000000000C9C9C9003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      00000000000000000000000000000000000000000000AEAEAE0037373700C3C3
      C300000000000000000000000000A5A5A50031313100DADADA00000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFB9B9B90093939300D1D1D100000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000C5C5C500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9C9C900000000001313130032323200323232003232
      3200323232003232320032323200323232003232320032323200383838000000
      0000000000000000000000000000000000000000000000000000D5D5D5005C5C
      5C002F2F2F003232320030303000747474000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BFFD001FFFFCFFFF1FF87FDFFFF8FC3F
      8FF17FDFFFF1F00FC7E37FDFFFE3E247E3C77FD7FFC7CE73F18F7FD3E18FCE73
      F81F7FD9801F9E79FC3F70009F3F9E79FC3F70003FBF9E39F81F7FD97F9F9999
      F18F7FD37F9FC993E3C77FD77F9FCC33C7E37FDF3F9FE2478FF17FDF3F3FF00F
      1FF87FDF8E3FFC7FBFFD001FC0FFFFFF00000000000000000000000000000000
      000000000000}
  end
end
