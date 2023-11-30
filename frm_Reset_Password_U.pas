unit frm_Reset_Password_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList,DM_Users,ShellAPI;

type
  Tfrmresetpassword = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    edtnewpword: TEdit;
    edtnewpwordcheck: TEdit;
    edtusername: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    pnl3: TPanel;
    il1: TImageList;
    btnchangepword: TButton;
    btncancel: TButton;
    btnhelp: TButton;
    procedure btncancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnchangepwordClick(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmresetpassword: Tfrmresetpassword;

implementation

{$R *.dfm}

procedure Tfrmresetpassword.btncancelClick(Sender: TObject);
begin
 //here we will clear all fields and close the form
 edtnewpword.Clear;
 edtnewpwordcheck.Clear;
 edtusername.Clear;
 //
 frmresetpassword.Close;
end;

procedure Tfrmresetpassword.btnchangepwordClick(Sender: TObject);
begin
 with DataModuleUsers do
 begin
   if tblusers.Active = True then
   begin
    tblusers.Filtered:=False;
    tblusers.Filter := 'Username = ' + QuotedStr(edtusername.Text);
    tblusers.Filtered:=True;
    //here we will need to check that the username exists
    //then we will reset the password
    //
    if (edtusername.Text = '') or (edtnewpwordcheck.Text = '') or (edtnewpword.Text = '') then
    begin
     ShowMessage('You Have Left One Or More Fields Blank ! , Please Try Again');

    end else
    begin
     if tblusers.FieldByName('Username').AsString = ''  then
      begin
       ShowMessage('The User Does Not Exist !');
       //we might need to modify this
      end else
      begin
       //here the user exists
       //
       if edtnewpword.Text = edtnewpwordcheck.Text then
       begin
        tblusers.Edit;
        tblusers['Password']:=edtnewpword.Text;
        tblusers.Post;
        //
        ShowMessage('Your Password Has Been Successfully Changed !');
       end else
       begin
        ShowMessage('Your Passwords Do Not Match , Please Try Again');
       end;
      end;
      end;
   end;
 end;
end;

procedure Tfrmresetpassword.btnhelpClick(Sender: TObject);
 var
 PDFFilename:String;
begin
  //here we will shell execute the pdf to open
  PDFFileName := ExtractFileDir(Application.ExeName) + '\Bin\M_Delete_Service_Vendor.pdf'; //replace this with the help file
  ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
  //
end;

procedure Tfrmresetpassword.FormActivate(Sender: TObject);
begin
 edtusername.SetFocus;
end;

end.