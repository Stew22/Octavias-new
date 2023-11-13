unit frmremoveuser_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList,DM_Users;

type
  Tfrmremoveuser = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    cbbuname: TComboBox;
    cbbname: TComboBox;
    cbbsurname: TComboBox;
    cbbemail: TComboBox;
    pnl3: TPanel;
    btncancell: TButton;
    btnremoveuser: TButton;
    il1: TImageList;
    lbl1: TLabel;
    procedure btncancellClick(Sender: TObject);
    procedure cbbunameChange(Sender: TObject);
    procedure btnremoveuserClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbbnameChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmremoveuser: Tfrmremoveuser;

implementation

{$R *.dfm}

procedure Tfrmremoveuser.btncancellClick(Sender: TObject);
begin
 cbbuname.Clear;
 cbbname.Clear;
 cbbsurname.Clear;
 cbbemail.Clear;
 frmremoveuser.close;
 //here we will cancell
end;

procedure Tfrmremoveuser.btnremoveuserClick(Sender: TObject);
begin
 //Here we will remove the user from the database
 if InputBox('Are You Sure You Want To Remove The User ?', 'Please Type Yes If It Is Correct : ' , '') = 'Yes' then
 begin
  with DataModuleUsers do
  begin
   if tblusers.Filtered = True then
   begin
    tblusers.Delete;
   end else
   begin
    ShowMessage('An Error Has Accoured , Please Try Again !');
    frmremoveuser.Close;
   end;
  end;
 end else
 begin
  ShowMessage('Deleting Of User Has Been Cancelled !');
 end;
end;

procedure Tfrmremoveuser.cbbnameChange(Sender: TObject);
begin
 //here we will enable all the other fields and populate them with data
 with DataModuleUsers do
 begin
  tblusers.Filtered:=False;
  tblusers.Filter:='Name = ' + QuotedStr(cbbname.Text);
  tblusers.Filtered:=True;
  //
  cbbuname.Enabled:=True;
  cbbsurname.Enabled:=True;
  cbbemail.Enabled:=True;
  //
  //now we populate with data
  cbbuname.Text:= tblusers.FieldByName('Username').AsString;
  cbbsurname.Text:= tblusers.FieldByName('Surname').AsString;
  cbbemail.Text:= tblusers.FieldByName('EmailAddress').AsString;
  //
 end;
end;

procedure Tfrmremoveuser.cbbunameChange(Sender: TObject);
begin
 //here we will code an autoo fill then when the user selects it
 //it must populate all the fields
end;

procedure Tfrmremoveuser.FormActivate(Sender: TObject);
var
  NameList: TStringList;
begin
  cbbuname.Enabled := False;
  cbbsurname.Enabled := False;
  cbbemail.Enabled := False;

  // Check if the connection is already open, if not, establish the connection
  if not DataModuleUsers.conusers.Connected then
  begin
    DataModuleUsers.conusers.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;' +
      'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\UserDatabase.accdb' +
      ';Mode=ReadWrite;Persist Security Info=False';
    DataModuleUsers.tblusers.TableName := 'tblusers';
    DataModuleUsers.conusers.Connected := True;
    DataModuleUsers.tblusers.Active := True;
  end;

  NameList := TStringList.Create;
  try
    DataModuleUsers.tblusers.First;
    while not DataModuleUsers.tblusers.Eof do
    begin
      NameList.Add(DataModuleUsers.tblusers.FieldByName('Name').AsString);
      DataModuleUsers.tblusers.Next;
    end;

    // Add the names stored in the list to the combo box
    cbbname.Items.Assign(NameList);
  finally
    NameList.Free;
  end;
end;

end.
