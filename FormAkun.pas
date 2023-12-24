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
    e2: TEdit;
    e3: TEdit;
    b1: TButton;
    c1: TComboBox;
    e4: TEdit;
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
 var
    cek : Boolean;
begin

  try
    zqry1.SQL.Text := '';
    zqry1.SQL.Text := 'SELECT * FROM user WHERE username = :username';
    zqry1.ParamByName('username').Value := e2.Text;
    zqry1.Open;



    cek := not zqry1.IsEmpty;

    //if zqry1.FieldByName('username').AsString = e2.Text then
    if e2.Text = '' then
    begin
      ShowMessage('Username belum diisi');
    end
    else if e3.Text = '' then
    begin
      ShowMessage('Password belum diisi');
    end
    else if e4.Text = '' then
    begin
      ShowMessage('Email belum diisi');
    end
    else if c1.Text = '' then
    begin
      ShowMessage('Level belum diisi');
    end
    else if not cek then
    begin
      zqry1.SQL.Clear;
      zqry1.SQL.Add('INSERT INTO user (user_id, username, password, email, level, status) VALUES (null, :username, AES_ENCRYPT(:password, ''76jV60mkzU''), :email, :level, ''aktif'')');
      zqry1.ParamByName('username').Value := e2.Text;
      zqry1.ParamByName('password').Value := e3.Text;
      zqry1.ParamByName('email').Value := e4.Text;
      zqry1.ParamByName('level').Value := c1.Text;
      zqry1.ExecSQL;
      Showmessage('Akun Berhasil Dibuat');
    end
    else
    begin
      ShowMessage('Username ini sudah ada!');
      zqry1.SQL.Clear;
    end;
    finally
  end;
end;

end.
