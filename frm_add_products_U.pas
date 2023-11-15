unit frm_add_products_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls;

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
    procedure Exit1Click(Sender: TObject);
    procedure btnclearClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnaddproductClick(Sender: TObject);
    procedure cbbseccatChange(Sender: TObject);
    procedure cbbmaincatChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaddproducts: Tfrmaddproducts;

implementation

{$R *.dfm}

procedure Tfrmaddproducts.btnaddproductClick(Sender: TObject);
begin
 //here we will check if all the fields have values before enabling the button
end;

procedure Tfrmaddproducts.btnclearClick(Sender: TObject);
begin
 edtpcode.Clear;
 edtpdisc.Clear;
 edtbprice.Clear;
 edtdefqty.Clear;
 btnaddproduct.Enabled:=False;
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

procedure Tfrmaddproducts.Exit1Click(Sender: TObject);
begin
frmaddproducts.Close; //closes the form
end;

procedure Tfrmaddproducts.FormActivate(Sender: TObject);
begin
 btnaddproduct.Enabled:=False;
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
end;

end.
