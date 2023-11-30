program Project1;

uses
  Forms,
  login in 'login.pas' {FormLogin},
  Unit2 in 'Unit2.pas' {FrMenu},
  Unit3 in 'Unit3.pas' {FrKasir},
  FormStockBarang in 'FormStockBarang.pas' {FrStockBarang},
  FormBarangMasuk in 'FormBarangMasuk.pas' {FrBarangMasuk},
  FormSupplyer in 'FormSupplyer.pas' {FrSupplier},
  FormPenjualan in 'FormPenjualan.pas' {FrPenjualan},
  FormPembayaran in 'FormPembayaran.pas' {FrPembayaran},
  FormKustomer in 'FormKustomer.pas' {FrKustomer},
  FormUser in 'FormUser.pas' {FrUser},
  FormAkun in 'FormAkun.pas' {FrAkun},
  FormHome in 'FormHome.pas' {FrHome};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrHome, FrHome);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFrKasir, FrKasir);
  Application.CreateForm(TFrMenu, FrMenu);
  Application.CreateForm(TFrStockBarang, FrStockBarang);
  Application.CreateForm(TFrBarangMasuk, FrBarangMasuk);
  Application.CreateForm(TFrSupplier, FrSupplier);
  Application.CreateForm(TFrPenjualan, FrPenjualan);
  Application.CreateForm(TFrPembayaran, FrPembayaran);
  Application.CreateForm(TFrKustomer, FrKustomer);
  Application.CreateForm(TFrUser, FrUser);
  Application.CreateForm(TFrAkun, FrAkun);
  Application.Run;
end.
