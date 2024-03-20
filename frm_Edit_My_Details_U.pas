unit frm_Edit_My_Details_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList , DM_Users,frmlogin_U, Vcl.Buttons;

type
  Tfrmeditmydetails = class(TForm)
    mm1: TMainMenu;
    il1: TImageList;
    pnl1: TPanel;
    File1: TMenuItem;
    File2: TMenuItem;
    Cancel1: TMenuItem;
    Cancel2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Help1: TMenuItem;
    lbl1: TLabel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    lbluser: TLabel;
    btnyes: TSpeedButton;
    btnno: TSpeedButton;
    lbl2: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmeditmydetails: Tfrmeditmydetails;

implementation

{$R *.dfm}

procedure Tfrmeditmydetails.FormShow(Sender: TObject);
 var
 User:String;
begin
 //here we will need to store the user that is logged in in a global varible
 //so that we can check which user is logged in , then when the form is opened
 //automtically populate all the user details
 //
 //User:=frmlogin.LUser;  //gets the user from the global varible set in the login form
 //
 with DataModuleUsers do
 begin
  if tblusers.Active = True then
  begin
   //here we will populate the data based on which user is logged in
   //
   //lbluser.Caption := lbluser.Caption + ' ' + User;



  end else
  begin
   ShowMessage('There Was An Error Connecting To The Users Database , Please Contact Your Software Developer');
  end;
 end;
end;

end.
