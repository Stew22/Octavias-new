unit DM_Order;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDatamoduleorder = class(TDataModule)
    conorder: TADOConnection;
    tblorder: TADOTable;
    dsorder: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Datamoduleorder: TDatamoduleorder;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
