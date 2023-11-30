unit FormAkun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TFrAkun = class(TForm)
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    e2: TEdit;
    e3: TEdit;
    b1: TButton;
    c1: TComboBox;
    e4: TEdit;
    e5: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAkun: TFrAkun;

implementation

{$R *.dfm}

procedure TFrAkun.b1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into user values(null, "'+e2.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+c1.Text+'", "'+e5.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from user');
  zqry1.Open;
  Showmessage('Akun Berhasil Dibuat')
end;

end.
