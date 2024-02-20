unit frm_edit_Product_Vendors_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.Menus,
  Vcl.StdCtrls, Vcl.ExtCtrls,DM_Vendors, Winapi.ShellAPI;

type
  Tfrmeditproductvendor = class(TForm)
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    Cancel1: TMenuItem;
    Cancel2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Help1: TMenuItem;
    il1: TImageList;
    pnl1: TPanel;
    lbl1: TLabel;
    btnhelp: TButton;
    pnl2: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edtvemail: TEdit;
    edtvaddress: TEdit;
    edtvcontactname: TEdit;
    edtvcontactphone: TEdit;
    cbbvendortype: TComboBox;
    pnl3: TPanel;
    btneditvendor: TButton;
    btncancel: TButton;
    btnclear: TButton;
    cbbevpname: TComboBox;
    cbbevpcode: TComboBox;
    edtcontactemail2: TEdit;
    lbl9: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnclearClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure btneditvendorClick(Sender: TObject);
    procedure Help1Click(Sender: TObject);
    procedure cbbevpnameChange(Sender: TObject);
    procedure cbbevpcodeChange(Sender: TObject);
    procedure File2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmeditproductvendor: Tfrmeditproductvendor;

implementation

{$R *.dfm}

procedure Tfrmeditproductvendor.btncancelClick(Sender: TObject);
begin
 //here we will clear all edits and close form
 cbbevpname.Clear;
 edtvemail.Clear;
 edtvaddress.Clear;
 cbbevpcode.Clear;
 edtvcontactname.Clear;
 edtvcontactphone.Clear;
 cbbvendortype.Clear;
 //
 frmeditproductvendor.Close;
end;

procedure Tfrmeditproductvendor.btnclearClick(Sender: TObject);
begin
 cbbevpname.Text:='';
 edtvemail.Text:='';
 edtvaddress.Text:='';
 edtcontactemail2.Text:='';
 cbbevpcode.Text:='';
 edtvcontactname.Text:='';
 edtvcontactphone.Text:='';
 cbbvendortype.Text:='';
end;

procedure Tfrmeditproductvendor.btneditvendorClick(Sender: TObject);
begin
 with Datamodulevendor do
 begin
   if tblvendor.Active = True then
   begin
    if (cbbevpname.Text <> '') or (edtvemail.Text <> '') or (edtvaddress.Text <> '')
    or (edtvcontactname.Text <> '') or (edtvcontactphone.Text <> '') or (cbbvendortype.Text <> '') then
    begin
     if (tblvendor.Filtered = True) and (tblvendor.FieldByName('Vendor_Name').AsString = cbbevpname.Text) then
     begin
      tblvendor.Edit;
      //
      tblvendor['Vendor_Code']:=cbbevpcode.Text;
      tblvendor['Vendor_Email']:=edtvemail.Text;
      tblvendor['Vendor_Email2']:=edtcontactemail2.Text;
      tblvendor['Vendor_Contact_Name']:=edtvcontactname.Text;
      tblvendor['Vendor_Contact_Number']:=edtvcontactphone.Text;
      tblvendor['Vendor_Address']:=edtvaddress.Text;
      //tblvendor['']:=''; // here we will need to check if want to mofiy the vendor service type
      tblvendor.Post;
      //
      ShowMessage('The Edits Have Been Saved Successfully !');
     end else
     begin
      ShowMessage('Please Make Sure You Have Selected A Vendor !');
     end;
    end else
    begin
     ShowMessage('You Can Not Leave One Or More Of The Fields Blank , Please Try Again');
    end;
   end;
 end;
end;

procedure Tfrmeditproductvendor.btnhelpClick(Sender: TObject);
 var
 PDFFilename:String;
begin
  //here we will shell execute the pdf to open
  PDFFileName := ExtractFileDir(Application.ExeName) + '\Bin\M_Edit_Product_Vendor.pdf'; //replace this with the help file
  ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
  //
end;

procedure Tfrmeditproductvendor.Cancel1Click(Sender: TObject);
begin
 btncancel.Click;
end;

procedure Tfrmeditproductvendor.Cancel2Click(Sender: TObject);
begin
 btnclear.Click;
 //close the form
 frmeditproductvendor.Close;
end;

