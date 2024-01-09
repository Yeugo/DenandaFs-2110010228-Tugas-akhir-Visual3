unit FormUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TFrUser = class(TForm)
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    e2: TEdit;
    e3: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    c1: TComboBox;
    dg1: TDBGrid;
    e4: TEdit;
    l5: TLabel;
    l6: TLabel;
    frxReport1: TfrxReport;
    frxdb1: TfrxDBDataset;
    c2: TComboBox;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrUser: TFrUser;
  EncryptedPasswordQuery: string;

implementation

{$R *.dfm}

procedure TFrUser.b1Click(Sender: TObject);
begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('INSERT INTO user (user_id, username, password, email, level, status) VALUES (null, :username, AES_ENCRYPT(:password, ''76jV60mkzU''), :email, :level, :status)');
    zqry1.ParamByName('username').Value := e2.Text;
    zqry1.ParamByName('password').Value := e3.Text;
    zqry1.ParamByName('email').Value := e4.Text;
    zqry1.ParamByName('level').Value := c1.Text;
    zqry1.ParamByName('status').Value := c2.Text;
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from user');
    zqry1.Open;
    Showmessage('DATA BERHASIL DI SIMPAN')
end;

procedure TFrUser.b2Click(Sender: TObject);
begin
  EncryptedPasswordQuery :=
    'UPDATE user ' +
    'SET password = AES_ENCRYPT(:plainTextPassword, :encryptionKey), ' +
    '    username = :username, ' +
    '    email = :email, ' +
    '    level = :level, ' +
    '    status = :status ' +
    'WHERE username = :username';

  zqry1.SQL.Text := EncryptedPasswordQuery;
  zqry1.ParamByName('plainTextPassword').AsString := e3.Text; // Plain password
  zqry1.ParamByName('encryptionKey').AsString := '76jV60mkzU'; // Your encryption key
  zqry1.ParamByName('username').AsString := e2.Text; // Username
  zqry1.ParamByName('email').AsString := e4.Text; // Email
  zqry1.ParamByName('level').AsString := c1.Text; // Level
  zqry1.ParamByName('status').AsString := c2.Text; // Status
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from user');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT')
end;

procedure TFrUser.b4Click(Sender: TObject);
begin
  e2.Clear;
  e3.Clear;
  e4.Clear;
  c1.Clear;
  c2.Clear;
end;

procedure TFrUser.dg1CellClick(Column: TColumn);
begin
  e2.Text:=zqry1.Fields[1].AsString;
  e3.Text:=zqry1.Fields[2].AsString;
  e4.Text:=zqry1.Fields[3].AsString;
  c1.Text:=zqry1.Fields[4].AsString;
  c2.Text:=zqry1.Fields[5].AsString;;
end;

end.
