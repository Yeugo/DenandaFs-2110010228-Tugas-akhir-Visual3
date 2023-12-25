unit FormLapBarangMasuk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TFrLapBarangMasuk = class(TForm)
    eCari: TEdit;
    c1: TComboBox;
    con1: TZConnection;
    d1: TDataSource;
    zqry2: TZQuery;
    l1: TLabel;
    b1: TButton;
    dg1: TDBGrid;
    l2: TLabel;
    frxdb1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure c1Change(Sender: TObject);
    procedure eCariChange(Sender: TObject);
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLapBarangMasuk: TFrLapBarangMasuk;

implementation

{$R *.dfm}

procedure TFrLapBarangMasuk.c1Change(Sender: TObject);
begin
  if c1.Text = 'Nama Barang' then
   begin
      zqry2.SQL.Clear;
      zqry2.SQL.Add('SELECT barang_masuk.nama_barang, barang_masuk.tanggal_masuk, barang_masuk.jumlah, barang_masuk.harga_satuan, '+
                    'barang_masuk.total_harga, supplyer.nama_supplyer FROM barang_masuk '+
                    'INNER JOIN supplyer ON barang_masuk.kode_supplyer = supplyer.kode_supplyer '+
                    'order by barang_masuk.nama_barang ASC');
      zqry2.Open;
   end
   else if c1.Text = 'Jumlah' then
   begin
      zqry2.SQL.Clear;
      zqry2.SQL.Add('SELECT barang_masuk.*, supplyer.nama_supplyer FROM barang_masuk '+
                    'INNER JOIN supplyer ON barang_masuk.kode_supplyer = supplyer.kode_supplyer '+
                    'order by barang_masuk.jumlah ASC');
      zqry2.Open;
   end
   else
   begin
     zqry2.SQL.Clear;
     zqry2.SQL.Add('SELECT barang_masuk.*, supplyer.nama_supplyer FROM barang_masuk'+
                    'INNER JOIN supplyer ON barang_masuk.kode_supplyer = supplyer.kode_supplyer');
     zqry2.Open;
   end;
end;

procedure TFrLapBarangMasuk.eCariChange(Sender: TObject);
begin
    zqry2.SQL.Clear;
    zqry2.SQL.Add('SELECT barang_masuk.*, supplyer.nama_supplyer FROM barang_masuk '+
                  'INNER JOIN supplyer ON barang_masuk.kode_supplyer = supplyer.kode_supplyer '+
                  'where barang_masuk.nama_barang like "%'+eCari.Text+'%" or supplyer.nama_supplyer like "%'+eCari.Text+'%"');
    zqry2.Open;
end;

procedure TFrLapBarangMasuk.b1Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

end.
