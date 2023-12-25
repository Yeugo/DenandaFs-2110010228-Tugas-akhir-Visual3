object FrLapPenjualan: TFrLapPenjualan
  Left = 219
  Top = 180
  Width = 1255
  Height = 480
  Caption = 'FrLapPenjualan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 736
    Top = 32
    Width = 53
    Height = 16
    Caption = 'Cari Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 584
    Top = 32
    Width = 59
    Height = 16
    Caption = 'Filter Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object eCari: TEdit
    Left = 792
    Top = 32
    Width = 201
    Height = 21
    TabOrder = 0
    OnChange = eCariChange
  end
  object c1: TComboBox
    Left = 648
    Top = 32
    Width = 65
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'Nama Barang'
      'Total Harga')
  end
  object b1: TButton
    Left = 400
    Top = 24
    Width = 113
    Height = 25
    Caption = 'Order by Total Harga'
    TabOrder = 2
    OnClick = b1Click
  end
  object dg1: TDBGrid
    Left = 8
    Top = 64
    Width = 969
    Height = 337
    DataSource = d1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_furniture'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\ACER\Documents\Kuliah\Visual\Visual3\tugas-akhir-visual' +
      '-3\libmysql.dll'
    Left = 8
    Top = 8
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM penjualan;')
    Params = <>
    Left = 56
    Top = 8
  end
  object d1: TDataSource
    DataSet = zqry1
    Left = 104
    Top = 8
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      
        'SELECT penjualan.id_penjualan, penjualan.kode_barang, penjualan.' +
        'nama_barang, penjualan.nama_kustomer, penjualan.tgl_penjulan, pe' +
        'njualan.jumlah_barang, penjualan.total_harga, pembayaran.no_stru' +
        'k, pembayaran.bayar, pembayaran.kembali, pembayaran.mtd_bayar'
      'FROM penjualan'
      
        'INNER JOIN pembayaran ON penjualan.id_penjualan = pembayaran.id_' +
        'penjualan;')
    Params = <>
    Left = 144
    Top = 8
  end
end
