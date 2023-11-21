unit frmmain_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Data.DB, Vcl.Grids, Vcl.DBGrids,ExcelXP,ComObj ,frm_Vendors_U ,frm_Stock_managment_U,
  Vcl.StdCtrls ,frmregister_U,frmremoveuser_U,frm_Bookings_U,fm_Help_Widget_U,
  frm_Vendors_Service_U,DM_Vendors,DM_Order,frm_Report_Bug_U,Winapi.ShellAPI,
  frm_Select_Vendor_For_Order_U;

type
  Tfrmmain = class(TForm)
    pnl1: TPanel;
    mm1: TMainMenu;
    File1: TMenuItem;
    RefreshList1: TMenuItem;
    N1: TMenuItem;
    Vendors1: TMenuItem;
    AddVendor1: TMenuItem;
    AddVendor2: TMenuItem;
    N2: TMenuItem;
    DeleteVendor1: TMenuItem;
    N4: TMenuItem;
    Orders1: TMenuItem;
    PlaceOrder1: TMenuItem;
    N5: TMenuItem;
    Exit1: TMenuItem;
    il1: TImageList;
    dlgSave1: TSaveDialog;
    dbgrd1: TDBGrid;
    N6: TMenuItem;
    StockManagment1: TMenuItem;
    pnl2: TPanel;
    cbbvendor: TComboBox;
    cbbcatogories: TComboBox;
    pnl3: TPanel;
    lbl1: TLabel;
    edtsearch: TEdit;
    btnsearch: TButton;
    cbbsubcatagories: TComboBox;
    btnmore: TButton;
    UserManagment1: TMenuItem;
    N7: TMenuItem;
    EditMyDetails1: TMenuItem;
    EditMyDetails2: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    AddUser1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    Bookings1: TMenuItem;
    Support1: TMenuItem;
    Support2: TMenuItem;
    ReportABug1: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    UserManual1: TMenuItem;
    ProductVendor1: TMenuItem;
    ProductVendor2: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N3: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    AddVendor3: TMenuItem;
    AddVendor4: TMenuItem;
    DeleteVendor2: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    RequestSupport1: TMenuItem;
    cbbtertiarycatagory: TComboBox;
    N25: TMenuItem;
    N26: TMenuItem;
    img1: TImage;
    procedure Exit1Click(Sender: TObject);
    procedure AddVendor1Click(Sender: TObject);
    procedure AddVendor2Click(Sender: TObject);
    procedure DeleteVendor1Click(Sender: TObject);
    procedure RefreshList1Click(Sender: TObject);
    procedure StockManagment1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbbcatogoriesChange(Sender: TObject);
    procedure AddUser1Click(Sender: TObject);
    procedure EditMyDetails1Click(Sender: TObject);
    procedure EditMyDetails2Click(Sender: TObject);
    procedure Bookings1Click(Sender: TObject);
    procedure Support2Click(Sender: TObject);
    procedure ReportABug1Click(Sender: TObject);
    procedure UserManual1Click(Sender: TObject);
    procedure RequestSupport1Click(Sender: TObject);
    procedure AddVendor3Click(Sender: TObject);
    procedure btnsearchClick(Sender: TObject);
    procedure btnmoreClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbbsubcatagoriesChange(Sender: TObject);
    procedure PlaceOrder1Click(Sender: TObject);
    procedure cbbvendorChange(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmain: Tfrmmain;

implementation

{$R *.dfm}

procedure Tfrmmain.AddUser1Click(Sender: TObject);
begin
 //here we will show the use registration form
 frmadduser.ShowModal;//only avilible to the admin from here
end;

procedure Tfrmmain.AddVendor1Click(Sender: TObject);
begin
 frmvendors.ShowModal;
end;

procedure Tfrmmain.AddVendor2Click(Sender: TObject);
begin
 frmvendors.ShowModal;
end;

procedure Tfrmmain.AddVendor3Click(Sender: TObject);
begin
 frmaddservice.Showmodal;
end;

procedure Tfrmmain.Bookings1Click(Sender: TObject);
begin
 frmbookings.ShowModal;
end;

procedure Tfrmmain.btnmoreClick(Sender: TObject);
begin
 //move the DB grid down
 //then move the panel
 dbgrd1.Top:= 131 ;
 pnl2.Height:=70;
 //
 cbbtertiarycatagory.Show;
end;

procedure Tfrmmain.btnsearchClick(Sender: TObject);
begin
 // here we will filter the dataset with SQL Like and unique operator
 //here we are going to add in the filter per vendorname
 with Datamoduleorder do
 begin
   if conorder.Connected = True then
   begin
    tblorder.Filtered:=False;
    //tblorder.Filter:='Vendor_Name = ' + QuotedStr(cbbvendor.Text);
    //tblorder.Filtered:=True;
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Database , Please Contact The System Developer');
   end;
 end;
end;

procedure Tfrmmain.cbbcatogoriesChange(Sender: TObject);
begin
 //here we will check if the main catagory has been chnaged , then we
 //will populate the subcatagories
 //we will need to make sure we also update the table accordingly
 //we will need to check what catagories and sub catagories we wil use
 //eg main catagories is beauty , hair etc
 //sub catagories will be beauty - wax , nails , etc
 if cbbcatogories.Text = 'Body' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Professional');
  cbbsubcatagories.Items.Add('Retail');
 end else
 if cbbcatogories.Text = 'Skin Care' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Professional');
  cbbsubcatagories.Items.Add('Retail');
 end else
 if cbbcatogories.Text = 'Nails Care' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Professional');
  cbbsubcatagories.Items.Add('Retail');
 end else
 if cbbcatogories.Text = 'Waxing' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Professional');
  cbbsubcatagories.Items.Add('Retail');
 end else
 if cbbcatogories.Text = 'Make-up' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Professional');
  cbbsubcatagories.Items.Add('Retail');
 end else
 if cbbcatogories.Text = 'Supplements' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Retail');
 end else
 if cbbcatogories.Text = 'Hair' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Professional');
  cbbsubcatagories.Items.Add('Retail');
 end else
 if cbbcatogories.Text = 'Linen' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Professional');
 end else
 if cbbcatogories.Text = 'Gowns' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Professional');
  cbbsubcatagories.Items.Add('Retail');
 end else
 if cbbcatogories.Text = 'Footwear' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Professional');
  cbbsubcatagories.Items.Add('Retail');
 end else
 if cbbcatogories.Text = 'Maintenance Services' then
 begin
  cbbsubcatagories.Clear;
 end else
 if cbbcatogories.Text = 'Cleaning' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Implements');
  cbbsubcatagories.Items.Add('Detergents');
 end else
 if cbbcatogories.Text = 'Consumables' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Treatment Rooms');
  cbbsubcatagories.Items.Add('Guest Area');
 end else
 if cbbcatogories.Text = 'Food & Beverage' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Cutlery');
  cbbsubcatagories.Items.Add('Crockery');
  cbbsubcatagories.Items.Add('Utensils');
  cbbsubcatagories.Items.Add('Fruit');
  cbbsubcatagories.Items.Add('Vegtables');
  cbbtertiarycatagory.Clear;
 end else
 if cbbcatogories.Text = 'Packaging' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Retail Bags');
  cbbsubcatagories.Items.Add('Boxes');
  cbbsubcatagories.Items.Add('Ribbons');
  cbbsubcatagories.Items.Add('Courier Bags');
  cbbsubcatagories.Items.Add('Courier Stickers');
  cbbtertiarycatagory.Clear;
 end else
 if cbbcatogories.Text = 'Stationery' then
 begin
  cbbsubcatagories.Clear;
  cbbsubcatagories.Items.Add('Guest');
  cbbsubcatagories.Items.Add('Office');
  cbbtertiarycatagory.Clear;
 end;
 //here we are going to clear all other filters then apply the new one
  //here we are going to add in the filter per vendorname
 with Datamoduleorder do
 begin
   if conorder.Connected = True then
   begin
    tblorder.Filtered:=False;
    tblorder.Filter:='Vendor_Name = ' + QuotedStr(cbbvendor.Text); //here we need to check
    //how are going to only show some of the fields in the dbgrid for the database
    //so that we can search by catagory aswell
    //tblorder.Filtered:=True;
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Database , Please Contact The System Developer');
   end;
 end;
end;

procedure Tfrmmain.cbbsubcatagoriesChange(Sender: TObject);
begin
 if (cbbcatogories.Text = 'Body') then
 begin
  if (cbbsubcatagories.Text = 'Professional') or (cbbsubcatagories.Text = 'Retail') then
  begin
    cbbtertiarycatagory.Clear;
    cbbtertiarycatagory.Items.Add('Massage Oil');
    cbbtertiarycatagory.Items.Add('Mud & Wraps');
    cbbtertiarycatagory.Items.Add('Exfoliator');
    cbbtertiarycatagory.Items.Add('Body Butter');
    cbbtertiarycatagory.Items.Add('Body Lotions');
    cbbtertiarycatagory.Items.Add('Cleansers');
    cbbtertiarycatagory.Items.Add('Treatments');
    cbbtertiarycatagory.Items.Add('Implements');
    cbbtertiarycatagory.Items.Add('Devices');
    cbbtertiarycatagory.Items.Add('Consumables');
  end;
 end else
 if (cbbcatogories.Text = 'Skin Care') then
 begin
   if (cbbsubcatagories.Text = 'Professional') or (cbbsubcatagories.Text = 'Retail') then
   begin
    cbbtertiarycatagory.Clear;
    cbbtertiarycatagory.Items.Add('Cleansers');
    cbbtertiarycatagory.Items.Add('Toners');
    cbbtertiarycatagory.Items.Add('Masks');
    cbbtertiarycatagory.Items.Add('Exfoliators');
    cbbtertiarycatagory.Items.Add('Moisturisers');
    cbbtertiarycatagory.Items.Add('Serums');
    cbbtertiarycatagory.Items.Add('Sun Blocks');
    cbbtertiarycatagory.Items.Add('Ampoules');
    cbbtertiarycatagory.Items.Add('Implements');
    cbbtertiarycatagory.Items.Add('Devices');
    cbbtertiarycatagory.Items.Add('Consumables');
   end;
 end else
 if cbbcatogories.Text = 'Nails Care' then
 begin
   if  (cbbsubcatagories.Text = 'Professional') or (cbbsubcatagories.Text = 'Retail') then
   begin
    cbbtertiarycatagory.Clear;
    cbbtertiarycatagory.Items.Add('Nail Polish');
    cbbtertiarycatagory.Items.Add('Gels');
    cbbtertiarycatagory.Items.Add('Tips');
    cbbtertiarycatagory.Items.Add('Consumables');
   end;
 end else
 if cbbcatogories.Text = 'Waxing' then
 begin
   if (cbbsubcatagories.Text = 'Professional') or (cbbsubcatagories.Text = 'Retail') then
   begin
    cbbtertiarycatagory.Clear;
    cbbtertiarycatagory.Items.Add('Implements');
    cbbtertiarycatagory.Items.Add('Wax');
    cbbtertiarycatagory.Items.Add('Consumables');
   end;
 end else
 if cbbcatogories.Text = 'Make-up' then
 begin
   if (cbbsubcatagories.Text = 'Professional') or (cbbsubcatagories.Text = 'Retail') then
   begin
    cbbtertiarycatagory.Clear;
   end;
 end else
 if cbbcatogories.Text = 'Supplements' then
 begin
  if cbbsubcatagories.Text  = 'Retail' then
  begin
   cbbtertiarycatagory.Clear;
  end;
 end else
 if cbbsubcatagories.Text = 'Hair' then
 begin
  if (cbbsubcatagories.Text = 'Professional') or (cbbsubcatagories.Text = 'Retail') then
  begin
   cbbtertiarycatagory.Clear;
   cbbtertiarycatagory.Items.Add('Shampoo');
   cbbtertiarycatagory.Items.Add('Conditioner');
   cbbtertiarycatagory.Items.Add('Treatments');
   cbbtertiarycatagory.Items.Add('Colour');
   cbbtertiarycatagory.Items.Add('Tints');
   cbbtertiarycatagory.Items.Add('Tools/Implements');
  end;
 end else
 if cbbsubcatagories.Text = 'Linen' then
 begin
   if cbbsubcatagories.Text = 'Professional' then
   begin
    cbbtertiarycatagory.Clear;
    cbbtertiarycatagory.Items.Add('Sheets');
    cbbtertiarycatagory.Items.Add('Towels');
    cbbtertiarycatagory.Items.Add('Bath Mats');
   end;
 end else
 if cbbsubcatagories.Text = 'Gowns' then
 begin
   if (cbbsubcatagories.Text = 'Professional') or (cbbsubcatagories.Text = 'Retail') then
   begin
    cbbtertiarycatagory.Clear;
   end;
 end else
 if cbbsubcatagories.Text = 'Footwear' then
 begin
  if (cbbsubcatagories.Text = 'Professional') or (cbbsubcatagories.Text = 'Retail') then
  begin
   cbbtertiarycatagory.Clear;
  end;
 end else
 if cbbsubcatagories.Text = 'Maintenance Services' then
 begin
  cbbtertiarycatagory.Clear;
 end else
 if cbbsubcatagories.Text = 'Cleaning' then
 begin
  cbbtertiarycatagory.Clear;
 end else
 if cbbsubcatagories.Text = 'Consumables' then
 begin
  if (cbbsubcatagories.Text = 'Treatment Rooms') or (cbbtertiarycatagory.Text = 'Guest Area') then
  begin
   cbbtertiarycatagory.Clear;
   cbbtertiarycatagory.Items.Add('Refils');
  end;
 end else
 if cbbsubcatagories.Text = 'Food & Beverage' then
 begin
  cbbtertiarycatagory.Clear;
 end else
 if cbbsubcatagories.Text = 'Packaging' then
 begin
  cbbtertiarycatagory.Clear;
 end else
 if cbbsubcatagories.Text = 'Stationery' then
 begin
  cbbtertiarycatagory.Clear;
 end;
 //apply the new filter
  //here we are going to add in the filter per vendorname
 with Datamoduleorder do
 begin
   if conorder.Connected = True then
   begin
    tblorder.Filtered:=False;
    //tblorder.Filter:='Vendor_Name = ' + QuotedStr(cbbvendor.Text);
    //tblorder.Filtered:=True;
    //this will be a combination of the main filter and the secondary filter
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Database , Please Contact The System Developer');
   end;
 end;
end;

procedure Tfrmmain.cbbvendorChange(Sender: TObject);
begin
 //here we are going to add in the filter per vendorname
 with Datamoduleorder do
 begin
   if conorder.Connected = True then
   begin
    tblorder.Filtered:=False;
    tblorder.Filter:='Vendor_Name = ' + QuotedStr(cbbvendor.Text);
    tblorder.Filtered:=True;
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Database , Please Contact The System Developer');
   end;
 end;
end;

procedure Tfrmmain.dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
Var
  w : Integer;
begin
   w := 5+dbgrd1.Canvas.TextExtent(Column.Field.DisplayText).cx;
  if w>column.Width then Column.Width := w;
end;

procedure Tfrmmain.DeleteVendor1Click(Sender: TObject);
begin
 frmvendors.ShowModal;
end;

procedure Tfrmmain.EditMyDetails1Click(Sender: TObject);
begin
 //here we will make  new form and allow the user to update there details
 //also making sure to log the chnages
end;

procedure Tfrmmain.EditMyDetails2Click(Sender: TObject);
begin
 //here only the admin will be aable to remove user
 //after providing the admin username and password
 //here we will make a new form
 frmremoveuser.ShowModal;
end;

procedure Tfrmmain.Exit1Click(Sender: TObject);
begin
frmmain.Close;
end;

procedure Tfrmmain.FormActivate(Sender: TObject);
var
I,J:Integer;
begin
 cbbvendor.Clear;
 cbbcatogories.Clear;
 cbbcatogories.Clear;
 //here we will populate the vendors from the vendor list database
 cbbcatogories.Items.Add('Body'); //here we will populate main catagories
 cbbcatogories.Items.Add('Skin Care');
 cbbcatogories.Items.Add('Nails Care');
 cbbcatogories.Items.Add('Waxing');
 cbbcatogories.Items.Add('Make-up');
 cbbcatogories.Items.Add('Supplements');
 cbbcatogories.Items.Add('Hair');
 cbbcatogories.Items.Add('Linen');
 cbbcatogories.Items.Add('Gowns');
 cbbcatogories.Items.Add('Footwear');
 cbbcatogories.Items.Add('Maintenance Services');
 cbbcatogories.Items.Add('Cleaning ');
 cbbcatogories.Items.Add('Consumables');
 cbbcatogories.Items.Add('Food & Beverage');
 cbbcatogories.Items.Add('Packaging');
 cbbcatogories.Items.Add('Stationery');
 //then we will populate the subcatagories
 //
 //
 //here we will also need to check what user premissions have been allocated from the user
 //then we can enable the relevant forms
 dbgrd1.Top:=106;
 dbgrd1.Height:=608;
 pnl2.Height:=45;
 //
 cbbtertiarycatagory.Hide;
 //
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
    for I := 0 to tblvendor.RecordCount -1 do
      begin
        cbbvendor.Items.Add(tblvendor.FieldByName('Vendor_Name').AsString);
      end;
    //
   end;
 end;
 //here we will connect the DB Grid to the main screen to display the products
  with datamoduleorder do
  begin
    if not conorder.Connected then
    begin
      // Connect to the database
      conorder.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;' +
        'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\Order_Database.accdb' +
        ';Mode=ReadWrite;Persist Security Info=False';

      tblorder.TableName := 'tblorder';
      conorder.Connected := True;
      tblorder.Active := True;
      tblorder.First;
      // Populate user fields or any other necessary initializations
    end;
  end;
  for J := 0 to dbgrd1.Columns.Count - 1 do
   dbgrd1.Columns[J].Width := 5 + dbgrd1.Canvas.TextWidth(dbgrd1.Columns[J].title.caption);
end;

procedure Tfrmmain.FormPaint(Sender: TObject);
var
  Rect: TRect;
  DestRect: TRect;
begin

end;

procedure Tfrmmain.PlaceOrder1Click(Sender: TObject);
begin
 frmselectvendorfororder.ShowModal; //here we will ask the user to select
 //the vendor that they will generate the order for
end;

procedure Tfrmmain.RefreshList1Click(Sender: TObject);
begin
 //here we will refresh the list from the database and add it to the db grid
 //

end;

procedure Tfrmmain.ReportABug1Click(Sender: TObject);
begin
//here we will allow the users to report a bug
 frmeportbug.ShowModal;
end;

procedure Tfrmmain.RequestSupport1Click(Sender: TObject);
begin
 frmhelp.ShowModal;
end;

procedure Tfrmmain.StockManagment1Click(Sender: TObject);
begin
 frmstockmanagement.ShowModal;
end;

procedure Tfrmmain.Support2Click(Sender: TObject);
begin
 //here we will allow the user to request a feature

end;

procedure Tfrmmain.UserManual1Click(Sender: TObject);
var
PDFFilename:String;
begin
 //here we will shell execute the pdf to open
 PDFFileName := 'C:\Path\To\YourPDFFile.pdf'; //replace this with the help file
 ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);

end;
end.
