unit DB_Backup_U;

interface

uses
  SysUtils, Windows;

procedure CopyAndRenameFile(const sourceFilePath, destinationFilePath, backupLocation: string);

implementation

procedure CopyAndRenameFile(const sourceFilePath, destinationFilePath, backupLocation: string);
var
  fileName, destFileName: string;
begin
  if not FileExists(sourceFilePath) then
    raise Exception.Create('Source file does not exist');

  // Extract the file name from the source file path
  fileName := ExtractFileName(sourceFilePath);

  // Create the destination file path with the specified backup location and the original file name
  destFileName := IncludeTrailingPathDelimiter(backupLocation) + fileName;

  try
    // Copy the file to the backup location
    CopyFile(PChar(sourceFilePath), PChar(destFileName), False);

    // Rename the file at the destination location
    if not RenameFile(destFileName, destinationFilePath) then
      raise Exception.Create('Error renaming file');
  except
    on E: Exception do
      raise Exception.Create('Error copying and renaming file: ' + E.Message);
  end;
end;

end.

