unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtName: TEdit;
    edtAge: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure BooleanLog(AType: string; AValue: Boolean);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BooleanLog(AType: string; AValue: Boolean);
begin
  Memo1.Lines.Add(AType + ' = ' + BoolToStr(AValue, True));
end;
procedure TForm1.Button1Click(Sender: TObject);
var
  B: Boolean;
begin
  B := True; // False
  BooleanLog('B', B);
  BooleanLog('False', False);

  Memo1.Lines.Add('True' + IntToStr(Ord(true)));
  Memo1.Lines.Add('False' + IntToStr(Ord(false)));
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I: Integer;
  Name: string;
begin
  BooleanLog('1=1', 1=1);
  BooleanLog('1=2', 1=2);

  Name := edtName.Text; // ȫ�浿
  BooleanLog('�̼���', Name = '�̼���'); // False
  BooleanLog('ȫ�浿', Name = 'ȫ�浿'); // True

  I := 1;
  BooleanLog('I<>1', I<>1); // False
  BooleanLog('I<>2', I<>2); // True

  I := 5;
  BooleanLog('I(5)<6', I<6); // True
  BooleanLog('I(5)<5', I<5); // False

  BooleanLog('I(5)<=5', I <= 5); // True

  BooleanLog('I(5)>5', I>5);  // False
  BooleanLog('I(5)<4', I>4);  // True

  BooleanLog('I(5)>=5', I >= 5);  // True
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Age: Integer;
  ID, Name: string;
begin
  BooleanLog('not True', not True);             // False
  BooleanLog('not False', not False);           // True

  BooleanLog('True and True', True and True);   // True
  BooleanLog('True and False', True and False); // False

  BooleanLog('True or True', True or True);     // True
  BooleanLog('True or False', True or False);   // True
  BooleanLog('False or False', False or False); // False

  Age := StrToIntDef(edtAge.Text, 0); // 16
  BooleanLog('18�� ����', Age <= 18);                 // True
  BooleanLog('����л�', (Age > 16) and (Age <= 19)); // False

  BooleanLog('�߰��', (Age >= 14) and (Age <= 19));
  BooleanLog('�߰�� �ƴ�', (Age < 14) or (Age > 19));
  BooleanLog('�߰�� �ƴ�', not((Age >= 14) and (Age <= 19)));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  I: Integer;
begin
  // ���ǹ�(������ ���� ��� �ڵ� ����)
  if edtName.Text = '' then
  begin
    ShowMessage('�̸��� �Է��ϼ���.');
    edtName.SetFocus;
    Exit;
  end;

  I :=0;
  while I < 5 do
  begin
    Memo1.Lines.Add(IntToStr(I));
    Inc(I);
  end;

end;

end.
