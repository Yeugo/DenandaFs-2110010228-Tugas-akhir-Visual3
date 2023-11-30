unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TFrKasir = class(TForm)
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    frxdb1: TfrxDBDataset;
    l7: TLabel;
    e6: TEdit;
    dtp1: TDateTimePicker;
    grp1: TGroupBox;
    l8: TLabel;
    l9: TLabel;
    l11: TLabel;
    e7: TEdit;
    e8: TEdit;
    l12: TLabel;
    l13: TLabel;
    c1: TComboBox;
    con2: TZConnection;
    zqry2: TZQuery;
    d2: TDataSource;
    con3: TZConnection;
    zqry3: TZQuery;
    d3: TDataSource;
    dg1: TDBGrid;
    l14: TLabel;
    b1: TButton;
    l15: TLabel;
    e9: TEdit;
    e10: TEdit;
    e11: TEdit;
    e1: TEdit;
    l1: TLabel;
    dg2: TDBGrid;
    l10: TLabel;
    frxReport1: TfrxReport;
    frxdb2: TfrxDBDataset;
    procedure b1Click(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrKasir: TFrKasir;

implementation

{$R *.dfm}

procedure TFrKasir.b1Click(Sender: TObject);
var a,b, c,  bayar, kembali : Integer;
begin
  a := StrToInt(e6.Text);
  b := StrToInt(e7.Text);
  e9.Text := IntToStr(a * b);
  c := StrToInt(e9.Text);

  e10.Text := e8.Text;
  bayar := StrToInt(e10.Text);
  e11.Text := IntToStr(bayar - c);

  zqry2.SQL.Clear;
  zqry2.SQL.Add('insert into penjualan values("'+e1.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+e5.Text+'", "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'", "'+e6.Text+'", "'+e7.Text+'", "'+e9.Text+'")');
  zqry2.ExecSQL;

  zqry2.SQL.Clear;
  zqry2.SQL.Add('select * from penjualan');
  zqry2.Open;

  zqry3.SQL.Clear;
  zqry3.SQL.Add('insert into pembayaran values(null, "'+e1.Text+'", "'+e2.Text+'", "'+e8.Text+'", "'+e11.Text+'", "'+c1.Text+'")');
  zqry3.ExecSQL;
end;

procedure TFrKasir.dg1CellClick(Column: TColumn);
begin
  e3.Text:=zqry1.Fields[0].AsString;
  e4.Text:=zqry1.Fields[1].AsString;
  e7.Text:=zqry1.Fields[2].AsString;
end;

end.
