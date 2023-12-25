unit FormLapBarangMasuk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TFrLapBarangMasuk = class(TForm)
    eCari: TEdit;
    c1: TComboBox;
    con1: TZConnection;
    d1: TDataSource;
    zqry2: TZQuery;
    b2: TButton;
    l1: TLabel;
    frxdb1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxdb2: TfrxDBDataset;
    b1: TButton;
    dg1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLapBarangMasuk: TFrLapBarangMasuk;

implementation

{$R *.dfm}

end.
