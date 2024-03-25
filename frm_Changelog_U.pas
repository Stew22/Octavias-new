unit frm_Changelog_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrmchangelog = class(TForm)
    mmooutput: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmchangelog: Tfrmchangelog;

implementation

{$R *.dfm}

procedure Tfrmchangelog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 mmooutput.Clear;
end;

procedure Tfrmchangelog.FormShow(Sender: TObject);
 var
 Clog:TStrings;
begin
 //here we will code a read from file
 //
 if FileExists(ExtractFilePath(Application.ExeName) + '/Bin/Changelog.txt') then
 begin
  try
   Clog:=TStringList.Create;
   Clog.LoadFromFile(ExtractFileDir(Application.ExeName) + '/Bin/Changelog.txt'); //maybe wrap this in a try
   mmooutput.Text:=Clog.Text;
  finally
   Clog.Free;
  end;
 end else
 begin
  ShowMessage('The New Features Changelog Is Not Currently Availible , Please Try Again Later Or Contact Your Software Developer');
 end;
end;

end.
