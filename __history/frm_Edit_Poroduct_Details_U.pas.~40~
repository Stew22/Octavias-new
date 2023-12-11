unit frm_Edit_Poroduct_Details_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList,DM_Products,Winapi.ShellAPI;

type
  Tfrmeditproductdetails = class(TForm)
    il1: TImageList;
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    Cancel1: TMenuItem;
    Cancel2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Help1: TMenuItem;
    pnl1: TPanel;
    lbl1: TLabel;
    pnl2: TPanel;
    pnl3: TPanel;
    btnsaveedits: TButton;
    btncancel: TButton;
    btnexit: TButton;
    cbbeditvendor: TComboBox;
    edteditproductsku: TEdit;
    edteditproductdisc: TEdit;
    edtpriceinc: TEdit;
    edtpriceexc: TEdit;
    edteditrrp: TEdit;
    edteditdeforderqty: TEdit;
    edteditminorderqty: TEdit;
    edteditleadtime: TEdit;
    cbbeditmaincat: TComboBox;
    cbbeditseccat: TComboBox;
    lbl10: TLabel;
    lbl8: TLabel;
    lbl7: TLabel;
    lbl6: TLabel;
    lbl5: TLabel;
    lbl4: TLabel;
    lbl3: TLabel;
    lbl2: TLabel;
    lbl13: TLabel;
    lbl12: TLabel;
    lbl11: TLabel;
    lbl14: TLabel;
    cbbtercat: TComboBox;
    btnhelp: TButton;
    btnsearch: TButton;
    procedure btnexitClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
    procedure btnsearchClick(Sender: TObject);
    procedure btnsaveeditsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmeditproductdetails: Tfrmeditproductdetails;

implementation

{$R *.dfm}

procedure Tfrmeditproductdetails.btncancelClick(Sender: TObject);
begin
 //here we will clear all fields
 //remove the filter off the database
end;

procedure Tfrmeditproductdetails.btnexitClick(Sender: TObject);
begin
 //here we will clear all the edits and close the form
 //
 cbbeditvendor.Enabled:=False;
 edtpriceinc.Enabled:=False;
 edteditproductdisc.Enabled:=False;
 edtpriceexc.Enabled:=False;
 edteditrrp.Enabled:=False;
 edteditdeforderqty.Enabled:=False;
 edteditminorderqty.Enabled:=True;
 cbbeditmaincat.Enabled:=False;
 cbbeditseccat.Enabled:=False;
 cbbtercat.Enabled:=False;
 //
 with DataModuleProducts do
 begin
   if tblproducts.Active = True then
   begin
     tblproducts.Filtered:=False;
     tblproducts.Filter:='';
   end;
 end;
 //
 frmeditproductdetails.Close;
end;

procedure Tfrmeditproductdetails.btnhelpClick(Sender: TObject);
begin
 //here we will open the help pdf
end;

procedure Tfrmeditproductdetails.btnsaveeditsClick(Sender: TObject);
begin
 //here we will check that there is no empty fields
 //then upblish the edits
 if (cbbeditvendor.Text = '') or (edtpriceinc.Text = '') or (edteditproductdisc.Text = '') or
 (edtpriceexc.Text = '') or (edteditrrp.Text = '') or (edteditdeforderqty.Text = '') or
 (edteditminorderqty.Text = '') or (cbbeditmaincat.Text = '') or (cbbeditseccat.Text = '') then
 begin
  ShowMessage('You Can Not Leave Any Of The Fields Blank , Please try Again');
 end else
 begin
  with DataModuleProducts do
  begin
    if tblproducts.Active = True then
    begin
      //here we will make the edits
      tblproducts.Filter:='Item_Number = ' + QuotedStr(edteditproductsku.Text);
      //here we need to check that it exists
      tblproducts.Filtered:=True;
      //
      tblproducts.Edit;
      //
      tblproducts['Vendor_Name']:=cbbeditvendor.Text;
      tblproducts['Item_Code']:=edteditleadtime.Text;
      tblproducts['Size']:=edteditdeforderqty.Text;
      tblproducts['Most_Recent_Cost_Inc_Vat']:=edtpriceinc.Text;
      tblproducts['Item_Discription']:=edteditproductdisc.Text;
      tblproducts['Most_Recent_Cost_Excl_Vat']:=edtpriceexc.Text;
      tblproducts['RRP']:=edteditrrp.Text;
      tblproducts['Min_Order_Qty']:=edteditdeforderqty.Text;
      tblproducts['Main_Category']:=cbbeditmaincat.Text;
      tblproducts['Secondary_Category']:=cbbeditseccat.Text;
      tblproducts['Tertiary_Category']:=cbbtercat.Text;
      tblproducts['Lead_Time_Days']:=edteditleadtime.Text;
      //
      tblproducts.Post;
      //
      ShowMessage('Edits Have Been Successfully Saved !');
      //
    end else
    begin
     ShowMessage('There Was An Error Connecting To The Database , Please Contact Your System Developer');
    end;
  end;
 end;
