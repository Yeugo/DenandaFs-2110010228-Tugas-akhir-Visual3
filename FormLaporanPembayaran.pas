unit FormLaporanPembayaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, frxClass, frxDBSet;

type
  TFrLapPenjualan = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    eCari: TEdit;
    zqry2: TZQuery;
    dg1: TDBGrid;
    c1: TComboBox;
    b2: TButton;
    l1: TLabel;
    frxdb1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxdb2: TfrxDBDataset;
    b1: TButton;
    procedure eCariChange(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure c1Change(Sender: TObject);
    procedure b2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLapPenjualan: TFrLapPenjualan;

implementation

{$R *.dfm}

procedure TFrLapPenjualan.eCariChange(Sender: TObject);
begin
  //zqry2.SQL.Clear;
  //zqry2.SQL.Add('select * from penjualan where id_penjualan like "'+eCari.Text+'" or nama_kustomer like "'+eCari.Text+'"');
  //zqry2.Open;
  //zqry1.SQL.Clear;
  //zqry1.SQL.Add('select * from penjualan');
  //zqry1.Open;
  //Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TFrLapPenjualan.b1Click(Sender: TObject);
begin
   frxReport1.ShowReport();
end;

procedure TFrLapPenjualan.c1Change(Sender: TObject);
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

procedure TFrLapPenjualan.b2Click(Sender: TObject);
begin
    zqry2.SQL.Clear;
    zqry2.SQL.Add('SELECT penjualan.id_penjualan, penjualan.kode_barang, penjualan.nama_barang, penjualan.nama_kustomer, '+
                  'penjualan.tgl_penjulan, penjualan.jumlah_barang, penjualan.total_harga, pembayaran.no_struk, pembayaran.bayar, '+
                  'pembayaran.kembali, pembayaran.mtd_bayar FROM penjualan INNER JOIN pembayaran ON penjualan.id_penjualan = pembayaran.id_penjualan '+
                  'WHERE penjualan.id_penjualan like "'+eCari.Text+'" OR penjualan.nama_kustomer = "'+eCari.Text+'"');
    zqry2.Open;
end;

end.
