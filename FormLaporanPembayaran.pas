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
    eCari: TEdit;
    l1: TLabel;
    c1: TComboBox;
    l2: TLabel;
    b1: TButton;
    zqry2: TZQuery;
    dg1: TDBGrid;
    procedure eCariChange(Sender: TObject);
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

procedure TFrLapPenjualan.b1Click(Sender: TObject);
begin
   if c1.Text = 'Nama Barang' then
   begin
     zqry1.SQL.Clear;
      zqry1.SQL.Add('select * from penjualan order by nama_barang ASC');
      zqry1.Open;
   end
   else if c1.Text = 'Total Harga' then 
   begin
      zqry1.SQL.Clear;
      zqry1.SQL.Add('select * from penjualan order by total_harga ASC');
      zqry1.Open;
   end
   else
   begin
     ShowMessage('Silahkan Pilih Menu Filter!!');
   end;
end;

end.
