unit fm_Help_Widget_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList,Winapi.ShellAPI;

type
  Tfrmhelp = class(TForm)
    pnl1: TPanel;
    btnmanual: TButton;
    lbl1: TLabel;
    il1: TImageList;
    pnl2: TPanel;
    edthname: TEdit;
    edthphone: TEdit;
    mmohmessage: TMemo;
    edthmail: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    btnrequests: TButton;
    btncancel: TButton;
    procedure btncancelClick(Sender: TObject);
    procedure btnrequestsClick(Sender: TObject);
    procedure btnmanualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmhelp: Tfrmhelp;

implementation

{$R *.dfm}

procedure Tfrmhelp.btncancelClick(Sender: TObject);
begin
 //here we will clear all fields and close the form
 edthname.Clear;
 edthphone.Clear;
 edthmail.Clear;
 mmohmessage.Clear;
 frmhelp.Close;
end;

procedure Tfrmhelp.btnmanualClick(Sender: TObject);
begin
//here we will open the user manual
end;

procedure Tfrmhelp.btnrequestsClick(Sender: TObject);
var
 MailCC,MailTo,Mailbody,MailSubject:string;
begin
 //here we will email me for support
 //
 //
  if (edthname.Text = '') or (edthphone.Text = '') or (mmohmessage.Text = '')  then
  begin
   ShowMessage('You Can Not Leave Any Of The Fields Blank ! , Please Try Again');
  end else
  begin
   MailTo:='dantu.domonique@gmail.com';
   MailCC := 'aarti@octavias.co.za';
   MailSubject := 'Support Request Ticket ID : ' + 'SRT' + IntToStr(Random(100));
   //
    MailBody := 'Good day' + sLineBreak + sLineBreak +
   'Name : '+ edthname.Text + sLineBreak + sLineBreak +
   'Phone : ' + edthphone.Text + sLineBreak + sLineBreak +
   'Email : ' + mmohmessage.Text + sLineBreak + sLineBreak +
   'Kind Regards';
    //here we will need to cc in aarti
    // Using ShellExecute to open the default email client with pre-filled values
     ShellExecute(
     0,
     'open',
     PChar('mailto:' + MailTo + '?cc=' + MailCC +
     '&subject=' + MailSubject + '&body=' + StringReplace(MailBody, sLineBreak, '%0D%0A', [rfReplaceAll])),
     nil,
     nil,
     SW_SHOWNORMAL
     );
     //
  end;
end;

end.
