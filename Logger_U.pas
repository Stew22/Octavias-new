unit Logger_U;

interface

uses
  SysUtils, Classes, ADODB, DM_Logger, Vcl.Forms; // Add your data module unit here

type
  TDataAccess = class
  public
    class procedure WriteToAccessDB(MessageText: string);
  end;

implementation

{ TDataAccess }

procedure ConnectDB;
begin
  with DataModuleLogger do
  begin
    // Here we will connect to the database
    conlogger.ConnectionString :=
      'Provider=Microsoft.ACE.OLEDB.12.0;' +
      'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\DB_Logger.accdb' +
      ';Mode=ReadWrite;Persist Security Info=False';
    //
    tbllogger.TableName := 'tbllogger';
    //
    conlogger.Connected := True;
    tbllogger.Active := True;
  end;
end;

class procedure TDataAccess.WriteToAccessDB(MessageText: string);
begin
  try
    with DataModuleLogger do
    begin
      if not tbllogger.Active then
        ConnectDB;
      // Here we will write to the logger database taking in the message and the link to the logging database
      tbllogger.Insert;
      tbllogger['Date_Logged'] := DateToStr(Date);
      tbllogger['Message'] := MessageText;
      tbllogger['User'] := 'User';
      tbllogger.Post;
    end;
  except
    on E: Exception do
    begin
      Writeln('Error in WriteToAccessDB: ' + E.Message);
      if Assigned(E.InnerException) then
        Writeln('Inner Exception: ' + E.InnerException.Message);
    end;
  end;
end;
end.

