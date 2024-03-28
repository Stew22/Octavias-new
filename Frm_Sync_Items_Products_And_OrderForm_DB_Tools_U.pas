unit Frm_Sync_Items_Products_And_OrderForm_DB_Tools_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls , DM_Products,DM_Order,
  frm_DB_Tools_View_Results_U, Vcl.ComCtrls;

type
  Tfrmsyncproductsandorder = class(TForm)
    pnl1: TPanel;
    mm1: TMainMenu;
    il1: TImageList;
    File1: TMenuItem;
    File2: TMenuItem;
    CheckProduct1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    ViewSyncErrors1: TMenuItem;
    N3: TMenuItem;
    SyncProducts1: TMenuItem;
    N4: TMenuItem;
    Cancel1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    lbl1: TLabel;
    btnhelp: TButton;
    pnl2: TPanel;
    btncheckitems: TButton;
    btnviewerrors: TButton;
    btnsyncitems: TButton;
    lbl2: TLabel;
    btncancel: TButton;
    btnexit: TButton;
    lbl3: TLabel;
    lbl4: TLabel;
    pb1: TProgressBar;
    procedure File2Click(Sender: TObject);
    procedure CheckProduct1Click(Sender: TObject);
    procedure ViewSyncErrors1Click(Sender: TObject);
    procedure SyncProducts1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure btncheckitemsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnviewerrorsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsyncproductsandorder: Tfrmsyncproductsandorder;

implementation

{$R *.dfm}

procedure Tfrmsyncproductsandorder.btncheckitemsClick(Sender: TObject);
var
  Rnomatch: Integer;
begin
  //Initialize counter
  Rnomatch := 0;
  //Check if both tables are active
  if (DataModuleProducts.tblproducts.Active) and (DataModuleOrder.tblorder.Active) then
  begin
    //Disable controls
    DataModuleOrder.tblorder.DisableControls;
    DataModuleProducts.tblproducts.DisableControls;
    //Reset filters
    DataModuleOrder.tblorder.Filtered := False;
    DataModuleProducts.tblproducts.Filtered := False;
    DataModuleOrder.tblorder.Filter := '';
    DataModuleProducts.tblproducts.Filter := '';
    //Initialize progress bar
    pb1.Min := 0;
    pb1.Max := DataModuleProducts.tblproducts.RecordCount;
    pb1.Position := 0;
    pb1.Visible := True;
    //Move to first record in Products table
    DataModuleProducts.tblproducts.First;
    //Iterate through each product in Products database
    while not DataModuleProducts.tblproducts.Eof do
    begin
      //Check if the current product exists in Orders database
      if not DataModuleOrder.tblorder.Locate('Item Discription', DataModuleProducts.tblproducts.FieldByName('Item_Discription').AsString, []) then
      begin
        //Product not found in Orders database
        //Increment nomatch counter
        Inc(Rnomatch);
        //Add the item description to results
        frmViewResults.mmooutputresults.Lines.Add(DataModuleProducts.tblproducts.FieldByName('Item_Discription').AsString);
      end;
      //Move to next product in Products database
      DataModuleProducts.tblproducts.Next;
      //Update progress bar position
      pb1.Position := pb1.Position + 1;
    end;
    //Enable controls
    DataModuleOrder.tblorder.EnableControls;
    DataModuleProducts.tblproducts.EnableControls;
    //Hide progress bar
    pb1.Visible := False;
    //Display results
    ShowMessage('Products not found in Orders: ' + IntToStr(Rnomatch));
    btnviewerrors.Enabled:=True;
  end
  else
  begin
    //One or both tables are not active
    ShowMessage('There was an error connecting to one or more of the database tables. Please contact your software developer.');
  end;
end;



procedure Tfrmsyncproductsandorder.btnviewerrorsClick(Sender: TObject);
begin
 frmViewResults.showmodal;
end;

procedure Tfrmsyncproductsandorder.Cancel1Click(Sender: TObject);
begin
 btncancel.Click;
end;

procedure Tfrmsyncproductsandorder.CheckProduct1Click(Sender: TObject);
begin
 btncheckitems.Click;
end;

procedure Tfrmsyncproductsandorder.File2Click(Sender: TObject);
begin
 btnhelp.Click;
end;

procedure Tfrmsyncproductsandorder.FormShow(Sender: TObject);
begin
 with DataModuleProducts do
 begin
 if conproducts.Connected = False then
  begin
   //here we will connect
    conproducts.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;' +
    'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\Product_Database.accdb' +
    ';Mode=ReadWrite;Persist Security Info=False';
     //
    conproducts.Connected:=True;
    tblproducts.TableName:='tblproducts';
    tblproducts.Active:=True;
    tblproducts.First; //here we go to the first value
    //
  end else
  begin
   if tblproducts.Active = True then
   begin
    //here we will confirm its connected
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Database , Please Contact Your Software Developer');
   end;
  end;
 end;
end;

procedure Tfrmsyncproductsandorder.N5Click(Sender: TObject);
begin
 btnexit.Click;
end;

procedure Tfrmsyncproductsandorder.SyncProducts1Click(Sender: TObject);
begin
btnsyncitems.Click;
end;

procedure Tfrmsyncproductsandorder.ViewSyncErrors1Click(Sender: TObject);
begin
 btnviewerrors.Click;
end;

end.
