unit Logger_U;

interface

uses
  SysUtils, Classes, ADODB,DM_Logger; // Add your data module unit here

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
   //here we will call the database connect to it write the data then close it
   //


  except
    on E: Exception do
      Writeln('Error: ' + E.Message);
  end;
end;

end.

