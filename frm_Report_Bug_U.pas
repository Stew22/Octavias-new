unit frm_Report_Bug_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, ShellAPI;

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
    procedure edtnameChange(Sender: TObject);
    procedure edtphoneChange(Sender: TObject);
    procedure edtemailChange(Sender: TObject);
    procedure mmoinputChange(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmeportbug: Tfrmeportbug;

implementation

{$R *.dfm}

procedure Tfrmeportbug.btncancelClick(Sender: TObject);
begin
 edtname.Clear;
 edtphone.Clear;
 edtemail.Clear;
 mmoinput.Clear;
 frmeportbug.Close;
end;

procedure Tfrmeportbug.btnsendbugClick(Sender: TObject);
var
  EmailAddress, Subject, BodyText: string;
begin
 // first we will check if all the fields have been enetered
 // then we can send it through
  if edtname.Text = '' then
  begin
    ShowMessage('You Can Not Leave The Name Field Blank !');
    edtname.SetFocus;
  end
  else if edtphone.Text = '' then
  begin
    showMessage('You Can Not Leave The Phone Field Blank !');
    edtphone.SetFocus;
  end
  else if edtemail.Text = '' then
  begin
    showMessage('You Can Not Leave The Email Field Blank !');
    edtemail.SetFocus;
  end
  else if mmoinput.Text = '' then
  begin
    ShowMessage('You Can Not Leave The Description Field Blank !');
    mmoinput.SetFocus;
  end
  else
  begin
    // Set the email address, subject, and body text
    EmailAddress := 'dantu.domonique@gmail.com';
    Subject := 'Bug Report For Octavias StockMate, TicketID: ' + IntToStr(Random(1000));

    // Concatenate contact information into the email body
    BodyText := 'Name: ' + edtname.Text + sLineBreak +
      'Contact Number: ' + edtphone.Text + sLineBreak +
      'Email Address: ' + edtemail.Text + sLineBreak +
      'You Have Reported The Following Bugs: ' + sLineBreak + mmoinput.Text;

    // Using ShellExecute to open the default email client with pre-filled values
    ShellExecute(0, 'open', PChar('mailto:' + EmailAddress +
      '?subject=' + Subject + '&body=' + StringReplace(BodyText, sLineBreak, '%0D%0A', [rfReplaceAll])), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure Tfrmeportbug.edtemailChange(Sender: TObject);
begin
 if (edtname.Text <> '') and (edtphone.Text <> '') and (edtemail.Text <> '') and (mmoinput.Text <> '') then
 begin
  btnsendbug.Enabled:=True;
 end else
 begin
  btnsendbug.Enabled:=False;
 end;
end;

procedure Tfrmeportbug.edtnameChange(Sender: TObject);
begin
 if (edtname.Text <> '') and (edtphone.Text <> '') and (edtemail.Text <> '') and (mmoinput.Text <> '') then
 begin
  btnsendbug.Enabled:=True;
 end else
 begin
  btnsendbug.Enabled:=False;
 end;
end;

procedure Tfrmeportbug.edtphoneChange(Sender: TObject);
begin
 if (edtname.Text <> '') and (edtphone.Text <> '') and (edtemail.Text <> '') and (mmoinput.Text <> '') then
 begin
  btnsendbug.Enabled:=True;
 end else
 begin
  btnsendbug.Enabled:=False;
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

procedure Tfrmeportbug.mmoinputChange(Sender: TObject);
begin
 if (edtname.Text <> '') and (edtphone.Text <> '') and (edtemail.Text <> '') and (mmoinput.Text <> '') then
 begin
  btnsendbug.Enabled:=True;
 end else
 begin
  btnsendbug.Enabled:=False;
 end;
end;

end.
