unit FormKustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TFrKustomer = class(TForm)
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
    dg1: TDBGrid;
    c1: TComboBox;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrKustomer: TFrKustomer;

implementation

{$R *.dfm}

procedure TFrKustomer.b1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into kustomer values("'+e1.Text+'", "'+e2.Text+'", "'+e3.Text+'", "'+c1.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from kustomer');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN')
end;

procedure TFrKustomer.b2Click(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('kustomer_id').Text := e1.Text;
  zqry1.FieldByName('nama').Text := e2.Text;
  zqry1.FieldByName('telepon').Text := e3.Text;;
  zqry1.FieldByName('status').Text := c1.Text;
  zqry1.Post;
end;

procedure TFrKustomer.b3Click(Sender: TObject);
begin
  if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
  zqry1.Delete;
end;

procedure TFrKustomer.b4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  c1.Clear;
end;

procedure TFrKustomer.dg1CellClick(Column: TColumn);
begin
  e1.Text:=zqry1.Fields[0].AsString;
  e2.Text:=zqry1.Fields[1].AsString;
  e3.Text:=zqry1.Fields[2].AsString;
  c1.Text:=zqry1.Fields[3].AsString;
end;

end.
