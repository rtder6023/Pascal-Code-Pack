unit signIn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    edtID: TEdit;
    edtPa: TEdit;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  id: string;
  pw: string;
begin
  id := edtId.Text;
  pw := edtPa.Text;

  if edtID.Text = '' then
  begin
    Self.ModalResult := mrNone;
    ShowMessage('아이디를 입력하세요.');
    edtID.SetFocus;
    Exit;
  end;

  if edtPa.Text = '' then
  begin
    Self.ModalResult := mrNone;
    ShowMessage('비밀번호를 입력하세요.');
    edtPa.SetFocus;
    Exit;
  end;

  FDQuery1.SQL.Text := 'SELECT empId FROM users WHERE namee = :id AND passwordd = :pw';
  FDQuery1.ParamByName('id').AsString := edtId.Text;
  FDQuery1.ParamByName('pw').AsString := edtPa.Text;
  FDQuery1.Open;

  if not FDQuery1.IsEmpty then    // 쿼리의 값이 하나라도 있으면 수행
  begin
    Self.ModalResult := mrOK;
  end
//  if FDQuery1.Fields[0].AsInteger = 1 then
//  begin
//
//    ModalResult := mrOK;
//  end
  else
  begin
    Self.ModalResult := mrNone;
    ShowMessage('아이디 또는 비밀번호가 올바르지 않습니다.');
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FDConnection1.Params.Clear;
  FDConnection1.DriverName := 'MySQL';
  FDConnection1.Params.Add('Server=localhost');
  FDConnection1.Params.Add('Database=check');
  FDConnection1.Params.Add('User_Name=check_user');
  FDConnection1.Params.Add('CharacterSet=utf8');
  FDConnection1.Params.Add('Password=1234');
end;

procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then Button1.Click;

end;

end.
