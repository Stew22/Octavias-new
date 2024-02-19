unit frm_Edit_treatment_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,DM_Spa_Menu,Winapi.ShellAPI,
  Vcl.CheckLst, Vcl.Mask;

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
    edtep1: TEdit;
    edtep2: TEdit;
    edtep3: TEdit;
    edtep4: TEdit;
    edtep5: TEdit;
    chklst1: TCheckListBox;
    edtep6: TEdit;
    edtep7: TEdit;
    edtep8: TEdit;
    edtep9: TEdit;
    edtep10: TEdit;
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
 edtep1.Clear;
 edtep2.Clear;
 edtep3.Clear;
 edtep4.Clear;
 edtep5.Clear;
 edtep6.Clear;
 edtep7.Clear;
 edtep8.Clear;
 edtep9.Clear;
 edtep10.Clear;
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
 btnsavedits.Enabled:=False;
 medteprice.Enabled:=False;
 //
 edtep1.Enabled:=False;
 edtep2.Enabled:=False;
 edtep3.Enabled:=False;
 edtep4.Enabled:=False;
 edtep5.Enabled:=False;
 edtep6.Enabled:=False;
 edtep7.Enabled:=False;
 edtep8.Enabled:=False;
 edtep9.Enabled:=False;
 edtep10.Enabled:=False;
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
 EPrice,Ep1,Ep2,Ep3,Ep4,Ep5 : string;
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
 if (edtep1.Enabled = True) and (edtep1.Text <> '') then
 begin
  Ep1:=edtep1.Text;
 end else
 if (edtep1.Enabled = True) and (edtep1.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 1');
 end;
 //
  if (edtep2.Enabled = True) and (edtep2.Text <> '') then
 begin
  Ep2:=edtep2.Text;
 end else
 if (edtep2.Enabled = True) and (edtep2.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 2');
 end;
 //
 if (edtep3.Enabled = True) and (edtep3.Text <> '') then
 begin
  Ep3:=edtep3.Text;
 end else
 if (edtep3.Enabled = True) and (edtep3.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 3');
 end;
 //
 if (edtep4.Enabled = True) and (edtep4.Text <> '') then
 begin
  Ep4:=edtep4.Text;
 end else
 if (edtep4.Enabled = True) and (edtep4.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 4');
 end;
 //
 if (edtep5.Enabled = True) and (edtep5.Text <> '') then
 begin
  Ep5:=edtep5.Text;
 end else
 //
 if (edtep5.Enabled = True) and (edtep5.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 5');
 end else
 //
 if (edtep6.Enabled = True) and (edtep6.Text = '')  then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 6');
 end else
 //
 if (edtep7.Enabled = True) and (edtep7.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 7');
 end else
 //
 if (edtep8.Enabled = True) and (edtep8.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 8');
 end else
 //
 if (edtep9.Enabled = True) and (edtep9.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 9');
 end else
 //
 if (edtep10.Enabled = True) and (edtep10.Text = '') then
 begin
  ShowMessage('Please Ensure You Have Entered Valid Detials For Product 10');
 end;
 //
 with DataModuleSpaMenu do
 begin
  if tblspamenu.Active = True then
  begin
   try
    tblspamenu.Edit;
    tblspamenu.FieldByName('Price').AsString := medteprice.Text;
    tblspamenu.FieldByName('Product1').AsString := edtep1.Text;
    tblspamenu.FieldByName('Product2').AsString := edtep2.Text;
    tblspamenu.FieldByName('Product3').AsString := edtep3.Text;
    tblspamenu.FieldByName('Product4').AsString := edtep4.Text;
    tblspamenu.FieldByName('Product5').AsString := edtep5.Text;
    tblspamenu.FieldByName('Product6').AsString := edtep5.Text;
    tblspamenu.FieldByName('Product7').AsString := edtep5.Text;
    tblspamenu.FieldByName('Product8').AsString := edtep5.Text;
    tblspamenu.FieldByName('Product9').AsString := edtep5.Text;
    tblspamenu.FieldByName('Product10').AsString := edtep5.Text;
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
      //
      if tblspamenu.FieldByName('Product1').AsString <> '' then
      begin
       chklst1.Checked[1]:=True;
       edtep1.Enabled:=True;
       //
       edtep1.Text:=tblspamenu.FieldByName('Product1').AsString;
      end else
      begin
       chklst1.Checked[1]:=False;
       edtep1.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product2').AsString <> '' then
      begin
       chklst1.Checked[2]:=True;
       edtep2.Enabled:=True;
       //
       edtep2.Text:=tblspamenu.FieldByName('Product2').AsString;
      end else
      begin
       chklst1.Checked[2]:=False;
       edtep2.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product3').AsString <> '' then
      begin
       chklst1.Checked[3]:=True;
       edtep3.Enabled:=True;
       //
       edtep3.Text:=tblspamenu.FieldByName('Product3').AsString;
      end else
      begin
       chklst1.Checked[3]:=False;
       edtep3.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product4').AsString <> '' then
      begin
       chklst1.Checked[4]:=True;
       edtep4.Enabled:=True;
       //
       edtep4.Text:=tblspamenu.FieldByName('Product4').AsString;
      end else
      begin
       chklst1.Checked[4]:=False;
       edtep4.Enabled:=False;
      end;
      //
      if tblspamenu.FieldByName('Product5').AsString <> '' then
      begin
       chklst1.Checked[5]:=True;
       edtep5.Enabled:=True;
       //
       edtep5.Text:=tblspamenu.FieldByName('Product5').AsString;
      end else
      begin
       chklst1.Checked[5]:=False;
       edtep5.Enabled:=False;
      end;
      if tblspamenu.FieldByName('Product6').AsString <> '' then
      begin
       chklst1.Checked[6]:=True;
       edtep6.Enabled:=True;
       //
       edtep6.Text:=tblspamenu.FieldByName('Product6').AsString;
      end else
      begin
       chklst1.Checked[6]:=False;
       edtep6.Enabled:=False;
      end;
      if tblspamenu.FieldByName('Product7').AsString <> '' then
      begin
       chklst1.Checked[7]:=True;
       edtep7.Enabled:=True;
       //
       edtep7.Text:=tblspamenu.FieldByName('Product7').AsString;
      end else
      begin
       chklst1.Checked[7]:=False;
       edtep7.Enabled:=False;
      end;
      if tblspamenu.FieldByName('Product8').AsString <> '' then
      begin
       chklst1.Checked[8]:=True;
       edtep8.Enabled:=True;
       //
       edtep8.Text:=tblspamenu.FieldByName('Product8').AsString;
      end else
      begin
       chklst1.Checked[8]:=False;
       edtep8.Enabled:=False;
      end;
      if tblspamenu.FieldByName('Product9').AsString <> '' then
      begin
       chklst1.Checked[9]:=True;
       edtep9.Enabled:=True;
       //
       edtep9.Text:=tblspamenu.FieldByName('Product9').AsString;
      end else
      begin
       chklst1.Checked[9]:=False;
       edtep9.Enabled:=False;
      end;
      if tblspamenu.FieldByName('Product10').AsString <> '' then
      begin
       chklst1.Checked[10]:=True;
       edtep10.Enabled:=True;
       //
       edtep10.Text:=tblspamenu.FieldByName('Product10').AsString;
      end else
      begin
       chklst1.Checked[10]:=False;
       edtep10.Enabled:=False;
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
  edtep1.Enabled:=True;
 end else
 begin
  edtep1.Enabled:=False;
 end;
 //
 if chklst1.Checked[2] = True then
 begin
  edtep2.Enabled:=True;
 end else
 begin
  edtep2.Enabled:=False;
 end;
 //
 if chklst1.Checked[3] = True then
 begin
  edtep3.Enabled:=True;
 end else
 begin
  edtep3.Enabled:=False;
 end;
 //
 if chklst1.Checked[4] = True then
 begin
  edtep4.Enabled:=True;
 end else
 begin
  edtep4.Enabled:=False;
 end;
 //
 if chklst1.Checked[5] = True then
 begin
  edtep5.Enabled:=True;
 end else
 begin
  edtep5.Enabled:=False;
 end;
 //
 if chklst1.Checked[6] = True then
 begin
  edtep6.Enabled:=True;
 end else
 begin
  edtep6.Enabled:=False;
 end;
 //
 if chklst1.Checked[7] = True then
 begin
  edtep7.Enabled:=True;
 end else
 begin
  edtep7.Enabled:=False;
 end;
 //
 if chklst1.Checked[8] = True then
 begin
  edtep8.Enabled:=True;
 end else
 begin
  edtep8.Enabled:=False;
 end;
 //
 if chklst1.Checked[9] = True then
 begin
  edtep9.Enabled:=True;
 end else
 begin
  edtep9.Enabled:=False;
 end;
 //
 if chklst1.Checked[10] = True then
 begin
  edtep10.Enabled:=True;
 end else
 begin
  edtep10.Enabled:=False;
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
   end else
   begin
    //here we will raise an error , since we will be connecting on the activate procedure
    ShowMessage('There Was An Error Connecting To The Database , Please Contact Your Software Developer !');
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
 //
 edtep1.Enabled:=False;
 edtep2.Enabled:=False;
 edtep3.Enabled:=False;
 edtep4.Enabled:=False;
 edtep5.Enabled:=False;
 edtep6.Enabled:=False;
 edtep7.Enabled:=False;
 edtep8.Enabled:=False;
 edtep9.Enabled:=False;
 edtep10.Enabled:=False;
 medteprice.Enabled:=False;
 //
 edtep1.Clear;
 edtep2.Clear;
 edtep3.Clear;
 edtep4.Clear;
 edtep5.Clear;
 edtep5.Clear;
 edtep6.Clear;
 edtep7.Clear;
 edtep8.Clear;
 edtep9.Clear;
 edtep10.Clear;
 medteprice.Clear;
 //
 btnsavedits.Enabled:=False;
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
