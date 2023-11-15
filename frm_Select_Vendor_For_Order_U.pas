unit frm_Select_Vendor_For_Order_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.ExtCtrls,Winapi.ShellAPI;

type
  Tfrmselectvendorfororder = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    cbbvendor: TComboBox;
    lbl1: TLabel;
    pnl3: TPanel;
    btnplaceorder: TButton;
    btncancel: TButton;
    il1: TImageList;
    btnbtachorder: TButton;
    lbl2: TLabel;
    btnhelp: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btnbtachorderClick(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselectvendorfororder: Tfrmselectvendorfororder;

implementation

{$R *.dfm}

procedure Tfrmselectvendorfororder.btnbtachorderClick(Sender: TObject);
begin
 //here we will generate batch orders for the vendors
 //but we will need to see if we can open multiple emails
 //otherwise we can just open the folder of the orders
 //
 if InputBox('Place Batch Order','Are You Sure You Want To Generate A Batch Order : ','Yes/No') = 'Yes' then
 begin
  //Generate a batch Order
  //here we are going to loop through the database and check for items that
  //have a Qty more then 1 then we will need to compile the order


 end else
 begin
  //cancel the operation \
  ShowMessage('Batch Save Has been Cancelled !');
 end;
end;

procedure Tfrmselectvendorfororder.btncancelClick(Sender: TObject);
begin
 cbbvendor.Clear;
 btnplaceorder.Enabled:=False;
 btnbtachorder.Enabled:=False;
end;

procedure Tfrmselectvendorfororder.btnhelpClick(Sender: TObject);
var
PDFFileName:string;
begin
//here we will shell execute the manual for the following form
 PDFFileName := 'C:\Path\To\YourPDFFile.pdf'; //replace this with the help file
 ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
 //
end;

procedure Tfrmselectvendorfororder.FormActivate(Sender: TObject);
begin
 //here we will need to loop through the orders table for the order to be placed
 //then we will need to populate the vendors combo box
 //with only vendors that there are pending orders for the current order session
 //
 if cbbvendor.Text = '' then
 begin
  btnplaceorder.Enabled:=False;
 end else
 begin
  btnplaceorder.Enabled:=True;
 end;
 //
end;

end.
