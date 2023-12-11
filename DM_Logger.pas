unit DM_Logger;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModuleLogger = class(TDataModule)
    conlogger: TADOConnection;
    tbllogger: TADOTable;
    dslogger: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleLogger: TDataModuleLogger;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
