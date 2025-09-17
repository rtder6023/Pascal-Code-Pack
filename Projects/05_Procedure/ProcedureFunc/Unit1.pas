unit Unit1;

interface

uses
  Unit2, Unit3, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    edtGlobalNum: TEdit;
    Button6: TButton;
    Button10: TButton;
    Button2: TButton;
    Button7: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edtMemberNum: TEdit;
    edtLocalNum: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    FMemberStr: string;
    FMemberNum: Integer;
  public
    { Public declarations }
    PublicMemberStr: string;
  end;

var
  Form1: TForm1;

var
  GlobalStr: string;
  GlobalNum: Integer;

implementation

{$R *.dfm}




procedure TForm1.Button1Click(Sender: TObject);
var
  LocalStr: string;          // procedure���� begin������ �����, �� ��������
begin
  GlobalStr := '��������';
  LocalStr := '��������';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage(GlobalStr);
// LocalStr�� �ʉ�, ������������
end;



procedure TForm1.Button3Click(Sender: TObject);
var
  LocalNum: Integer;
begin
  GlobalNum := GlobalNum + 1;
  LocalNum := LocalNum + 1; // �ִ� ���� �ʴ�

  edtGlobalNum.Text := IntToStr(GlobalNum);
  edtLocalNum.Text := IntToStr(LocalNum);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  GlobalStr := 'Unit2�� ���� ����';
  GlobalStr2 := 'Unit2�� ���� ����';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  ShowMessage(GlobalStr);
  // Unit1�� ���������� �浹, ������ �������� ����� ���� ��(������� ���)
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  FMemberStr := '��� ����';

  PublicMemberStr := '���� ��� ����';

  ShowMessage(Form3.PublicMemberStr);
end;

end.
