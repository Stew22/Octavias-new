unit frm_Stock_Settings_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList;

type
  Tfrmstocksettings = class(TForm)
    edtwarning: TEdit;
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Exit2: TMenuItem;
    pnl1: TPanel;
    edtmaxearning: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    edtstockdayswarning: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    edtstockdaysemergencthresh: TEdit;
    pnl2: TPanel;
    il1: TImageList;
    btnsavesettingsstock: TButton;
    btncancelsave: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmstocksettings: Tfrmstocksettings;

implementation

{$R *.dfm}

end.
