unit yourName;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
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
  S, S2: string;
  Name, Age: string;
  I, C: Integer;
begin
  S := '�� �̸��� [ȫ�浿], ���̴� <23> �Դϴ�.';

  I := Pos('[', S) + 1; // 8
  C := Pos(']', S) - I; // (11 - 8) = 3
  Name := Copy(S, I, C);

  I := Pos('<', S) + 1; // 19
  C := Pos('>', S) - I; // 21 - 19 = 2
  Age := Copy(S, I, C);

  S2 := '�̸� : ' + Name + #13#10;
  S2 := S2 + '���� : ' + Age;

  Memo1.Lines.Add(S);
  Memo1.Lines.Add(S2);
end;

end.
