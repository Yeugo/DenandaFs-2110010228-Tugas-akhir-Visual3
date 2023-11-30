unit FormPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, StdCtrls;

type
  TFrPenjualan = class(TForm)
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
    d1: TDataSource;
    frxReport1: TfrxReport;
    frxdb1: TfrxDBDataset;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    dtp1: TDateTimePicker;
    e5: TEdit;
    e6: TEdit;
    dg1: TDBGrid;
    e7: TEdit;
    l8: TLabel;
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
  FrPenjualan: TFrPenjualan;

implementation

{$R *.dfm}

procedure TFrPenjualan.b1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into penjualan values("'+e1.Text+'", "'+e2.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'", "'+e5.Text+'", "'+e6.Text+'", "'+e7.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from penjualan');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TFrPenjualan.b2Click(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('id_penjualan').Text := e1.Text;
  zqry1.FieldByName('kode_barang').Text := e2.Text;
  zqry1.FieldByName('nama_barang').Text := e3.Text;
  zqry1.FieldByName('nama_kustomer').Text := e4.Text;
  zqry1.FieldByName('tgl_penjualan').AsDateTime := dtp1.date;
  zqry1.FieldByName('jumlah_barang').Text := e5.Text;
  zqry1.FieldByName('harga_satuan').Text := e6.Text;
  zqry1.FieldByName('total_harga').Text := e7.Text;
  zqry1.Post;
end;

procedure TFrPenjualan.b3Click(Sender: TObject);
begin
  if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
  zqry1.Delete;
end;

procedure TFrPenjualan.b4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
  e6.Clear;
  e7.Clear;
end;

procedure TFrPenjualan.dg1CellClick(Column: TColumn);
begin
  e1.Text:=zqry1.Fields[0].AsString;
  e2.Text:=zqry1.Fields[1].AsString;
  e3.Text:=zqry1.Fields[2].AsString;
  e4.Text:=zqry1.Fields[3].AsString;
  dtp1.date:=zqry1.Fields[4].AsDateTime;
  e5.Text:=zqry1.Fields[5].AsString;
  e6.Text:=zqry1.Fields[6].AsString;
  e7.Text:=zqry1.Fields[7].AsString;
end;

end.
