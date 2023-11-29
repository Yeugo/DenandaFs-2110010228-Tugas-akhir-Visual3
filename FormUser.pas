unit FormUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TFrUser = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    frxReport1: TfrxReport;
    frxdb1: TfrxDBDataset;
    c1: TComboBox;
    dg1: TDBGrid;
    e4: TEdit;
    e5: TEdit;
    l5: TLabel;
    l6: TLabel;
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

implementation

{$R *.dfm}

procedure TFrUser.b1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into user values("'+e1.Text+'", "'+e2.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+c1.Text+'", "'+e5.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from user');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN')
end;

procedure TFrUser.b2Click(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('user_id').Text := e1.Text;
  zqry1.FieldByName('username').Text := e2.Text;
  zqry1.FieldByName('password').Text := e3.Text;
  zqry1.FieldByName('email').Text := e4.Text;
  zqry1.FieldByName('level').Text := c1.Text;
  zqry1.FieldByName('status').Text := e5.Text;
  zqry1.Post;
end;

procedure TFrUser.b4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
  c1.Clear;
  e5.Clear;
end;

procedure TFrUser.dg1CellClick(Column: TColumn);
begin
  e1.Text:=zqry1.Fields[0].AsString;
  e2.Text:=zqry1.Fields[1].AsString;
  e3.Text:=zqry1.Fields[2].AsString;
  e4.Text:=zqry1.Fields[3].AsString;
  c1.Text:=zqry1.Fields[4].AsString;
  e5.Text:=zqry1.Fields[5].AsString;;
end;

end.
