object FrAkun: TFrAkun
  Left = 566
  Top = 210
  Width = 328
  Height = 276
  Caption = 'FormBuatAkun'
  Color = clSkyBlue
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
    Top = 16
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object l3: TLabel
    Left = 16
    Top = 40
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object l4: TLabel
    Left = 16
    Top = 64
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object l5: TLabel
    Left = 16
    Top = 88
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object l6: TLabel
    Left = 16
    Top = 112
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object e2: TEdit
    Left = 104
    Top = 16
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object e3: TEdit
    Left = 104
    Top = 40
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object b1: TButton
    Left = 16
    Top = 144
    Width = 265
    Height = 25
    Caption = 'Buat Akun'
    TabOrder = 2
    OnClick = b1Click
  end
  object c1: TComboBox
    Left = 104
    Top = 88
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'Karyawan'
      'Staff')
  end
  object e4: TEdit
    Left = 104
    Top = 64
    Width = 177
    Height = 21
    TabOrder = 4
  end
  object e5: TEdit
    Left = 104
    Top = 112
    Width = 177
    Height = 21
    TabOrder = 5
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
    Left = 16
    Top = 184
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select  *  from user')
    Params = <>
    Left = 64
    Top = 184
  end
end
