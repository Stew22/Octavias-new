unit frm_Edit_My_Details_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList;

type
  Tfrmeditmydetails = class(TForm)
    mm1: TMainMenu;
    il1: TImageList;
    pnl1: TPanel;
    File1: TMenuItem;
    File2: TMenuItem;
    Cancel1: TMenuItem;
    Cancel2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Help1: TMenuItem;
    lbl1: TLabel;
    pnl2: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmeditmydetails: Tfrmeditmydetails;

implementation

{$R *.dfm}

end.