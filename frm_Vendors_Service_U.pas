unit frm_Vendors_Service_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList,DM_Vendors;

type
  Tfrmaddservice = class(TForm)
    il1: TImageList;
    mm1: TMainMenu;
    Fiel1: TMenuItem;
    AddVendor1: TMenuItem;
    AddVendor2: TMenuItem;
    DeleteVendor1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Help1: TMenuItem;
    pnl1: TPanel;
    pnl2: TPanel;
    edtvendorname: TEdit;
    edtvscode: TEdit;
    edtvcname: TEdit;
    edtvsaddress: TEdit;
    edtvsemail: TEdit;
    cbbvservicet: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edtvsphone: TEdit;
    lbl7: TLabel;
    btnaddvendor: TButton;
    btnclear: TButton;
    btncancel: TButton;
    lbl8: TLabel;
    procedure btncancelClick(Sender: TObject);
    procedure btnaddvendorClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaddservice: Tfrmaddservice;

implementation

{$R *.dfm}

procedure Tfrmaddservice.btnaddvendorClick(Sender: TObject);
var
  i: Integer;
begin
  // Check if any field is left empty
  if (edtvendorname.Text = '') or (edtvsemail.Text = '') or (edtvsaddress.Text = '') or
    (edtvscode.Text = '') or (edtvcname.Text = '') or (edtvsphone.Text = '') or
    (cbbvservicet.Text = '') then
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
          if (tblvendor.FieldByName('Vendor_Name').AsString = edtvcname.Text) or
            (tblvendor.FieldByName('Vendor_Code').AsString = edtvscode.Text) then
          begin
            ShowMessage('This Vendor Already Exists!');
            Exit; // Exit the loop if the vendor already exists
          end;
          tblvendor.Next; // Move to the next record
        end;

        // After ensuring uniqueness, add a new record
        tblvendor.Append;
        tblvendor['Vendor_Name'] := edtvcname.Text;
        tblvendor['Vendor_Code'] := edtvscode.Text;
        tblvendor['Vendor_Email'] := edtvsemail.Text;
        tblvendor['Vendor_Contact_Name'] := edtvcname.Text;
        tblvendor['Vendor_Contact_Number'] := edtvsphone.Text;
        tblvendor['Vendor_Address'] := edtvsaddress.Text;
        tblvendor['Vendor_Type'] := cbbvservicet.Text;

        tblvendor.Post;
        ShowMessage('Product Vendor Has Been Added Successfully!');
      end
      else
        ShowMessage('The dataset is not active or closed.');
    end;
  end;
end;

procedure Tfrmaddservice.btncancelClick(Sender: TObject);
begin
 //here we will clear all forms and exit the form
 edtvendorname.Clear;
 edtvscode.Clear;
 edtvendorname.Clear;
 edtvsaddress.Clear;
 edtvsemail.Clear;
 edtvsphone.Clear;
 cbbvservicet.Clear;
 //
 frmaddservice.Close;
end;

procedure Tfrmaddservice.FormActivate(Sender: TObject);
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

end.
