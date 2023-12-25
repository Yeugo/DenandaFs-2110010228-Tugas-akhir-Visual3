object FrLapSupplier: TFrLapSupplier
  Left = 345
  Top = 110
  Width = 643
  Height = 656
  Caption = 'Laporan Data Supplier'
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
    Left = 224
    Top = 8
    Width = 196
    Height = 19
    Alignment = taCenter
    Caption = 'LAPORAN DATA SUPPLIER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l1: TLabel
    Left = 88
    Top = 48
    Width = 50
    Height = 13
    Caption = 'Filter Data'
  end
  object l2: TLabel
    Left = 264
    Top = 48
    Width = 45
    Height = 13
    Caption = 'Cari Data'
  end
  object eCari: TEdit
    Left = 328
    Top = 48
    Width = 137
    Height = 21
    TabOrder = 0
    OnChange = eCariChange
  end
  object c1: TComboBox
    Left = 144
    Top = 48
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'Default'
    OnChange = c1Change
    Items.Strings = (
      'Default'
      'Nama Supplier'
      'Alamat')
  end
  object b1: TButton
    Left = 471
    Top = 48
    Width = 121
    Height = 25
    Caption = 'Cetak'
    TabOrder = 2
    OnClick = b1Click
  end
  object dg1: TDBGrid
    Left = 8
    Top = 88
    Width = 585
    Height = 449
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
        FieldName = 'kode_supplyer'
        Title.Alignment = taCenter
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_supplyer'
        Title.Alignment = taCenter
        Width = 146
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'alamat'
        Title.Alignment = taCenter
        Width = 165
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'telepon'
        Title.Alignment = taCenter
        Width = 146
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
    Left = 136
    Top = 272
  end
  object d1: TDataSource
    DataSet = zqry2
    Left = 176
    Top = 272
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from supplyer;')
    Params = <>
    Left = 216
    Top = 272
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
    Left = 264
    Top = 272
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
        Height = 45.354360000000000000
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
            'Laporan Data Supplier')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 124.724490000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 34.015770000000000000
          Width = 136.721634470000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnShadow
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode Supplier')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 170.737404470000000000
          Width = 202.262120610000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnShadow
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Supplier')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 372.999525080000000000
          Width = 175.805410610000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnShadow
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 548.804935680000000000
          Width = 207.101064320000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnShadow
          DataSet = frxdb1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Telepon')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 793.701300000000000000
        DataSet = frxdb1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo10: TfrxMemoView
          Left = 34.015770000000000000
          Width = 136.721634470000000000
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
        object Memo7: TfrxMemoView
          Left = 170.737404470000000000
          Width = 202.262120610000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'nama_supplyer'
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
            '[frxDBDataset1."nama_supplyer"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 372.999525080000000000
          Width = 175.805410610000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'alamat'
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
            '[frxDBDataset1."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 548.804935680000000000
          Width = 207.101064320000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'telepon'
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
            '[frxDBDataset1."telepon"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdb1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode_supplyer=kode_supplyer'
      'nama_supplyer=nama_supplyer'
      'alamat=alamat'
      'telepon=telepon')
    DataSet = zqry2
    BCDToCurrency = False
    Left = 312
    Top = 272
  end
end
