unit signUp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.StdCtrls, signIn, listForm;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    Button1: TButton;
    edtName: TEdit;
    edtPW: TEdit;
    Label1: TLabel;
    FDQuery2: TFDQuery;
    edtRealName: TEdit;
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
  LoginForm: TForm2;
  ListForm: TForm3;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
      if edtName.Text = '' then
      begin
      ShowMessage('아이디를 입력');
      edtName.SetFocus;
      Exit;
      end;

      if edtRealName.Text = '' then
      begin
        ShowMessage('이름을 입력');
        edtRealName.SetFocus;
        Exit;
      end;

      if edtPW.Text = '' then
      begin
      ShowMessage('비밀번호를 입력');
      edtPW.SetFocus;
      Exit;
      end;
      FDQuery2.SQL.Text := 'SELECT * FROM users WHERE namee = :name';
      FDQuery2.ParamByName('name').AsString := edtName.Text;
      FDQuery2.Open;
      if not FDQuery2.IsEmpty then
      begin
        ShowMessage(edtName.Text+'이라는 아이디는 존재합니다.');
        edtName.Clear;
        edtName.SetFocus;
        Exit;
      end;



      FDQuery1.SQL.Text := 'INSERT INTO users(namee, real_name, passwordd) VALUES (:namee, :real_name, :passwordd)';
      FDQuery1.ParamByName('namee').AsString := edtName.Text;
      FDQuery1.ParamByName('real_name').AsString := edtRealName.Text;
      FDQuery1.ParamByName('passwordd').AsString := edtPW.Text;
      FDQuery1.ExecSQL;
      Hide;


  LoginForm := TForm2.Create(Application);
    if LoginForm.ShowModal = mrOK then
    begin
      ShowMessage('TEST');
      Show;
      Label1.Caption := edtRealName.Text + '님! 로그인 되었습니다!';
      edtName.SetFocus;
    end;
  end;



procedure TForm1.FormCreate(Sender: TObject);
begin
  FDConnection1.Params.Clear; // 이전 데이터베이스의 연결을 초기화
  FDConnection1.DriverName := 'MySQL';
  FDConnection1.Params.Add('CharacterSet=utf8'); // DB 인코딩을 utf8로 바꿈(DB연동시 무조건 할 것, 그렇지 않으면 한글깨짐)
  FDConnection1.Params.Add('Server=localhost');
  FDConnection1.Params.Add('Database=check');
  FDConnection1.Params.Add('User_Name=check_user');
  FDConnection1.Params.Add('Password=1234');
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then self.Close;
  if Key = VK_RETURN then Button1.Click;
  if Key = VK_UP then edtName.SetFocus;
  if Key = VK_DOWN then edtPW.SetFocus;
  if Key = VK_F1 then
  begin
    Application.CreateForm(TForm3, ListForm);
    ListForm.ShowModal;
  end;
end;

end.
