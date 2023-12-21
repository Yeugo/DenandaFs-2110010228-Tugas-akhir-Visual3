unit FormLaporanPembayaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TFrLapPenjualan = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    dg1: TDBGrid;
    eCari: TEdit;
    l1: TLabel;
    c1: TComboBox;
    l2: TLabel;
    b1: TButton;
    procedure eCariChange(Sender: TObject);
    procedure c1Change(Sender: TObject);
    procedure b1Click(Sender: TObject);
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
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from penjualan where id_penjualan like "'+eCari.Text+'" or nama_kustomer like "'+eCari.Text+'"');
  zqry1.Open;

  //zqry1.SQL.Clear;
  //zqry1.SQL.Add('select * from penjualan');
  //zqry1.Open;
  //Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TFrLapPenjualan.c1Change(Sender: TObject);
begin
  if c1.Text = 'Nama Barang' then
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from penjualan order by nama_barang ASC');
    zqry1.Open;
  if c1.Text = 'Total Harga' then
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from penjualan order by total_harga ASC');
    zqry1.Open;
end;

procedure TFrLapPenjualan.b1Click(Sender: TObject);
begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT penjualan.id_penjualan, penjualan.kode_barang, penjualan.nama_barang, penjualan.nama_kustomer, penjualan.tgl_penjulan, penjualan.jumlah_barang, penjualan.total_harga, pembayaran.no_struk, pembayaran.bayar, pembayaran.kembali, pembayaran.mtd_bayar'+
                  'FROM penjualan INNER JOIN pembayaran ON penjualan.id_penjualan = pembayaran.id_penjualan order by penjualan.total_harga ASC');
    zqry1.Open;

end;

end.
