unit frm_Spa_Menu_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,DM_Spa_Menu, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tfrmspamenu = class(TForm)
    mm1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    Help1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    pnl1: TPanel;
    pnl2: TPanel;
    il1: TImageList;
    cbbtreatment: TComboBox;
    lbl1: TLabel;
    redtoutput: TRichEdit;
    procedure File2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbtreatmentChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmspamenu: Tfrmspamenu;

implementation

{$R *.dfm}

procedure Tfrmspamenu.cbbtreatmentChange(Sender: TObject);
begin
 // here we will apply a filter to the database to get the various products
 //and there qty's as well as the price for the treatment
 //
 redtoutput.Clear;
 //
 with DataModuleSpaMenu do
 begin
   if tblspamenu.Active = True then
   begin
    //here we will work with the dataset
    tblspamenu.Filtered:=False;
    tblspamenu.Filter:='';
    //
    tblspamenu.Filter := 'Treatment_Name = ' + QuotedStr(cbbtreatment.Text);
    tblspamenu.Filtered:=True;
    //
    //
    if tblspamenu.RecordCount = 0 then
    begin
     //we can not find the record
     ShowMessage('The Treatment You Are Looking For Can Not Be Found , Please Try Again !');
     tblspamenu.Filtered:=False;
     tblspamenu.Filter:='';
    end else
    begin
     //record has been found and we can extract the data and display it
     //
     redtoutput.Lines.Add('Name Of Treatment : ' + tblspamenu.FieldByName('Treatment_Name').AsString);
     redtoutput.Lines.Add('--------------------------------------');
     redtoutput.Lines.Add('Products To Be Used : ');
     redtoutput.Lines.Add('--------------------------------------');
     redtoutput.Lines.Add(tblspamenu.FieldByName('Product1').AsString);
     //before we show the products , we will need to check the columns and see if the value is nil

    end;
   end else
   begin
   ShowMessage('There Was An Error Connecting To The Database , Please Contact Your Software Developer !');
   end;
 end;
end;

procedure Tfrmspamenu.File2Click(Sender: TObject);
begin
 //clear and close
 frmspamenu.Close;
end;

procedure Tfrmspamenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 redtoutput.Clear;
end;

procedure Tfrmspamenu.FormShow(Sender: TObject);
var
Tname:TStrings; //this is our stringlist
begin
 // here we are going to connect the database
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
 //
 with DataModuleSpaMenu do
 begin
   if tblspamenu.Active = True then
   begin
    //here we will work with the dataset
    //
    //here we will write code to empty then populate the combobox with treatments
    cbbtreatment.Clear;
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
      cbbtreatment.Items.Assign(Tname);
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
end;

end.
