object frmbookings: Tfrmbookings
  Left = 0
  Top = 0
  Caption = 'Bookings'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mm1
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object strngrddates: TStringGrid
    Left = 8
    Top = 8
    Width = 608
    Height = 425
    ColCount = 15
    RowCount = 30
    TabOrder = 0
  end
  object mm1: TMainMenu
    Left = 304
    Top = 224
    object File1: TMenuItem
      Caption = 'File'
      object N4: TMenuItem
        Caption = '-'
      end
      object File2: TMenuItem
        Caption = 'Add Booking'
        OnClick = File2Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object EditBooking1: TMenuItem
        Caption = 'Edit Booking'
        OnClick = EditBooking1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object EditBooking2: TMenuItem
        Caption = 'Cancel Booking '
        OnClick = EditBooking2Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ViewMySchedule1: TMenuItem
        Caption = ' // '
        OnClick = ViewMySchedule1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
    end
  end
end
