unit frm_Delete_Product_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList,DM_Order,DM_Products,DM_Vendors,Winapi.ShellAPI;

type
  Tfrmdeleteproduct = class(TForm)
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    Cancel1: TMenuItem;
    Cancel2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Help1: TMenuItem;
    pnl1: TPanel;
    il1: TImageList;
    btnhelp: TButton;
    pnl2: TPanel;
    pnl3: TPanel;
    btndelete: TButton;
    btnancel: TButton;
    btnexit: TButton;
    lbl1: TLabel;
    cbbproducts: TComboBox;
    cbbitemcode: TComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
    cbbvendor: TComboBox;
    lbl4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbbproductsChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbitemcodeChange(Sender: TObject);
    procedure btnancelClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdeleteproduct: Tfrmdeleteproduct;

implementation

{$R *.dfm}

procedure Tfrmdeleteproduct.btnancelClick(Sender: TObject);
begin
 cbbitemcode.Text:='';
 cbbproducts.Text:='';
 cbbvendor.Text:='';
 btndelete.Enabled:=False;
end;

procedure Tfrmdeleteproduct.btndeleteClick(Sender: TObject);
begin
 //here we are going to remove the product from both the order and the products database
 with DataModuleProducts do
 begin
   with Datamoduleorder do
   begin
     if (tblorder.Active = True) and (tblproducts.Active = True) then
     begin
      //here we are going to delete the product based on either the code or the item discription
      if cbbproducts.Text <> ''  then
      begin
       tblproducts.Filtered:=false;
       tblproducts.Filter:='Item_Discription = ' + QuotedStr(cbbproducts.Text);
       tblproducts.Filtered:=True;
       //
       tblorder.Filtered:=false;
       tblorder.Filter:='Item Discription = ' + QuotedStr(cbbproducts.Text);
       tblorder.Filtered:=True;
       //
       if (tblproducts.Filtered = True) and (tblproducts.FieldByName('Item_Discription').AsString <> '') and (tblorder.Filtered = True) and (tblorder.FieldByName('Item Discription').AsString <> '') then
       begin
        //here we will delete the product
        tblproducts.Delete;
        tblproducts.Post;
        //
        tblorder.Delete;
        tblorder.Post;
        //
        ShowMessage('The Product Has Been Succesfully Deleted !');
        //clear the filters

       end else
       begin
        ShowMessage('There Was An Error Finding The Product ! , Please Try Again');
        Exit; //leaves the loop
       end;
      end else
      begin
       if cbbitemcode.Text <> '' then
       begin
        tblproducts.Filtered:=False;
        tblproducts.Filter:='Item_Number = ' + QuotedStr(cbbitemcode.Text);
        tblproducts.Filtered:=True;
        //
        tblorder.Filtered:=false;
        tblorder.Filter:='Item_Number = ' + QuotedStr(cbbproducts.Text);
        tblorder.Filtered:=True;
        //
        if (tblproducts.Filtered = True) and (tblproducts.FieldByName('Item_Number').AsString <> '') and (tblorder.Filtered = True) and (tblorder.FieldByName('Item_Number').AsString <> '') then
        begin
         //here we will delete the product
         tblproducts.Delete;
         tblproducts.Post;
         //
         tblorder.Delete;
         tblorder.Post;
         //
         ShowMessage('The Product Has Been Succesfully Deleted !');
        end else
        begin
         ShowMessage('There Was An Error Finding The Product ! , Please Try Again');
        end;
       end;
      end;
     end else
     begin
      ShowMessage('There Was An Error Connecting To One Or More Of The Databases , Please Contact Your Software Developer');
     end;
   end;
 end;
end;

procedure Tfrmdeleteproduct.btnexitClick(Sender: TObject);
begin
 cbbitemcode.Text:='';
 cbbproducts.Text:='';
 cbbvendor.Text:='';
 btndelete.Enabled:=False;
 frmdeleteproduct.Close;
end;

procedure Tfrmdeleteproduct.btnhelpClick(Sender: TObject);
 var
 PDFFilename:String;
begin
  //here we will shell execute the pdf to open
  PDFFileName := ExtractFileDir(Application.ExeName) + '\Bin\M_Delete_Product.pdf'; //replace this with the help file
  ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
  //
end;

procedure Tfrmdeleteproduct.cbbitemcodeChange(Sender: TObject);
begin
 with DataModuleProducts do
 begin
   if tblproducts.Active = True then
   begin
    tblproducts.Filtered:=False;
    tblproducts.Filter:='Item_Number = ' + QuotedStr(cbbitemcode.Text);
    tblproducts.Filtered:=True;
    //
    cbbproducts.Text := tblproducts.FieldByName('Item_Discription').AsString;
    cbbvendor.Text := tblproducts.FieldByName('Vendor_Name').AsString;
    //
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Products Database , Please Contact Your Software Developer');
   end;
 end;
end;

procedure Tfrmdeleteproduct.cbbproductsChange(Sender: TObject);
begin
 with DataModuleProducts do
 begin
   if tblproducts.Active = True then
   begin
    tblproducts.Filtered:=False;
    tblproducts.Filter:='Item_Discription = ' + QuotedStr(cbbproducts.Text);
    tblproducts.Filtered:=True;
    //
    cbbitemcode.Text := tblproducts.FieldByName('Item_Number').AsString;
    cbbvendor.Text := tblproducts.FieldByName('Vendor_Name').AsString;
    //
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Products Database , Please Contact Your Software Developer');
   end;
 end;
 //
 //here we will need to add in some error checking to ensure that they dont edit the records
 if cbbproducts.Text <> '' then
 begin
  btndelete.Enabled:=True;
 end else
 begin
  btndelete.Enabled:=False;
 end;
end;

procedure Tfrmdeleteproduct.FormActivate(Sender: TObject);
begin
 btndelete.Enabled:=False;
 //here we will connect all the tables if they are not already connected
end;

procedure Tfrmdeleteproduct.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 cbbitemcode.Text := '';
 cbbvendor.Text:='';
 cbbproducts.Text:='';
 //

end;

procedure Tfrmdeleteproduct.FormShow(Sender: TObject);
begin
 with DataModuleProducts do
 begin
   with Datamoduleorder do
   begin
     with Datamodulevendor do
     begin
      if (tblvendor.Active = True) and (tblorder.Active = True) and (tblproducts.Active = True) then
      begin
       //here we will pre populate the item code and products discription comboboxes
       tblproducts.First;
       while not tblproducts.Eof do
       begin
        cbbproducts.Items.Add(tblproducts.FieldByName('Item_Discription').AsString);
        if tblproducts.FieldByName('Item_Number').AsString <> '' then
        begin
         cbbitemcode.Items.Add(tblproducts.FieldByName('Item_Number').AsString);    //remove white spaces
        end;
        //
        if (cbbvendor.Items.IndexOf(tblproducts.FieldByName('Vendor_Name').AsString) = -1) and (tblvendor.FieldByName('Vendor_Name').AsString <>'') then
        begin
         cbbvendor.Items.Add(tblproducts.FieldByName('Vendor_Name').AsString);
        end;
        //
        tblproducts.Next; //moves to the next record
       end;
       //
      end else
      begin
       ShowMessage('There Was An Error Connecting To One Or More Of The Databases , Please Contact Your Software Developer');
      end;
     end;
   end;
 end;
end;

end.
