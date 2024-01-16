unit DM_Spa_Menu;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModuleSpaMenu = class(TDataModule)
    dsspamenu: TDataSource;
    conspamenu: TADOConnection;
    tblspamenu: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleSpaMenu: TDataModuleSpaMenu;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
