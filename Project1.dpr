program Project1;

uses
  Forms,
  login in 'login.pas' {FormLogin},
  Unit2 in 'Unit2.pas' {FrMenu},
  Unit3 in 'Unit3.pas' {FrDataKustomer},
  FormStockBarang in 'FormStockBarang.pas' {FrStockBarang},
  FormBarangMasuk in 'FormBarangMasuk.pas' {FrBarangMasuk},
  FormSupplyer in 'FormSupplyer.pas' {FrSupplier},
  FormPenjualan in 'FormPenjualan.pas' {FrPenjualan},
  FormPembayaran in 'FormPembayaran.pas' {FrPembayaran},
  FormKustomer in 'FormKustomer.pas' {FrKustomer},
  FormUser in 'FormUser.pas' {FrUser};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFrMenu, FrMenu);
  Application.CreateForm(TFrDataKustomer, FrDataKustomer);
  Application.CreateForm(TFrStockBarang, FrStockBarang);
  Application.CreateForm(TFrBarangMasuk, FrBarangMasuk);
  Application.CreateForm(TFrSupplier, FrSupplier);
  Application.CreateForm(TFrPenjualan, FrPenjualan);
  Application.CreateForm(TFrPembayaran, FrPembayaran);
  Application.CreateForm(TFrKustomer, FrKustomer);
  Application.CreateForm(TFrUser, FrUser);
  Application.Run;
end.
