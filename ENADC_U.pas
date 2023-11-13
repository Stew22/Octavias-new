//this is our own custum unit file that will change the extension of the file
//to make it seem as if the file is encrypted
//this will stop the user from making any changes to the database when the app is
//open
unit ENADC_U;

interface

procedure ChangeFileExtension(const oldPath, newExtension: string);

implementation

uses
  System.SysUtils;

procedure ChangeFileExtension(const oldPath, newExtension: string);
var
  newPath: string;
begin
  // Check if the old file exists
  if not FileExists(oldPath) then
  begin
   raise Exception.Create('File not found: ' + oldPath);
  end;
  // Create the new path with the specified extension
  newPath := ChangeFileExt(oldPath, newExtension);
  // Rename the file to the new path
  if not RenameFile(oldPath, newPath) then
  begin
    raise Exception.Create('Failed To Encrypt file: ' + oldPath + ' To ' + newPath);
  end;
end;

end.
