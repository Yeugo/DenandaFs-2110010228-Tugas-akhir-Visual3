object FrLapUser: TFrLapUser
  Left = 286
  Top = 153
  Width = 796
  Height = 596
  Caption = 'Laporan Data User'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TLabel
    Left = 280
    Top = 8
    Width = 164
    Height = 19
    Alignment = taCenter
    Caption = 'LAPORAN DATA USER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l1: TLabel
    Left = 176
    Top = 48
    Width = 50
    Height = 13
    Caption = 'Filter Data'
  end
  object eCari: TEdit
    Left = 416
    Top = 48
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object c1: TComboBox
    Left = 232
    Top = 48
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'Default'
    Items.Strings = (
      'Default'
      'Nama Barang'
      'Total Harga')
  end
  object b2: TButton
    Left = 336
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Cari Data'
    TabOrder = 2
  end
  object b1: TButton
    Left = 615
    Top = 48
    Width = 121
    Height = 25
    Caption = 'Cetak'
    TabOrder = 3
  end
  object dg1: TDBGrid
    Left = 16
    Top = 80
    Width = 721
    Height = 345
    DataSource = d1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'user_id'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'username'
        Title.Alignment = taCenter
        Width = 124
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'password'
        Title.Alignment = taCenter
        Width = 137
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'email'
        Title.Alignment = taCenter
        Width = 143
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'level'
        Title.Alignment = taCenter
        Width = 104
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'status'
        Title.Alignment = taCenter
        Width = 98
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
    Left = 88
    Top = 320
  end
  object d1: TDataSource
    DataSet = zqry2
    Left = 128
    Top = 320
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 168
    Top = 320
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
      'total_harga=total_harga'
      'no_struk=no_struk'
      'bayar=bayar'
      'kembali=kembali'
      'mtd_bayar=mtd_bayar')
    DataSet = zqry2
    BCDToCurrency = False
    Left = 256
    Top = 320
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
    Left = 208
    Top = 320
    Datasets = <
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
        object frxDBDataset1id_penjualan: TfrxMemoView
          Left = 219.212740000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_penjualan'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_penjualan"]')
        end
        object frxDBDataset1no_struk: TfrxMemoView
          Left = 219.212740000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_struk'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."no_struk"]')
        end
        object frxDBDataset1nama_kustomer: TfrxMemoView
          Left = 219.212740000000000000
          Top = 45.354360000000000000
          Width = 400.630180000000000000
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
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_penjulan'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tgl_penjulan"]')
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
            '[frxDBDataset1."bayar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2kembali: TfrxMemoView
          Left = 593.386210000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kembali'
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
            '[frxDBDataset1."kembali"]')
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
    BCDToCurrency = False
    Left = 304
    Top = 320
  end
end
