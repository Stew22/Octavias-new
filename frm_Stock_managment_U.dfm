object frmstockmanagement: Tfrmstockmanagement
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Stock Managment '
  ClientHeight = 800
  ClientWidth = 1107
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 1091
    Height = 57
    BevelInner = bvLowered
    TabOrder = 0
  end
  object mm1: TMainMenu
    Left = 384
    Top = 376
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
        object AddProducts1: TMenuItem
          Caption = 'Add Products'
          OnClick = AddProducts1Click
        end
        object N8: TMenuItem
          Caption = '-'
        end
        object AddProducts2: TMenuItem
          Caption = 'Manage Products'
        end
        object N7: TMenuItem
          Caption = '-'
        end
        object RemoveProducts1: TMenuItem
          Caption = 'Remove Products'
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object StockDaysCover1: TMenuItem
        Caption = 'View Stock Days Cover'
        OnClick = StockDaysCover1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Reports1: TMenuItem
        Caption = 'Reports'
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
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Settings1: TMenuItem
      Caption = 'Settings'
      OnClick = Settings1Click
    end
    object File2: TMenuItem
      Caption = 'Help'
    end
  end
end