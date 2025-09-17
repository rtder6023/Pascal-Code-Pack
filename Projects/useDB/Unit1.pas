unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.StdCtrls, Unit2;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    Button1: TButton;
    edtName: TEdit;
    edtPW: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  LoginForm : TForm2;
begin
  LoginForm := TForm2.Create(self);
  Hide;
try
  FDQuery1.SQL.Text := 'INSERT INTO users(namee, passwordd) VALUES (:namee, :passwordd)';
  FDQuery1.ParamByName('namee').AsString := edtName.text;
  FDQuery1.ParamByName('passwordd').AsString := edtPW.Text;
  FDQuery1.ExecSQL;
  if LoginForm.ShowModal = mrOK then
  begin
    ShowMessage('TEST');
    Label1.Caption := '�α��� �Ǿ����ϴ�!';
  end
  else
  begin
    ShowMessage('expected');
    Label1.Caption := '�α׾ƿ� ����';
  end;
except
  on E: Exception do
    ShowMessage('���� �޽���: ' + E.Message);
  end;
  Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDConnection1.Params.Clear; // ���� �����ͺ��̽��� ������ �ʱ�ȭ
  FDConnection1.DriverName := 'MySQL';
  FDConnection1.Params.Add('CharacterSet=utf8'); // DB ���ڵ��� utf8�� �ٲ�
  FDConnection1.Params.Add('Server=localhost');
  FDConnection1.Params.Add('Database=check');
  FDConnection1.Params.Add('User_Name=check_user');
  FDConnection1.Params.Add('Password=1234');
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then self.Close;
end;

end.
