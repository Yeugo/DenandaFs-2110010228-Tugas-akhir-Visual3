unit FormLapUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TFrLapUser = class(TForm)
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
    procedure b2Click(Sender: TObject);
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLapUser: TFrLapUser;

implementation

{$R *.dfm}

procedure TFrLapUser.c1Change(Sender: TObject);
begin
if c1.Text = 'Level' then
   begin
      zqry2.SQL.Clear;
      zqry2.SQL.Add('select * from user order by level ASC');
      zqry2.Open;
   end
   else if c1.Text = 'Status' then
   begin
      zqry2.SQL.Clear;
      zqry2.SQL.Add('select * from user order by status ASC');
      zqry2.Open;
   end
   else
   begin
     zqry2.SQL.Clear;
     zqry2.SQL.Add('select * from user');
     zqry2.Open;
   end;
end;

procedure TFrLapUser.b2Click(Sender: TObject);
begin
  zqry2.SQL.Clear;
  zqry2.SQL.Add('select * from user where level like "%'+eCari.Text+'%" OR status like "%'+eCari.Text+'%"');
  zqry2.Open;
end;

procedure TFrLapUser.b1Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

end.
