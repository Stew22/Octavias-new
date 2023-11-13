unit frmregister_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls,DM_Users,Winapi.ShellAPI;

type
  Tfrmadduser = class(TForm)
    pnl1: TPanel;
    il1: TImageList;
    pnl2: TPanel;
    pnl3: TPanel;
    cbbuserprem: TComboBox;
    edtuname: TEdit;
    edtuemail: TEdit;
    edtname: TEdit;
    edtsurname: TEdit;
    edtcell: TEdit;
    edtstore: TEdit;
    edtpassword: TEdit;
    edtcpassword: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl1: TLabel;
    pnl4: TPanel;
    btnaduser: TButton;
    btncancell: TButton;
    edtvendoraddress: TEdit;
    lbl10: TLabel;
    Label1: TLabel;
    btnhelp: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btndeleteuserClick(Sender: TObject);
    procedure btnedituserClick(Sender: TObject);
    procedure btncancellClick(Sender: TObject);
    procedure btnaduserClick(Sender: TObject);
    procedure edtcpasswordChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmadduser: Tfrmadduser;

implementation

{$R *.dfm}

procedure Tfrmadduser.btnaduserClick(Sender: TObject);
var
  I: Integer;
  UserExists: Boolean;
begin
  // Check for empty fields
  if (edtuname.Text = '') or (edtuemail.Text = '') or (edtname.Text = '') or
     (edtsurname.Text = '') or (edtcell.Text = '') or (edtstore.Text = '') or
     (edtpassword.Text = '') or (edtcpassword.Text = '') or (edtvendoraddress.Text = '') or
     (cbbuserprem.Text = '') then
  begin
    ShowMessage('You Cannot Leave Any Of These Fields Blank, Please Try Again!');
  end
  else
  begin
    // Validating user permissions
    if cbbuserprem.Text = 'Admin' then
    begin
      // Admin verification
      if (InputBox('Enter Admin Username', 'Username:', '') = 'Admin') and
         (InputBox('Enter Admin Password', 'Password:', '') = 'Admin') then
      begin
        // Add user as an admin
        with DataModuleUsers do
        begin
          tblusers.Append;
          tblusers['Username'] := edtuname.Text;
          tblusers['EmailAddress'] := edtuemail.Text;
          tblusers['Password'] := edtpassword.Text;
          tblusers['StoreName'] := edtstore.Text;
          tblusers['Name'] := edtname.Text;
          tblusers['Surname'] := edtsurname.Text;
          tblusers['CellNumber'] := edtcell.Text;
          tblusers['Premissions'] := cbbuserprem.Text;
          tblusers['User_Address'] := edtvendoraddress.Text;
          tblusers.Post;
          ShowMessage('User With Admin Rights Has Been Added Successfully!');
        end;
      end
      else
      begin
        ShowMessage('Invalid Admin Username or Password, Please Try Again');
      end;
    end
    else if cbbuserprem.Text = 'Orderer' then
    begin
      // Check if the user already exists
      UserExists := False;
      with DataModuleUsers do
      begin
        tblusers.First;
        while not tblusers.Eof do
        begin
          if (edtuname.Text = tblusers['Username']) or
             (edtcell.Text = tblusers['CellNumber']) or
             (edtuemail.Text = tblusers['EmailAddress']) or
             (edtname.Text = tblusers['Name']) or
             (edtsurname.Text = tblusers['Surname']) then
          begin
            // The user already exists
            UserExists := True;
            Break;
          end;
          tblusers.Next;
        end;
        // Add the user if it doesn't exist
        if not UserExists then
        begin
          tblusers.Append;
          tblusers['Username'] := edtuname.Text;
          tblusers['EmailAddress'] := edtuemail.Text;
          tblusers['Password'] := edtpassword.Text;
          tblusers['StoreName'] := edtstore.Text;
          tblusers['Name'] := edtname.Text;
          tblusers['Surname'] := edtsurname.Text;
          tblusers['CellNumber'] := edtcell.Text;
          tblusers['Premissions'] := cbbuserprem.Text;
          tblusers['User_Address'] := edtvendoraddress.Text;
          tblusers.Post;
          ShowMessage('User With Ordering Rights Added Successfully!');
        end
        else
        begin
          ShowMessage('The User Already Exists, Please Try Again With Different Details');
        end;
      end;
    end
    else
    begin
      ShowMessage('Please Select a Valid User Permission Level!');
      cbbuserprem.Text := '';
      cbbuserprem.SetFocus;
    end;
  end;
end;

procedure Tfrmadduser.btncancellClick(Sender: TObject);
begin
 edtuname.Clear;
 edtuemail.Clear;
 edtname.Clear;
 edtsurname.Clear;
 edtcell.Clear;
 edtstore.Clear;
 edtpassword.Clear;
 edtcpassword.Clear;
 frmadduser.Close;
 cbbuserprem.Clear;
end;

procedure Tfrmadduser.btndeleteuserClick(Sender: TObject);
begin
 //here we will disable all other fields and only leave the username field
 // this will only be availible if the user is an admin
end;

procedure Tfrmadduser.btnedituserClick(Sender: TObject);
begin
 //here we will allow the user loged into there own profile to edit there details
end;

procedure Tfrmadduser.btnhelpClick(Sender: TObject);
var
PDFFilename:String;
begin
 //here we will shell execute the pdf to open
 PDFFileName := 'C:\Path\To\YourPDFFile.pdf'; //replace this with the help file
 ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
end;

procedure Tfrmadduser.edtcpasswordChange(Sender: TObject);
begin
 if edtpassword.Text = edtcpassword.Text then
 begin
  btnaduser.Enabled:=True;
 end else
 begin
  btnaduser.Enabled:=False;
 end;
end;

procedure Tfrmadduser.FormActivate(Sender: TObject);
 var
 i:Integer;
begin

 //here we have set only 2 account types
 //the admin account can add and remove users
 //the admin can also place orders
 //the admin can also add and remove suppliers
 //the admin and update pricing aswell
 with DataModuleUsers do
 begin
  if conusers.Connected = False then
  begin
   //here we will connect the database first before doing anything
    conusers.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;' +
    'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\UserDatabase.accdb' +
    ';Mode=ReadWrite;Persist Security Info=False';
   //
   tblusers.TableName:='tblusers';
   //
   conusers.Connected:=True;
   tblusers.Active;
   //
  end else
  begin
   //here we can do nothing since it is already connected
  end;
 end;
end;

procedure Tfrmadduser.FormCreate(Sender: TObject);
begin
 cbbuserprem.Items.Add('Orderer');
 cbbuserprem.Items.Add('Admin');
 btnaduser.Enabled:=False;
end;

end.