unit FormLapKustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TFrLapKustomer = class(TForm)
    eCari: TEdit;
    c1: TComboBox;
    con1: TZConnection;
    d1: TDataSource;
    zqry2: TZQuery;
    b2: TButton;
    l1: TLabel;
    b1: TButton;
    dg1: TDBGrid;
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
  FrLapKustomer: TFrLapKustomer;

implementation

{$R *.dfm}

procedure TFrLapKustomer.c1Change(Sender: TObject);
begin
  if c1.Text = 'Nama' then
   begin
      zqry2.SQL.Clear;
      zqry2.SQL.Add('select * from kustomer order by nama ASC');
      zqry2.Open;
   end
   else if c1.Text = 'Status' then
   begin
      zqry2.SQL.Clear;
      zqry2.SQL.Add('select * from kustomer order by status ASC');
      zqry2.Open;
   end
   else
   begin
     zqry2.SQL.Clear;
     zqry2.SQL.Add('select * from kustomer');
     zqry2.Open;
   end;
end;

procedure TFrLapKustomer.eCariChange(Sender: TObject);
begin
  zqry2.SQL.Clear;
  zqry2.SQL.Add('select * from kustomer where nama like "%'+eCari.Text+'%" OR telepon like "%'+eCari.Text+'%"');
  zqry2.Open;
end;

procedure TFrLapKustomer.b1Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

end.
