unit frm_Stock_managment_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls , frm_Stock_Settings_U,frm_add_products_U,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,frm_Edit_Poroduct_Details_U,DM_Products,frm_Delete_Product_U,
  Frm_Price_Update_Single_Item_U , frm_Bulk_Pricing_Update_U;

type
  Tfrmstockmanagement = class(TForm)
    pnl1: TPanel;
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    UpdateList1: TMenuItem;
    N1: TMenuItem;
    StockDaysCover1: TMenuItem;
    Settings1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Exit1: TMenuItem;
    Reports1: TMenuItem;
    Reports2: TMenuItem;
    StockDaysCoverReport1: TMenuItem;
    N5: TMenuItem;
    ProductManagment1: TMenuItem;
    N6: TMenuItem;
    AddProducts1: TMenuItem;
    AddProducts2: TMenuItem;
    RemoveProducts1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N4: TMenuItem;
    dbgrdproducts: TDBGrid;
    lbl1: TLabel;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    PricingUpdate1: TMenuItem;
    N14: TMenuItem;
    SingleProduct1: TMenuItem;
    SingleProduct2: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    procedure Settings1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure UpdateList1Click(Sender: TObject);
    procedure StockDaysCover1Click(Sender: TObject);
    procedure Reports2Click(Sender: TObject);
    procedure StockDaysCoverReport1Click(Sender: TObject);
    procedure AddProducts1Click(Sender: TObject);
    procedure AddProducts2Click(Sender: TObject);
    procedure RemoveProducts1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrdproductsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SingleProduct1Click(Sender: TObject);
    procedure SingleProduct2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmstockmanagement: Tfrmstockmanagement;

implementation

{$R *.dfm}

procedure Tfrmstockmanagement.AddProducts1Click(Sender: TObject);
begin
 frmaddproducts.Show;
end;

procedure Tfrmstockmanagement.AddProducts2Click(Sender: TObject);
begin
 //here we are going to code a form that we can edit the product details
 frmeditproductdetails.ShowModal;
end;

procedure Tfrmstockmanagement.dbgrdproductsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Var
  w : Integer;
begin
   w := 5+dbgrdproducts.Canvas.TextExtent(Column.Field.DisplayText).cx;
  if w>column.Width then Column.Width := w;
end;

procedure Tfrmstockmanagement.Exit1Click(Sender: TObject);
begin
 frmstockmanagement.Close; //closes the form
end;

procedure Tfrmstockmanagement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 with DataModuleProducts do
 begin
   if tblproducts.Active = True then
   begin
     tblproducts.Filtered:=False;
     tblproducts.Filter:='';
   end;
 end;
end;

procedure Tfrmstockmanagement.FormCreate(Sender: TObject);
const
  ScaleFactor = 0.8; // Adjust this value to set the percentage of the screen size
begin
  // Set the form size to a percentage of the screen size
  Width := Round(Screen.Width * ScaleFactor);
  Height := Round(Screen.Height * ScaleFactor);

  // Center the form on the screen
  Left := (Screen.Width - Width) div 2;
  Top := (Screen.Height - Height) div 2;
end;

procedure Tfrmstockmanagement.FormShow(Sender: TObject);
var
 J:Integer;
begin
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
    dbgrdproducts.DataSource:=dsproducts;
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
 //
 for J := 0 to dbgrdproducts.Columns.Count - 1 do
 begin
   dbgrdproducts.Columns[J].Width := 5 + dbgrdproducts.Canvas.TextWidth(dbgrdproducts.Columns[J].title.caption);
 end;
 //add in all he other fields for the comboboxes
end;

procedure Tfrmstockmanagement.RemoveProducts1Click(Sender: TObject);
begin
 frmdeleteproduct.ShowModal;
 //here we are going to add a form to remove products from the listing
end;

procedure Tfrmstockmanagement.Reports2Click(Sender: TObject);
begin
 // here we will low stock report
end;

procedure Tfrmstockmanagement.Settings1Click(Sender: TObject);
begin
 frmstocksettings.ShowModal;  //shows the form
end;

procedure Tfrmstockmanagement.SingleProduct1Click(Sender: TObject);
begin
 frmpriceupdatesingleitem.ShowModal;
end;

procedure Tfrmstockmanagement.SingleProduct2Click(Sender: TObject);
begin
 frmblkpricingupdate.ShowModal;
end;

procedure Tfrmstockmanagement.StockDaysCover1Click(Sender: TObject);
begin
 //here we will open up another form that will then show a form to show stock
 //days cover , we will also have thresholds for this
 //when the stock falls below a certain level we will highlight the cells
 //we can also add the function to export these as a pdf report
 //
end;

procedure Tfrmstockmanagement.StockDaysCoverReport1Click(Sender: TObject);
begin
 //here we will show the stock days cover report
end;

procedure Tfrmstockmanagement.UpdateList1Click(Sender: TObject);
begin
 // here we will check the settings that we have set , when stock gets to a certain
 //level then we will highlight the cell yellow , when it gets to emergency
 //level then we will highlight the cell red
 //
end;

end.
