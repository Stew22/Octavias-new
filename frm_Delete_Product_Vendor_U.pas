unit frm_Delete_Product_Vendor_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.ExtCtrls,DM_Vendors , DM_Order , DM_Products;

type
  Tfrmdeleteproductvendor = class(TForm)
    il1: TImageList;
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    Cancel1: TMenuItem;
    Cancel2: TMenuItem;
    Help1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    pnl1: TPanel;
    lbl1: TLabel;
    pnl2: TPanel;
    cbbvedeletename: TComboBox;
    cbbvdeletecode: TComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
    pnl3: TPanel;
    btn1: TButton;
    btncancel: TButton;
    btnexit: TButton;
    procedure btncancelClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdeleteproductvendor: Tfrmdeleteproductvendor;

implementation

{$R *.dfm}

procedure Tfrmdeleteproductvendor.btn1Click(Sender: TObject);
begin
 with Datamodulevendor do
 begin
   if tblvendor.Active = True then
   begin
    // here we will work with the table
    if cbbvedeletename.Text <> '' then
    begin
     //here we will filter by name
     tblvendor.Filtered:=False;
     tblvendor.Filter:='Vendor_Name = ' + QuotedStr(cbbvedeletename.Text);
     tblvendor.Filtered:=True;
     //now we have filtered
     //now we delete from the vendors database and delete all the products associated with the vendor
     //
     if (tblvendor.Filtered = True) and (tblvendor.FieldByName('Vendor_Name').AsString = cbbvedeletename.Text) then
     begin
      //here we will delete the vendor then all the products from the products database and the orders database
      tblvendor.Delete;
      //
      tblvendor.Post ;
      //
      with DataModuleProducts do
      begin
       with Datamoduleorder do
       begin
        //
        tblorder.First;
        tblproducts.First;
        //
        tblorder.Filtered:=False;
        tblproducts.Filtered:=False;
        //
        tblproducts.Filter:='Vendor_Name = ' + QuotedStr(cbbvedeletename.Text);
        tblorder.Filter:='Vendor_Name = ' + QuotedStr(cbbvedeletename.Text);
        //
        tblorder.Filtered:=True;
        tblproducts.Filtered:=True;
        //
        while not tblorder.Eof do
        begin
         tblvendor.Delete;
         //
         tblvendor.Post ;
        end;
        //
        while not tblproducts.Eof do
        begin
         tblvendor.Delete;
         //
         tblvendor.Post ;
        end;
       end;
      end;
     end;
    end else
    begin
     if cbbvdeletecode.Text <> '' then
     begin
      //here we will filter by vendor code
      tblvendor.Filtered:=False;
      tblvendor.Filter:='Vendor_Number = ' + QuotedStr(cbbvdeletecode.Text);
      tblvendor.Filtered:=True;
     //now we have filtered
     //now we delete from the vendors database and delete all the products associated with the vendor
          //here we will filter by name
     tblvendor.Filtered:=False;
     tblvendor.Filter:='Vendor_Number = ' + QuotedStr(cbbvedeletename.Text);
     tblvendor.Filtered:=True;
     //now we have filtered
     //now we delete from the vendors database and delete all the products associated with the vendor
     //
      if (tblvendor.Filtered = True) and (tblvendor.FieldByName('Vendor_Number').AsString = cbbvedeletename.Text) then
      begin
       //here we will delete the vendor then all the products from the products database and the orders database
       tblvendor.Delete;
       //
       tblvendor.Post ;
       //
       with DataModuleProducts do
       begin
        with Datamoduleorder do
        begin
         //
         tblorder.First;
         tblproducts.First;
         //
         tblorder.Filtered:=False;
         tblproducts.Filtered:=False;
         //
         tblproducts.Filter:='Vendor_Number = ' + QuotedStr(cbbvedeletename.Text);
         tblorder.Filter:='Vendor_Number = ' + QuotedStr(cbbvedeletename.Text);
         //
         tblorder.Filtered:=True;
         tblproducts.Filtered:=True;
         //
         while not tblorder.Eof do
         begin
          tblvendor.Delete;
         //
          tblvendor.Post ;
         end;
         //
         while not tblproducts.Eof do
         begin
          tblvendor.Delete;
          //
          tblvendor.Post ;
         end;
        end;
       end;
      end;
     end else
     begin
      ShowMessage('You Have Not Selected Any Vendors ! , Please Try Again !');
     end;
    end;
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Vendor Database , Please Contact Your Software Developer');
   end;
 end;
end;

procedure Tfrmdeleteproductvendor.btncancelClick(Sender: TObject);
begin
 cbbvedeletename.Text := '';
 cbbvdeletecode.Text:='';
end;

procedure Tfrmdeleteproductvendor.btnexitClick(Sender: TObject);
begin
 cbbvedeletename.Clear;
 cbbvdeletecode.Clear;
 frmdeleteproductvendor.Close;
end;

procedure Tfrmdeleteproductvendor.FormShow(Sender: TObject);
var
VnameTemp,VcodeTemp : string;
begin
 with Datamodulevendor do
 begin
  cbbvedeletename.Clear;
  cbbvdeletecode.Clear;
  //
  tblvendor.First;
  //
  while not tblvendor.Eof do
  begin
   //here we will populate the vendor name combo box and the item code combo box
   //
   VnameTemp:=tblvendor.FieldByName('Vendor_Name').AsString;
   VcodeTemp:=tblvendor.FieldByName('Vendor_Code').AsString;
   //
   if (cbbvedeletename.Items.IndexOf(VnameTemp) = -1) and (tblvendor.FieldByName('Is_Service').AsString = 'False') then
   begin
    cbbvedeletename.Items.Add(VnameTemp);
    tblvendor.Next;
   end else
   begin
    //then it is a duplicate and we will move to the next record
    tblvendor.Next;
   end;
   //
   if (cbbvdeletecode.Items.IndexOf(VcodeTemp) = -1) and (tblvendor.FieldByName('Is_Service').AsString = 'False') And (tblvendor.FieldByName('Vendor_Code').AsString <> '') then
   begin
    cbbvdeletecode.Items.Add(VcodeTemp);
    tblvendor.Next;
   end else
   begin
    //then it is a duplicate and we will move to the next record
    tblvendor.Next;
   end;
  end;
 end;
end;

end.
