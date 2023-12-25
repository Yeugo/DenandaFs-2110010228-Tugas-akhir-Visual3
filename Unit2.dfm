object FrMenu: TFrMenu
  Left = 400
  Top = 219
  Width = 534
  Height = 377
  Caption = 'Menu'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 24
    Top = 16
    object Menu1: TMenuItem
      Caption = 'Menu CRUD'
      object StockBaranf1: TMenuItem
        Caption = 'Stock Barang'
        OnClick = StockBaranf1Click
      end
      object BarangMasuk1: TMenuItem
        Caption = 'Barang Masuk'
        OnClick = BarangMasuk1Click
      end
      object Supplyer1: TMenuItem
        Caption = 'Supplier'
        OnClick = Supplyer1Click
      end
      object Penjualan1: TMenuItem
        Caption = 'Penjualan'
        OnClick = Penjualan1Click
      end
      object Pembayaran1: TMenuItem
        Caption = 'Pembayaran'
        OnClick = Pembayaran1Click
      end
      object Kustomer1: TMenuItem
        Caption = 'Kustomer'
        OnClick = Kustomer1Click
      end
      object User1: TMenuItem
        Caption = 'User'
        OnClick = User1Click
      end
    end
    object MenuKasir1: TMenuItem
      Caption = 'Menu Kasir'
      OnClick = MenuKasir1Click
    end
    object LaporanReport1: TMenuItem
      Caption = 'Laporan/Report'
      object LaporanStokBarang1: TMenuItem
        Caption = 'Laporan Stok Barang'
        OnClick = LaporanStokBarang1Click
      end
      object LaporanBarangMasuk1: TMenuItem
        Caption = 'Laporan Barang Masuk'
        OnClick = LaporanBarangMasuk1Click
      end
      object Laporan1: TMenuItem
        Caption = 'Laporan Data Supplier'
        OnClick = Laporan1Click
      end
      object LaporanPen1: TMenuItem
        Caption = 'Laporan Penjualan'
        OnClick = LaporanPen1Click
      end
      object LaporanKustomer1: TMenuItem
        Caption = 'Laporan Data Kustomer'
        OnClick = LaporanKustomer1Click
      end
      object LaporanDataUser1: TMenuItem
        Caption = 'Laporan Data User'
        OnClick = LaporanDataUser1Click
      end
    end
  end
end
