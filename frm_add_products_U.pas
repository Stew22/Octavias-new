unit frm_add_products_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls,DM_Products,Winapi.ShellAPI,DM_Order,DM_Vendors;

type
  Tfrmaddproducts = class(TForm)
    pnl1: TPanel;
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    AddProduct1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Exit1: TMenuItem;
    il1: TImageList;
    pnl2: TPanel;
    edtpcode: TEdit;
    edtpdisc: TEdit;
    edtbprice: TEdit;
    cbbvendor: TComboBox;
    edtdefqty: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    pnl3: TPanel;
    btnaddproduct: TButton;
    btnclear: TButton;
    btncancel: TButton;
    cbbmaincat: TComboBox;
    cbbseccat: TComboBox;
    cbbtercat: TComboBox;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    btnhelp: TButton;
    N3: TMenuItem;
    ClearFields1: TMenuItem;
    BulkAdd1: TMenuItem;
    lbl10: TLabel;
    edtpriceinc: TEdit;
    lbl11: TLabel;
    edtminorder: TEdit;
    lbl12: TLabel;
    edtrrp: TEdit;
    lbl13: TLabel;
    edtleadtimedays: TEdit;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    AddProduct2: TMenuItem;
    N7: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure btnclearClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnaddproductClick(Sender: TObject);
    procedure cbbseccatChange(Sender: TObject);
    procedure cbbmaincatChange(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
    procedure File2Click(Sender: TObject);
    procedure ClearFields1Click(Sender: TObject);
    procedure edtbpriceChange(Sender: TObject);
    procedure edtdefqtyChange(Sender: TObject);
    procedure AddProduct2Click(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaddproducts: Tfrmaddproducts;

implementation

{$R *.dfm}

procedure Tfrmaddproducts.AddProduct2Click(Sender: TObject);
begin
 btnaddproduct.Click; // to avoid having to duplicate the code
end;

procedure Tfrmaddproducts.btnaddproductClick(Sender: TObject);
begin
 //here we will check if all the fields have values before enabling the button
 //here we will also need to check first if the products database is connected , if it isnt
 //then we will connect it then we will add the fields to the database provided that they meet the requirements
 //
 with DataModuleProducts do
 begin
  //first we will make sure that the database is connected
  if conproducts.Connected = True then
  begin
   //here the database is connected now we can perform our operations
   if (edtpcode.Text = '') or (edtpdisc.Text ='') or (edtbprice.Text = '') or
    (edtpriceinc.Text = '') or (edtrrp.Text = '') or (edtdefqty.Text  = '') or
    (edtminorder.Text = '') or (cbbvendor.Text = '') or (cbbmaincat.Text = '')
    or (cbbseccat.Text = '') or (edtleadtimedays.Text = '')then
   begin
    // above we are checking to make sure that all the relevant fields have the data in them // we will just need to check how we are going to check for the tertiary cat
    ShowMessage('One Or More Of The Fields Have Been Left Empty ! , Please Try Again !');
    //see if we must set the colors ?
    cbbvendor.SetFocus;
   end else
   begin
    //here all the fields have values
    tblproducts.Insert;
    tblproducts['Item_Number']:=edtpcode.Text;
    tblproducts['Item_Discription']:=edtpdisc.Text;
    tblproducts['Size']:=edtdefqty.Text;
    tblproducts['Min_Order_Qty']:=edtminorder.Text;
    tblproducts['Most_Recent_Cost_Excl_Vat']:=edtbprice.Text;
    tblproducts['Most_Recent_Cost_Inc_Vat']:=edtpriceinc.Text;
    tblproducts['RRP']:=edtrrp.Text;
    //add leadtime days
    tblproducts['Vendor_Name']:=cbbvendor.Text;
    tblproducts['Main_Category']:=cbbmaincat.Text;
    tblproducts['Secondary_Category']:=cbbseccat.Text;
    tblproducts['Tertiary_Category']:=cbbtercat.Text;
    tblproducts['Lead_Time_Days']:=edtleadtimedays.Text;
    //
    //post the data to the database now
    tblproducts.Post;
    //with the other datamodule add to the orders page aswell
    with Datamoduleorder do
    begin
     if tblorder.Active = True then
     begin
      tblorder.Insert;
      tblorder['Vendor_Name']:=cbbvendor.Text;
      tblorder['Item_Number']:=edtpcode.Text;
      tblorder['Item Discription']:=edtpdisc.Text;
      tblorder['Price']:=edtpriceinc.Text;
      tblorder['Main_Category']:=cbbmaincat.Text;
      tblorder['Secondary_Category']:=cbbseccat.Text;
      tblorder['Tertiary_Category']:=cbbtercat.Text;
      tblorder.Post;
      //
     end else
     begin
      ShowMessage('There Was An Error Connecting To The Orders Database , Please Contact Your System Developer');
     end;
    end;
    //
    ShowMessage('The Product Has Been Added To The Catalogue Successfully !');
    btnclear.Click; //here we will clear all fields
   end;
  end else
  begin
   ShowMessage('There Was An Error Connecting To The Products Database , Please Contact The System Administrator ');
  end;
 end;
end;

procedure Tfrmaddproducts.btncancelClick(Sender: TObject);
begin
 Exit1.Click; // so we dont have to duplicate the code
end;

procedure Tfrmaddproducts.btnclearClick(Sender: TObject);
begin
 edtpcode.Clear;
 edtpdisc.Clear;
 edtbprice.Text := '0';
 edtdefqty.Clear;
 cbbtercat.Text:='';
 cbbmaincat.Text:='';
 cbbseccat.Text:='';
 edtleadtimedays.Clear;
 edtrrp.Clear;
 cbbvendor.Text:='';
 //we need to add in the rest of the fields
 btnaddproduct.Enabled:=False;
end;

procedure Tfrmaddproducts.btnhelpClick(Sender: TObject);
var
PDFFilename:String;
begin
 //here we will shell execute the pdf to open
 PDFFileName := ExtractFileDir(Application.ExeName) + '\Bin\M_Add_Product.pdf'; //replace this with the help file
 ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
 //
end;

procedure Tfrmaddproducts.cbbmaincatChange(Sender: TObject);
begin
 if cbbmaincat.Text = 'Body' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Professional');
  cbbseccat.Items.Add('Retail');
 end else
 if cbbmaincat.Text = 'Skin Care' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Professional');
  cbbseccat.Items.Add('Retail');
 end else
 if cbbmaincat.Text = 'Nails Care' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Professional');
  cbbseccat.Items.Add('Retail');
 end else
 if cbbmaincat.Text = 'Waxing' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Professional');
  cbbseccat.Items.Add('Retail');
 end else
 if cbbmaincat.Text = 'Make-up' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Professional');
  cbbseccat.Items.Add('Retail');
 end else
 if cbbmaincat.Text = 'Supplements' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Retail');
 end else
 if cbbmaincat.Text = 'Hair' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Professional');
  cbbseccat.Items.Add('Retail');
 end else
 if cbbmaincat.Text = 'Linen' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Professional');
 end else
 if cbbmaincat.Text = 'Gowns' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Professional');
  cbbseccat.Items.Add('Retail');
 end else
 if cbbmaincat.Text = 'Footwear' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Professional');
  cbbseccat.Items.Add('Retail');
 end else
 if cbbmaincat.Text = 'Maintenance Services' then
 begin
  cbbseccat.Clear;
 end else
 if cbbmaincat.Text = 'Cleaning' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Implements');
  cbbseccat.Items.Add('Detergents');
 end else
 if cbbmaincat.Text = 'Consumables' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Treatment Rooms');
  cbbseccat.Items.Add('Guest Area');
 end else
 if cbbmaincat.Text = 'Food & Beverage' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Cutlery');
  cbbseccat.Items.Add('Crockery');
  cbbseccat.Items.Add('Utensils');
  cbbseccat.Items.Add('Fruit');
  cbbseccat.Items.Add('Vegtables');
  cbbtercat.Clear;
 end else
 if cbbmaincat.Text = 'Packaging' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Retail Bags');
  cbbseccat.Items.Add('Boxes');
  cbbseccat.Items.Add('Ribbons');
  cbbseccat.Items.Add('Courier Bags');
  cbbseccat.Items.Add('Courier Stickers');
  cbbtercat.Clear;
 end else
 if cbbmaincat.Text = 'Stationery' then
 begin
  cbbseccat.Clear;
  cbbseccat.Items.Add('Guest');
  cbbseccat.Items.Add('Office');
  cbbtercat.Clear;
 end;
 //here we will need to check the logic for the enablining of the button
 //
 btnaddproduct.Enabled:=True;
end;

procedure Tfrmaddproducts.cbbseccatChange(Sender: TObject);
begin
 if (cbbmaincat.Text = 'Body') then
 begin
  if (cbbseccat.Text = 'Professional') or (cbbseccat.Text = 'Retail') then
  begin
    cbbtercat.Clear;
    cbbtercat.Items.Add('Massage Oil');
    cbbtercat.Items.Add('Mud & Wraps');
    cbbtercat.Items.Add('Exfoliator');
    cbbtercat.Items.Add('Body Butter');
    cbbtercat.Items.Add('Body Lotions');
    cbbtercat.Items.Add('Cleansers');
    cbbtercat.Items.Add('Treatments');
    cbbtercat.Items.Add('Implements');
    cbbtercat.Items.Add('Devices');
    cbbtercat.Items.Add('Consumables');
  end;
 end else
 if (cbbmaincat.Text = 'Skin Care') then
 begin
   if (cbbseccat.Text = 'Professional') or (cbbseccat.Text = 'Retail') then
   begin
    cbbtercat.Clear;
    cbbtercat.Items.Add('Cleansers');
    cbbtercat.Items.Add('Toners');
    cbbtercat.Items.Add('Masks');
    cbbtercat.Items.Add('Exfoliators');
    cbbtercat.Items.Add('Moisturisers');
    cbbtercat.Items.Add('Serums');
    cbbtercat.Items.Add('Sun Blocks');
    cbbtercat.Items.Add('Ampoules');
    cbbtercat.Items.Add('Implements');
    cbbtercat.Items.Add('Devices');
    cbbtercat.Items.Add('Consumables');
   end;
 end else
 if cbbseccat.Text = 'Nails Care' then
 begin
   if(cbbseccat.Text = 'Professional') or (cbbseccat.Text = 'Retail') then
   begin
    cbbtercat.Clear;
    cbbtercat.Items.Add('Nail Polish');
    cbbtercat.Items.Add('Gels');
    cbbtercat.Items.Add('Tips');
    cbbtercat.Items.Add('Consumables');
   end;
 end else
 if cbbseccat.Text = 'Waxing' then
 begin
   if (cbbseccat.Text = 'Professional') or (cbbseccat.Text = 'Retail') then
   begin
    cbbtercat.Clear;
    cbbtercat.Items.Add('Implements');
    cbbtercat.Items.Add('Wax');
    cbbtercat.Items.Add('Consumables');
   end;
 end else
 if cbbseccat.Text = 'Make-up' then
 begin
   if (cbbseccat.Text = 'Professional') or (cbbseccat.Text = 'Retail') then
   begin
    cbbtercat.Clear;
   end;
 end else
 if cbbseccat.Text = 'Supplements' then
 begin
  if cbbseccat.Text  = 'Retail' then
  begin
   cbbtercat.Clear;
  end;
 end else
 if cbbseccat.Text = 'Hair' then
 begin
  if (cbbseccat.Text = 'Professional') or (cbbseccat.Text = 'Retail') then
  begin
   cbbtercat.Clear;
   cbbtercat.Items.Add('Shampoo');
   cbbtercat.Items.Add('Conditioner');
   cbbtercat.Items.Add('Treatments');
   cbbtercat.Items.Add('Colour');
   cbbtercat.Items.Add('Tints');
   cbbtercat.Items.Add('Tools/Implements');
  end;
 end else
 if cbbseccat.Text = 'Linen' then
 begin
   if cbbseccat.Text = 'Professional' then
   begin
    cbbtercat.Clear;
    cbbtercat.Items.Add('Sheets');
    cbbtercat.Items.Add('Towels');
    cbbtercat.Items.Add('Bath Mats');
   end;
 end else
 if cbbseccat.Text = 'Gowns' then
 begin
   if (cbbseccat.Text = 'Professional') or (cbbseccat.Text = 'Retail') then
   begin
    cbbtercat.Clear;
   end;
 end else
 if cbbseccat.Text = 'Footwear' then
 begin
  if (cbbseccat.Text = 'Professional') or (cbbseccat.Text = 'Retail') then
  begin
   cbbtercat.Clear;
  end;
 end else
 if cbbseccat.Text = 'Maintenance Services' then
 begin
  cbbtercat.Clear;
 end else
 if cbbseccat.Text = 'Cleaning' then
 begin
  cbbtercat.Clear;
 end else
 if cbbseccat.Text = 'Consumables' then
 begin
  if (cbbseccat.Text = 'Treatment Rooms') or (cbbseccat.Text = 'Guest Area') then
  begin
   cbbtercat.Clear;
   cbbtercat.Items.Add('Refils');
  end;
 end else
 if cbbseccat.Text = 'Food & Beverage' then
 begin
  cbbtercat.Clear;
 end else
 if cbbseccat.Text = 'Packaging' then
 begin
  cbbtercat.Clear;
 end else
 if cbbseccat.Text = 'Stationery' then
 begin
  cbbtercat.Clear;
 end;
end;

procedure Tfrmaddproducts.ClearFields1Click(Sender: TObject);
begin
 btnclear.Click; // so we dont have to duplicate the code
end;

procedure Tfrmaddproducts.edtbpriceChange(Sender: TObject);
Var
CalcValue : Double;
begin
 CalcValue := StrToFloat(edtbprice.Text) + (StrToFloat(edtbprice.Text) * 0.15);
 //here we will show the value to the user
 edtpriceinc.Text :=FloatToStr(CalcValue);
end;

procedure Tfrmaddproducts.edtdefqtyChange(Sender: TObject);
begin
 //set the other field as a reference
 edtminorder.Text:= edtdefqty.Text;
end;

procedure Tfrmaddproducts.Exit1Click(Sender: TObject);
begin
 //here we will clear all the fields
 //
 btnclear.Click; // so we dont have to write all the code over
 //
 frmaddproducts.Close; //closes the form
end;

procedure Tfrmaddproducts.File2Click(Sender: TObject);
begin
 btnhelp.Click; //here we will just click the button instead of duplicating the code
end;

procedure Tfrmaddproducts.FormActivate(Sender: TObject);
var
I:integer;
VName_Temp:string;
begin
 btnaddproduct.Enabled:=False;
 //
 cbbvendor.Clear;
 //
 //here we are just going to duplicae the categorys
 cbbmaincat.Items.Add('Body'); //here we will populate main catagories
 cbbmaincat.Items.Add('Skin Care');
 cbbmaincat.Items.Add('Nails Care');
 cbbmaincat.Items.Add('Waxing');
 cbbmaincat.Items.Add('Make-up');
 cbbmaincat.Items.Add('Supplements');
 cbbmaincat.Items.Add('Hair');
 cbbmaincat.Items.Add('Linen');
 cbbmaincat.Items.Add('Gowns');
 cbbmaincat.Items.Add('Footwear');
 cbbmaincat.Items.Add('Maintenance Services');
 cbbmaincat.Items.Add('Cleaning ');
 cbbmaincat.Items.Add('Consumables');
 cbbmaincat.Items.Add('Food & Beverage');
 cbbmaincat.Items.Add('Packaging');
 cbbmaincat.Items.Add('Stationery');
 //here we are going t write the logic that connects to the database
 //
 with Datamodulevendor do
 begin
  if tblvendor.Active = True then
  begin
   //got to first record
   tblvendor.First;
   //
   while not tblvendor.Eof do
    begin
     //here we will need to extract vendor names then check if any duplicates
     VName_Temp:= tblvendor.FieldByName('Vendor_Name').AsString;
     //
     if cbbvendor.Items.IndexOf(VName_Temp) = -1 then
     begin
      cbbvendor.Items.Add(VName_Temp);
      tblvendor.Next;
     end else
     begin
      //then it is a duplicate and we will move to the next record
      tblvendor.Next;
     end;
    end;
  end else
  begin
   ShowMessage('An Error Has Occured Trying To Connect To The Databas , Please Contact Your Software Developer');
  end;
 end;
end;

end.