end;

procedure Tfrmeditproductdetails.btnsearchClick(Sender: TObject);
begin
 //here as the user types in the SKU Code , We Will Search The database , there product is found
 //populate and enable all the releveant fields
 //
 with DataModuleProducts do
 begin
   if tblproducts.Active = True then
   begin
    tblproducts.Filtered:=False;
    tblproducts.Filter:='Item_Number = ' + QuotedStr(edteditproductsku.Text); //check the field name
    tblproducts.Filtered:=true;
    //
     if edteditproductsku.Text = tblproducts.FieldByName('Item_Number').AsString then
     begin
      //here we are going to check for the product and populate the form
      //here we will enable and populate the fields
      //
      cbbeditvendor.Enabled:=True;
      edtpriceinc.Enabled:=True;
      edteditproductdisc.Enabled:=True;
      edtpriceexc.Enabled:=True;
      edteditrrp.Enabled:=True;
      edteditdeforderqty.Enabled:=True;
      edteditminorderqty.Enabled:=True;
      edteditleadtime.Enabled:=True;
      cbbeditmaincat.Enabled:=true;
      cbbeditseccat.Enabled:=true;
      cbbtercat.Enabled:=True;
      //
      cbbeditvendor.Text := tblproducts.FieldByName('Vendor_Name').AsString;
      edtpriceinc.Text := tblproducts.FieldByName('Most_Recent_Cost_Inc_Vat').AsString;
      edteditproductdisc.Text := tblproducts.FieldByName('Item_Discription').AsString;
      edtpriceexc.Text := tblproducts.FieldByName('Most_Recent_Cost_Excl_Vat').AsString;
      edteditrrp.Text := tblproducts.FieldByName('RRP').AsString;
      edteditdeforderqty.Text := tblproducts.FieldByName('Min_Order_Qty').AsString;
      edteditminorderqty.Text := tblproducts.FieldByName('Min_Order_Qty').AsString;
      edteditminorderqty.Text := tblproducts.FieldByName('Lead_Time_Days').AsString;
      cbbeditmaincat.Text := tblproducts.FieldByName('Main_Category').AsString;
      cbbeditseccat.Text := tblproducts.FieldByName('Secondary_Category').AsString;
      cbbtercat.Text := tblproducts.FieldByName('Tertiary_Category').AsString;
      //
     end;
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Database , Please Contact Your Software Developer ');
   end;
 end;
end;

procedure Tfrmeditproductdetails.FormActivate(Sender: TObject);
Var
 Vname_Temp : string;
 I:Integer;
begin
 //here we will disable all the fields except SKU
 //populate the data from the database to the edits and enable them
 //allow the user to make the changes
 //then allow the user to save the edits
 //check all fields have values except the teriary cat
 //
 cbbeditvendor.Enabled:=False;
 edtpriceinc.Enabled:=False;
 edteditproductdisc.Enabled:=False;
 edtpriceexc.Enabled:=False;
 edteditrrp.Enabled:=False;
 edteditdeforderqty.Enabled:=False;
 edteditminorderqty.Enabled:=True;
 cbbeditmaincat.Enabled:=False;
 cbbeditseccat.Enabled:=False;
 cbbtercat.Enabled:=False;
 edteditleadtime.Enabled:=False;
 edteditminorderqty.Enabled:=False;
 //
 with DataModuleProducts do
 begin
  if conproducts.Connected = False then
  begin
   //here we will connect
    conproducts.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;' +
    'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\Product_Database.accdb' +
    ';Mode=ReadWrite;Persist Security Info=False';
     //
    conproducts.Connected:=True;
    tblproducts.TableName:='tblproducts';
    tblproducts.Active:=True;
    tblproducts.First; //here we go to the first value
    //
    for i := 0 to tblproducts.RecordCount -1 do
    begin
     //here we will need to extract vendor names then check if any duplicates
     VName_Temp:= tblproducts.FieldByName('Vendor_Name').AsString;
     //
     if cbbeditvendor.Items.IndexOf(VName_Temp) = -1 then
     begin
      cbbeditvendor.Items.Add(VName_Temp);
      tblproducts.Next;
     end else
     begin
      //then it is a duplicate and we will move to the next record
      tblproducts.Next;
     end;
    end;
  end else
  begin
   if tblproducts.Active = True then
   begin
    //here we will confirm its connected
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Database , Please Contact Your Software Developer');
   end;
  end;
 end;
end;

end.
