unit FormLapStokBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TFrLapStokBarang = class(TForm)
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
  FrLapStokBarang: TFrLapStokBarang;

implementation

{$R *.dfm}

procedure TFrLapStokBarang.c1Change(Sender: TObject);
begin
  if c1.Text = 'Harga Jual' then
   begin
      zqry2.SQL.Clear;
      zqry2.SQL.Add('SELECT stock_barang.*, barang_masuk.kode_barang, barang_masuk.kode_supplyer FROM stock_barang '+
                    'INNER JOIN barang_masuk ON stock_barang.kode_barang = barang_masuk.kode_barang '+
                    'order by stock_barang.harga_jual ASC');
      zqry2.Open;
   end
   else if c1.Text = 'Stok' then
   begin
      zqry2.SQL.Clear;
      zqry2.SQL.Add('SELECT stock_barang.*, barang_masuk.kode_barang, barang_masuk.kode_supplyer FROM stock_barang '+
                    'INNER JOIN barang_masuk ON stock_barang.kode_barang = barang_masuk.kode_barang '+
                    'order by stock_barang.stok ASC');
      zqry2.Open;
   end
   else
   begin
     zqry2.SQL.Clear;
     zqry2.SQL.Add('SELECT stock_barang.*, barang_masuk.kode_barang, barang_masuk.kode_supplyer FROM stock_barang '+
                    'INNER JOIN barang_masuk ON stock_barang.kode_barang = barang_masuk.kode_barang');
     zqry2.Open;
   end;
end;

procedure TFrLapStokBarang.eCariChange(Sender: TObject);
begin
    zqry2.SQL.Clear;
    zqry2.SQL.Add('SELECT stock_barang.*, barang_masuk.kode_barang, barang_masuk.kode_supplyer FROM stock_barang '+
                    'INNER JOIN barang_masuk ON stock_barang.kode_barang = barang_masuk.kode_barang '+
                    'where stock_barang.nama_barang like "%'+eCari.Text+'%" or barang_masuk.kode_supplyer like "%'+eCari.Text+'%"');
    zqry2.Open;
end;

procedure TFrLapStokBarang.b1Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

end.
