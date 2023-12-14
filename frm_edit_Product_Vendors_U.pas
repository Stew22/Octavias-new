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
    procedure FormActivate(Sender: TObject);
    procedure btnclearClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure btneditvendorClick(Sender: TObject);
    procedure Help1Click(Sender: TObject);
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
 cbbevpname.Clear;
 edtvemail.Clear;
 edtvaddress.Clear;
 cbbevpcode.Clear;
 edtvcontactname.Clear;
 edtvcontactphone.Clear;
 cbbvendortype.Clear;
end;

procedure Tfrmeditproductvendor.btneditvendorClick(Sender: TObject);
begin
 //once all the edits have been made , check that no fields
 //except the vendor code are empty
 //then we can publish the changes
end;

procedure Tfrmeditproductvendor.btnhelpClick(Sender: TObject);
 var
 PDFFilename:String;
begin
  //here we will shell execute the pdf to open
  PDFFileName := ExtractFileDir(Application.ExeName) + '\Bin\M_Delete_Product.pdf'; //replace this with the help file
  ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
  //
end;

procedure Tfrmeditproductvendor.Cancel1Click(Sender: TObject);
begin
 btncancel.Click;
end;

procedure Tfrmeditproductvendor.Cancel2Click(Sender: TObject);
begin
  cbbevpname.Clear;
 edtvemail.Clear;
 edtvaddress.Clear;
 cbbevpcode.Clear;
 edtvcontactname.Clear;
 edtvcontactphone.Clear;
 cbbvendortype.Clear;
 //close the form
 frmeditproductvendor.Close;
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
begin
 with Datamodulevendor do
 begin
  if tblvendor.Active = True then
  begin
   //here we will populate the combo boxes of vname , and vendor code
   //then once the user has selected them we can then copy all the data to
   //fill in all the other fields
   //
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