unit frm_Add_Treatment_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.CheckLst, Vcl.Mask,DM_Spa_Menu,
  Winapi.ShellAPI;

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
    edtp1: TEdit;
    edtp2: TEdit;
    edtp3: TEdit;
    edtp4: TEdit;
    edtp5: TEdit;
    chklst1: TCheckListBox;
    lbl3: TLabel;
    medtprice: TMaskEdit;
    btnhelp: TButton;
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
      tblspamenu['Product1']:=edtp1.Text;
      tblspamenu['Product2']:=edtp2.Text;
      tblspamenu['Product3']:=edtp3.Text;
      tblspamenu['Product4']:=edtp4.Text;
      tblspamenu['Product5']:=edtp5.Text;
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
      //
      edtaddtname.Clear;
      medtprice.Clear;
      //
      edtp1.Clear;
      edtp2.Clear;
      edtp3.Clear;
      edtp4.Clear;
      edtp5.Clear;
      //
      btnaddtreatment.Enabled:=False;
      //
      edtp1.Enabled:=False;
      edtp2.Enabled:=False;
      edtp3.Enabled:=False;
      edtp4.Enabled:=False;
      edtp5.Enabled:=False;
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
 //
 edtaddtname.Clear;
 medtprice.Clear;
 //
 edtp1.Clear;
 edtp2.Clear;
 edtp3.Clear;
 edtp4.Clear;
 edtp5.Clear;
 //
 btnaddtreatment.Enabled:=False;
 //
 edtp1.Enabled:=False;
 edtp2.Enabled:=False;
 edtp3.Enabled:=False;
 edtp4.Enabled:=False;
 edtp5.Enabled:=False;
end;

procedure Tfrmaddtreatment.btnexitClick(Sender: TObject);
begin
 btncancel.Click;
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
  edtp1.Enabled:=True;
 end else
 begin
  edtp1.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  edtp1.Clear;
 end;
 if chklst1.Checked[1] = True then
 begin
  edtp2.Enabled:=True;
 end else
 begin
  edtp2.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  edtp2.Clear;
 end;
 if chklst1.Checked[2] = True then
 begin
  edtp3.Enabled:=True;
 end else
 begin
  edtp3.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  edtp3.Clear;
 end;
 if chklst1.Checked[3] = True then
 begin
  edtp4.Enabled:=True;
 end else
 begin
  edtp4.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  edtp4.Clear;
 end;
 if chklst1.Checked[4] = True then
 begin
  edtp5.Enabled:=True;
 end else
 begin
  edtp5.Enabled:=False;
  btnaddtreatment.Enabled:=False;
  edtp5.Clear;
 end;
 //

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

procedure Tfrmaddtreatment.edtp1Change(Sender: TObject);
begin
 //here we are going to add in the error checking to enable the button
 if (edtaddtname.Text <> '') or (medtprice.Text <> '') then
 begin
  if chklst1.Checked[0] = True then
  begin
   if edtp1.Text <> '' then
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
   if edtp2.Text <> '' then
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
   if edtp3.Text <> '' then
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
   if edtp4.Text <> '' then
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
   if edtp5.Text <> '' then
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
   end;
 end;
 //here we will disable the edit fields until the user has selected how many products
 //are to be used in each treatment
 //
 edtp1.Enabled:=False;
 edtp2.Enabled:=False;
 edtp3.Enabled:=False;
 edtp4.Enabled:=False;
 edtp5.Enabled:=False;
 //
 btnaddtreatment.Enabled:=False;
 //
end;

procedure Tfrmaddtreatment.Help1Click(Sender: TObject);
begin
 btnhelp.Click;
end;

procedure Tfrmaddtreatment.medtpriceChange(Sender: TObject);
begin
 medtprice.EditMask:='99999.00;1;';
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