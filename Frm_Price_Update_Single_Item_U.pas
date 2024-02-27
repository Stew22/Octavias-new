unit Frm_Price_Update_Single_Item_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Mask , DM_Order , Logger_U , DM_Products;

type
  Tfrmpriceupdatesingleitem = class(TForm)
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    SearchItem1: TMenuItem;
    SearchItem2: TMenuItem;
    Cancel1: TMenuItem;
    Cancel2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    il1: TImageList;
    pnl1: TPanel;
    btnhelp: TButton;
    pnl2: TPanel;
    medtnewprice: TMaskEdit;
    edtoldprice: TEdit;
    cbbitemcode: TComboBox;
    cbbitemdisc: TComboBox;
    pnl3: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    btncancel: TButton;
    btnupdateprice: TButton;
    btnexit: TButton;
    procedure btnhelpClick(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpriceupdatesingleitem: Tfrmpriceupdatesingleitem;

implementation

{$R *.dfm}

procedure Tfrmpriceupdatesingleitem.btnhelpClick(Sender: TObject);
begin
 //here we will open the help file
 TDataAccess.WriteToAccessDB('Update Single Item Pricing Help File Has Been Opened');
end;

procedure Tfrmpriceupdatesingleitem.Cancel2Click(Sender: TObject);
begin
 TDataAccess.WriteToAccessDB('Update Single Item Pricing Form Has Been Closed');
 frmpriceupdatesingleitem.Close;
end;

procedure Tfrmpriceupdatesingleitem.FormShow(Sender: TObject);
var
 Tname,Tname2:TStrings;
begin
 TDataAccess.WriteToAccessDB('Update Single Item Pricing Form Has Been Opened');
 //conect the database
 //
 with DataModuleProducts do
 begin
  if tblproducts.Active = False then
  begin
    //here we will connect the database
    conproducts.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;' +
    'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\Product_Database.accdb' +
    ';Mode=ReadWrite;Persist Security Info=False';
    //
    tblproducts.TableName:='tblproducts';
    //
    conproducts.Connected:=True;
    tblproducts.Active:=True;
    tblproducts.First; //here we go to the first value
    //
    TDataAccess.WriteToAccessDB('Add Spa Treatment Database Is Connected Successfully');
  end;
 end;
 //
 with Datamoduleorder do
 begin
  if tblorder.Active = False then
  begin
     conorder.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;' +
    'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\Order_Database.accdb' +
    ';Mode=ReadWrite;Persist Security Info=False';
    //
    tblorder.TableName:='tblorder';
    //
    conorder.Connected:=True;
    tblorder.Active:=True;
    tblorder.First; //here we go to the first value
  end;
 end;
 //
 //now with the following code we will populate the comboboxes
 with DataModuleProducts do
 begin
  if tblproducts.Active = True then
  begin
   Tname := TStringList.Create;
    try
     tblproducts.First;
     //
     while not tblproducts.Eof do
     begin
      if Tname.IndexOf(tblproducts.FieldByName('Item_Number').AsString) = -1 then
      begin
       //add to the stringlist
       Tname.Add(tblproducts.FieldByName('Item_Number').AsString);
       tblproducts.Next;
      end else
      begin
       //record already exists , then we just move to the next record
       tblproducts.Next;
      end;
      //
      //assign the vlaues from the stringlist to the combobox
      cbbitemcode.Items.Assign(Tname);
     end;
     //Here We will populate the Discriptions Combobox
     //
     while not tblproducts.Eof do
     begin
      if Tname.IndexOf(tblproducts.FieldByName('Item_Number').AsString) = -1 then
      begin
       //add to the stringlist
       Tname.Add(tblproducts.FieldByName('Item_Number').AsString);
       tblproducts.Next;
      end else
      begin
       //record already exists , then we just move to the next record
       tblproducts.Next;
      end;
      //
      //assign the vlaues from the stringlist to the combobox
      cbbitemcode.Items.Assign(Tname);
     end;
    finally
     Tname.Free;
    end;
    //make sure we first create the stringlist in the try block
  end else
  begin

  end;
 end;
 //
end;

end.
