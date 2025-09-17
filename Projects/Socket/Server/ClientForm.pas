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
  IdTCPClient1.Host := Edit1.Text;  // ���� �ּҴ� Edit1�� �Էµ� ������ ���� + Host�� �������� IP�� ��ȯ�ϴ� �Լ���

  // SpinEdit1���� ���� �����ͼ� Port�� ����
  Port := SpinEdit1.Value;
  // ��Ʈ ���� SpinEdit���� �����ͼ� ����
  IdTCPClient1.Port := Port;
  try
    IdTCPClient1.Connect;  // Connect �޼��带 ����Ͽ� ���� �õ�
    Memo1.Lines.Add('������ �����');
  except
    on E: Exception do    // ���� ���н� ���� ó����
      Memo1.Lines.Add('���� ����: ' + E.Message);
  end;
end;


procedure TForm2.Button2Click(Sender: TObject);
begin
  IdTCPClient1.Disconnect;
  Memo1.Lines.Add('���� ���� ������');
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
      // Memo1.Lines.Add('������ �޽��� ����: ' + EncodedMessage);
      Memo1.Lines.Add(Edit1.Text +': ' + EncodedMessage);
      Edit2.Clear;
    except
      on E: Exception do
        Memo1.Lines.Add('�޽��� ���� ����: ' + E.Message);
    end;
  end
  else
  begin
    Memo1.Lines.Add('���� �޽����� �Է��ϼ���.');
  end;
end;




procedure TForm2.IdTCPClient1Connected(Sender: TObject);
begin
  Memo1.Lines.Add('�����');
end;

procedure TForm2.IdTCPClient1Disconnected(Sender: TObject);
begin
  Memo1.Lines.Add('���� ������');
end;

end.



