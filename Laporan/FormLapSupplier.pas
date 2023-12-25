unit FormLapSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TFrLapSupplier = class(TForm)
    eCari: TEdit;
    c1: TComboBox;
    con1: TZConnection;
    d1: TDataSource;
    zqry2: TZQuery;
    l1: TLabel;
    b1: TButton;
    dg1: TDBGrid;
    l2: TLabel;
    frxReport1: TfrxReport;
    frxdb1: TfrxDBDataset;
    procedure c1Change(Sender: TObject);
    procedure eCariChange(Sender: TObject);
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLapSupplier: TFrLapSupplier;

implementation

{$R *.dfm}

procedure TFrLapSupplier.c1Change(Sender: TObject);
begin
  if c1.Text = 'Nama Supplier' then
   begin
      zqry2.SQL.Clear;
      zqry2.SQL.Add('select * from supplyer order by nama_supplyer ASC');
      zqry2.Open;
   end
   else if c1.Text = 'Alamat' then
   begin
      zqry2.SQL.Clear;
      zqry2.SQL.Add('select * from supplyer order by telepon ASC');;
      zqry2.Open;
   end
   else
   begin
     zqry2.SQL.Clear;
     zqry2.SQL.Add('select * from supplyer');
     zqry2.Open;
   end;
end;

procedure TFrLapSupplier.eCariChange(Sender: TObject);
begin
    zqry2.SQL.Clear;
    zqry2.SQL.Add('select * from supplyer where kode_supplyer like "%'+eCari.Text+'%" or nama_supplyer like "%'+eCari.Text+'%"');
    zqry2.Open;
end;

procedure TFrLapSupplier.b1Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

end.
