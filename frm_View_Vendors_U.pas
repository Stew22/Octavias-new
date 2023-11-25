unit frm_View_Vendors_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.Grids,
  Vcl.DBGrids,DM_Vendors;

type
  TfrmViewVendors = class(TForm)
    dbgrdvendors: TDBGrid;
    mm1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewVendors: TfrmViewVendors;

implementation

{$R *.dfm}

procedure TfrmViewVendors.Exit1Click(Sender: TObject);
begin
 frmViewVendors.Close;
end;

procedure TfrmViewVendors.FormActivate(Sender: TObject);
begin
 with Datamodulevendor do
 begin
   if convendor.Connected = True then
   begin
    convendor.Connected:=False; //disconnect a previous session
   end else
   begin
    //here we will connect the database
    convendor.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;' +
    'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\Vendor_Database.accdb' +
    ';Mode=ReadWrite;Persist Security Info=False';
    //
    tblvendor.TableName:='tblvendors';
    //
    convendor.Connected:=True;
    tblvendor.Active:=True;
    tblvendor.First; //here we go to the first value
    //
    //now we loop through the users and populate the users field
    //
    tblvendor.Filter:='Is_Service = True';
    tblvendor.Filtered:=True;
    //
    dbgrdvendors.DataSource:=dsvendor;
   end;
 end;
end;

end.
