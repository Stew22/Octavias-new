object frmViewResults: TfrmViewResults
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Life Day Spa - View Results'
  ClientHeight = 339
  ClientWidth = 741
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
  object mmooutputresults: TMemo
    Left = 0
    Top = 8
    Width = 733
    Height = 323
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object mm1: TMainMenu
    Left = 368
    Top = 176
    object File1: TMenuItem
      Caption = 'File'
      object N3: TMenuItem
        Caption = '-'
      end
      object SaveResults1: TMenuItem
        Caption = 'Save Results'
        OnClick = SaveResults1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object SaveResults2: TMenuItem
        Caption = 'Exit'
        OnClick = SaveResults2Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
    end
    object File2: TMenuItem
      Caption = 'Help'
    end
  end
end
