object frmViewVendors: TfrmViewVendors
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'View Vendors'
  ClientHeight = 271
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrdvendors: TDBGrid
    Left = 0
    Top = 0
    Width = 505
    Height = 265
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object mm1: TMainMenu
    Left = 216
    Top = 24
    object File1: TMenuItem
      Caption = 'File'
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
  end
end
