program Project1;

uses
  Forms,
  login in 'login.pas' {FormLogin},
  Unit2 in 'Unit2.pas' {FormMenu},
  Unit3 in 'Unit3.pas' {FormDataKustomer},
  FormStockBarang in 'FormStockBarang.pas' {FormStock_Barang},
  FormBarangMasuk in 'FormBarangMasuk.pas' {FormBarang_Masuk},
  FormSupplyer in 'FormSupplyer.pas' {FormSupplier},
  FormPenjualan in 'FormPenjualan.pas' {Form_Penjualan};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormDataKustomer, FormDataKustomer);
  Application.CreateForm(TFormStock_Barang, FormStock_Barang);
  Application.CreateForm(TFormBarang_Masuk, FormBarang_Masuk);
  Application.CreateForm(TFormSupplier, FormSupplier);
  Application.CreateForm(TForm_Penjualan, Form_Penjualan);
  Application.Run;
end.
