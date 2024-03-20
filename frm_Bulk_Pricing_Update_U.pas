unit frm_Bulk_Pricing_Update_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage,DM_Products;

type
  Tfrmblkpricingupdate = class(TForm)
    pnl1: TPanel;
    mm1: TMainMenu;
    File1: TMenuItem;
    GetTemplate1: TMenuItem;
    GetTemplate2: TMenuItem;
    UpdatePricing1: TMenuItem;
    UpdatePricing2: TMenuItem;
    Exit1: TMenuItem;
    Exit2: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    pnl2: TPanel;
    il1: TImageList;
    cbbvendorselect: TComboBox;
    lbl1: TLabel;
    pnl3: TPanel;
    btngenerateexport: TButton;
    btncheckimport: TButton;
    btnupdatepricing: TButton;
    btncancel: TButton;
    btnexit: TButton;
    mmooutput: TMemo;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl3: TLabel;
    dlgSave1: TSaveDialog;
    lbl5: TLabel;
    procedure GetTemplate1Click(Sender: TObject);
    procedure GetTemplate2Click(Sender: TObject);
    procedure UpdatePricing1Click(Sender: TObject);
    procedure UpdatePricing2Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbvendorselectChange(Sender: TObject);
    procedure btngenerateexportClick(Sender: TObject);
    procedure btncheckimportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmblkpricingupdate: Tfrmblkpricingupdate;

implementation

{$R *.dfm}

procedure Tfrmblkpricingupdate.btncheckimportClick(Sender: TObject);
begin
 //here we are going to check the format of the import
end;

procedure Tfrmblkpricingupdate.btngenerateexportClick(Sender: TObject);
 var
 EVexport: TStrings;
begin
 //here we are going to generate the export based on what the user has chosen
 //
 if dlgSave1.Execute() then
 begin
  //here we will generate the export
  btncheckimport.Enabled:=True;
  //we have saved the location now generate the export
  try
   //here we will populate everything
   //
   with DataModuleProducts do
   begin
    if (cbbvendorselect.Text = '') or (tblproducts.Active = False) or (tblproducts.Filtered = False) then
    begin
     //here we will display a message to the user
     //we might need to add checkers to check which of the fields is the issue
     If tblproducts.Active = False then
     begin
      ShowMessage('There Was An Error Connecting To The Products Please Contact Your Software Developer');
     end;
    end else
    begin
     //work with the data
      if cbbvendorselect.Text = '' then
      begin
       ShowMessage('Please Selet A Vendor To Export');
       Exit;
      end else
      begin
       //work here
       EVexport := TStrings.Create();
       //
       //constrac the export
       //
       EVexport.Add('ID,Item_Number,Item_Discription,Size,Min_Order_Qty,Most_Recent_Cost_Excl_Vat,Most_Recent_Cost_Inc_Vat,RRP,Lead_Time_Days,Vendor_Name,Main_Category,Secondary_Category,Tertiary_Category');
       with DataModuleProducts do
       begin
        //
        tblproducts.First;
        //
        while not tblproducts.Eof do
        begin
         // here loop through all productfs of that vendor
        end;
       end;
      end;
    end;
   end;
  finally
   EVexport.Free;
  end;
 end else
 begin
  ShowMessage('Save Export Template Operation Has Been Cancelled !');
  //here we will make sure the buttons remain disabled and log it
 end;
end;

procedure Tfrmblkpricingupdate.cbbvendorselectChange(Sender: TObject);
begin
 //here we are going to set a filter so only export vendors items
 //
 with DataModuleProducts do
 begin
   //work with the data
 end;
 mmooutput.Lines.Add('Bulk Update Form Has Been Opened');
end;

procedure Tfrmblkpricingupdate.Exit1Click(Sender: TObject);
begin
 btnexit.Click;
end;

procedure Tfrmblkpricingupdate.FormShow(Sender: TObject);
var
 Tname:TStrings;
begin
 with DataModuleProducts do
 begin
   if tblproducts.Active = True then
   begin
    //here we are going to populate the combo box with a list of vendors from the
    //products database so we can update pricing
    //
    cbbvendorselect.Clear;
    //
    Tname := TStringList.Create;
    try
     tblproducts.First;
     //
     while not tblproducts.Eof do
     begin
      if Tname.IndexOf(tblproducts.FieldByName('Vendor_Name').AsString) = -1 then
      begin
       //add to the stringlist
       Tname.Add(tblproducts.FieldByName('Vendor_Name').AsString);
       tblproducts.Next;
      end else
      begin
       //record already exists , then we just move to the next record
       tblproducts.Next;
      end;
      //
      //assign the vlaues from the stringlist to the combobox
      cbbvendorselect.Items.Assign(Tname);
     end;
    finally
     Tname.Free;
    end;
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Products Database , Please Contact Your Software Developer');
   end;
 end;
end;

procedure Tfrmblkpricingupdate.GetTemplate1Click(Sender: TObject);
begin
 btngenerateexport.Click;
end;

procedure Tfrmblkpricingupdate.GetTemplate2Click(Sender: TObject);
begin
 btncheckimport.Click;
end;

procedure Tfrmblkpricingupdate.UpdatePricing1Click(Sender: TObject);
begin
 btnupdatepricing.Click;
end;

procedure Tfrmblkpricingupdate.UpdatePricing2Click(Sender: TObject);
begin
 btncancel.Click;
end;

end.
