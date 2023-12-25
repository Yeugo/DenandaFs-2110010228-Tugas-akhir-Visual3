unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Mask, Grids, DBGrids;

type
  TFormLogin = class(TForm)
    l1: TLabel;
    l2: TLabel;
    edtUserName: TEdit;
    btnLogin: TButton;
    dLogin: TDataSource;
    zqryLogin: TZQuery;
    con1: TZConnection;
    e1: TEdit;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses Unit3, Unit2;

{$R *.dfm}

procedure TFormLogin.btnLoginClick(Sender: TObject);
var
  nama, password, loginLevel, querylogin, userid: string;
  sts: string;
begin
//cukup jelas
  nama := edtUserName.Text;
  password := e1.Text;

  //assign kueri ke variabel querylogin
  querylogin := 'SELECT * FROM user WHERE username = :nama AND password = AES_ENCRYPT(`password`, ''76jV60mkzU'') = :password';

  //clear properti SQL dan tambahkan querylogin
  zqryLogin.SQL.Clear;
  zqryLogin.SQL.Add(querylogin);

  //bandingkan variabel 'nama' dan 'password' dengan kolom `nama` dan `password` di database
  zqryLogin.ParamByName('nama').AsString := nama; //assign var 'nama' ke :nama di kueri
  zqryLogin.ParamByName('password').AsString := password; //cukup jelas
  zqryLogin.Open; //jalankan kueri dan cocokan dengan parameter di atas

  if (zqryLogin.RecordCount > 0) then //jika kueri di atas mengembalikan hasil
    begin
      sts := zqryLogin.FieldValues['status']; //ambil value dari kolom `status`
      if (sts = 'Aktif') then //memeriksa sts
        begin
          loginLevel := zqryLogin.FieldValues['level']; //ambil value dari kolom `level` sebagai string
          if (loginLevel = 'Karyawan') then //memeriksa loginLevel
            begin
              userid := zqryLogin.FieldValues['user_id']; //set userid berdasarkan sintaks di kanan
              //l1.Caption := userid; //assign userid sebagai value di Label4.Caption
              ShowMessage('Login sebagai Karyawan');
              FrKasir.ShowModal;
            end
          else if (loginLevel = 'Staff') then
            begin
              userid := zqryLogin.FieldValues['user_id'];
              //lblId.Caption := userid;
              ShowMessage('Login sebagai Staff');
              frMenu.ShowModal;
            end;
        end
      else //jika tidak
        begin
          ShowMessage('Username atau Password Salah!!!'); //jalankan ini
        end;
    end
    else
    begin
      ShowMessage('User ini belum terdaftar, Silahkan buat Akun!!!');
    end;  
//  frConnection.ZqLogin.Close;
end;

end.
