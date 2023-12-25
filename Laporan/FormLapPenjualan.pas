unit FormLapPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TFrLapPenjualann = class(TForm)
    eCari: TEdit;
    dg1: TDBGrid;
    c1: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    zqry2: TZQuery;
    l1: TLabel;
    frxdb1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxdb2: TfrxDBDataset;
    b1: TButton;
    l2: TLabel;
    procedure eCariChange(Sender: TObject);
    procedure c1Change(Sender: TObject);
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLapPenjualann: TFrLapPenjualann;

implementation

{$R *.dfm}

procedure TFrLapPenjualann.eCariChange(Sender: TObject);
begin
    zqry2.SQL.Clear;
    zqry2.SQL.Add('SELECT penjualan.id_penjualan, penjualan.kode_barang, penjualan.nama_barang, penjualan.nama_kustomer, '+
                  'penjualan.tgl_penjulan, penjualan.jumlah_barang, penjualan.total_harga, pembayaran.no_struk, pembayaran.bayar, '+
                  'pembayaran.kembali, pembayaran.mtd_bayar FROM penjualan INNER JOIN pembayaran ON penjualan.id_penjualan = pembayaran.id_penjualan '+
                  'WHERE penjualan.id_penjualan like "%'+eCari.Text+'%" OR penjualan.nama_kustomer like "%'+eCari.Text+'%"');
    zqry2.Open;
end;

procedure TFrLapPenjualann.c1Change(Sender: TObject);
begin
  if c1.Text = 'Nama Barang' then
   begin
      zqry2.SQL.Clear;
      zqry2.SQL.Add('SELECT penjualan.id_penjualan, penjualan.kode_barang, penjualan.nama_barang, penjualan.nama_kustomer, '+
                  'penjualan.tgl_penjulan, penjualan.jumlah_barang, penjualan.total_harga, pembayaran.no_struk, pembayaran.bayar, '+
                  'pembayaran.kembali, pembayaran.mtd_bayar FROM penjualan INNER JOIN pembayaran ON penjualan.id_penjualan = pembayaran.id_penjualan '+
                  'order by penjualan.nama_barang ASC');
      zqry2.Open;
   end
   else if c1.Text = 'Total Harga' then
   begin
      zqry2.SQL.Clear;
      zqry2.SQL.Add('SELECT penjualan.id_penjualan, penjualan.kode_barang, penjualan.nama_barang, penjualan.nama_kustomer, '+
                  'penjualan.tgl_penjulan, penjualan.jumlah_barang, penjualan.total_harga, pembayaran.no_struk, pembayaran.bayar, '+
                  'pembayaran.kembali, pembayaran.mtd_bayar FROM penjualan INNER JOIN pembayaran ON penjualan.id_penjualan = pembayaran.id_penjualan '+
                  'order by penjualan.total_harga ASC');
      zqry2.Open;
   end
   else
   begin
     zqry2.SQL.Clear;
     zqry2.SQL.Add('SELECT penjualan.id_penjualan, penjualan.kode_barang, penjualan.nama_barang, penjualan.nama_kustomer, '+
                  'penjualan.tgl_penjulan, penjualan.jumlah_barang, penjualan.total_harga, pembayaran.no_struk, pembayaran.bayar, '+
                  'pembayaran.kembali, pembayaran.mtd_bayar FROM penjualan INNER JOIN pembayaran ON penjualan.id_penjualan = pembayaran.id_penjualan');
     zqry2.Open;
   end;
end;

procedure TFrLapPenjualann.b1Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

end.
