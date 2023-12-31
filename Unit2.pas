unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFrMenu = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    StockBaranf1: TMenuItem;
    BarangMasuk1: TMenuItem;
    Supplyer1: TMenuItem;
    Penjualan1: TMenuItem;
    Pembayaran1: TMenuItem;
    Kustomer1: TMenuItem;
    User1: TMenuItem;
    LaporanReport1: TMenuItem;
    LaporanStokBarang1: TMenuItem;
    LaporanBarangMasuk1: TMenuItem;
    Laporan1: TMenuItem;
    LaporanPen1: TMenuItem;
    LaporanKustomer1: TMenuItem;
    LaporanDataUser1: TMenuItem;
    MenuKasir1: TMenuItem;
    procedure StockBaranf1Click(Sender: TObject);
    procedure BarangMasuk1Click(Sender: TObject);
    procedure Supplyer1Click(Sender: TObject);
    procedure Penjualan1Click(Sender: TObject);
    procedure Pembayaran1Click(Sender: TObject);
    procedure Kustomer1Click(Sender: TObject);
    procedure User1Click(Sender: TObject);
    procedure LaporanStokBarang1Click(Sender: TObject);
    procedure LaporanBarangMasuk1Click(Sender: TObject);
    procedure LaporanKustomer1Click(Sender: TObject);
    procedure LaporanDataUser1Click(Sender: TObject);
    procedure MenuKasir1Click(Sender: TObject);
    procedure Laporan1Click(Sender: TObject);
    procedure LaporanPen1Click(Sender: TObject);
    procedure est1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrMenu: TFrMenu;

implementation

uses FormStockBarang, FormBarangMasuk, FormSupplyer, FormPenjualan,
  FormPembayaran, FormKustomer, FormUser, Unit3, FormLaporanPembayaran,
  FormLapUser, FormLapKustomer, FormLapPenjualan, FormLapSupplier,
  FormLapBarangMasuk, FormLapStokBarang;

{$R *.dfm}

procedure TFrMenu.StockBaranf1Click(Sender: TObject);
begin
  if FrStockBarang=nil then
  FrStockBarang:=TFrStockBarang.Create(Application);
 FrStockBarang.Show;
end;

procedure TFrMenu.BarangMasuk1Click(Sender: TObject);
begin
  if FrBarangMasuk=nil then
  FrBarangMasuk:=TFrBarangMasuk.Create(Application);
  FrBarangMasuk.Show;
end;

procedure TFrMenu.Supplyer1Click(Sender: TObject);
begin
  if FrSupplier=nil then
  FrSupplier:=TFrSupplier.Create(Application);
  FrSupplier.Show;
end;

procedure TFrMenu.Penjualan1Click(Sender: TObject);
begin
  if FrPenjualan=nil then
  FrPenjualan:=TFrPenjualan.Create(Application);
  FrPenjualan.Show;
end;

procedure TFrMenu.Pembayaran1Click(Sender: TObject);
begin
  if FrPembayaran=nil then
  FrPembayaran:=TFrPembayaran.Create(Application);
  FrPembayaran.Show;
end;

procedure TFrMenu.Kustomer1Click(Sender: TObject);
begin
  if FrKustomer=nil then
  FrKustomer:=TFrKustomer.Create(Application);
  FrKustomer.Show
end;

procedure TFrMenu.User1Click(Sender: TObject);
begin
  if FrUser=nil then
  FrUser:=TFrUser.Create(Application);
  FrUser.Show
end;

procedure TFrMenu.LaporanStokBarang1Click(Sender: TObject);
begin
  if FrLapStokBarang=nil then
  FrLapStokBarang:=FrLapStokBarang.Create(Application);
  FrLapStokBarang.Show
end;

procedure TFrMenu.LaporanBarangMasuk1Click(Sender: TObject);
begin
  if FrLapBarangMasuk=nil then
  FrLapBarangMasuk:=FrLapBarangMasuk.Create(Application);
  FrLapBarangMasuk.Show
end;

procedure TFrMenu.LaporanKustomer1Click(Sender: TObject);
begin
  if FrLapKustomer=nil then
  FrLapKustomer:=FrLapKustomer.Create(Application);
  FrLapKustomer.Show
end;

procedure TFrMenu.LaporanDataUser1Click(Sender: TObject);
begin
  if FrLapUser=nil then
  FrLapUser:=FrLapUser.Create(Application);
  FrLapUser.Show
end;

procedure TFrMenu.MenuKasir1Click(Sender: TObject);
begin
  if FrKasir=nil then
  FrKasir:=TFrKasir.Create(Application);
  FrKasir.Show
end;

procedure TFrMenu.Laporan1Click(Sender: TObject);
begin
  if FrLapSupplier=nil then
  FrLapSupplier:=FrLapSupplier.Create(Application);
  FrLapSupplier.Show
end;

procedure TFrMenu.LaporanPen1Click(Sender: TObject);
begin
  if FrLapPenjualann=nil then
  FrLapPenjualann:=FrLapPenjualann.Create(Application);
  FrLapPenjualann.Show
end;

procedure TFrMenu.est1Click(Sender: TObject);
begin
  FrLapPenjualan.ShowModal;
end;

end.
