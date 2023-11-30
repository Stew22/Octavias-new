unit frm_Select_Vendor_For_Order_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.ExtCtrls,Winapi.ShellAPI,DM_Order;

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
begin
 //here we will generate batch orders for the vendors
 //but we will need to see if we can open multiple emails
 //otherwise we can just open the folder of the orders
 //
 if InputBox('Place Batch Order','Are You Sure You Want To Generate A Batch Order : ','Yes/No') = 'Yes' then
 begin
  //Generate a batch Order
  //here we are going to loop through the database and check for items that
  //have a Qty more then 1 then we will need to compile the order


 end else
 begin
  //cancel the operation
  ShowMessage('Batch Save Has been Cancelled !');
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
 CSVFileName: string;
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

procedure Tfrmselectvendorfororder.FormShow(Sender: TObject);

begin
 with Datamoduleorder do
 begin
  if tblorder.Active = True then
  begin
   if tblorder.FieldByName('Qty').AsString > '0' then
   begin
    //here we will add it to the vendor list
    cbbvendor.Items.Add(tblorder.FieldByName('Vendor_Name').AsString);
   end else
   begin
    //do nothing
   end;
  end else
  begin
   ShowMessage('An Error Has Occured Connecting To The Database , Please Contact Your Software Developer');
  end;
 end;
end;

end.
