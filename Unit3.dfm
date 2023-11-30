object FrKasir: TFrKasir
  Left = 204
  Top = 51
  Width = 1121
  Height = 695
  Caption = 'Aplikasi Kasir'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l2: TLabel
    Left = 16
    Top = 80
    Width = 89
    Height = 19
    Caption = 'Kode Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 16
    Top = 112
    Width = 95
    Height = 19
    Caption = 'Nama Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l4: TLabel
    Left = 16
    Top = 144
    Width = 113
    Height = 19
    Caption = 'Nama Kustomer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l5: TLabel
    Left = 16
    Top = 176
    Width = 131
    Height = 19
    Caption = 'Tanggal Penjualan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l6: TLabel
    Left = 16
    Top = 208
    Width = 51
    Height = 19
    Caption = 'Jumlah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l7: TLabel
    Left = 16
    Top = 240
    Width = 95
    Height = 19
    Caption = 'Harga Satuan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l11: TLabel
    Left = 16
    Top = 48
    Width = 62
    Height = 19
    Caption = 'No Struk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l12: TLabel
    Left = 16
    Top = 272
    Width = 39
    Height = 19
    Caption = 'Bayar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l13: TLabel
    Left = 16
    Top = 304
    Width = 95
    Height = 19
    Caption = 'Metode Bayar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l14: TLabel
    Left = 352
    Top = 16
    Width = 84
    Height = 19
    Caption = 'Pilih Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l1: TLabel
    Left = 16
    Top = 16
    Width = 91
    Height = 19
    Caption = 'ID Penjualan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l10: TLabel
    Left = 368
    Top = 368
    Width = 120
    Height = 19
    Caption = 'Histori Penjualan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object e2: TEdit
    Left = 160
    Top = 48
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object e3: TEdit
    Left = 160
    Top = 80
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object e4: TEdit
    Left = 160
    Top = 112
    Width = 177
    Height = 21
    TabOrder = 2
  end
  object e5: TEdit
    Left = 160
    Top = 144
    Width = 177
    Height = 21
    TabOrder = 3
  end
  object e6: TEdit
    Left = 160
    Top = 208
    Width = 177
    Height = 21
    TabOrder = 4
  end
  object dtp1: TDateTimePicker
    Left = 160
    Top = 176
    Width = 177
    Height = 21
    Date = 45260.990109259260000000
    Time = 45260.990109259260000000
    TabOrder = 5
  end
  object grp1: TGroupBox
    Left = 16
    Top = 376
    Width = 337
    Height = 129
    Caption = 'grp1'
    TabOrder = 6
    object l8: TLabel
      Left = 8
      Top = 16
      Width = 36
      Height = 19
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l9: TLabel
      Left = 8
      Top = 48
      Width = 39
      Height = 19
      Caption = 'Bayar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l15: TLabel
      Left = 8
      Top = 80
      Width = 56
      Height = 19
      Caption = 'Kembali'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object e9: TEdit
      Left = 144
      Top = 12
      Width = 177
      Height = 21
      TabOrder = 0
    end
    object e10: TEdit
      Left = 144
      Top = 44
      Width = 177
      Height = 21
      TabOrder = 1
    end
    object e11: TEdit
      Left = 144
      Top = 76
      Width = 177
      Height = 21
      TabOrder = 2
    end
  end
  object e7: TEdit
    Left = 160
    Top = 240
    Width = 177
    Height = 21
    TabOrder = 7
  end
  object e8: TEdit
    Left = 160
    Top = 272
    Width = 177
    Height = 21
    TabOrder = 8
  end
  object c1: TComboBox
    Left = 160
    Top = 304
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'Cash'
      'Cashless')
  end
  object dg1: TDBGrid
    Left = 352
    Top = 40
    Width = 497
    Height = 321
    DataSource = d1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kode_barang'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_barang'
        Title.Alignment = taCenter
        Width = 144
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'harga_jual'
        Title.Alignment = taCenter
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'stok'
        Title.Alignment = taCenter
        Width = 133
        Visible = True
      end>
  end
  object b1: TButton
    Left = 16
    Top = 336
    Width = 321
    Height = 25
    Caption = 'Hitung'
    TabOrder = 11
    OnClick = b1Click
  end
  object e1: TEdit
    Left = 160
    Top = 16
    Width = 177
    Height = 21
    TabOrder = 12
  end
  object dg2: TDBGrid
    Left = 368
    Top = 392
    Width = 713
    Height = 249
    DataSource = d2
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_penjualan'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_barang'
        Title.Alignment = taCenter
        Width = 144
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_kustomer'
        Title.Alignment = taCenter
        Width = 110
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tgl_penjulan'
        Title.Alignment = taCenter
        Width = 98
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jumlah_barang'
        Title.Alignment = taCenter
        Width = 101
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'total_harga'
        Title.Alignment = taCenter
        Visible = True
      end>
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
    Left = 872
    Top = 40
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      
        'select kode_barang, nama_barang, harga_jual, stok from stock_bar' +
        'ang')
    Params = <>
    Left = 920
    Top = 40
  end
  object d1: TDataSource
    DataSet = zqry1
    Left = 968
    Top = 40
  end
  object frxdb1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_penjualan=id_penjualan'
      'kode_barang=kode_barang'
      'nama_barang=nama_barang'
      'nama_kustomer=nama_kustomer'
      'tgl_penjulan=tgl_penjulan'
      'jumlah_barang=jumlah_barang'
      'harga_satuan=harga_satuan'
      'total_harga=total_harga')
    DataSet = zqry2
    BCDToCurrency = False
    Left = 920
    Top = 192
  end
  object con2: TZConnection
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
    Left = 872
    Top = 88
  end
  object zqry2: TZQuery
    Connection = con2
    Active = True
    SQL.Strings = (
      'select  *  from penjualan')
    Params = <>
    Left = 920
    Top = 88
  end
  object d2: TDataSource
    DataSet = zqry2
    Left = 968
    Top = 88
  end
  object con3: TZConnection
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
    Left = 872
    Top = 136
  end
  object zqry3: TZQuery
    Connection = con3
    Active = True
    SQL.Strings = (
      'select  *  from pembayaran')
    Params = <>
    Left = 920
    Top = 136
  end
  object d3: TDataSource
    DataSet = zqry3
    Left = 968
    Top = 136
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45107.893415381900000000
    ReportOptions.LastChange = 45109.653550381900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 872
    Top = 192
    Datasets = <
      item
        DataSet = frxdb2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = frxdb1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 120.944960000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."id_penjualan"'
        KeepTogether = True
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ID Penjualan')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No Struk')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nama Kustomer')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanggal Penjualan')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 173.858380000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 173.858380000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 173.858380000000000000
          Top = 45.354360000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 173.858380000000000000
          Top = 71.811070000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 3.779530000000000000
          Top = 102.047310000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode Barang')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 105.826840000000000000
          Top = 102.047310000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Barang')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 279.685220000000000000
          Top = 102.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 374.173470000000000000
          Top = 102.047310000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Harga')
          ParentFont = False
        end
        object frxDBDataset1id_penjualan: TfrxMemoView
          Left = 219.212740000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_penjualan'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_penjualan"]')
        end
        object frxDBDataset1nama_kustomer: TfrxMemoView
          Left = 219.212740000000000000
          Top = 45.354360000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_kustomer'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."nama_kustomer"]')
        end
        object frxDBDataset1tgl_penjulan: TfrxMemoView
          Left = 219.212740000000000000
          Top = 71.811070000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_penjulan'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tgl_penjulan"]')
        end
        object frxDBDataset2no_struk: TfrxMemoView
          Left = 219.212740000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_struk'
          DataSet = frxdb2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8 = (
            '[frxDBDataset2."no_struk"]')
        end
        object Memo5: TfrxMemoView
          Left = 483.779840000000000000
          Top = 102.047310000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Bayar')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 593.386210000000000000
          Top = 102.047310000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kembali')
          ParentFont = False
        end
      end
      object Memo7: TfrxMemoView
        Align = baCenter
        Left = 215.433210000000000000
        Top = 15.118120000000000000
        Width = 287.244280000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          'Laporan Penjualan Barang')
        ParentFont = False
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        DataSet = frxdb1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1kode_barang: TfrxMemoView
          Left = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kode_barang'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kode_barang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1nama_barang: TfrxMemoView
          Left = 105.826840000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_barang'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama_barang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1jumlah_barang: TfrxMemoView
          Left = 279.685220000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumlah_barang'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jumlah_barang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1total_harga: TfrxMemoView
          Left = 374.173470000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'total_harga'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."total_harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2bayar: TfrxMemoView
          Left = 483.779840000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'bayar'
          DataSet = frxdb2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."bayar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2kembali: TfrxMemoView
          Left = 593.386210000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kembali'
          DataSet = frxdb2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."kembali"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 45.354360000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 15.118120000000000000
          Width = 699.213050000000000000
          ShowHint = False
          Frame.Width = 1.500000000000000000
          Diagonal = True
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object frxdb2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_bayar=id_bayar'
      'id_penjualan=id_penjualan'
      'no_struk=no_struk'
      'bayar=bayar'
      'kembali=kembali'
      'mtd_bayar=mtd_bayar')
    DataSet = zqry3
    BCDToCurrency = False
    Left = 968
    Top = 192
  end
end
