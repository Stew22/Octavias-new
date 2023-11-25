unit frm_edit_Vendors_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus,Vcl.Imaging.GIFImg,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, DM_Vendors,Winapi.ShellAPI;

type
  Tfrmeditservicevendor = class(TForm)
    pnl1: TPanel;
    mm1: TMainMenu;
    File1: TMenuItem;
    N1: TMenuItem;
    DeleteVendor1: TMenuItem;
    N2: TMenuItem;
    Exit1: TMenuItem;
    Exit2: TMenuItem;
    il1: TImageList;
    btnhelp: TButton;
    pnl2: TPanel;
    pnl3: TPanel;
    edtevcname: TEdit;
    edtevaddress: TEdit;
    edtevemail: TEdit;
    edtevcnum: TEdit;
    lblVendor: TLabel;
    lblVendor1: TLabel;
    lblVendor2: TLabel;
    lblVendor3: TLabel;
    lblVendor4: TLabel;
    lblVendor5: TLabel;
    btnsave: TButton;
    btnclearfields: TButton;
    btncancel: TButton;
    edtedtervicetype: TEdit;
    lblVendor6: TLabel;
    lblVendor7: TLabel;
    cbbevname: TComboBox;
    cbbevcode: TComboBox;
    procedure btnhelpClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnclearfieldsClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure cbbevnameChange(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure DeleteVendor1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmeditservicevendor: Tfrmeditservicevendor;

implementation

{$R *.dfm}

procedure Tfrmeditservicevendor.btncancelClick(Sender: TObject);
begin
 btnclearfields.Click;
 frmeditservicevendor.Close;  //closes the form after clearing the fields
end;

procedure Tfrmeditservicevendor.btnclearfieldsClick(Sender: TObject);
begin
//here we will clear all the fields
 cbbevname.Clear;
 cbbevcode.Clear;
 edtevcname.Clear;
 edtevaddress.Clear;
 edtevemail.Clear;
 edtevcnum.Clear;
 edtedtervicetype.Clear;
end;

procedure Tfrmeditservicevendor.btnhelpClick(Sender: TObject);
var
PDFFilename:String;
begin
 //here we will shell execute the pdf to open
 PDFFileName := ExtractFileDir(Application.ExeName) + '\Bin\M_Edit_Service_Vendor.pdf'; //replace this with the help file
 ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
end;

procedure Tfrmeditservicevendor.btnsaveClick(Sender: TObject);
begin
 with Datamodulevendor do
 begin
   if tblvendor.Active = True then
   begin
     if tblvendor.Filtered = True then
     begin
      if (cbbevname.Text = '') or (cbbevcode.Text = '') or (edtevcname.Text = '') or
      (edtevemail.Text = '') or (edtevcnum.Text = '') or (edtevaddress.Text = '') or
      (edtedtervicetype.Text  = '') then
      begin
       ShowMessage('You Can Not Leave One Or More Fields Empty ! , Please Try Again');
       Exit;
      end else
      begin
       //here we will need to add in some checking to make sure that the fields
       //are not blank when posting edits
       tblvendor.Edit;
       //
       tblvendor['Vendor_Name']:=cbbevname.Text;
       tblvendor['Vendor_Code']:=cbbevcode.Text;
       tblvendor['Vendor_Contact_Number']:=edtevcnum.Text;
       tblvendor['Vendor_Email']:=edtevemail.Text;
       tblvendor['Vendor_Address']:=edtevaddress.Text;
       tblvendor['Vendor_Type']:=edtedtervicetype.Text;
       tblvendor['Vendor_Contact_Name']:=edtevcname.Text;
       //
       tblvendor.Post;
       //
       ShowMessage('The Changes Have Been Successfully Posted !');
       //
       btnclearfields.Click; // clears all the fields
       //now we can disable the fields again
       cbbevcode.Enabled:=False;
       edtevcname.Enabled:=False;
       edtevcnum.Enabled:=False;
       edtevemail.Enabled:=False;
       edtevaddress.Enabled:=False;
       edtedtervicetype.Enabled:=False;
      end;
     end;
   end;
 end;
end;

procedure Tfrmeditservicevendor.cbbevnameChange(Sender: TObject);
begin
 //here we are going to check if the user has selected a vendor name
 //if this is true then we are going to enable the fields and also then
 //pre populate the edits and comboboxes with the data already stored
 with Datamodulevendor do
 begin
  if tblvendor.Active = True then
  begin
   //here we are going to pre populate the data with what the user has selected
   //
   if cbbevname.Text <> '' then
   begin
    tblvendor.Filtered:=False;
    tblvendor.Filter:='Vendor_Name = ' + QuotedStr(cbbevname.Text);
    tblvendor.Filtered:=True;
    //
    //now we populate the fields with data we have already stored
    //
    cbbevcode.Text:=tblvendor.FieldByName('Vendor_Code').AsString;
    edtevcnum.Text:=tblvendor.FieldByName('Vendor_Contact_Number').AsString;
    edtevcname.Text:=tblvendor.FieldByName('Vendor_Contact_Name').AsString;
    edtevemail.Text:=tblvendor.FieldByName('Vendor_Email').AsString;
    edtevaddress.Text:=tblvendor.FieldByName('Vendor_Address').AsString;
    edtedtervicetype.Text:=tblvendor.FieldByName('Vendor_Type').AsString;
    //now we allow the use to make there changes
    //
    //we will also need to check that the use ris not removing any data and then
    //trying to post that to the database
    //
    //here we will now need to enable all the fields , allow the user to make there
    //changes , check that there are no empty fields
    //then post the changes and provide a confirmation message
    //
     cbbevcode.Enabled:=True;
     edtevcname.Enabled:=True;
     edtevcnum.Enabled:=True;
     edtevemail.Enabled:=True;
     edtevaddress.Enabled:=True;
     edtedtervicetype.Enabled:=True;
     //
   end else
   begin
    //here the user has not selected anything so do nothing , or we make sure
    //the database is at the first row and that there ar no filters appled
   end;
  end else
  begin
   ShowMessage('There Was An Error Contacting The Database , Please Contact The Software Administrator');
  end;
 end;
end;

procedure Tfrmeditservicevendor.DeleteVendor1Click(Sender: TObject);
begin
 btnsave.Click;
end;

procedure Tfrmeditservicevendor.Exit1Click(Sender: TObject);
begin
 btnclearfields.Click;
 frmeditservicevendor.Close;
end;

procedure Tfrmeditservicevendor.FormActivate(Sender: TObject);
var
  i: Integer;
  Vname_Temp,VCode_Temp:string;
begin
 //we first clear all the combo boxes
 //then we will populate the vendor name fields and the vendor code fields
 //once we jhave populated the fields we will need to check whether the user has selected the vendor name or code
 //pre populate the data into the fields , make the changes then we will confirm with the user if they would like to keep
 //the changes made to the fields
  //
  cbbevcode.Enabled:=False;
  edtevcnum.Enabled:=False;
  edtevcname.Enabled:=False;
  edtevaddress.Enabled:=False;
  edtedtervicetype.Enabled:=False;
  edtevemail.Enabled:=False;
  //when we start the form the forms will be disabled untill the user selects the vendor name , then it will populatge the fields and enable them

    with DataModuleVendor do
    begin
      // Check if the dataset is active
      if tblvendor.Active then
      begin
        tblvendor.First; // Move to the first record
        // Check for existing vendors
        while not tblvendor.Eof do
        begin
         //here we are going to pupulate the combo boxes for the vendor name and code
         //
         Vname_Temp:=tblvendor.FieldByName('Vendor_Name').AsString;
          if cbbevname.Items.IndexOf(VName_Temp) = -1 then
           begin
            cbbevname.Items.Add(VName_Temp);
            tblvendor.Next;
           end else
           begin
            //then it is a duplicate and we will move to the next record
            tblvendor.Next;
           end;
        end;
      end
      else
     ShowMessage('The dataset is not active or closed.');
    end;
  end;
end.