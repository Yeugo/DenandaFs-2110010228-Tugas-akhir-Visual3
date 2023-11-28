unit FormBarangMasuk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, StdCtrls;

type
  TFormBarang_Masuk = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l5: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
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
    dg1: TDBGrid;
    l6: TLabel;
    l7: TLabel;
    dtp1: TDateTimePicker;
    e6: TEdit;
    l4: TLabel;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBarang_Masuk: TFormBarang_Masuk;

implementation

{$R *.dfm}

procedure TFormBarang_Masuk.b1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into barang_masuk values("'+e1.Text+'", "'+e2.Text+'", "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'", "'+e3.Text+'", "'+e4.Text+'", "'+e5.Text+'", "'+e6.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from barang_masuk');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TFormBarang_Masuk.b2Click(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('kode_barang').Text := e1.Text;
  zqry1.FieldByName('nama_barang').Text := e2.Text;
  zqry1.FieldByName('tanggal_masuk').AsDateTime := dtp1.date;
  zqry1.FieldByName('jumlah').Text := e3.Text;
  zqry1.FieldByName('harga_satuan').Text := e4.Text;
  zqry1.FieldByName('total_harga').Text := e5.Text;
  zqry1.FieldByName('kode_supplyer').Text := e6.Text;
  zqry1.Post;
end;

procedure TFormBarang_Masuk.b3Click(Sender: TObject);
begin
  if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
  zqry1.Delete;
end;

procedure TFormBarang_Masuk.dg1CellClick(Column: TColumn);
begin
  e1.Text:=zqry1.Fields[0].AsString;
  e2.Text:=zqry1.Fields[1].AsString;
  dtp1.date:=zqry1.Fields[2].AsDateTime;
  e3.Text:=zqry1.Fields[3].AsString;
  e4.Text:=zqry1.Fields[4].AsString;
  e5.Text:=zqry1.Fields[5].AsString;
  e6.Text:=zqry1.Fields[6].AsString;
end;

end.
