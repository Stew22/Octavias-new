unit frm_Delete_Service_Vendor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Menus, DM_Vendors , frm_View_Vendors_U,Winapi.ShellAPI,
  DM_Products,DM_Order;

type
  Tfrmdeleteservicevendor = class(TForm)
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    DeleteVendor1: TMenuItem;
    DeleteVendor2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    il1: TImageList;
    pnl1: TPanel;
    pnl2: TPanel;
    cbbvdname: TComboBox;
    lbl1: TLabel;
    btnviewvendor: TButton;
    lbl2: TLabel;
    btnhelp: TButton;
    pnl3: TPanel;
    btndeletevendor: TButton;
    btcancel: TButton;
    Cancel1: TMenuItem;
    N3: TMenuItem;
    procedure btnviewvendorClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
    procedure btndeletevendorClick(Sender: TObject);
    procedure DeleteVendor2Click(Sender: TObject);
    procedure DeleteVendor1Click(Sender: TObject);
    procedure File2Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure btcancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdeleteservicevendor: Tfrmdeleteservicevendor;

implementation

{$R *.dfm}

procedure Tfrmdeleteservicevendor.btcancelClick(Sender: TObject);
begin
 //here we are going to cancel the operation
 cbbvdname.Clear;
 frmdeleteservicevendor.Close;
end;

procedure Tfrmdeleteservicevendor.btndeletevendorClick(Sender: TObject);
begin
 if cbbvdname.Text = '' then
 begin
  ShowMessage('Please Select A Vendor Name');
 end else
 begin
  with Datamodulevendor do
  begin
    if tblvendor.Active = True then
    begin
     tblvendor.Filtered:=False;
     tblvendor.Filter:='Vendor_Name = ' + QuotedStr(cbbvdname.Text);
     tblvendor.Filtered:=True;
     //
     tblvendor.Delete;
     //
     //remeber here we will also need to remove all the produts correlated to the vendor ,
     //from both the orders table and the products table
      with DataModuleProducts do
      begin
       with Datamoduleorder do
       begin
        if tblproducts.Active = true then
        begin
         if tblorder.Active = True then
         begin
          //here we will confirm with the user if we can delete the products aswell
          //
          //loop through the orders and the product vendors table to delete all associated products with the vendor
          tblorder.First;
          //
          while not tblorder.Eof do
          begin
           //code here
           if tblorder.FieldByName('Vendor_Name').AsString = cbbvdname.Text then
           begin
            //here we will want to delete the record
            tblorder.Delete;
           end else
           begin
             tblorder.Next;
           end;
          end;
          //
          tblproducts.First;
          //
          while not tblproducts.Eof do
          begin
           //code here
           if tblproducts.FieldByName('Vendor_Name').AsString = cbbvdname.Text then
           begin
            tblproducts.Delete; //deletes the record
           end else
           begin
            tblproducts.Next;
           end;
          end;
         end else
         begin
          ShowMessage('There Was An Error Connecting To The Orders Database , Please Contact Your Software Developer');
         end;
        end else
        begin
         ShowMessage('There Was An Error Connecting To The Products Database , Please Contact Your Software Developer');
        end;
       end;
      end;
     //
     ShowMessage('Vendor Has Been Succesfully Removed');
     //
     tblvendor.Filtered:=False;
     tblvendor.Filter:='';
    end;
  end;
 end;
end;

procedure Tfrmdeleteservicevendor.btnhelpClick(Sender: TObject);
 var
 PDFFilename:String;
begin
  //here we will shell execute the pdf to open
  PDFFileName := ExtractFileDir(Application.ExeName) + '\Bin\M_Delete_Service_Vendor.pdf'; //replace this with the help file
  ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
  //
end;

procedure Tfrmdeleteservicevendor.btnviewvendorClick(Sender: TObject);
begin
 //here we can geenrate a list of all service vendors and display it to the user
 frmViewVendors.ShowModal;
end;

procedure Tfrmdeleteservicevendor.Cancel1Click(Sender: TObject);
begin
 btcancel.Click;
end;

procedure Tfrmdeleteservicevendor.DeleteVendor1Click(Sender: TObject);
begin
 btndeletevendor.Click;
end;

procedure Tfrmdeleteservicevendor.DeleteVendor2Click(Sender: TObject);
begin
 Cancel1.Click;
 frmdeleteservicevendor.Close;
end;

procedure Tfrmdeleteservicevendor.File2Click(Sender: TObject);
begin
 btnhelp.Click;
end;

procedure Tfrmdeleteservicevendor.FormActivate(Sender: TObject);
 var
 Vname_Temp:String;
begin
 with Datamodulevendor do
 begin
   if convendor.Connected = True then
   begin
    convendor.Connected:=False; //disconnect a previous session
   end else
   begin
    //here we will connect the database
    convendor.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;' +
    'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\Vendor_Database.accdb' +
    ';Mode=ReadWrite;Persist Security Info=False';
    //
    tblvendor.TableName:='tblvendors';
    //
    convendor.Connected:=True;
    tblvendor.Active:=True;
    tblvendor.First; //here we go to the first value
    //
    //now we loop through the users and populate the users field
    //
    while not tblvendor.Eof do
    begin
     Vname_Temp:=tblvendor.FieldByName('Vendor_Name').AsString;
     //
     if (tblvendor.FieldByName('Is_Service').AsString = 'True') and (cbbvdname.Items.IndexOf(VName_Temp) = -1) then
     begin
      cbbvdname.Items.Add(VName_Temp);
      tblvendor.Next;
     end else
     begin
      //then it is a duplicate and we will move to the next record
      tblvendor.Next;
     end;
    end;
   end;
 end;
end;

end.
