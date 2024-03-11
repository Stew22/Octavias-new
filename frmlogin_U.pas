unit frmlogin_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Vcl.Mask, Vcl.ExtCtrls , frmregister_U ,frmmain_U,DM_Users ,frmsplash_U,
  Winapi.ShellAPI,DM_Logger,Logger_U,frm_Spa_Menu_U;

type
  Tfrmlogin = class(TForm)
    pnl1: TPanel;
    cbbuser: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    medtpword: TMaskEdit;
    il1: TImageList;
    btnlogin: TButton;
    btnregister: TButton;
    lbl3: TLabel;
    btnhelplogin: TButton;
    btnviewspamenu: TButton;
    procedure btnloginClick(Sender: TObject);
    procedure btnregisterClick(Sender: TObject);
    procedure btnhelploginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnviewspamenuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure medtpwordKeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    OriginalText: string;
    LoginPWordOrg:string;
  public
    { Public declarations }
  end;

var
  frmlogin: Tfrmlogin;

implementation

{$R *.dfm}

procedure Tfrmlogin.btn1Click(Sender: TObject);
begin
 ShowMessage(OriginalText);
end;

procedure Tfrmlogin.btnhelploginClick(Sender: TObject);
var
PDFFilename:String;
begin
 //here we will shell execute the pdf to open
 PDFFileName := ExtractFileDir(Application.ExeName) + '\Bin\M_User_Login.pdf'; //replace this with the help file
 ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
 //
end;

procedure Tfrmlogin.btnloginClick(Sender: TObject);
begin
 //here we will make sure that there is a user that has been selected from
 //the use database and make sure that there password matches
 //i will also write a script here that will log the logins and registrations
 //should i limit the number of users ? then licence it out ?
 //then i would need to store that information somewhere then pull that info
 //using python , i could possibly use python to send the email ?
 //
 if cbbuser.Text = '' then
 begin
  ShowMessage('Please Make Sure You Select A User !');
  cbbuser.SetFocus;
 end else
 begin
  //here we will check if the user matches the password
  with DataModuleUsers do
  begin
   if conusers.Connected = True then
   begin
    //here we are connected and we check that the user name and the password match
    //using the filter property and then we take the filter off once loged in
    //remeber we are also going to add in some logging for each user log in
    //
    tblusers.Filter:='Username =' + QuotedStr(cbbuser.Text);
    tblusers.Filtered:=True;
    //
    if (OriginalText = tblusers.FieldByName('Password').AsString) and
    (cbbuser.Text = tblusers.FieldByName('Username').AsString) then  //we are checking the user name and password match
    begin
     if tblusers.FieldByName('Premissions').AsString = 'Admin' then
     begin
      // we leave all the menu items enabled
      //Admin
      frmmain.ShowModal;
      frmmain.Vendors1.Enabled:=True;
      frmmain.StockManagment1.Enabled:=True;
      frmmain.EditMyDetails2.Enabled:=True;
      frmmain.AddUser1.Enabled:=True;
      frmmain.Bookings1.Enabled:=True; // this will be for the future
      frmmain.ManageTreatments1.Enabled:=True;
      TDataAccess.WriteToAccessDB(cbbuser.Text + ' Has Logged In As An Admin');
      cbbuser.Text:='';
      medtpword.Clear;
     end else
     if tblusers.FieldByName('Premissions').AsString = 'Orderer' then
     begin
      //here we will disable certain menu items as per the premissions granted
      frmmain.Vendors1.Enabled:=False;
      frmmain.StockManagment1.Enabled:=False;
      frmmain.EditMyDetails2.Enabled:=False;
      frmmain.AddUser1.Enabled:=False;
      frmmain.Bookings1.Enabled:=False; // this will be for the future
      frmmain.ManageTreatments1.Enabled:=False;
      //
      frmmain.ShowModal;
      //
      //here we write to the log
      TDataAccess.WriteToAccessDB(cbbuser.Text + ' Has Logged In As An Orderer ');
      //
      cbbuser.Text:='';
      medtpword.Clear;
      //here we will capture the Orderer that has logged in
     end else
     begin
      ShowMessage('An Error Has Occoured , Please Contact The Program Administrator');
     end;
     //everything matches and we can log the user in
     //we will also need to check the user premissions and disable functions accordingly
    end else
    begin
     //password is incorrect and we will clear the tbl filter
     ShowMessage('Username / Password Combination Is Incorrect , Please Try Again !');
     tblusers.Filtered:=False;
     tblusers.Filter:='';
    end;
   end else
   begin
    //connection has failed and we try and reconnect it before doing anything
    ShowMessage('There Was An Error Connecting Connecting To The Spa Menu , Please Contact Your Software Developer');
    //or we can just raise an error
   end;
  end;
 end;
end;

procedure Tfrmlogin.btnregisterClick(Sender: TObject);
begin
 //here we will open the register a user form
 frmadduser.ShowModal;
 TDataAccess.WriteToAccessDB('Register A User Button Has Been Clicked');
end;

procedure Tfrmlogin.btnviewspamenuClick(Sender: TObject);
begin
 frmspamenu.Show; // see if we might need to make this showmodal ?
 //when we lanuch this form since the user is not logged in we will need to disable
 //the abillity for the user to make any changes or add or delete any of the
 //treatments , they should only be able to view
 TDataAccess.WriteToAccessDB('Spa Menu Has Been Opened');
end;

procedure Tfrmlogin.FormCreate(Sender: TObject);
begin

  //medtpword.Text := '****';
end;

procedure Tfrmlogin.FormShow(Sender: TObject);
var
 I:Integer;
begin
 //here we will connect the data base
 //then make sure that it is connected
 //
 with DataModuleUsers do
 begin
   if conusers.Connected = True then
   begin
    conusers.Connected:=False; //disconnect a previous session
   end else
   begin
    //here we will connect the database
    conusers.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;' +
    'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\UserDatabase.accdb' +
    ';Mode=ReadWrite;Persist Security Info=False';
    //
    tblusers.TableName:='tblusers';
    //
    conusers.Connected:=True;
    tblusers.Active:=True;
    tblusers.First; //here we go to the first value
    //
    //now we loop through the users and populate the users field
    //
    for I := 0 to tblusers.RecordCount -1 do
     begin
      cbbuser.Items.Add(tblusers.FieldByName('Username').AsString);
      tblusers.Next;
     end;
   end;
 end;
 TDataAccess.WriteToAccessDB('Life Day Spa Stock Mate Application Has Been Opened');
end;

procedure Tfrmlogin.medtpwordKeyPress(Sender: TObject; var Key: Char);
begin
  // Handle backspace
  if Key = #8 then
  begin
    if Length(OriginalText) > 0 then
    begin
      // Remove the last character from the original text
      Delete(OriginalText, Length(OriginalText), 1);

      // Update the displayed text with asterisks
      medtpword.Text := StringOfChar('*', Length(OriginalText));
    end;
  end
  else
  begin
    // Store the original text
    OriginalText := OriginalText + Key;

    // Display '*' instead of the actual character
    medtpword.Text := StringOfChar('*', Length(OriginalText));
  end;

  // Set Key to #0 to prevent the original character from being displayed
  Key := #0;
end;

end.
