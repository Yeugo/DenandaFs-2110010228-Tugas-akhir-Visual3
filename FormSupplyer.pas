unit FormSupplyer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TFrSupplier = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    l4: TLabel;
    d1: TDataSource;
    dg1: TDBGrid;
    frxdb1: TfrxDBDataset;
    frxReport1: TfrxReport;
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
  FrSupplier: TFrSupplier;

implementation

{$R *.dfm}

procedure TFrSupplier.b1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into supplyer values("'+e1.Text+'", "'+e2.Text+'", "'+e3.Text+'", "'+e4.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from supplyer');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN')
end;

procedure TFrSupplier.b2Click(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('kode_supplyer').Text := e1.Text;
  zqry1.FieldByName('nama_supplyer').Text := e2.Text;
  zqry1.FieldByName('alamat').Text := e3.Text;
  zqry1.FieldByName('telepon').Text := e4.Text;
  zqry1.Post;
end;

procedure TFrSupplier.b3Click(Sender: TObject);
begin
  if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
  zqry1.Delete;
end;

procedure TFrSupplier.b4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
end;

procedure TFrSupplier.dg1CellClick(Column: TColumn);
begin
  e1.Text:=zqry1.Fields[0].AsString;
  e2.Text:=zqry1.Fields[1].AsString;
  e3.Text:=zqry1.Fields[2].AsString;
  e4.Text:=zqry1.Fields[3].AsString;
end;

end.
