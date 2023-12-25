unit FormLapPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TFrLapPenjualann = class(TForm)
    eCari: TEdit;
    dg1: TDBGrid;
    c1: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    zqry2: TZQuery;
    b2: TButton;
    l1: TLabel;
    frxdb1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxdb2: TfrxDBDataset;
    b1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLapPenjualann: TFrLapPenjualann;

implementation

{$R *.dfm}

end.
