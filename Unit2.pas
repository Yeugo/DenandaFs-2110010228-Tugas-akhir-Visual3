unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFormMenu = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    StockBaranf1: TMenuItem;
    BarangMasuk1: TMenuItem;
    Supplyer1: TMenuItem;
    Penjualan1: TMenuItem;
    Pembayaran1: TMenuItem;
    Kustomer1: TMenuItem;
    User1: TMenuItem;
    procedure StockBaranf1Click(Sender: TObject);
    procedure BarangMasuk1Click(Sender: TObject);
    procedure Supplyer1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses FormStockBarang, FormBarangMasuk, FormSupplyer;

{$R *.dfm}

procedure TFormMenu.StockBaranf1Click(Sender: TObject);
begin
  if FormStock_Barang=nil then
  FormStock_Barang:=TFormStock_Barang.Create(Application);
  FormStock_Barang.Show;
end;

procedure TFormMenu.BarangMasuk1Click(Sender: TObject);
begin
  if FormBarang_Masuk=nil then
  FormBarang_Masuk:=TFormBarang_Masuk.Create(Application);
  FormBarang_Masuk.Show;
end;

procedure TFormMenu.Supplyer1Click(Sender: TObject);
begin
if FormSupplier=nil then
  FormSupplier:=TFormSupplier.Create(Application);
  FormSupplier.Show;
end;

end.
