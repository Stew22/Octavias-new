unit frm_Delete_Product_Vendor_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.ExtCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdeleteproductvendor: Tfrmdeleteproductvendor;

implementation

{$R *.dfm}

end.
