unit FormStockBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TFrStockBarang = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    dg1: TDBGrid;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    frxReport1: TfrxReport;
    frxdb1: TfrxDBDataset;
    e6: TEdit;
    l6: TLabel;
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
  FrStockBarang: TFrStockBarang;

implementation

{$R *.dfm}

procedure TFrStockBarang.b1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into stock_barang values("'+e1.Text+'", "'+e2.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+e5.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from stock_barang');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TFrStockBarang.b2Click(Sender: TObject);
begin
 zqry1.Edit;
  zqry1.FieldByName('kode_barang').Text := e1.Text;
  zqry1.FieldByName('nama_barang').Text := e2.Text;
  zqry1.FieldByName('harga_beli').Text := e3.Text;
  zqry1.FieldByName('harga_jual').Text := e4.Text;
  zqry1.FieldByName('stok').Text := e5.Text;
  zqry1.Post;
end;

procedure TFrStockBarang.b3Click(Sender: TObject);
begin
  if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
  zqry1.Delete;
end;

procedure TFrStockBarang.b4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
end;

procedure TFrStockBarang.dg1CellClick(Column: TColumn);
begin
  e1.Text:=zqry1.Fields[0].AsString;
  e2.Text:=zqry1.Fields[1].AsString;
  e3.Text:=zqry1.Fields[2].AsString;
  e4.Text:=zqry1.Fields[3].AsString;
  e5.Text:=zqry1.Fields[4].AsString;
end;

end.
