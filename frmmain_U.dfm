object frmmain: Tfrmmain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Order stock'
  ClientHeight = 747
  ClientWidth = 1078
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnShow = FormShow
  TextHeight = 13
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 1062
    Height = 41
    BevelInner = bvLowered
    TabOrder = 0
    object lbl2: TLabel
      Left = 312
      Top = 14
      Width = 437
      Height = 13
      Caption = 
        'Please Use The Following For To Select The Qty'#39's Of The Products' +
        ' You Would Like To Order'
    end
    object btnhelp: TButton
      Left = 1030
      Top = 6
      Width = 26
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 1
      Images = il1
      TabOrder = 0
      OnClick = btnhelpClick
    end
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 106
    Width = 929
    Height = 633
    DataSource = Datamoduleorder.dsorder
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = dbgrd1ColEnter
    OnDrawColumnCell = dbgrd1DrawColumnCell
  end
  object pnl2: TPanel
    Left = 8
    Top = 55
    Width = 1062
    Height = 45
    BevelInner = bvLowered
    TabOrder = 2
    object cbbvendor: TComboBox
      Left = 16
      Top = 14
      Width = 145
      Height = 21
      TabOrder = 0
      TextHint = 'Vendor'#39's'
      OnChange = cbbvendorChange
    end
    object cbbcatogories: TComboBox
      Left = 192
      Top = 14
      Width = 145
      Height = 21
      TabOrder = 1
      TextHint = 'Main Categories'
      OnChange = cbbcatogoriesChange
    end
    object pnl3: TPanel
      Left = 600
      Top = 5
      Width = 457
      Height = 33
      BevelInner = bvLowered
      TabOrder = 2
      object lbl1: TLabel
        Left = 16
        Top = 11
        Width = 43
        Height = 13
        Caption = 'Search : '
      end
      object edtsearch: TEdit
        Left = 80
        Top = 7
        Width = 249
        Height = 21
        TabOrder = 0
        OnChange = edtsearchChange
      end
      object btnsearch: TButton
        Left = 359
        Top = 5
        Width = 75
        Height = 25
        Caption = 'Search'
        ImageIndex = 0
        Images = il1
        TabOrder = 1
        OnClick = btnsearchClick
      end
    end
    object cbbsubcatagories: TComboBox
      Left = 376
      Top = 14
      Width = 145
      Height = 21
      TabOrder = 3
      TextHint = 'Sub Categories'
      OnChange = cbbsubcatagoriesChange
    end
    object btnmore: TButton
      Left = 544
      Top = 12
      Width = 50
      Height = 25
      Caption = 'More...'
      TabOrder = 4
      OnClick = btnmoreClick
    end
    object cbbtertiarycatagory: TComboBox
      Left = 16
      Top = 41
      Width = 145
      Height = 21
      TabOrder = 5
      TextHint = '-- Tertiary Categories --'
      OnChange = cbbtertiarycatagoryChange
    end
  end
  object pnl4: TPanel
    Left = 943
    Top = 99
    Width = 127
    Height = 94
    TabOrder = 3
    object lbltotals: TLabel
      Left = 8
      Top = 72
      Width = 59
      Height = 13
      Caption = 'Total Cost : '
    end
    object lblorderproducts: TLabel
      Left = 8
      Top = 45
      Width = 95
      Height = 13
      Caption = 'Products Ordered : '
    end
    object btngenerateorder: TButton
      Left = 8
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Generate Order'
      ImageIndex = 2
      Images = il1
      TabOrder = 0
      OnClick = btngenerateorderClick
    end
  end
  object mm1: TMainMenu
    Images = il1
    Left = 888
    Top = 16
    object File1: TMenuItem
      Caption = 'File'
      object N10: TMenuItem
        Caption = '-'
      end
      object RefreshList1: TMenuItem
        Caption = 'Refresh List'
        OnClick = RefreshList1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Vendors1: TMenuItem
        Caption = 'Vendors'
        object N16: TMenuItem
          Caption = '-'
        end
        object ProductVendor2: TMenuItem
          Caption = 'Service Vendor'
          object N22: TMenuItem
            Caption = '-'
          end
          object AddVendor3: TMenuItem
            Caption = 'Add Vendor '
            OnClick = AddVendor3Click
          end
          object N21: TMenuItem
            Caption = '-'
          end
          object AddVendor4: TMenuItem
            Caption = 'Edit Vendor'
            OnClick = AddVendor4Click
          end
          object N20: TMenuItem
            Caption = '-'
          end
          object DeleteVendor2: TMenuItem
            Caption = 'Delete Vendor '
            OnClick = DeleteVendor2Click
          end
          object N23: TMenuItem
            Caption = '-'
          end
        end
        object N15: TMenuItem
          Caption = '-'
        end
        object ProductVendor1: TMenuItem
          Caption = 'Product Vendor'
          object N17: TMenuItem
            Caption = '-'
          end
          object AddVendor1: TMenuItem
            Caption = 'Add Vendor'
            OnClick = AddVendor1Click
          end
          object N3: TMenuItem
            Caption = '-'
          end
          object AddVendor2: TMenuItem
            Caption = 'Edit Vendor'
            OnClick = AddVendor2Click
          end
          object N18: TMenuItem
            Caption = '-'
          end
          object DeleteVendor1: TMenuItem
            Caption = 'Delete Vendor'
            OnClick = DeleteVendor1Click
          end
          object N19: TMenuItem
            Caption = '-'
          end
        end
        object N2: TMenuItem
          Caption = '-'
        end
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Bookings1: TMenuItem
        Caption = 'Bookings'
        Enabled = False
        OnClick = Bookings1Click
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object Orders1: TMenuItem
        Caption = 'Orders'
        object N25: TMenuItem
          Caption = '-'
        end
        object PlaceOrder1: TMenuItem
          Caption = 'Place Order'
          OnClick = PlaceOrder1Click
        end
        object N26: TMenuItem
          Caption = '-'
        end
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object StockManagment1: TMenuItem
        Caption = 'Stock Managment '
        OnClick = StockManagment1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object UserManagment1: TMenuItem
        Caption = 'User Managment'
        object N29: TMenuItem
          Caption = '-'
        end
        object AddUser1: TMenuItem
          Caption = 'Add User'
          OnClick = AddUser1Click
        end
        object N9: TMenuItem
          Caption = '-'
        end
        object EditMyDetails1: TMenuItem
          Caption = 'Edit My Details'
          Enabled = False
          OnClick = EditMyDetails1Click
        end
        object N8: TMenuItem
          Caption = '-'
        end
        object EditMyDetails2: TMenuItem
          Caption = 'Remove User'
          OnClick = EditMyDetails2Click
        end
        object N30: TMenuItem
          Caption = '-'
        end
        object ResetMyPassword1: TMenuItem
          Caption = 'Reset My Password'
          OnClick = ResetMyPassword1Click
        end
        object N31: TMenuItem
          Caption = '-'
        end
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
      object N32: TMenuItem
        Caption = '-'
      end
    end
    object DatabaseManagment1: TMenuItem
      Caption = 'Database Managment'
      object N27: TMenuItem
        Caption = '-'
      end
      object DatabaseManagment2: TMenuItem
        Caption = 'Sync Databases'
        Enabled = False
        OnClick = DatabaseManagment2Click
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object Auto1: TMenuItem
        Caption = 'Auto Database Syncing '
        Enabled = False
        object N34: TMenuItem
          Caption = '-'
        end
        object SetInterval1: TMenuItem
          Caption = 'Set Sync Interval'
        end
        object N35: TMenuItem
          Caption = '-'
        end
      end
      object N33: TMenuItem
        Caption = '-'
      end
      object Backup1: TMenuItem
        Caption = 'Backup'
        object N36: TMenuItem
          Caption = '-'
        end
        object AutoDatabaseSyncing1: TMenuItem
          Caption = 'Auto Database Backup'
          Enabled = False
          object N38: TMenuItem
            Caption = '-'
          end
          object SetInterval2: TMenuItem
            Caption = 'Set Auto Backup Interval'
            OnClick = SetInterval2Click
          end
          object N39: TMenuItem
            Caption = '-'
          end
        end
        object N37: TMenuItem
          Caption = '-'
        end
        object BackupDatabases1: TMenuItem
          Caption = 'Backup Databases'
          Enabled = False
          OnClick = BackupDatabases1Click
        end
        object N40: TMenuItem
          Caption = '-'
        end
      end
      object N41: TMenuItem
        Caption = '-'
      end
    end
    object Support1: TMenuItem
      Caption = 'Help'
      object N12: TMenuItem
        Caption = '-'
      end
      object Support2: TMenuItem
        Caption = 'Request A Feature'
        OnClick = Support2Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object ReportABug1: TMenuItem
        Caption = 'Report A Bug '
        OnClick = ReportABug1Click
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object RequestSupport1: TMenuItem
        Caption = 'Request Support'
        OnClick = RequestSupport1Click
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object UserManual1: TMenuItem
        Caption = 'User Manual'
        OnClick = UserManual1Click
      end
    end
  end
  object il1: TImageList
    Left = 848
    Top = 16
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2B2B2008989890092929200B7B7B700000000000000
      000000000000000000000000000000000000000000FF000000FFB3B3B3000606
      0600000000000000000000000000000000000000000000000000000000000000
      000006060600B4B4B400000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171008E8E8E0000000000000000000000000000000000000000000000
      00008E8E8E001919190040404000737474006464640033333300121212009595
      950000000000000000000000000000000000000000FF000000FF7E7E7E007E7E
      7E00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF7E7E7E007E7E7E00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      7100000000006E6E6E0000000000000000000000000000000000000000006363
      630039393900D4D4D40000000000CBCCCC00CBCCCC0000000000D0D0D0002F2F
      2F005F5F5F00000000000000000000000000000000FF000000FF7E7E7E007E7E
      7E00000000FF00000000000000FF000000FF000000FF000000FF000000000000
      00FF7E7E7E007E7E7E00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ACACAC008282820096969600D8D8D80000000000727272000000
      00006D6D6D000000000000000000000000000000000000000000989898003A3A
      3A00000000000000000000000000CDCDCD00CECECE0000000000000000000000
      00002F2F2F00939393000000000000000000000000FF000000FF7E7E7E007E7E
      7E00000000FF2222220068686800767676007676760067676700242424000000
      00FF7E7E7E007E7E7E00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C3C3
      C3001C1C1C003B3B3B00717171005C5C5C001818180033333300000000006C6C
      6C0000000000000000000000000000000000000000000000000013131300DADA
      DA00000000000000000000000000CECECE00D0D0D00000000000000000000000
      0000D7D7D700141414000000000000000000000000FF000000FF7E7E7E007E7E
      7E00000000FFDADADA008A8A8A0087878700878787008A8A8A00DADADA000000
      00FF7E7E7E007E7E7E00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8D8D8001212
      1200ABABAB000000000000000000000000000000000048484800313131000000
      00000000000000000000000000000000000000000000B6B6B600424242000000
      00000000000000000000000000007E7E7E007E7E7E0000000000000000000000
      0000000000003D3D3D00B8B8B80000000000000000FF000000FF7E7E7E007E7E
      7E00000000FF000000FFB5B5B5001B1B1B001C1C1C00B6B6B600000000FF0000
      00FF7E7E7E007E7E7E00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A007E7E
      7E0000000000000000000000000000000000000000000000000018181800DADA
      DA00000000000000000000000000000000000000000091919100707070000000
      00000000000000000000000000007F7F7F005B5B5B0000000000000000000000
      000000000000676767009090900000000000000000FF000000FF7E7E7E007E7E
      7E00000000FF000000FF1B1B1B00C2C2C200C1C1C1001C1C1C00000000FF0000
      00FF7E7E7E007E7E7E00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014141400D7D7
      D7000000000000000000000000000000000000000000000000005E5E5E009898
      980000000000000000000000000000000000000000008E8E8E00707070000000
      0000000000000000000000000000DADADA004141410032323200000000000000
      0000000000006A6A6A008A8A8A0000000000000000FF000000FF7E7E7E007E7E
      7E00000000FF000000FF1B1B1B00C4C4C400C2C2C2001C1C1C00000000FF0000
      00FF7E7E7E007E7E7E00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070707000000
      0000000000000000000000000000000000000000000000000000747474008585
      85000000000000000000000000000000000000000000BEBEBE00414141000000
      000000000000D4D4D400D2D2D2000000000000000000525252009A9A9A000000
      0000000000003D3D3D00BBBCBC0000000000000000FF000000FF7E7E7E007E7E
      7E00000000FF000000FFB3B3B3001A1A1A001B1B1B00B5B5B500000000FF0000
      00FF7E7E7E007E7E7E00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002F2F2F00B7B7
      B7000000000000000000000000000000000000000000000000003E3E3E00AEAE
      AE0000000000000000000000000000000000000000000000000018181800D5D5
      D5000000000097979700595959000000000000000000575757009B9B9B000000
      0000CECECE00191919000000000000000000000000FF000000FF7E7E7E007E7E
      7E00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF7E7E7E007E7E7E00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000959595002E2E
      2E000000000000000000000000000000000000000000ADADAD001D1D1D000000
      00000000000000000000000000000000000000000000000000009B9B9B003838
      3800000000000000000024242400585858005757570028282800000000000000
      000035353500959595000000000000000000000000FF000000FF7E7E7E007E7E
      7E00000000FF0000000000000000000000000000000000000000000000000000
      00FF7E7E7E007E7E7E00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      55002E2E2E00B9B9B90000000000D9D9D9008080800012121200C4C4C4000000
      0000000000000000000000000000000000000000000000000000000000006666
      660034343400D2D2D20000000000999999009A9A9A0000000000CECECE003737
      37006B6B6B00000000000000000000000000000000FF000000FF858585003A3A
      3A007676760000000000000000FF000000FF000000FF000000FF000000007676
      76003A3A3A0086868600000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000959595002E2E2E0006060600141414005A5A5A00D9D9D900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000929292001A1A1A003E3E3E006B6B6B00D2D2D200B4B4B400181818009696
      960000000000000000000000000000000000000000FF000000FF000000FF8A8A
      8A008787870000000000000000FF000000FF000000FF000000FF000000008787
      87008A8A8A00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B9B9B90093939300D1D1D10000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF39393900000000000000000000000000000000003B3B3B000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFC3FC0030000
      FFF3F00FCFF30000FFE3E247CBD30000F847CE73C8130000E00FCE73C8130000
      C79F9E79CC330000CFCF9E79CC330000CFCF9E39CC330000DFCF9999CC330000
      CFCFC993CFF30000CF9FCC33C8130000E21FE247C3C30000F03FF00FE3C70000
      FFFFFC7FF81F0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object dlgSave1: TSaveDialog
    Left = 808
    Top = 16
  end
end
