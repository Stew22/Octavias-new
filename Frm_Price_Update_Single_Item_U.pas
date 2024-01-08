unit Frm_Price_Update_Single_Item_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls;

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
    procedure btnhelpClick(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
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
end;

procedure Tfrmpriceupdatesingleitem.Cancel2Click(Sender: TObject);
begin
 frmpriceupdatesingleitem.Close;
end;

end.
