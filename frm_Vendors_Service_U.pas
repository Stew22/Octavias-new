unit frm_Vendors_Service_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList,DM_Vendors,frm_edit_Vendors_U,Winapi.ShellAPI,
  frm_Delete_Service_Vendor;

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
    btnhrlp: TButton;
    Exit1: TMenuItem;
    lbl9: TLabel;
    edtcontactemail2: TEdit;
    N5: TMenuItem;
    Cancel1: TMenuItem;
    procedure btncancelClick(Sender: TObject);
    procedure btnaddvendorClick(Sender: TObject);
    procedure Help1Click(Sender: TObject);
    procedure btnhrlpClick(Sender: TObject);
    procedure DeleteVendor1Click(Sender: TObject);
    procedure AddVendor2Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure btnclearClick(Sender: TObject);
    procedure AddVendor1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaddservice: Tfrmaddservice;

implementation

{$R *.dfm}

procedure Tfrmaddservice.AddVendor1Click(Sender: TObject);
begin
btnaddvendor.Click;
end;

procedure Tfrmaddservice.AddVendor2Click(Sender: TObject);
begin
 frmeditservicevendor.Show;
end;

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
        tblvendor['Vendor_Email2'] := edtcontactemail2.Text;
        tblvendor['Vendor_Contact_Name'] := edtvcname.Text;
        tblvendor['Vendor_Contact_Number'] := edtvsphone.Text;
        tblvendor['Vendor_Address'] := edtvsaddress.Text;
        tblvendor['Vendor_Type'] := cbbvservicet.Text;
        tblvendor['Is_Service'] := 'True';
        //
        tblvendor.Post;
        ShowMessage('Product Vendor Has Been Added Successfully!');
      end
      else
      ShowMessage('There Was An Error Adding A New Service Vendor To The Database , Please Cintact Your Software Developer');
    end;
  end;
end;

procedure Tfrmaddservice.btncancelClick(Sender: TObject);
begin
 //here we will clear all forms and exit the form
 edtvendorname.Text:='';
 edtvscode.Text:='';
 edtvendorname.Text:='';
 edtvsaddress.Text:='';
 edtvsemail.Text:='';
 edtvsphone.Text:='';
 cbbvservicet.Text:='';
 edtcontactemail2.Text:='';
 //
 frmaddservice.Close;
end;

procedure Tfrmaddservice.btnclearClick(Sender: TObject);
begin
 //here we will clear all fields
 edtvendorname.Text:='';
 edtvscode.Text:='';
 edtvendorname.Text:='';
 edtvsaddress.Text:='';
 edtvsemail.Text:='';
 edtvsphone.Text:='';
 cbbvservicet.Text:='';
 edtcontactemail2.Text:='';
end;

procedure Tfrmaddservice.btnhrlpClick(Sender: TObject);
begin
 Help1.Click; // to avoid duplcaiting the code
end;

procedure Tfrmaddservice.Cancel1Click(Sender: TObject);
begin
 btncancel.Click;
end;

procedure Tfrmaddservice.DeleteVendor1Click(Sender: TObject);
begin
 //here we are going to code a form that will allow the user to search by
 //vendor name or vendor code to delete them
 frmdeleteservicevendor.ShowModal;
end;

procedure Tfrmaddservice.Exit1Click(Sender: TObject);
begin
 frmaddservice.Close;
end;

procedure Tfrmaddservice.FormShow(Sender: TObject);
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

procedure Tfrmaddservice.Help1Click(Sender: TObject);
begin
 var
 PDFFilename:String;
 begin
  //here we will shell execute the pdf to open
  PDFFileName := ExtractFileDir(Application.ExeName) + '\Bin\M_Add_Service_Vendor.pdf'; //replace this with the help file
  ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
  //
 end;
end;

end.