procedure Tfrmeditproductvendor.cbbevpcodeChange(Sender: TObject);
begin
 //here we will automatically populate all the other fields
 with Datamodulevendor do
 begin
  if tblvendor.Active = True then
  begin
   tblvendor.Filtered:=False;
   tblvendor.Filter:='Vendor_Code = ' + QuotedStr(cbbevpcode.Text);
   tblvendor.Filtered:=True;
   //
   if cbbevpcode.Text <> '' then
   begin
    btneditvendor.Enabled:=True;
   end else
   begin
    btneditvendor.Enabled:=False;
   end;
   //
   cbbevpname.Text :=tblvendor.FieldByName('Vendor_Name').AsString;
   edtvcontactname.Text:=tblvendor.FieldByName('Vendor_Contact_Name').AsString;
   edtvcontactphone.Text:=tblvendor.FieldByName('Vendor_Contact_Number').AsString;
   edtvemail.Text:=tblvendor.FieldByName('Vendor_Email').AsString;
   edtcontactemail2.Text:=tblvendor.FieldByName('Vendor_Email2').AsString;
   edtvaddress.Text:=tblvendor.FieldByName('Vendor_Address').AsString;
   cbbvendortype.Text:=tblvendor.FieldByName('Vendor_Type').AsString;
   //
  end;
 end;
end;

procedure Tfrmeditproductvendor.cbbevpnameChange(Sender: TObject);
begin
 //here we will automatically populate all the other fields
 with Datamodulevendor do
 begin
  if tblvendor.Active = True then
  begin
   tblvendor.Filtered:=False;
   tblvendor.Filter:='Vendor_Name = ' + QuotedStr(cbbevpname.Text);
   tblvendor.Filtered:=True;
   //
   if cbbevpname.Text <> '' then
   begin
    btneditvendor.Enabled:=True;
   end else
   begin
    btneditvendor.Enabled:=False;
   end;
   //
   cbbevpcode.Text :=tblvendor.FieldByName('Vendor_Code').AsString;
   edtvcontactname.Text:=tblvendor.FieldByName('Vendor_Contact_Name').AsString;
   edtvcontactphone.Text:=tblvendor.FieldByName('Vendor_Contact_Number').AsString;
   edtvemail.Text:=tblvendor.FieldByName('Vendor_Email').AsString;
   edtcontactemail2.Text:=tblvendor.FieldByName('Vendor_Email2').AsString;
   edtvaddress.Text:=tblvendor.FieldByName('Vendor_Address').AsString;
   cbbvendortype.Text:=tblvendor.FieldByName('Vendor_Type').AsString;
   //
  end;
 end;
end;

procedure Tfrmeditproductvendor.File2Click(Sender: TObject);
begin
 btneditvendor.Click;
end;

procedure Tfrmeditproductvendor.FormActivate(Sender: TObject);
begin
  with Datamodulevendor do
  begin
    if not convendor.Connected then
    begin
      // Connect to the database
      convendor.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;' +
        'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\Vendor_Database.accdb' +
        ';Mode=ReadWrite;Persist Security Info=False';
      //
      tblvendor.TableName := 'tblvendors';
      convendor.Connected := True;
      tblvendor.Active := True;
      tblvendor.First;
      // Populate user fields or any other necessary initializations
    end;
  end;
end;

procedure Tfrmeditproductvendor.FormShow(Sender: TObject);
 var
  VnameTemp,VcodeTemp:string;
begin
 with Datamodulevendor do
 begin
  if tblvendor.Active = True then
  begin
   //here we will populate the combo boxes of vname , and vendor code
   //then once the user has selected them we can then copy all the data to
   //fill in all the other fields
   //
   tblvendor.Filtered:=False;
   tblvendor.Filter:='';
   //
   tblvendor.First;
   //
   while not tblvendor.Eof do
   begin
    VnameTemp:=tblvendor.FieldByName('Vendor_Name').AsString;
    VcodeTemp:=tblvendor.FieldByName('Vendor_Code').AsString;
    //
    if (cbbevpname.Items.IndexOf(VnameTemp) = -1) and (tblvendor.FieldByName('Is_Service').AsString = 'False') then
    begin
     cbbevpname.Items.Add(VnameTemp);
     tblvendor.Next;
    end else
    begin
     //then it is a duplicate and we will move to the next record
     tblvendor.Next;
    end;
    //
    if (cbbevpcode.Items.IndexOf(VcodeTemp) = -1) and (tblvendor.FieldByName('Is_Service').AsString = 'False')  then
    begin
     cbbevpcode.Items.Add(VcodeTemp);
     tblvendor.Next;
    end else
    begin
     //then it is a duplicate and we will move to the next record
     tblvendor.Next;
    end;
   end;
  end else
  begin
   ShowMessage('There Was An Error Connecting To The Vendors Database , Please Contact Your Software Developer');
  end;
 end;
end;

procedure Tfrmeditproductvendor.Help1Click(Sender: TObject);
begin
 btnhelp.Click;
end;

end.
