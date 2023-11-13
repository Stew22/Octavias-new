unit DM_Vendors;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDatamodulevendor = class(TDataModule)
    convendor: TADOConnection;
    tblvendor: TADOTable;
    dsvendor: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Datamodulevendor: TDatamodulevendor;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
