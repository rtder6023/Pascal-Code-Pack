unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtAge: TEdit;
    Button1: TButton;
    edtChar: TEdit;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  Age: Integer;
  Title: string;
  Bool: Boolean;
begin
  case True of
  True:
    begin
    end;
  False:
    begin
    end;
  end;

  Age := StrToIntDef(edtAge.Text, -1);  // ���ڿ��� ���������� ��ȯ ����
  case Age of
    0:        Title := '�¾�';
    1..7:     Title := '����';
    8..13:    Title := '�ʵ��л�';
    14,15,16: Title := '���л�';
    17..19:   Title := '����л�';
  else        Title := '����';
  end;

  Memo1.Lines.Add(Format('%d���� %s�Դϴ�.', [Age, Title]));
end;

procedure TForm1.Button2Click(Sender: TObject);
type
  TMyEnum = (meFirst, meSecond, meThird);
var
  Enum: TMyEnum;
  Ch: Char;
  EnumValue, CharType: string;
begin
  Enum := meFirst;
  case Enum of
    meFirst: EnumValue := 'First';
    meSecond: EnumValue := 'Second';
    meThird: EnumValue := 'Third';
  end;

  if (edtChar.Text = '') or (Length(edtChar.Text) <> 1) then
  begin
    ShowMessage('���� �ϳ��� �Է��ϼ���.');
    edtChar.SetFocus;
    Exit;
  end;

  Ch := edtChar.Text[1];
  case Ch of
  'a'..'z': CharType := '�ҹ���';
  'A'..'Z': CharType := '�빮��';
  '0'..'9': CharType := '����';
  else      CharType := '��Ÿ����';
  end;

  Memo1.Lines.Add(Format('''%s''�� %s�Դϴ�.', [Ch, CharType]));
end;

end.
