unit frm_Vendors_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls,DM_Vendors,Winapi.ShellAPI;

type
  Tfrmvendors = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    il1: TImageList;
    btnaddvendor: TButton;
    lbl1: TLabel;
    edtvname: TEdit;
    edtvemail: TEdit;
    edtvaddress: TEdit;
    edtvcode: TEdit;
    edtvcontactname: TEdit;
    edtvcontactphone: TEdit;
    cbbvendortype: TComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    btncancel: TButton;
    btnhelp: TButton;
    btnclear: TButton;
    lbl9: TLabel;
    edtVcontactemail2: TEdit;
    procedure btnaddvendorClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
    procedure btnclearClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvendors: Tfrmvendors;

implementation

{$R *.dfm}

procedure Tfrmvendors.btnaddvendorClick(Sender: TObject);
var
  i: Integer;
begin
  // Check if any field is left empty
  if (edtvname.Text = '') or (edtvemail.Text = '') or (edtvaddress.Text = '') or
    (edtvcode.Text = '') or (edtvcontactname.Text = '') or (edtvcontactphone.Text = '') or
    (cbbvendortype.Text = '') then
  begin
    ShowMessage('You Cannot Leave One Or More Fields Blank, Please Try Again!');
  end
  else
  begin
    with DataModuleVendor do
    begin
      // Check if the dataset is active
      if tblvendor.Active then
      begin
        tblvendor.First; // Move to the first record
        // Check for existing vendors
        while not tblvendor.Eof do
        begin
          if (tblvendor.FieldByName('Vendor_Name').AsString = edtvname.Text) or
            (tblvendor.FieldByName('Vendor_Code').AsString = edtvcode.Text) then
          begin
            ShowMessage('This Vendor Already Exists!');
            Exit; // Exit the loop if the vendor already exists
          end;
          tblvendor.Next; // Move to the next record
        end;
        // After ensuring uniqueness, add a new record
        tblvendor.Append;
        tblvendor['Vendor_Name'] := edtvname.Text;
        tblvendor['Vendor_Code'] := edtvcode.Text;
        tblvendor['Vendor_Email'] := edtvemail.Text;
        tblvendor['Vendor_Email2'] := edtVcontactemail2.Text;
        tblvendor['Vendor_Contact_Name'] := edtvcontactname.Text;
        tblvendor['Vendor_Contact_Number'] := edtvcontactphone.Text;
        tblvendor['Vendor_Address'] := edtvaddress.Text;
        tblvendor['Vendor_Type'] := cbbvendortype.Text;
        tblvendor['Is_Service'] := 'False';
        //
        tblvendor.Post;
        ShowMessage('Product Vendor Has Been Added Successfully!');
      end
      else
      ShowMessage('There Was An Error Adding A New Vendor To The Database , Please Contact Your Software Developer');
    end;
  end;
end;

procedure Tfrmvendors.btncancelClick(Sender: TObject);
begin
 //here we will clear all edits and close form
 edtvname.Text:='';
 edtvemail.Text:='';
 edtVcontactemail2.Text:='';
 edtvaddress.Text:='';
 edtvcode.Text:='';
 edtvcontactname.Text:='';
 edtvcontactphone.Text:='';
 cbbvendortype.Text:='';
 //
 frmvendors.Close;
end;

procedure Tfrmvendors.btnclearClick(Sender: TObject);
begin
 edtvname.Text:='';
 edtvemail.Text:='';
 edtvaddress.Text:='';
 edtvcode.Text:='';
 edtvcontactname.Text:='';
 edtvcontactphone.Text:='';
 cbbvendortype.Text:='';
 edtVcontactemail2.Text:='';
end;

procedure Tfrmvendors.btnhelpClick(Sender: TObject);
 var
 PDFFileName:string;
begin
//here we will shell execute the manual for the following form
 PDFFileName := ExtractFileDir(Application.ExeName) + '/Bin/M_Product_Vendor_Addition.pdf'; //replace this with the help file
 ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
 //
end;

procedure Tfrmvendors.FormShow(Sender: TObject);
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
    end;
  end;
end;

end.
