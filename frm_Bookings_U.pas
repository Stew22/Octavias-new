unit frm_Bookings_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids,System.DateUtils, Vcl.Menus;

type
  Tfrmbookings = class(TForm)
    strngrddates: TStringGrid;
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    EditBooking1: TMenuItem;
    EditBooking2: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Help1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure File2Click(Sender: TObject);
    procedure EditBooking1Click(Sender: TObject);
    procedure EditBooking2Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbookings: Tfrmbookings;

implementation

{$R *.dfm}

procedure Tfrmbookings.EditBooking1Click(Sender: TObject);
begin
 //here we will allow the user to edit booking details
 //we will also log it
 //it must also have a reason for editing the booking
end;

procedure Tfrmbookings.EditBooking2Click(Sender: TObject);
begin
 //here we will allow the user to cancel bookings
 //must include a reason
 //then we also log it
end;

procedure Tfrmbookings.Exit1Click(Sender: TObject);
begin
 //close the form
 frmbookings.Close;
end;

procedure Tfrmbookings.File2Click(Sender: TObject);
begin
 //here users will be allowed to aake bookings
 //we will also log these bookings
end;

procedure Tfrmbookings.FormCreate(Sender: TObject);
var
  CurrentDate: TDateTime;
  Day, Hour: Integer;
  DayLabel, HourLabel: string;
begin
  CurrentDate := StartOfTheMonth(Now);
  strngrddates.RowCount := DaysInMonth(CurrentDate);

  // Populate the top row with hour labels from 05:00 to 19:00
  for Hour := 5 to 19 do
  begin
    HourLabel := Format('%.2d:00', [Hour]);
    strngrddates.Cells[Hour - 4, 0] := HourLabel;
  end;

  // Populate the left column with day labels
  for Day := 1 to strngrddates.RowCount do
  begin
    DayLabel := FormatDateTime('dd', CurrentDate);
    strngrddates.Cells[0, Day] := DayLabel;
    CurrentDate := IncDay(CurrentDate);
  end;
end;

end.