unit frm_Bulk_Pricing_Update_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage;

type
  Tfrmblkpricingupdate = class(TForm)
    pnl1: TPanel;
    mm1: TMainMenu;
    File1: TMenuItem;
    GetTemplate1: TMenuItem;
    GetTemplate2: TMenuItem;
    UpdatePricing1: TMenuItem;
    UpdatePricing2: TMenuItem;
    Exit1: TMenuItem;
    Exit2: TMenuItem;
    N1: TMenuItem;
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
    btncheckimport: TButton;
    btnupdatepricing: TButton;
    btncancel: TButton;
    btnexit: TButton;
    mmooutput: TMemo;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl3: TLabel;
    procedure GetTemplate1Click(Sender: TObject);
    procedure GetTemplate2Click(Sender: TObject);
    procedure UpdatePricing1Click(Sender: TObject);
    procedure UpdatePricing2Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmblkpricingupdate: Tfrmblkpricingupdate;

implementation

{$R *.dfm}

procedure Tfrmblkpricingupdate.Exit1Click(Sender: TObject);
begin
 btnexit.Click;
end;

procedure Tfrmblkpricingupdate.GetTemplate1Click(Sender: TObject);
begin
 btngenerateexport.Click;
end;

procedure Tfrmblkpricingupdate.GetTemplate2Click(Sender: TObject);
begin
 btncheckimport.Click;
end;

procedure Tfrmblkpricingupdate.UpdatePricing1Click(Sender: TObject);
begin
 btnupdatepricing.Click;
end;

procedure Tfrmblkpricingupdate.UpdatePricing2Click(Sender: TObject);
begin
 btncancel.Click;
end;

end.
