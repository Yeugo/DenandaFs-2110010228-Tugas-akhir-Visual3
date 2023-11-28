object FormMenu: TFormMenu
  Left = 296
  Top = 187
  Width = 600
  Height = 377
  Caption = 'FormMenu'
  Color = clBtnFace
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
      Caption = 'Menu'
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
      end
      object Pembayaran1: TMenuItem
        Caption = 'Pembayaran'
      end
      object Kustomer1: TMenuItem
        Caption = 'Kustomer'
      end
      object User1: TMenuItem
        Caption = 'User'
      end
    end
  end
end
