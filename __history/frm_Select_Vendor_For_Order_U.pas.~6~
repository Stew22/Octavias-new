unit frm_Select_Vendor_For_Order_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.ExtCtrls,Winapi.ShellAPI,DM_Order,DM_Vendors;

type
  Tfrmselectvendorfororder = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    cbbvendor: TComboBox;
    lbl1: TLabel;
    pnl3: TPanel;
    btnplaceorder: TButton;
    btncancel: TButton;
    il1: TImageList;
    btnbtachorder: TButton;
    lbl2: TLabel;
    btnhelp: TButton;
    dlgSave1: TSaveDialog;
    procedure FormActivate(Sender: TObject);
    procedure btnbtachorderClick(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbvendorChange(Sender: TObject);
    procedure btnplaceorderClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselectvendorfororder: Tfrmselectvendorfororder;

implementation

{$R *.dfm}

procedure Tfrmselectvendorfororder.btnbtachorderClick(Sender: TObject);
var
  I: Integer;
  Fname, CSVFileName: string;
  TStrings: TStringList;
  Vemail,Vemail2:string;
  //
  MailTo, MailCC, MailSubject, MailBody: string;
begin
  if InputBox('Place Batch Order', 'Are You Sure You Want To Generate A Batch Order : ', 'Yes/No') = 'Yes' then
  begin
    // Generate a batch Order
    with Datamoduleorder do
    begin
      if tblorder.Active then
      begin
        if dlgSave1.Execute then
        begin
          Fname := IncludeTrailingPathDelimiter(ExtractFileDir(dlgSave1.FileName));
          //
          try
            TStrings := TStringList.Create;
            //
            for I := 0 to cbbvendor.Items.Count - 1 do
            begin
              tblorder.Filtered := False;
              tblorder.Filter := 'Vendor_Name = ' + QuotedStr(cbbvendor.Items[I]);
              tblorder.Filtered := True;
              //
              CSVFileName := Fname + cbbvendor.Items[I] + '.csv'; // Add .csv extension
              //
              tblorder.First;
              TStrings.Add('Vendor_Name,Item_Number,Item_Description,Price,Qty'); // Headers
              //
              while not tblorder.Eof do
              begin
                TStrings.Add(
                  Format('%s,%s,%s,%s,%s',
                  [
                    tblorder.FieldByName('Vendor_Name').AsString,
                    tblorder.FieldByName('Item_Number').AsString,
                    tblorder.FieldByName('Item Discription').AsString,
                    tblorder.FieldByName('Price').AsString,
                    tblorder.FieldByName('Qty').AsString
                  ])
                );
                //
                tblorder.Next;
              end;
              //
              TStrings.SaveToFile(CSVFileName);
              // Clear the string list for the next vendor
              TStrings.Clear;
              //here we will shellexecute the mail to open
              //
              with Datamodulevendor do
              begin
               if tblvendor.Active = True then
               begin
                //
                Vemail:=tblvendor.FieldByName('Vendor_Email').AsString;
                Vemail2:=tblvendor.FieldByName('Vendor_Email2').AsString;
                //
                //now we will execute the shellexecute to generate the email
                //
                if Vemail = '' then
                begin
                 ShowMessage('There Is No Email Address Captured For This Vendor');
                end else
                begin
                 MailTo := Vemail;
                 if Vemail2 <> '' then
                 begin
                  MailTo := MailTo + ';' + Vemail2; //check if we need the ;
                 end;
                end;
                //
                MailCC := 'aarti@octavias.co.za';
                MailSubject := 'New Order Sheet';
                //
                  MailBody := 'Good day' + sLineBreak + sLineBreak +
                          'Please see attached order sheet.' + sLineBreak + sLineBreak +
                          'I look forward to your response :)' + sLineBreak + sLineBreak +
                          'Kind Regards';
                  //here we will need to cc in aarti
                  // Using ShellExecute to open the default email client with pre-filled values
                ShellExecute(
                  0,
                  'open',
                  PChar('mailto:' + MailTo + '?cc=' + MailCC +
                    '&subject=' + MailSubject + '&body=' + StringReplace(MailBody, sLineBreak, '%0D%0A', [rfReplaceAll])),
                  nil,
                  nil,
                  SW_SHOWNORMAL
                );
               end;
              end;
            end;
          finally
            TStrings.Free;
          end;
          //
          ShowMessage('Batch Orders Saved Successfully!');
          //should we prompt the user to open the where they save it
        end
        else
        begin
          ShowMessage('Batch Order Save Has Been Cancelled!');
        end;
      end
      else
      begin
        ShowMessage('There Was An Error Connecting To The Orders Database, Please Contact Your Software Developer');
      end;
    end;
  end
  else
  begin
    ShowMessage('Batch Save Has Been Cancelled!');
  end;
end;


procedure Tfrmselectvendorfororder.btncancelClick(Sender: TObject);
begin
 cbbvendor.Clear;
 btnplaceorder.Enabled:=False;
 btnbtachorder.Enabled:=False;
 frmselectvendorfororder.Close;
end;

procedure Tfrmselectvendorfororder.btnhelpClick(Sender: TObject);
var
PDFFileName:string;
begin
//here we will shell execute the manual for the following form
 PDFFileName := ExtractFileDir(Application.ExeName) + '\Bin\M_Export_Order.pdf'; //replace this with the help file
 ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
 //
end;

procedure Tfrmselectvendorfororder.btnplaceorderClick(Sender: TObject);
Var
 i,j,k:Integer;
 TStrings:TStringList;
 CSVFileName,Vmail,Vmail2: string;
 //
 MailTo, MailCC, MailSubject, MailBody: string;
begin
 if dlgSave1.Execute() then
 begin
  CSVFileName:=dlgSave1.FileName;
  //
  with Datamoduleorder do
   begin
     if tblorder.Active = True then
     begin
      //
      try
       TStrings:=TStringList.Create;
       //
       tblorder.First; //go to the first record
       TStrings.Add('Vendor_Name,Item_Number,Item Discription,Price,Qty,'); //headers
       while not tblorder.Eof do
       begin
         //
         TStrings.Add(tblorder.FieldByName('Vendor_Name').AsString + ',' + tblorder.FieldByName('Item_Number').AsString + ',' + tblorder.FieldByName('Item Discription').AsString + ',' + tblorder.FieldByName('Price').AsString + ',' + tblorder.FieldByName('Qty').AsString + ',');
         //
         tblorder.Next;
       end;
       TStrings.SaveToFile(CSVFileName);
       ShowMessage('File Has Been Exported Successfully !');
       //here we are going to then pull the email from the vendors database and then generate the email
       with Datamodulevendor do
       begin
         if tblvendor.Active = True then
         begin
          //here we will apply a filter to the vendor that is select and extract the email
          //
          tblvendor.Filtered:=False;
          tblvendor.Filter:='Vendor_Name = ' + QuotedStr(cbbvendor.Text);
          tblvendor.Filtered:=True;
          //
          //now we extract the email
          //
          Vmail:=tblvendor.FieldByName('Vendor_Email').AsString; //here we need to check if we have 2 emails and send to both
          Vmail2:=tblvendor.FieldByName('Vendor_Email_2').AsString;
          //
          //now we will execute the shellexecute to generate the email
          //
          if Vmail = '' then
          begin
           ShowMessage('There Is No Email Address Captured For This Vendor');
          end else
          begin
           MailTo := Vmail;
           if Vmail2 <> '' then
           begin
            MailTo:=MailTo + ';' + Vmail2;  //check this
           end;
          end;
          //
          MailCC := 'aarti@octavias.co.za';
          MailSubject := 'New Order Sheet';
          //
            MailBody := 'Good day' + sLineBreak + sLineBreak +
                    'Please see attached order sheet.' + sLineBreak + sLineBreak +
                    'I look forward to your response.' + sLineBreak + sLineBreak +
                    'Kind Regards';
            //here we will need to cc in aarti
            // Using ShellExecute to open the default email client with pre-filled values
          ShellExecute(
            0,
            'open',
            PChar('mailto:' + MailTo + '?cc=' + MailCC +
              '&subject=' + MailSubject + '&body=' + StringReplace(MailBody, sLineBreak, '%0D%0A', [rfReplaceAll])),
            nil,
            nil,
            SW_SHOWNORMAL
          );
          //
         end else
         begin
           ShowMessage('There Was An Error Connecting To The Vendors Database , Please Contact Your Software Developer');
         end;
       end;
      finally
       Tstrings.Free;
      end;
     end else
     begin
      ShowMessage('There Was An Error Connecting To The Database , Please Contact Your Software Developer');
     end;
   end;
 end else
 begin
  ShowMessage('Save File Operation Has Been Cancelled !');
 end;
end;

procedure Tfrmselectvendorfororder.cbbvendorChange(Sender: TObject);
begin
 if cbbvendor.Text <> '' then
 begin
  btnplaceorder.Enabled:=True;
  //also filter the dataset
  with Datamoduleorder do
  begin
    if tblorder.Active = True then
    begin
     tblorder.Filtered:=False;
     tblorder.Filter:='Vendor_Name = '+ QuotedStr(cbbvendor.Text);
     tblorder.Filtered:=True;
    end else
    begin
     ShowMessage('An Error Has Occured Connecting To The Database , Please Contact Your Software Developer');
    end;
  end;
 end else
 begin
  btnplaceorder.Enabled:=False;
 end;
end;

procedure Tfrmselectvendorfororder.FormActivate(Sender: TObject);
 var
 Fname,Sdirec:string;
 SOrder:TStrings;
begin
 //here we will need to loop through the orders table for the order to be placed
 //then we will need to populate the vendors combo box
 //with only vendors that there are pending orders for the current order session
 //
 //
 dlgSave1.DefaultExt := 'csv';
 dlgSave1.InitialDir := ExtractFileDir(Application.ExeName);
 dlgSave1.Filter:='CSV Files (*.csv)|*.csv|All Files (*.*)|*.*';  //here we will only allow text , csv and excell , maybe pdf
 //
 if cbbvendor.Text = '' then
 begin
  btnplaceorder.Enabled:=False;
 end else
 begin
  btnplaceorder.Enabled:=True;
 end;
 //
end;

procedure Tfrmselectvendorfororder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 with Datamoduleorder do
 begin
   tblorder.Filtered:=False;
   tblorder.Filter:='';
 end;
end;

procedure Tfrmselectvendorfororder.FormShow(Sender: TObject);
var
VName_Temp:string;
begin
 with Datamoduleorder do
 begin
  if tblorder.Active = True then
  begin
   tblorder.First;
   //
   while not tblorder.Eof do
   begin
    if tblorder.FieldByName('Qty').AsString > '0' then
     begin
       //here we will add it to the vendor list
       VName_Temp:= tblorder.FieldByName('Vendor_Name').AsString;
       //
       if cbbvendor.Items.IndexOf(VName_Temp) = -1 then
       begin
        cbbvendor.Items.Add(VName_Temp);
        tblorder.Next;
       end else
       begin
        //then it is a duplicate and we will move to the next record
        tblorder.Next;
       end;
     end else
     begin
      //do nothing
      tblorder.Next;
     end;
   end;
  end else
  begin
   ShowMessage('An Error Has Occured Connecting To The Database , Please Contact Your Software Developer');
  end;
 end;
end;

end.
