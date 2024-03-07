object frmstockmanagement: Tfrmstockmanagement
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Stock Managment '
  ClientHeight = 618
  ClientWidth = 1107
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 1091
    Height = 57
    BevelInner = bvLowered
    TabOrder = 0
    object lbl1: TLabel
      Left = 296
      Top = 22
      Width = 490
      Height = 13
      Caption = 
        'Use The Following Form To Monitor Stock Levels For All Products ' +
        'And Get Insight Into Stock Movement'
    end
  end
  object dbgrdproducts: TDBGrid
    Left = 8
    Top = 71
    Width = 1091
    Height = 538
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbgrdproductsDrawColumnCell
  end
  object mm1: TMainMenu
    Left = 480
    Top = 8
    object File1: TMenuItem
      Caption = 'File'
      object N4: TMenuItem
        Caption = '-'
      end
      object UpdateList1: TMenuItem
        Caption = 'Update List'
        OnClick = UpdateList1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object ProductManagment1: TMenuItem
        Caption = 'Product Managment'
        object N10: TMenuItem
          Caption = '-'
        end
        object AddProducts1: TMenuItem
          Caption = 'Add Products'
          OnClick = AddProducts1Click
        end
        object N8: TMenuItem
          Caption = '-'
        end
        object AddProducts2: TMenuItem
          Caption = 'Manage Products'
          OnClick = AddProducts2Click
        end
        object N7: TMenuItem
          Caption = '-'
        end
        object RemoveProducts1: TMenuItem
          Caption = 'Remove Products'
          OnClick = RemoveProducts1Click
        end
        object N9: TMenuItem
          Caption = '-'
        end
        object PricingUpdate1: TMenuItem
          Caption = 'Pricing Update'
          object N15: TMenuItem
            Caption = '-'
          end
          object SingleProduct1: TMenuItem
            Caption = 'Single Product'
            OnClick = SingleProduct1Click
          end
          object N18: TMenuItem
            Caption = '-'
          end
          object SingleProduct2: TMenuItem
            Caption = 'Bulk Update'
            OnClick = SingleProduct2Click
          end
          object N16: TMenuItem
            Caption = '-'
          end
          object N17: TMenuItem
            Caption = '-'
          end
        end
        object N14: TMenuItem
          Caption = '-'
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object StockDaysCover1: TMenuItem
        Caption = 'View Stock Days Cover'
        Enabled = False
        OnClick = StockDaysCover1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Reports1: TMenuItem
        Caption = 'Reports'
        Enabled = False
        object N11: TMenuItem
          Caption = '-'
        end
        object Reports2: TMenuItem
          Caption = 'Low Stock Report'
          OnClick = Reports2Click
        end
        object N5: TMenuItem
          Caption = '-'
        end
        object StockDaysCoverReport1: TMenuItem
          Caption = 'Stock Days Cover Report'
          OnClick = StockDaysCoverReport1Click
        end
        object N12: TMenuItem
          Caption = '-'
        end
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
    end
    object Settings1: TMenuItem
      Caption = 'Settings'
      Enabled = False
      OnClick = Settings1Click
    end
    object File2: TMenuItem
      Caption = 'Help'
    end
  end
end
