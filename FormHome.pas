unit FormHome;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxpngimage, ExtCtrls;

type
  TFrHome = class(TForm)
    l1: TLabel;
    img1: TImage;
    l4: TLabel;
    l2: TLabel;
    l3: TLabel;
    b1: TButton;
    l5: TLabel;
    b2: TButton;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrHome: TFrHome;

implementation

uses login, Unit3, FormAkun;

{$R *.dfm}

procedure TFrHome.b1Click(Sender: TObject);
begin
  if FormLogin=nil then
  FormLogin:=TFormLogin.Create(Application);
  FormLogin.Show;
end;

procedure TFrHome.b2Click(Sender: TObject);
begin
  if FrAkun=nil then
  FrAkun:=TFrAkun.Create(Application);
  FrAkun.Show;
end;

end.
