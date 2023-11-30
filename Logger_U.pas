unit Logger_U;

interface

uses
  SysUtils, Classes, ADODB; // Add your data module unit here

type
  TDataAccess = class
  public
    class procedure WriteToAccessDB(const DatabaseFile, MessageText: string);
  end;

implementation

{ TDataAccess }

class procedure TDataAccess.WriteToAccessDB(const DatabaseFile, MessageText: string);
begin
  try
    //YourDataModuleUnit.ADOConnection1.Connected := True;
    //YourDataModuleUnit.ADOQuery1.SQL.Text := 'INSERT INTO TableName (MessageColumn) VALUES (:Message)';
    //YourDataModuleUnit.ADOQuery1.Parameters.ParamByName('Message').Value := MessageText;
   // YourDataModuleUnit.ADOQuery1.ExecSQL;
  except
    on E: Exception do
      Writeln('Error: ' + E.Message);
  end;
end;

end.
