unit frmlogin_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Vcl.Mask, Vcl.ExtCtrls , frmregister_U ,frmmain_U,DM_Users ,frmsplash_U,
  Winapi.ShellAPI;

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
    procedure btnloginClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnregisterClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnhelploginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogin: Tfrmlogin;

implementation

{$R *.dfm}

procedure Tfrmlogin.btn1Click(Sender: TObject);
begin
 frmsplash.Show;
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
 var
 i:Integer;
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
    if (medtpword.Text = tblusers.FieldByName('Password').AsString) and
    (cbbuser.Text = tblusers.FieldByName('Username').AsString) then  //we are checking the user name and password match
    begin
     if tblusers.FieldByName('Premissions').AsString = 'Admin' then
     begin
      // we leave all the menu items enabled
      //Admin
      frmmain.ShowModal;
     end else
     if tblusers.FieldByName('Premissions').AsString = 'Orderer' then
     begin
      //here we will disable certain menu items as per the premissions granted
      frmmain.Vendors1.Enabled:=False;
      frmmain.StockManagment1.Enabled:=False;
      frmmain.EditMyDetails2.Enabled:=False;
      frmmain.AddUser1.Enabled:=False;
      frmmain.Bookings1.Enabled:=False; // this will be for the future
      frmmain.ShowModal;
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
    //or we can just raise an error
   end;
  end;
 end;
end;

procedure Tfrmlogin.btnregisterClick(Sender: TObject);
begin
 //here we will open the register a user form
 frmadduser.ShowModal;
end;

procedure Tfrmlogin.FormActivate(Sender: TObject);
var
 I:Integer;
begin
 //here we will connect the data base
 //then make sure that it is connected
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

end;

end.
