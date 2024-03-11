unit frm_Add_Treatment_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.CheckLst, Vcl.Mask,DM_Spa_Menu,
  Winapi.ShellAPI,DM_Logger,Logger_U,DM_Products,DM_Order;

type
  Tfrmaddtreatment = class(TForm)
    pnl1: TPanel;
    mm1: TMainMenu;
    il1: TImageList;
    File1: TMenuItem;
    File2: TMenuItem;
    Cancel1: TMenuItem;
    Cancel2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Help1: TMenuItem;
    pnl2: TPanel;
    edtaddtname: TEdit;
    lbl1: TLabel;
    pnl3: TPanel;
    pnl4: TPanel;
    lbl2: TLabel;
    btnaddtreatment: TButton;
    btncancel: TButton;
    btnexit: TButton;
    chklst1: TCheckListBox;
    lbl3: TLabel;
    medtprice: TMaskEdit;
    btnhelp: TButton;
    scrlbx1: TScrollBox;
    cbbaproduct11: TComboBox;
    cbbaproduct12: TComboBox;
    cbbaproduct13: TComboBox;
    cbbaddproduct14: TComboBox;
    cbbaproduct15: TComboBox;
    cbbaproduct16: TComboBox;
    cbbaproduct17: TComboBox;
    cbbaproduct18: TComboBox;
    cbbaproduct19: TComboBox;
    cbbaproduct10: TComboBox;
    cbbaddproduct20: TComboBox;
    cbbaproduct9: TComboBox;
    cbbaproduct8: TComboBox;
    cbbaproduct7: TComboBox;
    cbbaproduct6: TComboBox;
    cbbaproduct5: TComboBox;
    cbbaddproduct4: TComboBox;
    cbbaproduct3: TComboBox;
    cbbaproduct2: TComboBox;
    cbbaproduct1: TComboBox;
    procedure chklst1ClickCheck(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtp1Change(Sender: TObject);
    procedure edtp2Change(Sender: TObject);
    procedure edtp3Change(Sender: TObject);
    procedure edtp4Change(Sender: TObject);
    procedure edtp5Change(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure File2Click(Sender: TObject);
    procedure edtaddctreatmentChange(Sender: TObject);
    procedure medtpriceChange(Sender: TObject);
    procedure medtpriceExit(Sender: TObject);
    procedure btnaddtreatmentClick(Sender: TObject);
    procedure Help1Click(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
    procedure edtp6Change(Sender: TObject);
    procedure edtp7Change(Sender: TObject);
    procedure edtp8Change(Sender: TObject);
    procedure edtp9Change(Sender: TObject);
    procedure edtp10Change(Sender: TObject);
    procedure edtaddtnameChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CorrectedPricingFormat : String; //this is for the trimmed price
  end;

var
  frmaddtreatment: Tfrmaddtreatment;

implementation

{$R *.dfm}

procedure Tfrmaddtreatment.btnaddtreatmentClick(Sender: TObject);
begin
 //here we are going to code the part that adds the data to the database
 with DataModuleSpaMenu do
 begin
   if tblspamenu.Active = True then
   begin
    //here we will need to do some error checking to ensure that none of the fields have been
    //left blank
    //
    if (edtaddtname.Text <> '') or (medtprice.Text <> '') then
    begin
     try
      //here we can now work with the data
      //
      tblspamenu.Insert;
      //
      tblspamenu['Treatment_Name']:=edtaddtname.Text; //treatment name
      tblspamenu['Price']:=CorrectedPricingFormat;
      //now we will need to check which of the edit fields have been enabled to write the data
      //
      tblspamenu['Product1']:=cbbaproduct1.Text;
      tblspamenu['Product2']:=cbbaproduct2.Text;
      tblspamenu['Product3']:=cbbaproduct3.Text;
      tblspamenu['Product4']:=cbbaddproduct4.Text;
      tblspamenu['Product5']:=cbbaproduct5.Text;
      tblspamenu['Product6']:=cbbaproduct6.Text;
      tblspamenu['Product7']:=cbbaproduct7.Text;
      tblspamenu['Product8']:=cbbaproduct8.Text;
      tblspamenu['Product9']:=cbbaproduct9.Text;
      tblspamenu['Product10']:=cbbaproduct10.Text;
      tblspamenu['Product11']:=cbbaproduct11.Text;
      tblspamenu['Product12']:=cbbaproduct12.Text;
      tblspamenu['Product13']:=cbbaproduct13.Text;
      tblspamenu['Product14']:=cbbaddproduct14.Text;
      tblspamenu['Product15']:=cbbaproduct15.Text;
      tblspamenu['Product16']:=cbbaproduct16.Text;
      tblspamenu['Product17']:=cbbaproduct17.Text;
      tblspamenu['Product18']:=cbbaproduct18.Text;
      tblspamenu['Product19']:=cbbaproduct19.Text;
      tblspamenu['Product20']:=cbbaddproduct20.Text;
      //now we need to add in the ml's
      //
      tblspamenu.Post; //posts the data to the database
     finally
      ShowMessage('The Treatment Has Been Added To The Menu Succesfully !');
      //here we will then clear out all the edits
      //and uncheck all the fields
      //
      chklst1.Checked[0]:=False;
      chklst1.Checked[1]:=False;
      chklst1.Checked[2]:=False;
      chklst1.Checked[3]:=False;
      chklst1.Checked[4]:=False;
      chklst1.Checked[5]:=False;
      chklst1.Checked[6]:=False;
      chklst1.Checked[7]:=False;
      chklst1.Checked[8]:=False;
      chklst1.Checked[9]:=False;
      //
      edtaddtname.Clear;
      medtprice.Clear;
      //
      cbbaproduct1.Text:='';
      cbbaproduct2.Text:='';
      cbbaproduct3.Text:='';
      cbbaddproduct4.Text:='';
      cbbaproduct5.Text:='';
      cbbaproduct6.Text:='';
      cbbaproduct7.Text:='';
      cbbaproduct8.Text:='';
      cbbaproduct9.Text:='';
      cbbaproduct10.Text:='';
      cbbaproduct11.Text:='';
      cbbaproduct12.Text:='';
      cbbaproduct13.Text:='';
      cbbaddproduct14.Text:='';
      cbbaproduct15.Text:='';
      cbbaproduct16.Text:='';
      cbbaproduct17.Text:='';
      cbbaproduct18.Text:='';
      cbbaproduct19.Text:='';
      cbbaddproduct20.Text:='';
      //
      btnaddtreatment.Enabled:=False;
      //
      cbbaproduct1.Enabled:=False;
      cbbaproduct2.Enabled:=False;
      cbbaproduct3.Enabled:=False;
      cbbaddproduct4.Enabled:=False;
      cbbaproduct5.Enabled:=False;
      cbbaproduct6.Enabled:=False;
      cbbaproduct7.Enabled:=False;
      cbbaproduct8.Enabled:=False;
      cbbaproduct9.Enabled:=False;
      cbbaproduct10.Enabled:=False;
      cbbaproduct11.Enabled:=False;
      cbbaproduct12.Enabled:=False;
      cbbaproduct13.Enabled:=False;
      cbbaddproduct14.Enabled:=False;
      cbbaproduct15.Enabled:=False;
      cbbaproduct16.Enabled:=False;
      cbbaproduct17.Enabled:=False;
      cbbaproduct18.Enabled:=False;
      cbbaproduct19.Enabled:=False;
      cbbaddproduct20.Enabled:=False;
     end;
    end else
    begin
     ShowMessage('You Can Not Leave One Or More Of The Fields Blank  , Please Try Again !');
    end;
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Spa Menu Database , Please Contact Your Softeare Developer');
   end;
 end;
end;

procedure Tfrmaddtreatment.btncancelClick(Sender: TObject);
begin
 //clear all fields then also disable the button and clear checkbox
 chklst1.Checked[0]:=False;
 chklst1.Checked[1]:=False;
 chklst1.Checked[2]:=False;
 chklst1.Checked[3]:=False;
 chklst1.Checked[4]:=False;
 chklst1.Checked[5]:=False;
 chklst1.Checked[6]:=False;
 chklst1.Checked[7]:=False;
 chklst1.Checked[8]:=False;
 chklst1.Checked[9]:=False;
 chklst1.Checked[10]:=False;
 chklst1.Checked[11]:=False;
 chklst1.Checked[12]:=False;
 chklst1.Checked[13]:=False;
 chklst1.Checked[14]:=False;
 chklst1.Checked[15]:=False;
 chklst1.Checked[16]:=False;
 chklst1.Checked[17]:=False;
 chklst1.Checked[18]:=False;
 chklst1.Checked[19]:=False;
 //
 edtaddtname.Clear;
 medtprice.Clear;
 //
 cbbaproduct1.Text:='';
 cbbaproduct2.Text:='';
 cbbaproduct3.Text:='';
 cbbaddproduct4.Text:='';
 cbbaproduct5.Text:='';
 cbbaproduct6.Text:='';
 cbbaproduct7.Text:='';
 cbbaproduct8.Text:='';
 cbbaproduct9.Text:='';
 cbbaproduct10.Text:='';
 cbbaproduct11.Text:='';
 cbbaproduct12.Text:='';
 cbbaproduct13.Text:='';
 cbbaddproduct14.Text:='';
 cbbaproduct15.Text:='';
 cbbaproduct16.Text:='';
 cbbaproduct17.Text:='';
 cbbaproduct18.Text:='';
 cbbaproduct19.Text:='';
 cbbaddproduct20.Text:='';
 //
 btnaddtreatment.Enabled:=False;
 //
 cbbaproduct1.Enabled:=False;
 cbbaproduct2.Enabled:=False;
 cbbaproduct3.Enabled:=False;
 cbbaddproduct4.Enabled:=False;
 cbbaproduct5.Enabled:=False;
 cbbaproduct6.Enabled:=False;
 cbbaproduct7.Enabled:=False;
 cbbaproduct8.Enabled:=False;
 cbbaproduct9.Enabled:=False;
 cbbaproduct10.Enabled:=False;
 cbbaproduct11.Enabled:=False;
 cbbaproduct12.Enabled:=False;
 cbbaproduct13.Enabled:=False;
 cbbaddproduct14.Enabled:=False;
 cbbaproduct15.Enabled:=False;
 cbbaproduct16.Enabled:=False;
 cbbaproduct17.Enabled:=False;
 cbbaproduct18.Enabled:=False;
 cbbaproduct19.Enabled:=False;
 cbbaddproduct20.Enabled:=False;
 //
 TDataAccess.WriteToAccessDB('Has Clicked Cancel Button On Add A Treatment To Spa Menu');
end;

procedure Tfrmaddtreatment.btnexitClick(Sender: TObject);
begin
 btncancel.Click;
 TDataAccess.WriteToAccessDB('Has Closed The Add Treatment Form');
 frmaddtreatment.Close;
end;

procedure Tfrmaddtreatment.btnhelpClick(Sender: TObject);
var
PDFFilename:String;
begin
 //here we will shell execute the pdf to open
 PDFFileName := ExtractFileDir(Application.ExeName) + '\Bin\M_Add_Treatment.pdf'; //replace this with the help file
 ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
 //
 TDataAccess.WriteToAccessDB('Has Opened The User Manual');
end;

procedure Tfrmaddtreatment.Cancel1Click(Sender: TObject);
begin
 btncancel.Click;
end;

procedure Tfrmaddtreatment.Cancel2Click(Sender: TObject);
begin
 btncancel.Click;
 frmaddtreatment.Close;
end;

procedure Tfrmaddtreatment.chklst1ClickCheck(Sender: TObject);
begin
 if chklst1.Checked[0] = True then
 begin
  cbbaproduct1.Enabled:=True;
 end else
 begin
  cbbaproduct1.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct1.Text:='';
 end;
 if chklst1.Checked[1] = True then
 begin
  cbbaproduct2.Enabled:=True;
 end else
 begin
  cbbaproduct2.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct2.Text:='';
 end;
 if chklst1.Checked[2] = True then
 begin
  cbbaproduct3.Enabled:=True;
 end else
 begin
  cbbaproduct3.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct3.Text:='';
 end;
 if chklst1.Checked[3] = True then
 begin
  cbbaddproduct4.Enabled:=True;
 end else
 begin
  cbbaddproduct4.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaddproduct4.Text:='';
 end;
 if chklst1.Checked[4] = True then
 begin
  cbbaproduct5.Enabled:=True;
 end else
 begin
  cbbaproduct5.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct5.Text:='';
 end;
 if chklst1.Checked[5] = True then
 begin
  cbbaproduct6.Enabled:=True;
 end else
 begin
  cbbaproduct6.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct6.Text:='';
 end;
 if chklst1.Checked[6] = True then
 begin
  cbbaproduct7.Enabled:=True;
 end else
 begin
  cbbaproduct7.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct7.Text:='';
 end;
 if chklst1.Checked[7] = True then
 begin
  cbbaproduct8.Enabled:=True;
 end else
 begin
  cbbaproduct8.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct8.Text:='';
 end;
 if chklst1.Checked[8] = True then
 begin
  cbbaproduct9.Enabled:=True;
 end else
 begin
  cbbaproduct9.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct9.Text:='';
 end;
 if chklst1.Checked[9] = True then
 begin
  cbbaproduct10.Enabled:=True;
 end else
 begin
  cbbaproduct10.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct10.Text:='';
 end;
  if chklst1.Checked[10] = True then
 begin
  cbbaproduct11.Enabled:=True;
 end else
 begin
  cbbaproduct11.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct11.Text:='';
 end;
  if chklst1.Checked[11] = True then
 begin
  cbbaproduct12.Enabled:=True;
 end else
 begin
  cbbaproduct12.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct12.Text:='';
 end;
  if chklst1.Checked[12] = True then
 begin
  cbbaproduct13.Enabled:=True;
 end else
 begin
  cbbaproduct13.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct13.Text:='';
 end;
  if chklst1.Checked[13] = True then
 begin
  cbbaddproduct14.Enabled:=True;
 end else
 begin
  cbbaddproduct14.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaddproduct14.Text:='';
 end;
  if chklst1.Checked[14] = True then
 begin
  cbbaproduct15.Enabled:=True;
 end else
 begin
  cbbaproduct15.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct15.Text:='';
 end;
  if chklst1.Checked[15] = True then
 begin
  cbbaproduct16.Enabled:=True;
 end else
 begin
  cbbaproduct16.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct16.Text:='';
 end;
  if chklst1.Checked[16] = True then
 begin
  cbbaproduct17.Enabled:=True;
 end else
 begin
  cbbaproduct17.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct17.Text:='';
 end;
  if chklst1.Checked[17] = True then
 begin
  cbbaproduct18.Enabled:=True;
 end else
 begin
  cbbaproduct18.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct18.Text:='';
 end;
  if chklst1.Checked[18] = True then
 begin
  cbbaproduct19.Enabled:=True;
 end else
 begin
  cbbaproduct19.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaproduct19.Text:='';
 end;
  if chklst1.Checked[19] = True then
 begin
  cbbaddproduct20.Enabled:=True;
 end else
 begin
  cbbaddproduct20.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  cbbaddproduct20.Text:='';
 end;
end;

procedure Tfrmaddtreatment.edtaddctreatmentChange(Sender: TObject);
var
  ValueIsNumeric: Double;
  IsNumeric: Boolean;
begin
  // Attempt to convert the text to an integer
  IsNumeric := TryStrToFloat(medtprice.Text, ValueIsNumeric);
  // Check if the conversion was successful
  if IsNumeric then
  begin
   if ValueIsNumeric > 0 then
   begin
    //here we will do nothing since it is a valid price

   end else
   begin
    ShowMessage('Please Enter A Valid Price');
   end;
  end
  else
  begin
   ShowMessage('Please Enter A Valid Price');
  end;
end;

procedure Tfrmaddtreatment.edtaddtnameChange(Sender: TObject);
begin
//
 TDataAccess.WriteToAccessDB('Has Selected A Treatment From The Dropdown For Editing');
end;

procedure Tfrmaddtreatment.edtp10Change(Sender: TObject);
begin
 //here we are going to add in the error checking to enable the button
 if (edtaddtname.Text <> '') or (medtprice.Text <> '') then
 begin
  if chklst1.Checked[9] = True then
  begin
   if cbbaproduct10.Text <> '' then
   begin
    btnaddtreatment.Enabled:=True;
   end;
  end;
 end;
end;

procedure Tfrmaddtreatment.edtp1Change(Sender: TObject);
begin
 //here we are going to add in the error checking to enable the button
 if (edtaddtname.Text <> '') or (medtprice.Text <> '') then
 begin
  if chklst1.Checked[0] = True then
  begin
   if cbbaproduct1.Text <> '' then
   begin
    btnaddtreatment.Enabled:=True;
   end;
  end;
 end;
end;

procedure Tfrmaddtreatment.edtp2Change(Sender: TObject);
begin
 //here we are going to add in the error checking to enable the button
 if (edtaddtname.Text <> '') or (medtprice.Text <> '') then
 begin
  if chklst1.Checked[1] = True then
  begin
   if cbbaproduct2.Text <> '' then
   begin
    btnaddtreatment.Enabled:=True;
   end;
  end;
 end;
end;

procedure Tfrmaddtreatment.edtp3Change(Sender: TObject);
begin
 //here we are going to add in the error checking to enable the button
 if (edtaddtname.Text <> '') or (medtprice.Text <> '') then
 begin
  if chklst1.Checked[2] = True then
  begin
   if cbbaproduct3.Text <> '' then
   begin
    btnaddtreatment.Enabled:=True;
   end;
  end;
 end;
end;

procedure Tfrmaddtreatment.edtp4Change(Sender: TObject);
begin
 //here we are going to add in the error checking to enable the button
 if (edtaddtname.Text <> '') or (medtprice.Text <> '') then
 begin
  if chklst1.Checked[3] = True then
  begin
   if cbbaddproduct4.Text <> '' then
   begin
    btnaddtreatment.Enabled:=True;
   end;
  end;
 end;
end;

procedure Tfrmaddtreatment.edtp5Change(Sender: TObject);
begin
 //here we are going to add in the error checking to enable the button
 if (edtaddtname.Text <> '') or (medtprice.Text <> '') then
 begin
  if chklst1.Checked[4] = True then
  begin
   if cbbaproduct5.Text <> '' then
   begin
    btnaddtreatment.Enabled:=True;
   end;
  end;
 end;
end;

procedure Tfrmaddtreatment.edtp6Change(Sender: TObject);
begin
  //here we are going to add in the error checking to enable the button
 if (edtaddtname.Text <> '') or (medtprice.Text <> '') then
 begin
  if chklst1.Checked[6] = True then
  begin
   if cbbaproduct7.Text <> '' then
   begin
    btnaddtreatment.Enabled:=True;
   end;
  end;
 end;
end;

procedure Tfrmaddtreatment.edtp7Change(Sender: TObject);
begin
 //here we are going to add in the error checking to enable the button
 if (edtaddtname.Text <> '') or (medtprice.Text <> '') then
 begin
  if chklst1.Checked[7] = True then
  begin
   if cbbaproduct8.Text <> '' then
   begin
    btnaddtreatment.Enabled:=True;
   end;
  end;
 end;
end;

procedure Tfrmaddtreatment.edtp8Change(Sender: TObject);
begin
 //here we are going to add in the error checking to enable the button
 if (edtaddtname.Text <> '') or (medtprice.Text <> '') then
 begin
  if chklst1.Checked[8] = True then
  begin
   if cbbaproduct9.Text <> '' then
   begin
    btnaddtreatment.Enabled:=True;
   end;
  end;
 end;
end;

procedure Tfrmaddtreatment.edtp9Change(Sender: TObject);
begin
 //here we are going to add in the error checking to enable the button
 if (edtaddtname.Text <> '') or (medtprice.Text <> '') then
 begin
  if chklst1.Checked[9] = True then
  begin
   if cbbaproduct10.Text <> '' then
   begin
    btnaddtreatment.Enabled:=True;
   end;
  end;
 end;
end;

procedure Tfrmaddtreatment.File2Click(Sender: TObject);
begin
 btnaddtreatment.Click;
end;

procedure Tfrmaddtreatment.FormShow(Sender: TObject);
 var
 Tproducts:TStrings;
begin
 with DataModuleSpaMenu do
 begin
   if conspamenu.Connected = True then
   begin
    //conspamenu.Connected:=False; //disconnect a previous session
   end else
   begin
    //here we will connect the database
    conspamenu.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;' +
    'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\DB_Spa_Menu.accdb' +
    ';Mode=ReadWrite;Persist Security Info=False';
    //
    tblspamenu.TableName:='tbltreatmentmenu';
    //
    conspamenu.Connected:=True;
    tblspamenu.Active:=True;
    tblspamenu.First; //here we go to the first value
    //
    TDataAccess.WriteToAccessDB('Add Spa Treatment Form Has Been Opened');
   end;
 end;
 //here we will disable the edit fields until the user has selected how many products
 //are to be used in each treatment
 //
 cbbaproduct1.Enabled:=False;
 cbbaproduct2.Enabled:=False;
 cbbaproduct3.Enabled:=False;
 cbbaddproduct4.Enabled:=False;
 cbbaproduct5.Enabled:=False;
 cbbaproduct6.Enabled:=False;
 cbbaproduct7.Enabled:=False;
 cbbaproduct8.Enabled:=False;
 cbbaproduct9.Enabled:=False;
 cbbaproduct10.Enabled:=False;
 cbbaproduct11.Enabled:=False;
 cbbaproduct12.Enabled:=False;
 cbbaproduct13.Enabled:=False;
 cbbaddproduct14.Enabled:=False;
 cbbaproduct15.Enabled:=False;
 cbbaproduct16.Enabled:=False;
 cbbaproduct17.Enabled:=False;
 cbbaproduct18.Enabled:=False;
 cbbaproduct19.Enabled:=False;
 cbbaddproduct20.Enabled:=False;
 //
 btnaddtreatment.Enabled:=False;
 //
   with Datamoduleorder do    //make sure this is connected ?
   begin
     if tblorder.Active = True then
     begin
      tblorder.First;
      tblorder.DisableControls;
      //
      Tproducts:=TStringList.Create;
      //
      while not tblorder.Eof do
      begin
       if Tproducts.IndexOf(tblorder.FieldByName('Item Discription').AsString) = -1 then
        begin
         //add to the stringlist
         Tproducts.Add(tblorder.FieldByName('Item Discription').AsString);
         tblorder.Next;
        end else
        begin
         //record already exists , then we just move to the next record
         tblorder.Next;
        end;
      end;
      tblorder.EnableControls;
      //assign all the comboboxes
      cbbaproduct1.Items.Assign(Tproducts);
      cbbaproduct2.Items.Assign(Tproducts);
      cbbaproduct3.Items.Assign(Tproducts);
      cbbaddproduct4.Items.Assign(Tproducts);
      cbbaproduct5.Items.Assign(Tproducts);
      cbbaproduct6.Items.Assign(Tproducts);
      cbbaproduct7.Items.Assign(Tproducts);
      cbbaproduct8.Items.Assign(Tproducts);
      cbbaproduct9.Items.Assign(Tproducts);
      cbbaproduct10.Items.Assign(Tproducts);
      cbbaproduct11.Items.Assign(Tproducts);
      cbbaproduct12.Items.Assign(Tproducts);
      cbbaproduct13.Items.Assign(Tproducts);
      cbbaddproduct14.Items.Assign(Tproducts);
      cbbaproduct15.Items.Assign(Tproducts);
      cbbaproduct16.Items.Assign(Tproducts);
      cbbaproduct17.Items.Assign(Tproducts);
      cbbaproduct18.Items.Assign(Tproducts);
      cbbaproduct19.Items.Assign(Tproducts);
      cbbaddproduct20.Items.Assign(Tproducts);
      //maybe put in a try loop
      tproducts.Free;
     end else
     begin
      ShowMessage('There Was An Error Connecting To The Orders Database , Please Contact Your Software Developer');
     end;
    end;
end;

procedure Tfrmaddtreatment.Help1Click(Sender: TObject);
begin
 btnhelp.Click;
end;

procedure Tfrmaddtreatment.medtpriceChange(Sender: TObject);
begin
 medtprice.EditMask:='99999.00;1;';
 TDataAccess.WriteToAccessDB('Has Edited The Price');
end;

procedure Tfrmaddtreatment.medtpriceExit(Sender: TObject);
var
  originalText, trimmedText: string;
  dotIndex, i: Integer;
begin
  originalText := medtprice.Text;
  // Find the index of the dot in the text
  dotIndex := Pos('.', originalText);
  // If dotIndex is greater than 0, remove spaces before the dot
  if dotIndex > 0 then
  begin
    // Count back from the dot position and remove spaces
    i := dotIndex - 1;
    while (i > 0) and (originalText[i] = ' ') do
      Dec(i);
    // Trim the text before the dot
    trimmedText := Copy(originalText, 1, i) + Copy(originalText, dotIndex, Length(originalText));
    //
    CorrectedPricingFormat:=trimmedText;
  end
  else
  begin
    CorrectedPricingFormat:=trimmedText;
  end;
end;

end.
