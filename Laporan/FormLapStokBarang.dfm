object FrLapStokBarang: TFrLapStokBarang
  Left = 299
  Top = 117
  Width = 639
  Height = 618
  Caption = 'Laporan Stok Barang'
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
    Left = 208
    Top = 8
    Width = 185
    Height = 19
    Alignment = taCenter
    Caption = 'LAPORAN STOK BARANG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l1: TLabel
    Left = 96
    Top = 48
    Width = 50
    Height = 13
    Caption = 'Filter Data'
  end
  object l2: TLabel
    Left = 280
    Top = 48
    Width = 45
    Height = 13
    Caption = 'Cari Data'
  end
  object eCari: TEdit
    Left = 336
    Top = 48
    Width = 137
    Height = 21
    TabOrder = 0
    OnChange = eCariChange
  end
  object c1: TComboBox
    Left = 152
    Top = 48
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'Default'
    OnChange = c1Change
    Items.Strings = (
      'Default'
      'Harga Jual'
      'Stok')
  end
  object b1: TButton
    Left = 479
    Top = 48
    Width = 121
    Height = 25
    Caption = 'Cetak'
    TabOrder = 2
    OnClick = b1Click
  end
  object dg1: TDBGrid
    Left = 16
    Top = 80
    Width = 585
    Height = 425
    DataSource = d1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
        Width = 147
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'harga_beli'
        Title.Alignment = taCenter
        Width = 82
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'harga_jual'
        Title.Alignment = taCenter
        Width = 73
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'stok'
        Title.Alignment = taCenter
        Width = 73
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kode_supplyer'
        Title.Alignment = taCenter
        Width = 92
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
    Left = 64
    Top = 248
  end
  object d1: TDataSource
    DataSet = zqry2
    Left = 104
    Top = 248
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      
        'SELECT stock_barang.*, barang_masuk.kode_barang, barang_masuk.ko' +
        'de_supplyer'
      'FROM stock_barang'
      
        'INNER JOIN barang_masuk ON stock_barang.kode_barang = barang_mas' +
        'uk.kode_barang;')
    Params = <>
    Left = 144
    Top = 248
  end
  object frxdb1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode_barang=kode_barang'
      'nama_barang=nama_barang'
      'harga_beli=harga_beli'
      'harga_jual=harga_jual'
      'stok=stok'
      '-kode_barang_1=kode_barang_1'
      'kode_supplyer=kode_supplyer')
    DataSet = zqry2
    BCDToCurrency = False
    Left = 248
    Top = 248
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45114.852063310200000000
    ReportOptions.LastChange = 45114.852063310200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 200
    Top = 248
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
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Height = 60.472480000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo6: TfrxMemoView
          Left = 298.582870000000000000
          Top = 7.559060000000000000
          Width = 215.433210000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Laporan Stok Barang')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 22.677180000000000000
          Width = 160.292566960000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnShadow
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 182.969746960000000000
          Width = 130.393785000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnShadow
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 313.363531960000000000
          Width = 134.645756250000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnShadow
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Beli')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 448.009288210000000000
          Width = 113.453391610000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnShadow
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Jual')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 561.462679830000000000
          Width = 96.175540180000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnShadow
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Stok')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 657.638220000000000000
          Width = 111.293660180000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnShadow
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode Supplyer')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 793.701300000000000000
        DataSet = frxdb1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo10: TfrxMemoView
          Left = 22.677180000000000000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'kode_barang'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kode_barang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 181.417440000000000000
          Width = 132.283550000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'nama_barang'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama_barang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 313.700990000000000000
          Width = 136.063080000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'harga_beli'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."harga_beli"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 449.764070000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'harga_jual'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."harga_jual"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 563.149970000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'stok'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."stok"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 657.638220000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'kode_supplyer'
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kode_supplyer"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
