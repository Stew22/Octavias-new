object frmvendors: Tfrmvendors
  Left = 0
  Top = 0
  Caption = 'Add A Product Vendor'
  ClientHeight = 323
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 377
    Height = 41
    BevelInner = bvLowered
    TabOrder = 0
    object lbl1: TLabel
      Left = 27
      Top = 14
      Width = 299
      Height = 13
      Caption = 'Please Use The Following Form To Add Product Vendor Details '
    end
    object btnhelp: TButton
      Left = 349
      Top = 5
      Width = 24
      Height = 25
      ImageIndex = 4
      Images = il1
      TabOrder = 0
      OnClick = btnhelpClick
    end
  end
  object pnl2: TPanel
    Left = 8
    Top = 55
    Width = 377
    Height = 214
    BevelInner = bvLowered
    TabOrder = 1
    object lbl2: TLabel
      Left = 5
      Top = 18
      Width = 74
      Height = 13
      Caption = 'Vendor Name : '
    end
    object lbl3: TLabel
      Left = 5
      Top = 74
      Width = 115
      Height = 13
      Caption = 'Vendor Contact Name : '
    end
    object lbl4: TLabel
      Left = 5
      Top = 104
      Width = 125
      Height = 13
      Caption = 'Vendor Contact Number : '
    end
    object lbl5: TLabel
      Left = 5
      Top = 133
      Width = 112
      Height = 13
      Caption = 'Vendor Contact Email : '
    end
    object lbl6: TLabel
      Left = 5
      Top = 45
      Width = 72
      Height = 13
      Caption = 'Vendor Code : '
    end
    object lbl7: TLabel
      Left = 5
      Top = 163
      Width = 89
      Height = 13
      Caption = 'Vendor Address  : '
    end
    object lbl8: TLabel
      Left = 6
      Top = 187
      Width = 112
      Height = 13
      Caption = 'Vendor Service Type  : '
    end
    object edtvname: TEdit
      Left = 134
      Top = 15
      Width = 235
      Height = 21
      TabOrder = 0
      TextHint = '-- Vendor Name --'
    end
    object edtvemail: TEdit
      Left = 134
      Top = 128
      Width = 235
      Height = 21
      TabOrder = 1
      TextHint = '-- Vendor Contact Email --'
    end
    object edtvaddress: TEdit
      Left = 134
      Top = 157
      Width = 235
      Height = 21
      TabOrder = 2
      TextHint = '-- Vendor Address --'
    end
    object edtvcode: TEdit
      Left = 134
      Top = 42
      Width = 235
      Height = 21
      TabOrder = 3
      TextHint = '-- Vendor Code --'
    end
    object edtvcontactname: TEdit
      Left = 134
      Top = 70
      Width = 235
      Height = 21
      TabOrder = 4
      TextHint = '-- Vendor Contact Name --'
    end
    object edtvcontactphone: TEdit
      Left = 134
      Top = 99
      Width = 235
      Height = 21
      TabOrder = 5
      TextHint = '--Vendor Contact Number --'
    end
    object cbbvendortype: TComboBox
      Left = 134
      Top = 184
      Width = 235
      Height = 21
      TabOrder = 6
      TextHint = '-- Select A Vendor Type --'
      Items.Strings = (
        'Consumables'
        'Profesional'
        'Retail'
        'Cleaning '
        'Packaging')
    end
  end
  object pnl3: TPanel
    Left = 8
    Top = 275
    Width = 377
    Height = 38
    BevelInner = bvLowered
    TabOrder = 2
    object btnaddvendor: TButton
      Left = 6
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Add Vendor'
      ImageIndex = 0
      Images = il1
      TabOrder = 0
      OnClick = btnaddvendorClick
    end
    object btncancel: TButton
      Left = 280
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Cancel'
      ImageIndex = 3
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
      ImageIndex = 5
      Images = il1
      TabOrder = 2
      OnClick = btnclearClick
    end
  end
  object il1: TImageList
    Left = 264
    Top = 8
    Bitmap = {
      494C010106000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B3B3B3006E6E6E004E4E4E004D4D4D006D6D6D00B2B2B2000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B9B9
      B9002728280010101000585858007E7E7E00808080005C5C5C00121212002323
      2300B4B4B400000000000000000000000000000000FF000000FF000000FF9D9D
      9D005656560052525200525252007A7A7A00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000989898000606
      06007D7D7D000000000000000000000000000000000000000000000000008585
      8500060606008B8B8B000000000000000000000000FF000000FF828282001C1C
      1C009191910095979700959797004343430042424200000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9B9B90006060600B2B2
      B200000000000000000000000000D8D8D800D1D1D10000000000000000000000
      0000BCBCBC0006060600ADADAD0000000000000000FF898989001B1B1B00DADA
      DA00000000FF000000FF000000FF000000FF4B4B4B003C3C3C00000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000024242400828282000000
      00000000000000000000000000005F5F5F004E4E4E0000000000000000000000
      0000000000008D8D8D001B1B1B0000000000B3B3B3001A1A1A00DBDBDB000000
      00FF000000FF000000FF000000FF000000FFA6A6A60001010100424242000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AFAFAF0014141400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C00A1A1A100ACACAC0020202000000000FF0000
      00FF000000FF000000FF000000FFADADAD000E0E0E00B2B2B200494949004242
      4200000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666660061616100000000000000
      0000000000000000000000000000727272007272720000000000000000000000
      000000000000000000006D6D6D0058585800000000FF79797900242424000000
      00FF000000FF000000FFB5B5B50010101000B7B7B700000000FF000000FF4C4C
      4C003C3C3C00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004646460088888800000000000000
      0000000000000000000000000000676767004949490000000000000000000000
      000000000000000000009595950038383800000000FF000000FF797979002424
      2400000000FFB5B5B50010101000BABABA00000000FF000000FF000000FF0000
      00FF4B4B4B003C3C3C00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000434343008C8C8C00000000000000
      0000000000000000000000000000B1B1B1001D1D1D0035353500000000000000
      000000000000000000009999990034343400000000FF000000FF000000FF7474
      74001D1D1D000E0E0E00BBBBBB00000000FF000000FF000000FF000000FF0000
      00FF000000FF4848480042424200000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006060600069696900000000000000
      00000000000000000000A0A0A000000000000000000009090900BEBEBE000000
      000000000000000000007576760050505000000000FF000000FF000000FF0000
      00FF747474001F1F1F00000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF323434009B9B9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A4001D1D1D00000000000000
      000000000000C8C8C8000909090000000000000000000F0F0F00BDBDBD000000
      000000000000000000002829290093959500000000FF000000FF000000FF0000
      00FF000000FF7474740023232300000000FF000000FF000000FF000000FF0000
      00FF000000FFB2B2B2000E0E0E00C9C9C9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000017171700989898000000
      000000000000000000004B4B4B000D0D0D00101010003C3C3C00000000000000
      000000000000A4A4A4001010100000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF7979790023232300000000FF000000FF000000FF0000
      00FFB8B8B8000E0E0E00AEAEAE00000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A2A2A2000A0A0A00CBCB
      CB00000000000000000000000000BCBCBC00B9B9B90000000000000000000000
      0000D4D4D4000F0F0F009292920000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF7979790024242400000000FF000000FFB8B8
      B8000E0E0E00B1B1B100000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000787878000C0C
      0C00A1A1A100000000000000000000000000000000000000000000000000AAAA
      AA00101010006A6A6A000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7474740023232300999999000E0E
      0E00B5B5B500000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B9B
      9B0011111100292929007C7C7C00A1A1A100A2A2A2007F7F7F002E2E2E000E0E
      0E0092929200000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF8383830034343400B9B9
      B900000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000949494004D4D4D002C2C2C002B2B2B004A4A4A008F8F8F000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000057575700BFBFBF0000000000000000000000
      0000000000000000000000000000000000000000000000000000D2D2D2007A7A
      7A00767676007676760076767600767676007676760076767600767676007676
      76007A7A7A00D3D3D30000000000000000001B1B1B0054545400545454005454
      5400545454005454540054545400545454005454540054545400545454003838
      3800A9A9A9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000707171005858580036363600858585004C4C4C00BBBBBB000000
      0000000000000000000000000000000000000000000000000000767676000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007676760000000000000000005454540000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      A900A9A9A9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007676
      76004C4C4C00C7C7C70000000000585858000000000000000000878787004C4C
      4C00BBBBBB0000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7E0000000000000000005454540000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      A900A9A9A9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000036363600CECE
      CE00000000000000000000000000585858000000000000000000000000000000
      000065656500B0B0B000000000000000000000000000000000007E7E7E000000
      0000000000007676760080808000000000000000000080808000767676000000
      0000000000007E7E7E0000000000000000005454540000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      A900A9A9A900000000000000000000000000000000000000000000000000B9B9
      B900A1A1A100000000000000000000000000000000000000000000000000A0A0
      A000B9B9B9000000000000000000000000000000000000000000555555000000
      0000000000000000000000000000585858000000000000000000000000000000
      0000B0B0B000A2A2A200000000000000000000000000000000007E7E7E000000
      0000BEBEBE00BEBEBE007E7E7E0000000000000000007E7E7E00BEBEBE00BEBE
      BE00000000007E7E7E0000000000000000005454540000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      A900A9A9A900000000000000000000000000000000000000000000000000A0A0
      A000000000008D8D8D00000000000000000000000000000000008A8A8A000000
      0000A0A0A0000000000000000000000000000000000000000000565656000000
      00006F6F6F0035353500AEAEAE0059595900000000003D3D3D004E4E4E00BCBC
      BC00B1B1B100A3A3A300000000000000000000000000000000007E7E7E000000
      0000BEBEBE00BEBEBE007E7E7E0000000000000000007E7E7E00BEBEBE00BEBE
      BE00000000007E7E7E0000000000000000005454540000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      A900A9A9A9000000000000000000000000000000000000000000000000000000
      00008E8E8E00000000008686860000000000000000008B8B8B00010101008383
      83000000000000000000000000000000000000000000000000006D6D6D005555
      5500CBCBCB000000000052525200CACACA0058585800CBCCCC00000000008484
      840048484800B2B2B200000000000000000000000000000000007E7E7E000000
      0000BEBEBE00BEBEBE007E7E7E0000000000000000007E7E7E00BEBEBE00BEBE
      BE00000000007E7E7E0000000000000000005454540000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      A900A9A9A9000000000000000000000000000000000000000000000000000000
      0000000000008E8E8E0000000000868686008B8B8B0001010100838383000000
      000000000000000000000000000000000000767676005A5A5A00D0D0D0000000
      00000000000000000000DEDEDE001B1B1B008989890000000000000000000000
      0000000000007E7E7E0050505000DEDEDE0000000000000000007E7E7E000000
      0000BEBEBE00BEBEBE007E7E7E0000000000000000007E7E7E00BEBEBE00BEBE
      BE00000000007E7E7E0000000000000000005454540000000000000000000000
      00000000000000000000000000001B1B1B007A7A7A000000000000000000A9A9
      A900A9A9A9000000000000000000000000000000000000000000000000000000
      000000000000000000008D8D8D0000000000000000008A8A8A00000000000000
      00000000000000000000000000000000000068686800C1C1C100000000000000
      0000000000009999990049494900999999005C5C5C006C6C6C00DEDEDE000000
      00000000000000000000474747000000000000000000000000007E7E7E000000
      0000BEBEBE00BEBEBE007E7E7E0000000000000000007E7E7E00BEBEBE00BEBE
      BE00000000007E7E7E0000000000000000005454540000000000000000000000
      00000000000000000000000000007A7A7A008888880047474700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008D8D8D0000000000000000008D8D8D00000000000000
      000000000000000000000000000000000000000000004B4B4B0000000000A0A0
      A0004C4C4C00A0A0A000000000000000000000000000D4D4D400626262006767
      6700DEDEDE0065656500C0C0C0000000000000000000000000007E7E7E000000
      0000BEBEBE00BEBEBE007E7E7E0000000000000000007E7E7E00BEBEBE00BEBE
      BE00000000007E7E7E0000000000000000005454540000000000000000000000
      00000000000000000000000000000000000047474700B7B7B700474747000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008E8E8E0000000000868686008E8E8E0000000000868686000000
      00000000000000000000000000000000000000000000B3B3B300080808004848
      480000000000000000000000000000000000000000000000000000000000AAAA
      AA00262626004F4F4F00000000000000000000000000000000007E7E7E000000
      000000000000878787008D8D8D0000000000000000008D8D8D00878787000000
      0000000000007E7E7E0000000000000000005454540000000000000000000000
      0000000000000000000000000000000000000000000048484800BBBBBB004747
      4700000000000000000000000000000000000000000000000000000000000000
      00008E8E8E00000000008686860000000000000000008E8E8E00000000008686
      860000000000000000000000000000000000D6D6D60049494900DEDEDE007070
      70001F1F1F0037373700C0C0C0000000000000000000A9A9A900545454006E6E
      6E00DCDCDC0084848400838383000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7E0000000000000000005454540000000000000000000000
      000000000000000000000000000000000000000000000000000048484800BBBB
      BB0047474700000000000000000000000000000000000000000000000000A0A0
      A000000000008D8D8D00000000000000000000000000000000008D8D8D000000
      0000A0A0A0000000000000000000000000002D2D2D0098989800000000000000
      000000000000A4A4A400292929001717170046464600A6A6A600000000000000
      000000000000CECECE0024242400C7C7C70000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7E0000000000000000005454540000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004848
      4800BBBBBB00474747000000000000000000000000000000000000000000B8B8
      B800A0A0A000000000000000000000000000000000000000000000000000A0A0
      A000B9B9B900000000000000000000000000000000009C9C9C004C4C4C007979
      7900DEDEDE000000000072727200888888004747470000000000000000009F9F
      9F004D4D4D0076767600DCDCDC000000000000000000B2B2B200656565008787
      8700878787006565650087878700878787008787870087878700656565008787
      87008787870065656500B2B2B200000000005454540000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000048484800AEAEAE0024242400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC00666666003C3C3C009C9C9C0000000000DDDDDD003E3E3E004F4F4F00A6A6
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7E00000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000005454540054545400545454005454
      5400545454005454540054545400545454005454540064646400000000000000
      00000000000024242400999999004C4C4C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B3B3B30087878700878787008787870087878700B3B3B3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004B4B4B00555555000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00F81FFFFF00000000E007E0FF00000000
      C7E3C07F000000008E718F3F000000009E791F1F000000003FFC3E0F00000000
      3E7C9C67000000003E7CC8F3000000003E3CE1F9000000003D9CF3FC00000000
      399CF9F8000000009C39FCF1000000008E71FE6300000000C7E3FF0700000000
      E007FF8F00000000F81FFFFF00000000FE7FC0030007FFFFF81FDFFB7FE7FFFF
      E2C7DFFB7FE7FFFFCEF3D99B7FE7E7E7DEF3D18B7FE7E3C7D083D18B7FE7F18F
      C423D18B7FE7F81F1C78D18B7E67FC3F381DD18B7E3FFC3FA381D18B7F1FF81F
      8FE3D99B7F8FF18F0181DFFB7FC7E3C73838DFFB7FE3E7E7846180017FF1FFFF
      E10FFBDF0038FFFFFFFFF81FFFFCFFFF00000000000000000000000000000000
      000000000000}
  end
end
