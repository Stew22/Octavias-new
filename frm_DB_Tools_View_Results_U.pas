unit frm_DB_Tools_View_Results_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TfrmViewResults = class(TForm)
    mmooutputresults: TMemo;
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    SaveResults1: TMenuItem;
    SaveResults2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure SaveResults1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SaveResults2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewResults: TfrmViewResults;

implementation

{$R *.dfm}

procedure TfrmViewResults.FormShow(Sender: TObject);
begin
 //mmooutputresults.Clear;
end;

procedure TfrmViewResults.SaveResults1Click(Sender: TObject);
begin
 //here we will export the contents of the mmo
end;

procedure TfrmViewResults.SaveResults2Click(Sender: TObject);
begin
 mmooutputresults.Clear;
 frmViewResults.Close;
end;

end.
