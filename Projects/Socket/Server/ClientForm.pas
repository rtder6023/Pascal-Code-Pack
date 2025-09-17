unit ClientForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent, idContext,
  IdTCPConnection, IdTCPClient, IdGlobal, IdCoderMIME, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm2 = class(TForm)
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    IdTCPClient1: TIdTCPClient;
    Edit1: TEdit;
    procedure IdTCPClient1Connected(Sender: TObject);
    procedure IdTCPClient1Disconnected(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

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
  Port: Integer;
begin
  IdTCPClient1.Host := Edit1.Text;  // 서버 주소는 Edit1에 입력된 값으로 설정 + Host는 도메인을 IP로 변환하는 함수임

  // SpinEdit1에서 값을 가져와서 Port에 넣음
  Port := SpinEdit1.Value;
  // 포트 값을 SpinEdit에서 가져와서 넣음
  IdTCPClient1.Port := Port;
  try
    IdTCPClient1.Connect;  // Connect 메서드를 사용하여 연결 시도
    Memo1.Lines.Add('서버에 연결됨');
  except
    on E: Exception do    // 연결 실패시 예외 처리함
      Memo1.Lines.Add('연결 실패: ' + E.Message);
  end;
end;


procedure TForm2.Button2Click(Sender: TObject);
begin
  IdTCPClient1.Disconnect;
  Memo1.Lines.Add('서버 연결 해지됨');
end;


procedure TForm2.Button3Click(Sender: TObject);
var
  EncodedMessage: string;
begin
  if Edit2.Text <> '' then
  begin
    try
      EncodedMessage := Edit2.Text;
      IdTCPClient1.IOHandler.WriteLn(EncodedMessage, enUTF8);
      // Memo1.Lines.Add('서버로 메시지 전송: ' + EncodedMessage);
      Memo1.Lines.Add(Edit1.Text +': ' + EncodedMessage);
      Edit2.Clear;
    except
      on E: Exception do
        Memo1.Lines.Add('메시지 전송 실패: ' + E.Message);
    end;
  end
  else
  begin
    Memo1.Lines.Add('보낼 메시지를 입력하세요.');
  end;
end;




procedure TForm2.IdTCPClient1Connected(Sender: TObject);
begin
  Memo1.Lines.Add('연결됨');
end;

procedure TForm2.IdTCPClient1Disconnected(Sender: TObject);
begin
  Memo1.Lines.Add('연결 해지됨');
end;

end.



