unit frm_Edit_treatment_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,DM_Spa_Menu,Winapi.ShellAPI,
  Vcl.CheckLst, Vcl.Mask , DM_Order;

type
  Tfrmedittreatment = class(TForm)
    pnl1: TPanel;
    il1: TImageList;
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    SaveEdits1: TMenuItem;
    SaveEdits2: TMenuItem;
    Exot1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    pnl2: TPanel;
    cbbEtreatment: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    btnhelp: TButton;
    pnl3: TPanel;
    pnl4: TPanel;
    btnsavedits: TButton;
    btncancel: TButton;
    btnexit: TButton;
    medteprice: TMaskEdit;
    chklst1: TCheckListBox;
    cbbproduct11: TComboBox;
    cbbproduct12: TComboBox;
    cbbproduct13: TComboBox;
    cbbproduct14: TComboBox;
    cbbproduct15: TComboBox;
    cbbproduct16: TComboBox;
    cbbproduct17: TComboBox;
    cbbprocut18: TComboBox;
    cbbproduct19: TComboBox;
    cbbprocut20: TComboBox;
    medtmlp20: TMaskEdit;
    lbl3: TLabel;
    scrlbx1: TScrollBox;
    medtp19ml: TMaskEdit;
    medtp18ml: TMaskEdit;
    medtp17ml: TMaskEdit;
    medtp16ml: TMaskEdit;
    medtp15mls: TMaskEdit;
    medtp14ml: TMaskEdit;
    medtp13ml: TMaskEdit;
    medtp12ml: TMaskEdit;
    medtp11ml: TMaskEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    cbbproduct10: TComboBox;
    cbbproduct9: TComboBox;
    cbbproduct8: TComboBox;
    medtp10ml: TMaskEdit;
    medtp9ml: TMaskEdit;
    medtp8ml: TMaskEdit;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    cbbproduct7: TComboBox;
    cbbproduct6: TComboBox;
    cbbproduct5: TComboBox;
    cbbproduct4: TComboBox;
    cbbproduct3: TComboBox;
    cbbproduct2: TComboBox;
    cbbproduct1: TComboBox;
    medtp7ml: TMaskEdit;
    medtp6ml: TMaskEdit;
    medtp5ml: TMaskEdit;
    medtp4ml: TMaskEdit;
    medtp3ml: TMaskEdit;
    medtp2ml: TMaskEdit;
    medtp1ml: TMaskEdit;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    procedure File2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure btnsaveditsClick(Sender: TObject);
    procedure SaveEdits1Click(Sender: TObject);
    procedure SaveEdits2Click(Sender: TObject);
    procedure Exot1Click(Sender: TObject);
    procedure cbbEtreatmentChange(Sender: TObject);
    procedure chklst1ClickCheck(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmedittreatment: Tfrmedittreatment;

implementation

{$R *.dfm}

procedure Tfrmedittreatment.btncancelClick(Sender: TObject);
begin
 //clear all items then leave the form open
 cbbEtreatment.Text := '';
 medteprice.Clear;
 //
 cbbproduct1.Clear;
 cbbproduct2.Clear;
 cbbproduct3.Clear;
 cbbproduct4.Clear;
 cbbproduct5.Clear;
 cbbproduct6.Clear;
 cbbproduct7.Clear;
 cbbproduct8.Clear;
 cbbproduct9.Clear;
 cbbproduct10.Clear;
 cbbproduct11.Clear;
 cbbproduct12.Clear;
 cbbproduct13.Clear;
 cbbproduct14.Clear;
 cbbproduct15.Clear;
 cbbproduct16.Clear;
 cbbproduct17.Clear;
 cbbprocut18.Clear;
 cbbproduct19.Clear;
 cbbprocut20.Clear;
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
 btnsavedits.Enabled:=False;
 medteprice.Enabled:=False;
 //
 cbbproduct1.Enabled :=False;
 cbbproduct2.Enabled :=False;;
 cbbproduct3.Enabled :=False;;
 cbbproduct4.Enabled :=False;;
 cbbproduct5.Enabled :=False;;
 cbbproduct6.Enabled :=False;;
 cbbproduct7.Enabled :=False;;
 cbbproduct8.Enabled :=False;;
 cbbproduct9.Enabled :=False;;
 cbbproduct10.Enabled :=False;;
 cbbproduct11.Enabled :=False;;
 cbbproduct12.Enabled :=False;;
 cbbproduct13.Enabled :=False;;
 cbbproduct14.Enabled :=False;;
 cbbproduct15.Enabled :=False;;
 cbbproduct16.Enabled :=False;;
 cbbproduct17.Enabled :=False;;
 cbbprocut18.Enabled :=False;;
 cbbproduct19.Enabled :=False;;
 cbbprocut20.Enabled :=False;;
 //
end;

procedure Tfrmedittreatment.btnexitClick(Sender: TObject);
begin
 //here we will clean all items then close the form
 btncancel.Click;
 frmedittreatment.Close;
end;

procedure Tfrmedittreatment.btnhelpClick(Sender: TObject);
begin
 //here we will launch the help file
end;

procedure Tfrmedittreatment.btnsaveditsClick(Sender: TObject);
var
 EPrice,Ep1,Ep2,Ep3,Ep4,Ep5,Ep6,Ep7,Ep8,Ep9,Ep10,Ep11,Ep12,Ep13,Ep14,Ep15,Ep16,Ep17,Ep18,Ep19,Ep20 : string;
begin
 //error checking then save all items to the database
 //
 if (medteprice.Enabled = True) and (medteprice.Text <> '') then
 begin
  Eprice:=medteprice.Text;
 end else
 if (medteprice.Enabled = True) and (medteprice.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered A Valid Price');
 end;
 //
 if (cbbproduct1.Enabled = True) and (cbbproduct1.Text <> '') then
 begin
  Ep1:=cbbproduct1.Text;
 end else
 if (cbbproduct1.Enabled = True) and (cbbproduct1.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 1');
 end;
 //
 if (cbbproduct2.Enabled = True) and (cbbproduct2.Text <> '') then
 begin
  Ep2:=cbbproduct2.Text;
 end else
 if (cbbproduct2.Enabled = True) and (cbbproduct2.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 2');
 end;
 //
 if (cbbproduct3.Enabled = True) and (cbbproduct3.Text <> '') then
 begin
  Ep3:=cbbproduct1.Text;
 end else
 if (cbbproduct3.Enabled = True) and (cbbproduct3.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 3');
 end;
 //
 if (cbbproduct4.Enabled = True) and (cbbproduct4.Text <> '') then
 begin
  Ep4:=cbbproduct4.Text;
 end else
 if (cbbproduct4.Enabled = True) and (cbbproduct4.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 4');
 end;
 //
 if (cbbproduct5.Enabled = True) and (cbbproduct5.Text <> '') then
 begin
  Ep5:=cbbproduct5.Text;
 end else
 if (cbbproduct5.Enabled = True) and (cbbproduct5.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 5');
 end;
 //
 if (cbbproduct6.Enabled = True) and (cbbproduct6.Text <> '') then
 begin
  Ep6:=cbbproduct6.Text;
 end else
 if (cbbproduct6.Enabled = True) and (cbbproduct6.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 6');
 end;
 //
 if (cbbproduct7.Enabled = True) and (cbbproduct7.Text <> '') then
 begin
  Ep7:=cbbproduct7.Text;
 end else
 if (cbbproduct7.Enabled = True) and (cbbproduct7.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 7');
 end;
 //
 if (cbbproduct8.Enabled = True) and (cbbproduct8.Text <> '') then
 begin
  Ep8:=cbbproduct8.Text;
 end else
 if (cbbproduct8.Enabled = True) and (cbbproduct8.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 8');
 end;
 //
 if (cbbproduct9.Enabled = True) and (cbbproduct9.Text <> '') then
 begin
  Ep9:=cbbproduct9.Text;
 end else
 if (cbbproduct9.Enabled = True) and (cbbproduct9.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 9');
 end;
 //
 if (cbbproduct10.Enabled = True) and (cbbproduct10.Text <> '') then
 begin
  Ep10:=cbbproduct10.Text;
 end else
 if (cbbproduct10.Enabled = True) and (cbbproduct10.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 10');
 end;
 //
 if (cbbproduct11.Enabled = True) and (cbbproduct11.Text <> '') then
 begin
  Ep11:=cbbproduct11.Text;
 end else
 if (cbbproduct11.Enabled = True) and (cbbproduct11.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 11');
 end;
 //
 if (cbbproduct12.Enabled = True) and (cbbproduct12.Text <> '') then
 begin
  Ep12:=cbbproduct12.Text;
 end else
 if (cbbproduct12.Enabled = True) and (cbbproduct12.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 12');
 end;
 //
 if (cbbproduct13.Enabled = True) and (cbbproduct13.Text <> '') then
 begin
  Ep13:=cbbproduct13.Text;
 end else
 if (cbbproduct13.Enabled = True) and (cbbproduct13.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 13');
 end;
 //
 if (cbbproduct14.Enabled = True) and (cbbproduct14.Text <> '') then
 begin
  Ep14:=cbbproduct14.Text;
 end else
 if (cbbproduct14.Enabled = True) and (cbbproduct14.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 14');
 end;
 //
 if (cbbproduct15.Enabled = True) and (cbbproduct15.Text <> '') then
 begin
  Ep15:=cbbproduct15.Text;
 end else
 if (cbbproduct15.Enabled = True) and (cbbproduct15.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 15');
 end;
 //
 if (cbbproduct16.Enabled = True) and (cbbproduct16.Text <> '') then
 begin
  Ep16:=cbbproduct16.Text;
 end else
 if (cbbproduct16.Enabled = True) and (cbbproduct16.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 16');
 end;
 //
 if (cbbproduct17.Enabled = True) and (cbbproduct17.Text <> '') then
 begin
  Ep17:=cbbproduct17.Text;
 end else
 if (cbbproduct17.Enabled = True) and (cbbproduct17.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 17');
 end;
 //
 if (cbbprocut18.Enabled = True) and (cbbprocut18.Text <> '') then
 begin
  Ep18:=cbbprocut18.Text;
 end else
 if (cbbprocut18.Enabled = True) and (cbbprocut18.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 18');
 end;
 //
 if (cbbproduct19.Enabled = True) and (cbbproduct19.Text <> '') then
 begin
  Ep19:=cbbproduct19.Text;
 end else
 if (cbbproduct19.Enabled = True) and (cbbproduct19.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 19');
 end;
 //
 if (cbbprocut20.Enabled = True) and (cbbprocut20.Text <> '') then
 begin
  Ep20:=cbbprocut20.Text;
 end else
 if (cbbprocut20.Enabled = True) and (cbbprocut20.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 20');
 end;
 //
 //here we will need to add in the checks for the ml's
 with DataModuleSpaMenu do
 begin
  if tblspamenu.Active = True then
  begin
   try
    tblspamenu.Edit;
    tblspamenu.FieldByName('Price').AsString := medteprice.Text;
    tblspamenu.FieldByName('Product1').AsString := cbbproduct1.Text;
    tblspamenu.FieldByName('Product2').AsString := cbbproduct2.Text;
    tblspamenu.FieldByName('Product3').AsString := cbbproduct3.Text;
    tblspamenu.FieldByName('Product4').AsString := cbbproduct4.Text;
    tblspamenu.FieldByName('Product5').AsString := cbbproduct5.Text;
    tblspamenu.FieldByName('Product6').AsString := cbbproduct6.Text;
    tblspamenu.FieldByName('Product7').AsString := cbbproduct7.Text;
    tblspamenu.FieldByName('Product8').AsString := cbbproduct8.Text;
    tblspamenu.FieldByName('Product9').AsString := cbbproduct9.Text;
    tblspamenu.FieldByName('Product10').AsString := cbbproduct10.Text;
    tblspamenu.FieldByName('Product11').AsString := cbbproduct11.Text;
    tblspamenu.FieldByName('Product12').AsString := cbbproduct12.Text;
    tblspamenu.FieldByName('Product13').AsString := cbbproduct13.Text;
    tblspamenu.FieldByName('Product14').AsString := cbbproduct14.Text;
    tblspamenu.FieldByName('Product15').AsString := cbbproduct15.Text;
    tblspamenu.FieldByName('Product16').AsString := cbbproduct16.Text;
    tblspamenu.FieldByName('Product17').AsString := cbbproduct17.Text;
    tblspamenu.FieldByName('Product18').AsString := cbbprocut18.Text;
    tblspamenu.FieldByName('Product19').AsString := cbbproduct19.Text;
    tblspamenu.FieldByName('Product20').AsString := cbbprocut20.Text;
    //rememeber to add the ml's
    tblspamenu.FieldByName('Product_1_ML').AsString := medtp1ml.Text;
    tblspamenu.FieldByName('Product_2_ML').AsString := medtp2ml.Text;
    tblspamenu.FieldByName('Product_3_ML').AsString := medtp3ml.Text;
    tblspamenu.FieldByName('Product_4_ML').AsString := medtp4ml.Text;
    tblspamenu.FieldByName('Product_5_ML').AsString := medtp5ml.Text;
    tblspamenu.FieldByName('Product_6_ML').AsString := medtp6ml.Text;
    tblspamenu.FieldByName('Product_7_ML').AsString := medtp7ml.Text;
    tblspamenu.FieldByName('Product_8_ML').AsString := medtp8ml.Text;
    tblspamenu.FieldByName('Product_9_ML').AsString := medtp9ml.Text;
    tblspamenu.FieldByName('Product_10_ML').AsString := medtp10ml.Text;
    tblspamenu.FieldByName('Product_11_ML').AsString := medtp11ml.Text;
    tblspamenu.FieldByName('Product_12_ML').AsString := medtp12ml.Text;
    tblspamenu.FieldByName('Product_13_ML').AsString := medtp13ml.Text;
    tblspamenu.FieldByName('Product_14_ML').AsString := medtp14ml.Text;
    tblspamenu.FieldByName('Product_15_ML').AsString := medtp15mls.Text;
    tblspamenu.FieldByName('Product_16_ML').AsString := medtp16ml.Text;
    tblspamenu.FieldByName('Product_17_ML').AsString := medtp17ml.Text;
    tblspamenu.FieldByName('Product_18_ML').AsString := medtp16ml.Text;
    tblspamenu.FieldByName('Product_19_ML').AsString := medtp19ml.Text;
    tblspamenu.FieldByName('Product_20_ML').AsString := medtmlp20.Text;
    //
    tblspamenu.Post;
   finally
    ShowMessage('The Changes For Treatment : ' + cbbEtreatment.Text + ' Has Been Saved Correctly !');
    btncancel.Click; //clears the fields
   end;
  end else
  begin
   ShowMessage('There Was An Error Connecting To The Spa Menu Database , Please Contact Your Software Developer ');
  end;
 end;
end;

procedure Tfrmedittreatment.cbbEtreatmentChange(Sender: TObject);
begin
 //here we are going to have to code when the user selects the treatment
 //enable the fields if it has a value
 with DataModuleSpaMenu do
 begin
   if tblspamenu.Active = True then
   begin
    //here we will work with the data since the database is connected
    //
    tblspamenu.Filtered:=False;
    tblspamenu.Filter:='';
    //
    tblspamenu.Filter:= 'Treatment_Name = ' + QuotedStr(cbbEtreatment.Text);
    tblspamenu.Filtered:=True;
    //
    //everytime the user changes the treatment we should clear the fields
    cbbproduct1.Text:='';
    cbbproduct2.Text:='';
    cbbproduct3.Text:='';
    cbbproduct4.Text:='';
    cbbproduct5.Text:='';
    cbbproduct6.Text:='';
    cbbproduct7.Text:='';
    cbbproduct8.Text:='';
    cbbproduct9.Text:='';
    cbbproduct10.Text:='';
    cbbproduct11.Text:='';
    cbbproduct12.Text:='';
    cbbproduct13.Text:='';
    cbbproduct14.Text:='';
    cbbproduct15.Text:='';
    cbbproduct16.Text:='';
    cbbproduct17.Text:='';
    cbbprocut20.Text:='';
    cbbproduct19.Text:='';
    cbbprocut20.Text:='';
    //
    medtp1ml.Enabled:=False;
    medtp2ml.Enabled:=False;
    medtp3ml.Enabled:=False;
    medtp4ml.Enabled:=False;
    medtp5ml.Enabled:=False;
    medtp6ml.Enabled:=False;
    medtp7ml.Enabled:=False;
    medtp8ml.Enabled:=False;
    medtp9ml.Enabled:=False;
    medtp10ml.Enabled:=False;
    medtp11ml.Enabled:=False;
    medtp12ml.Enabled:=False;
    medtp13ml.Enabled:=False;
    medtp14ml.Enabled:=False;
    medtp15mls.Enabled:=False;
    medtp16ml.Enabled:=False;
    medtp17ml.Enabled:=False;
    medtp18ml.Enabled:=False;
    medtp19ml.Enabled:=False;
    medtmlp20.Enabled:=False;
    //
    medtp1ml.Text:='';
    medtp2ml.Text:='';
    medtp3ml.Text:='';
    medtp4ml.Text:='';
    medtp5ml.Text:='';
    medtp6ml.Text:='';
    medtp7ml.Text:='';
    medtp8ml.Text:='';
    medtp9ml.Text:='';
    medtp10ml.Text:='';
    medtp11ml.Text:='';
    medtp12ml.Text:='';
    medtp13ml.Text:='';
    medtp14ml.Text:='';
    medtp15mls.Text:='';
    medtp16ml.Text:='';
    medtp17ml.Text:='';
    medtp18ml.Text:='';
    medtp19ml.Text:='';
    medtmlp20.Text:='';
    //
    if tblspamenu.RecordCount <> 0 then
    begin
     //now we will loop through each of the columns and see if there is data then
     //we will check the checkbox and enable the edit field
     //
     btnsavedits.Enabled:=True;
     //
     while not tblspamenu.Eof do
     begin
      //position 0 is the price
      if tblspamenu.FieldByName('Price').AsString <> '' then
      begin
       chklst1.Checked[0]:=True;
       medteprice.Enabled:=True;
       //
       medteprice.Text:=tblspamenu.FieldByName('Price').AsString;
      end else
      begin
       chklst1.Checked[0]:=False;
       medteprice.Enabled:=False;
      end;
      //     //we will also need to add the ml's to the medt
      if tblspamenu.FieldByName('Product1').AsString <> '' then
      begin
       chklst1.Checked[1]:=True;
       cbbproduct1.Enabled:=True;
       //
       medtp1ml.Enabled:=True;
       medtp1ml.Text:=tblspamenu.FieldByName('Product_1_ML').AsString;
       //
       cbbproduct1.Text:=tblspamenu.FieldByName('Product1').AsString;
      end else
      begin
       chklst1.Checked[1]:=False;
       cbbproduct1.Enabled:=False;
       medtp1ml.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product2').AsString <> '' then
      begin
       chklst1.Checked[2]:=True;
       cbbproduct2.Enabled:=True;
       //
       medtp2ml.Enabled:=True;
       medtp2ml.Text:=tblspamenu.FieldByName('Product_2_ML').AsString;
       cbbproduct2.Text:=tblspamenu.FieldByName('Product2').AsString;
      end else
      begin
       chklst1.Checked[2]:=False;
       cbbproduct2.Enabled:=False;
       medtp2ml.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product3').AsString <> '' then
      begin
       chklst1.Checked[3]:=True;
       cbbproduct3.Enabled:=True;
       medtp3ml.Enabled:=True;
       //
       medtp3ml.Text:=tblspamenu.FieldByName('Product_3_ML').AsString;
       cbbproduct3.Text:=tblspamenu.FieldByName('Product3').AsString;
      end else
      begin
       chklst1.Checked[3]:=False;
       cbbproduct3.Enabled:=False;
       medtp3ml.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product4').AsString <> '' then
      begin
       chklst1.Checked[4]:=True;
       cbbproduct4.Enabled:=True;
       medtp4ml.Enabled:=True;
       //
       medtp4ml.Text:=tblspamenu.FieldByName('Product_4_ML').AsString;
       cbbproduct4.Text:=tblspamenu.FieldByName('Product4').AsString;
      end else
      begin
       chklst1.Checked[4]:=False;
       cbbproduct4.Enabled:=False;
       medtp4ml.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product5').AsString <> '' then
      begin
       chklst1.Checked[5]:=True;
       cbbproduct5.Enabled:=True;
       medtp5ml.Enabled:=True;
       //
       medtp5ml.Text:=tblspamenu.FieldByName('Product_5_ML').AsString;
       cbbproduct5.Text:=tblspamenu.FieldByName('Product5').AsString;
      end else
      begin
       chklst1.Checked[5]:=False;
       cbbproduct5.Enabled:=False;
       medtp5ml.Enabled:=False;
      end;
      if tblspamenu.FieldByName('Product6').AsString <> '' then
      begin
       chklst1.Checked[6]:=True;
       cbbproduct6.Enabled:=True;
       medtp6ml.Enabled:=True;
       //
       medtp6ml.Text:=tblspamenu.FieldByName('Product_6_ML').AsString;
       cbbproduct6.Text:=tblspamenu.FieldByName('Product6').AsString;
      end else
      begin
       chklst1.Checked[6]:=False;
       cbbproduct6.Enabled:=False;
       medtp6ml.Enabled:=False;
      end;
      if tblspamenu.FieldByName('Product7').AsString <> '' then
      begin
       chklst1.Checked[7]:=True;
       cbbproduct7.Enabled:=True;
       medtp7ml.Enabled:=True;
       //
       medtp7ml.Text:=tblspamenu.FieldByName('Product_7_ML').AsString;
       cbbproduct7.Text:=tblspamenu.FieldByName('Product7').AsString;
      end else
      begin
       chklst1.Checked[7]:=False;
       cbbproduct7.Enabled:=False;
       medtp7ml.Enabled:=False;
      end;
      if tblspamenu.FieldByName('Product8').AsString <> '' then
      begin
       chklst1.Checked[8]:=True;
       cbbproduct8.Enabled:=True;
       medtp8ml.Enabled:=True;
       //
       medtp8ml.Text:=tblspamenu.FieldByName('Product_8_ML').AsString;
       cbbproduct8.Text:=tblspamenu.FieldByName('Product8').AsString;
      end else
      begin
       chklst1.Checked[8]:=False;
       cbbproduct8.Enabled:=False;
       medtp8ml.Enabled:=False;
      end;
      if tblspamenu.FieldByName('Product9').AsString <> '' then
      begin
       chklst1.Checked[9]:=True;
       cbbproduct9.Enabled:=True;
       medtp9ml.Enabled:=True;
       //
       medtp9ml.Text:=tblspamenu.FieldByName('Product_9_ML').AsString;
       cbbproduct9.Text:=tblspamenu.FieldByName('Product9').AsString;
      end else
      begin
       chklst1.Checked[9]:=False;
       cbbproduct9.Enabled:=False;
       medtp9ml.Enabled:=False;
      end;
      if tblspamenu.FieldByName('Product10').AsString <> '' then
      begin
       chklst1.Checked[10]:=True;
       cbbproduct10.Enabled:=True;
       medtp10ml.Enabled:=True;
       //
       medtp10ml.Text:=tblspamenu.FieldByName('Product_10_ML').AsString;
       cbbproduct10.Text:=tblspamenu.FieldByName('Product10').AsString;
      end else
      begin
       chklst1.Checked[10]:=False;
       cbbproduct10.Enabled:=False;
       medtp10ml.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product11').AsString <> '' then
      begin
       chklst1.Checked[11]:=True;
       cbbproduct11.Enabled:=True;
       medtp11ml.Enabled:=True;
       //
       medtp11ml.Text:=tblspamenu.FieldByName('Product_11_ML').AsString;
       cbbproduct11.Text:=tblspamenu.FieldByName('Product11').AsString;
      end else
      begin
       chklst1.Checked[11]:=False;
       cbbproduct11.Enabled:=False;
       medtp11ml.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product12').AsString <> '' then
      begin
       chklst1.Checked[12]:=True;
       cbbproduct12.Enabled:=True;
       medtp12ml.Enabled:=True;
       //
       medtp12ml.Text:=tblspamenu.FieldByName('Product_12_ML').AsString;
       cbbproduct12.Text:=tblspamenu.FieldByName('Product12').AsString;
      end else
      begin
       chklst1.Checked[12]:=False;
       cbbproduct12.Enabled:=False;
       medtp12ml.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product13').AsString <> '' then
      begin
       chklst1.Checked[13]:=True;
       cbbproduct13.Enabled:=True;
       medtp13ml.Enabled:=True;
       //
       medtp13ml.Text:=tblspamenu.FieldByName('Product_13_ML').AsString;
       cbbproduct13.Text:=tblspamenu.FieldByName('Product13').AsString;
      end else
      begin
       chklst1.Checked[13]:=False;
       cbbproduct13.Enabled:=False;
       medtp13ml.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product14').AsString <> '' then
      begin
       chklst1.Checked[14]:=True;
       cbbproduct14.Enabled:=True;
       medtp14ml.Enabled:=True;
       //
       medtp14ml.Text:=tblspamenu.FieldByName('Product_14_ML').AsString;
       cbbproduct14.Text:=tblspamenu.FieldByName('Product14').AsString;
      end else
      begin
       chklst1.Checked[14]:=False;
       cbbproduct14.Enabled:=False;
       medtp14ml.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product15').AsString <> '' then
      begin
       chklst1.Checked[15]:=True;
       cbbproduct15.Enabled:=True;
       medtp15mls.Enabled:=True;
       //
       medtp15mls.Text:=tblspamenu.FieldByName('Product_15_ML').AsString;
       cbbproduct15.Text:=tblspamenu.FieldByName('Product15').AsString;
      end else
      begin
       chklst1.Checked[15]:=False;
       cbbproduct15.Enabled:=False;
       medtp15mls.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product16').AsString <> '' then
      begin
       chklst1.Checked[16]:=True;
       cbbproduct16.Enabled:=True;
       medtp16ml.Enabled:=True;
       //
       medtp16ml.Text:=tblspamenu.FieldByName('Product_16_ML').AsString;
       cbbproduct16.Text:=tblspamenu.FieldByName('Product16').AsString;
      end else
      begin
       chklst1.Checked[16]:=False;
       cbbproduct16.Enabled:=False;
       medtp16ml.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product17').AsString <> '' then
      begin
       chklst1.Checked[17]:=True;
       cbbproduct17.Enabled:=True;
       medtp17ml.Enabled:=True;
       //
       medtp17ml.Text:=tblspamenu.FieldByName('Product_17_ML').AsString;
       cbbproduct17.Text:=tblspamenu.FieldByName('Product17').AsString;
      end else
      begin
       chklst1.Checked[17]:=False;
       cbbproduct17.Enabled:=False;
       medtp17ml.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product18').AsString <> '' then
      begin
       chklst1.Checked[18]:=True;
       cbbprocut18.Enabled:=True;
       medtp18ml.Enabled:=True;
       //
       medtp18ml.Text:=tblspamenu.FieldByName('Product_18_ML').AsString;
       cbbprocut18.Text:=tblspamenu.FieldByName('Product18').AsString;
      end else
      begin
       chklst1.Checked[18]:=False;
       cbbprocut18.Enabled:=False;
       medtp18ml.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product19').AsString <> '' then
      begin
       chklst1.Checked[19]:=True;
       cbbproduct19.Enabled:=True;
       medtp19ml.Enabled:=True;
       //
       medtp19ml.Text:=tblspamenu.FieldByName('Product_19_ML').AsString;
       cbbproduct19.Text:=tblspamenu.FieldByName('Product19').AsString;
      end else
      begin
       chklst1.Checked[19]:=False;
       cbbproduct19.Enabled:=False;
       medtp19ml.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product20').AsString <> '' then
      begin
       chklst1.Checked[20]:=True;
       cbbprocut20.Enabled:=True;
       medtmlp20.Enabled:=True;
       //
       medtmlp20.Text:=tblspamenu.FieldByName('Product_20_ML').AsString;
       cbbprocut20.Text:=tblspamenu.FieldByName('Product20').AsString;
      end else
      begin
       chklst1.Checked[20]:=False;
       cbbprocut20.Enabled:=False;
       medtmlp20.Enabled:=False;
      end;
      tblspamenu.Next;
     end;
    end else
    begin
     ShowMessage('We Could Not Find The Treaatment You Are Looking For , Please Try Again');
     tblspamenu.Next;
     btnsavedits.Enabled:=False;
     btncancel.Click;
    end;
   end else
   begin
    btnsavedits.Enabled:=False;
    btncancel.Click;
    ShowMessage('There Was An Error Connecting To The Spa Menu Database , Please Contact Your Software Developer');
   end;
 end;
end;

procedure Tfrmedittreatment.chklst1ClickCheck(Sender: TObject);
begin
 //here if the user enables a field
 //we will enable the field to allow editing
 //the field however in order to be edited but be checked
 if chklst1.Checked[0] = True then
 begin
  medteprice.Enabled:=True;
 end else
 begin
  medteprice.Enabled:=False;
 end;
 //
 if chklst1.Checked[1] = True then
 begin
  cbbproduct1.Enabled:=True;
 end else
 begin
  cbbproduct1.Enabled:=False;
 end;
 //
 if chklst1.Checked[2] = True then
 begin
  cbbproduct2.Enabled:=True;
 end else
 begin
  cbbproduct2.Enabled:=False;
 end;
 //
 if chklst1.Checked[3] = True then
 begin
  cbbproduct3.Enabled:=True;
 end else
 begin
  cbbproduct3.Enabled:=False;
 end;
 //
 if chklst1.Checked[4] = True then
 begin
  cbbproduct4.Enabled:=True;
 end else
 begin
  cbbproduct4.Enabled:=False;
 end;
 //
 if chklst1.Checked[5] = True then
 begin
  cbbproduct5.Enabled:=True;
 end else
 begin
  cbbproduct5.Enabled:=False;
 end;
 //
 if chklst1.Checked[6] = True then
 begin
  cbbproduct6.Enabled:=True;
 end else
 begin
  cbbproduct6.Enabled:=False;
 end;
 //
 if chklst1.Checked[7] = True then
 begin
  cbbproduct7.Enabled:=True;
 end else
 begin
  cbbproduct7.Enabled:=False;
 end;
 //
 if chklst1.Checked[8] = True then
 begin
  cbbproduct8.Enabled:=True;
 end else
 begin
  cbbproduct8.Enabled:=False;
 end;
 //
 if chklst1.Checked[9] = True then
 begin
  cbbproduct9.Enabled:=True;
 end else
 begin
  cbbproduct9.Enabled:=False;
 end;
 //
  if chklst1.Checked[10] = True then
 begin
  cbbproduct10.Enabled:=True;
 end else
 begin
  cbbproduct10.Enabled:=False;
 end;
 //
  if chklst1.Checked[11] = True then
 begin
  cbbproduct11.Enabled:=True;
 end else
 begin
  cbbproduct11.Enabled:=False;
 end;
 //
  if chklst1.Checked[12] = True then
 begin
  cbbproduct12.Enabled:=True;
 end else
 begin
  cbbproduct12.Enabled:=False;
 end;
 //
  if chklst1.Checked[13] = True then
 begin
  cbbproduct13.Enabled:=True;
 end else
 begin
  cbbproduct13.Enabled:=False;
 end;
 //
 if chklst1.Checked[14] = True then
 begin
  cbbproduct14.Enabled:=True;
 end else
 begin
  cbbproduct14.Enabled:=False;
 end;
 //
 if chklst1.Checked[15] = True then
 begin
  cbbproduct15.Enabled:=True;
 end else
 begin
  cbbproduct15.Enabled:=False;
 end;
 //
  if chklst1.Checked[16] = True then
 begin
  cbbproduct16.Enabled:=True;
 end else
 begin
  cbbproduct16.Enabled:=False;
 end;
 //
  if chklst1.Checked[17] = True then
 begin
  cbbproduct17.Enabled:=True;
 end else
 begin
  cbbproduct17.Enabled:=False;
 end;
 //
  if chklst1.Checked[18] = True then
 begin
  cbbprocut18.Enabled:=True;
 end else
 begin
  cbbprocut18.Enabled:=False;
 end;
 //
 if chklst1.Checked[19] = True then
 begin
  cbbproduct19.Enabled:=True;
 end else
 begin
  cbbproduct19.Enabled:=False;
 end;
 //
 if chklst1.Checked[20] = True then
 begin
  cbbprocut20.Enabled:=True;
 end else
 begin
  cbbprocut20.Enabled:=False;
 end;
end;

procedure Tfrmedittreatment.Exot1Click(Sender: TObject);
begin
 with DataModuleSpaMenu do
 begin
   if tblspamenu.Active = True then
   begin
    cbbEtreatment.Clear;
    tblspamenu.Filtered:=False;
    tblspamenu.Filter:='';
   end else
   begin
    ShowMessage('There Was An Error Connecting To The Database , Please Contact Your Software Developer !');
   end;
 end;
 btncancel.Click;
 btnexit.Click;
end;

procedure Tfrmedittreatment.File2Click(Sender: TObject);
begin
 btnhelp.Click;
end;

procedure Tfrmedittreatment.FormShow(Sender: TObject);
var
Tname:TStrings; //this is our stringlist
Tproducts:TStrings;
begin
 with DataModuleSpaMenu do
 begin
   if conspamenu.Connected = True then
   begin
    conspamenu.Connected:=False; //disconnect a previous session
    conspamenu.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;' +
    'Data Source=' + ExtractFilePath(Application.ExeName) + '\Bin\DB_Spa_Menu.accdb' +
    ';Mode=ReadWrite;Persist Security Info=False';
    //
    tblspamenu.TableName:='tbltreatmentmenu';
    //
    conspamenu.Connected:=True;
    tblspamenu.Active:=True;
    tblspamenu.First;
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
    tblspamenu.First;
    //
    //here we go to the first value
    //
   end;
 end;
 //
 //here we are going to populate the combobox with the treatment names
 //
 with DataModuleSpaMenu do
 begin
   if tblspamenu.Active = True then
   begin
    //here we will work with the dataset
    //
    //here we will write code to empty then populate the combobox with treatments
    cbbEtreatment.Clear;
    //
    Tname := TStringList.Create;
    Tproducts:=TStringList.Create;
    try
     tblspamenu.First;
     //
     while not tblspamenu.Eof do
     begin
      if Tname.IndexOf(tblspamenu.FieldByName('Treatment_Name').AsString) = -1 then
      begin
       //add to the stringlist
       Tname.Add(tblspamenu.FieldByName('Treatment_Name').AsString);
       tblspamenu.Next;
      end else
      begin
       //record already exists , then we just move to the next record
       tblspamenu.Next;
      end;
      //
      //assign the vlaues from the stringlist to the combobox
      cbbEtreatment.Items.Assign(Tname);
     end;
    finally
     Tname.Free;
    end;
    //
    //here we need to loop through the orders database for products and add items to
    //string list that we can assign to the dropdowns
    with Datamoduleorder do
     begin
     if tblorder.Active = True then
     begin
      tblorder.First;
      while not tblorder.Eof do
      begin
       tblorder.DisableControls;
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
      cbbproduct1.Items.Assign(Tproducts);
      cbbproduct2.Items.Assign(Tproducts);
      cbbproduct3.Items.Assign(Tproducts);
      cbbproduct4.Items.Assign(Tproducts);
      cbbproduct5.Items.Assign(Tproducts);
      cbbproduct6.Items.Assign(Tproducts);
      cbbproduct7.Items.Assign(Tproducts);
      cbbproduct8.Items.Assign(Tproducts);
      cbbproduct9.Items.Assign(Tproducts);
      cbbproduct10.Items.Assign(Tproducts);
      cbbproduct11.Items.Assign(Tproducts);
      cbbproduct12.Items.Assign(Tproducts);
      cbbproduct13.Items.Assign(Tproducts);
      cbbproduct14.Items.Assign(Tproducts);
      cbbproduct15.Items.Assign(Tproducts);
      cbbproduct16.Items.Assign(Tproducts);
      cbbproduct17.Items.Assign(Tproducts);
      cbbprocut18.Items.Assign(Tproducts);
      cbbproduct19.Items.Assign(Tproducts);
      cbbprocut20.Items.Assign(Tproducts);
     end else
     begin
      ShowMessage('There Was An Error Connecting To The Orders Database , Please Contact Your Software Developer');
     end;
    end;
   end else
   begin
    //here we will raise an error , since we will be connecting on the activate procedure
    ShowMessage('There Was An Error Connecting To The Spa Menu Database , Please Contact Your Software Developer !');
   end;
 end;
 //
 chklst1.Checked[0]:=False; //price
 chklst1.Checked[1]:=False; //product 1
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
 chklst1.Checked[20]:=False;
 //
 cbbproduct1.Enabled:=False;
 cbbproduct2.Enabled:=False;
 cbbproduct3.Enabled:=False;
 cbbproduct4.Enabled:=False;
 cbbproduct5.Enabled:=False;
 cbbproduct6.Enabled:=False;
 cbbproduct7.Enabled:=False;
 cbbproduct8.Enabled:=False;
 cbbproduct9.Enabled:=False;
 cbbproduct10.Enabled:=False;
 cbbproduct11.Enabled:=False;
 cbbproduct12.Enabled:=False;
 cbbproduct13.Enabled:=False;
 cbbproduct14.Enabled:=False;
 cbbproduct15.Enabled:=False;
 cbbproduct16.Enabled:=False;
 cbbproduct17.Enabled:=False;
 cbbprocut18.Enabled:=False;
 cbbproduct19.Enabled:=False;
 cbbprocut20.Enabled:=False;
 //
 medteprice.Enabled:=False;
 //
 cbbproduct1.Text :='';
 cbbproduct2.Text :='';
 cbbproduct3.Text :='';
 cbbproduct4.Text :='';
 cbbproduct5.Text :='';
 cbbproduct6.Text :='';
 cbbproduct7.Text :='';
 cbbproduct8.Text :='';
 cbbproduct9.Text :='';
 cbbproduct10.Text :='';
 cbbproduct11.Text :='';
 cbbproduct12.Text :='';
 cbbproduct13.Text :='';
 cbbproduct14.Text :='';
 cbbproduct15.Text :='';
 cbbproduct16.Text :='';
 cbbproduct17.Text :='';
 cbbprocut18.Text :='';
 cbbproduct19.Text :='';
 cbbprocut20.Text :='';
 //
 medteprice.Clear;
 //
 btnsavedits.Enabled:=False;
 //masked edits
 //
 medtp1ml.Enabled:=False;
 medtp2ml.Enabled:=False;
 medtp3ml.Enabled:=False;
 medtp4ml.Enabled:=False;
 medtp5ml.Enabled:=False;
 medtp6ml.Enabled:=False;
 medtp7ml.Enabled:=False;
 medtp8ml.Enabled:=False;
 medtp9ml.Enabled:=False;
 medtp10ml.Enabled:=False;
 medtp11ml.Enabled:=False;
 medtp12ml.Enabled:=False;
 medtp13ml.Enabled:=False;
 medtp14ml.Enabled:=False;
 medtp15mls.Enabled:=False;
 medtp16ml.Enabled:=False;
 medtp17ml.Enabled:=False;
 medtp18ml.Enabled:=False;
 medtp19ml.Enabled:=False;
 medtmlp20.Enabled:=False;
end;

procedure Tfrmedittreatment.SaveEdits1Click(Sender: TObject);
begin
 btnsavedits.Click;
end;

procedure Tfrmedittreatment.SaveEdits2Click(Sender: TObject);
begin
 btncancel.Click;
end;

end.
