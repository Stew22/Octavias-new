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
   with DataModuleLogger do
   begin
    if tbllogger.Active = True then
    begin
     //here we will write to the logger database taking in the message and the link to the logging database
    end else
    begin
     //Showmessage('There Was An Error Logging Data , Please Contact Your Software Developer');
    end;
   end;
  except
    on E: Exception do
      Writeln('Error: ' + E.Message);
  end;
end;

end.

