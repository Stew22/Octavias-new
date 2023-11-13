unit DM_Users;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModuleUsers = class(TDataModule)
    dsusers: TDataSource;
    conusers: TADOConnection;
    tblusers: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleUsers: TDataModuleUsers;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
