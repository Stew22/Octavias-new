unit frmsplash_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,System.Math;

type
  Tfrmsplash = class(TForm)
    imgsplash: TImage;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsplash: Tfrmsplash;

implementation

{$R *.dfm}

procedure Tfrmsplash.FormActivate(Sender: TObject);
var
imgDir:string;
Num:Integer;
begin
 //here we can loop through the banners
  //here we are going to set the images to select randomly
 //we can do this by making sure we keep the file name the same
 //then set a random number appeneded that falls within the image range
 //
 Randomize;
 //
 Num:=RandomRange(1,6);
 //we need to check if this should be on activate
 frmsplash.imgsplash.Picture.LoadFromFile(ExtractFileDir(Application.ExeName)+'/Bin/Banner_'+IntToStr(Num)+'.png');
end;

end.
