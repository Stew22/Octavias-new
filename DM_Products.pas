unit DM_Products;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModuleProducts = class(TDataModule)
    conproducts: TADOConnection;
    tblproducts: TADOTable;
    dsproducts: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleProducts: TDataModuleProducts;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
