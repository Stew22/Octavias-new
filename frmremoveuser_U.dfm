object frmremoveuser: Tfrmremoveuser
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Remove A User'
  ClientHeight = 205
  ClientWidth = 365
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 15
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 349
    Height = 41
    BevelInner = bvLowered
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 7
      Width = 320
      Height = 30
      Caption = 
        'Select One Of The Fields To Search By  The Rest Of The Fields '#13#10 +
        'Will Populate'
    end
  end
  object pnl2: TPanel
    Left = 8
    Top = 64
    Width = 349
    Height = 129
    BevelInner = bvLowered
    TabOrder = 1
    object cbbuname: TComboBox
      Left = 8
      Top = 8
      Width = 209
      Height = 23
      TabOrder = 0
      TextHint = 'Select A Username'
      OnChange = cbbunameChange
    end
    object cbbname: TComboBox
      Left = 8
      Top = 37
      Width = 209
      Height = 23
      TabOrder = 1
      TextHint = 'Select A Name'
      OnChange = cbbnameChange
    end
    object cbbsurname: TComboBox
      Left = 8
      Top = 66
      Width = 209
      Height = 23
      TabOrder = 2
      TextHint = 'Select A Surname'
    end
    object cbbemail: TComboBox
      Left = 8
      Top = 95
      Width = 209
      Height = 23
      TabOrder = 3
      TextHint = 'Select An Email Address'
    end
    object pnl3: TPanel
      Left = 223
      Top = 8
      Width = 119
      Height = 113
      BevelInner = bvLowered
      TabOrder = 4
      object btncancell: TButton
        Left = 8
        Top = 39
        Width = 105
        Height = 25
        Caption = 'Cancel'
        ImageIndex = 1
        Images = il1
        TabOrder = 0
        OnClick = btncancellClick
      end
      object btnremoveuser: TButton
        Left = 8
        Top = 8
        Width = 105
        Height = 25
        Caption = 'Remove User'
        ImageIndex = 0
        Images = il1
        TabOrder = 1
        OnClick = btnremoveuserClick
      end
    end
  end
  object il1: TImageList
    Left = 256
    Top = 8
    Bitmap = {
      494C010102000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A3A3A00B9B9B9000000
      0000B8B8B800393939000000000000000000000000FF00000000656565000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF6565650000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B3B3B0000000000000000000000
      000000000000000000003939390000000000000000FF65656500000000006464
      6400000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF656565000000000065656500000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BBBBBB0000000000000000000000
      00000000000000000000B9B9B90000000000000000FF000000FF656565000000
      000064646400000000FF000000FF000000FF000000FF000000FF000000FF6565
      65000000000064646400000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001919190000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020200000000FF000000FF000000FF6969
      69000000000062626200000000FF000000FF000000FF000000FF646464000000
      000064646400000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD0014141400000000000000
      000000000000000000000000000000000000BBBBBB0000000000000000000000
      00000000000000000000B9B9B90023232300000000FF000000FF000000FF0000
      00FF656565000000000064646400000000FF000000FF65656500010101006363
      6300000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000818181003C3C3C0000000000000000000000
      000000000000000000003A3A3A007E7E7E00000000FF000000FF000000FF0000
      00FF000000FF6666660000000000646464006464640001010100636363000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000535353000E0E0E00000000003C3C3C00BBBBBB000000
      0000BBBBBB003B3B3B003737370000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF66666600000000000000000063636300000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001313130000000000000000000000000000000000000000000202
      0200222222007D7D7D000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF65656500000000000000000064646400000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000545454000000000000000000000000000000000000000000000000005353
      530000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF6565650000000000646464006565650000000000646464000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0C0C000000000000000000000000000000000000000000000000001111
      110000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF656565000000000064646400000000FF000000FF65656500000000006464
      6400000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0C0C000000000000000000000000000000000000000000000000000D0D
      0D0000000000000000000000000000000000000000FF000000FF000000FF6565
      65000000000064646400000000FF000000FF000000FF000000FF696969000000
      000062626200000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000525252000000000000000000000000000000000000000000000000005454
      540000000000000000000000000000000000000000FF000000FF656565000000
      000064646400000000FF000000FF000000FF000000FF000000FF000000FF6565
      65000000000065656500000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001111110000000000000000000000000000000000101010000000
      000000000000000000000000000000000000000000FF65656500000000006565
      6500000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF656565000000000065656500000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000525252000C0C0C000C0C0C004F4F4F00D7D7D7000000
      000000000000000000000000000000000000000000FF00000000656565000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF6565650000000000000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF000000FFFF0000000000109FF900000000
      007C8FF100000000007CC7E3000000000082E3C700000000007CF18F00000000
      FE7CF81F00000000FC11FC3F00000000F803FC3F00000000F00FF81F00000000
      F00FF18F00000000F00FE3C700000000F00FC7E300000000F81F8FF100000000
      FC1F9FF900000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
