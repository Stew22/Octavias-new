unit frm_Stock_managment_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls , frm_Stock_Settings_U,frm_add_products_U;

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
    procedure Settings1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure UpdateList1Click(Sender: TObject);
    procedure StockDaysCover1Click(Sender: TObject);
    procedure Reports2Click(Sender: TObject);
    procedure StockDaysCoverReport1Click(Sender: TObject);
    procedure AddProducts1Click(Sender: TObject);
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
 frmaddproducts.ShowModal;
end;

procedure Tfrmstockmanagement.Exit1Click(Sender: TObject);
begin
 frmstockmanagement.Close; //closes the form ss
end;

procedure Tfrmstockmanagement.Reports2Click(Sender: TObject);
begin
 // here we will low stock report
end;

procedure Tfrmstockmanagement.Settings1Click(Sender: TObject);
begin
 frmstocksettings.ShowModal;  //shows the form
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