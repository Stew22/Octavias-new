unit Sync_DB_U;

interface

procedure SyncDatabases(const database1Location, database2Location, tableName: string);

implementation

uses
  System.SysUtils, Data.DB, Data.Win.ADODB;

procedure SyncDatabases(const database1Location, database2Location, tableName: string);   //database 1 will be the product database , database 2 will be the order form database
var
  db1Connection, db2Connection: TADOConnection;
  db1Query, db2Query: TADOQuery;
begin
  // Create connections and queries for both databases
  db1Connection := TADOConnection.Create(nil);
  db2Connection := TADOConnection.Create(nil);
  db1Query := TADOQuery.Create(nil);
  db2Query := TADOQuery.Create(nil);

  try
    // Connect to the databases
    db1Connection.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=' + database1Location;
    db2Connection.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=' + database2Location;
    db1Connection.Connected := True;
    db2Connection.Connected := True;

    // Set up queries
    db1Query.Connection := db1Connection;
    db1Query.SQL.Text := 'SELECT * FROM ' + tableName;

    db2Query.Connection := db2Connection;
    db2Query.SQL.Text := 'SELECT * FROM ' + tableName;

    // Open the queries
    db1Query.Open;
    db2Query.Open;

    // Compare rows and synchronize data
    while not db1Query.Eof do
    begin
      db2Query.First;
      while not db2Query.Eof do
      begin
        // Compare the rows and perform necessary actions
        if db1Query.FieldByName('ID').AsInteger = db2Query.FieldByName('ID').AsInteger then
        begin
          // Row exists in both databases, check for changes
          if db1Query.FieldByName('Field1').AsString <> db2Query.FieldByName('Field1').AsString then
          begin
            // Update the row in database 2 to match database 1
            db2Query.Edit;
            db2Query.FieldByName('Field1').AsString := db1Query.FieldByName('Field1').AsString;
            db2Query.Post;
          end;
          Break; // Exit the inner loop since the row has been found and processed
        end;
        db2Query.Next;
      end;

      // If the row does not exist in database 2, insert it
      if db2Query.Eof then
      begin
        db2Query.Insert;
        db2Query.FieldByName('ID').AsInteger := db1Query.FieldByName('ID').AsInteger;
        db2Query.FieldByName('Field1').AsString := db1Query.FieldByName('Field1').AsString;
        // Set other fields accordingly
        db2Query.Post;
      end;

      db1Query.Next;
    end;

    // Check if any rows exist in database 2 that do not exist in database 1 and delete them
    db2Query.First;
    while not db2Query.Eof do
    begin
      db1Query.First;
      while not db1Query.Eof do
      begin
        if db2Query.FieldByName('ID').AsInteger = db1Query.FieldByName('ID').AsInteger then
          Break; // Row exists in both databases, no need to delete
        db1Query.Next;
      end;

      if db1Query.Eof then
      begin
        db2Query.Delete;
        db2Query.Prior;
      end
      else
        db2Query.Next;
    end;
  finally
    // Clean up resources
    db1Query.Free;
    db2Query.Free;
    db1Connection.Free;
    db2Connection.Free;
  end;
end;

end.
