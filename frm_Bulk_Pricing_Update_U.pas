unit frm_Bulk_Pricing_Update_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList;

type
  Tfrmblkpricingupdate = class(TForm)
    pnl1: TPanel;
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    GetTemplate1: TMenuItem;
    GetTemplate2: TMenuItem;
    UpdatePricing1: TMenuItem;
    UpdatePricing2: TMenuItem;
    Exit1: TMenuItem;
    Exit2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    pnl2: TPanel;
    il1: TImageList;
    cbbvendorselect: TComboBox;
    lbl1: TLabel;
    pnl3: TPanel;
    btngenerateexport: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmblkpricingupdate: Tfrmblkpricingupdate;

implementation

{$R *.dfm}

end.
