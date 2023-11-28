unit FormPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, StdCtrls;

type
  TForm_Penjualan = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    frxReport1: TfrxReport;
    frxdb1: TfrxDBDataset;
    l4: TLabel;
    dg1: TDBGrid;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    dtp1: TDateTimePicker;
    e5: TEdit;
    e6: TEdit;
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Penjualan: TForm_Penjualan;

implementation

{$R *.dfm}

procedure TForm_Penjualan.b1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tb_riwayat_poin values(null,"'+e1.Text+'", "'+e2.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+e5.Text+'", "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'", "'+c1.Text+'", "'+e6.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_riwayat_poin');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

end.
