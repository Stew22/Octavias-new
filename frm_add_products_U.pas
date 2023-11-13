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
    procedure Exit1Click(Sender: TObject);
    procedure btnclearClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnaddproductClick(Sender: TObject);
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

procedure Tfrmaddproducts.Exit1Click(Sender: TObject);
begin
frmaddproducts.Close; //closes the form
end;

procedure Tfrmaddproducts.FormActivate(Sender: TObject);
begin
 frmaddproducts.Enabled:=False;
end;

end.
