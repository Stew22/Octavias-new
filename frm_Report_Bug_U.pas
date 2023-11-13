unit frm_Report_Bug_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls;

type
  Tfrmeportbug = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    pnl2: TPanel;
    edtname: TEdit;
    edtphone: TEdit;
    edtemail: TEdit;
    il1: TImageList;
    mmoinput: TMemo;
    pnl3: TPanel;
    btnsendbug: TButton;
    btncancel: TButton;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnsendbugClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmeportbug: Tfrmeportbug;

implementation

{$R *.dfm}

procedure Tfrmeportbug.btnsendbugClick(Sender: TObject);
begin
 // first we will check if all the fields have been enetered
 // then we can send it through
 if edtname.Text = '' then
 begin
  ShowMessage('You Can Not Leave The Name Field Blank !');
  edtname.SetFocus;
 end else
 if edtphone.Text = '' then
 begin
  showMessage('You Can Not Leave The Phone Field Blank !');
  //here we will add a check for the number ?
  edtphone.SetFocus;
 end else
 if edtemail.Text = '' then
 begin
  showMessage('You Can Not Leave The Email Field Blank !');
  edtemail.SetFocus;
 end else
 if mmoinput.Text = '' then
 begin
  ShowMessage('You Can Not Leave The Discription Field Blank !');
  mmoinput.SetFocus;
 end else
 begin
  //here we will compile the email to send to me using the shellexecte function

 end;
end;

procedure Tfrmeportbug.FormActivate(Sender: TObject);
begin
 edtname.Clear;
 edtphone.Clear;
 edtemail.Clear;
 //
 mmoinput.Clear;
 //
 btnsendbug.Enabled:=False;
 //
end;

end.