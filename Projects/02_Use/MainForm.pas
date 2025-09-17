unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    edtName: TEdit;
    Memo2: TMemo;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
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
  Str: string;
  Num: Integer;
begin
  Num := Length('�ȳ��ϼ���');
  Memo1.Lines.Add('���ڿ��� ����: ' + IntToStr(Num)); // 5

  Num := Pos('��', '�ȳ��ϼ���');
  Memo1.Lines.Add('[��]�� ��ġ: ' + IntToStr(Num));  // 3

  Str := Copy('�ȳ��ϼ���', 3, 2);
  Memo1.Lines.Add('3��°���� 2���� ����: ' + Str);  // �ϼ�

  Str := StringReplace('�ȳ��ϼ���', '�ϼ���', '��������', [rfReplaceAll]);
  Memo1.Lines.Add('���ڿ� ġȯ: ' + Str);   // �ȳ���������

  Str := Trim('   �ȳ��ϼ���    ');
  Memo1.Lines.Add('�յ� ���� ����: ' + Str);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Num := Length('�ȳ��ϼ���');
  Memo1.Lines.Add('�ȳ��K���� Length: ' + IntToStr(Num));

  Str := '�ȳ��ϼ���';
  Num := Length(Str);
  Memo1.Lines.Add('Str Length: ' + IntToStr(Num));

  Num := Length('abc123������');
  Memo1.Lines.Add('A1�� Length: ' + IntToStr(Num));
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Str := '�ȳ��ϼ���';
  Memo1.Lines.Add(Str);

  Num := Pos('��', Str);
  Memo1.Lines.Add('[��]�� ��ġ: ' + IntToStr(Num));

  Num := Pos('�ϼ�', Str);
  Memo1.Lines.Add('[�ϼ�]�� ��ġ: ' + IntToStr(Num));

  Num := Pos('��', Str);
  Memo1.Lines.Add('[��]�� ��ġ: ' + IntToStr(Num));

  Num := Pos('cd', 'abcdef');
  Memo1.Lines.Add('[cd]�� ��ġ: ' + IntToStr(Num));

  Num := Pos('b', 'abcabcd', 3);
  Memo1.Lines.Add('abcabcd, 3������ [b]�� ��ġ: ' + IntToStr(Num));

  // b�� ��ġ��
  Num := Pos('b', 'abcabcd');
  Memo1.Lines.Add('ù ���� [b]�� ��ġ: ' + IntToStr(Num));

  Num := Pos('b', 'abcabcd', Num+1);
  Memo1.Lines.Add('�� ���� [b]�� ��ġ: ' + IntToStr(Num));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
  Idx, Len: Integer;
begin
  Str := Copy('�ȳ��ϼ���', 3, 2);
  Memo1.Lines.Add('�ȳ��ϼ���, 3���� 2�� ����' + Str);

  Str := Copy('�ȳ��ϼ���', 3, 4);
  Memo1.Lines.Add('�ȳ��ϼ���, 3���� 4�� ����' + Str);

  // '��'���� '��'���� ��������
  Str := '�ȳ��ϼ���';
  // Str := '�ȳ��ϽŰ���';
  Idx := Pos('��', Str); // 3
  Len := Pos('��', Str) - Idx + 1; // 5 - 3 + 1 = 3

  Str := Copy(Str, Idx, Len);
  Memo1.Lines.Add('�Ϻ��� �����: ' + Str);
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  Msg, Msg2: string;
  Name: string;


begin
   Msg := Memo2.Lines.Text;
   Name := edtName.Text;

   // �޽����� [Name] �׸��� �Է��� �̸����� ġȯ�ϼ���.
  // Msg2 := StringReplace('', '', '', [rfReplaceAll]);
  Msg2 := StringReplace(Msg, '[Name]', Name, [rfReplaceAll]);

  ShowMessage(Msg2);
end;

end.
