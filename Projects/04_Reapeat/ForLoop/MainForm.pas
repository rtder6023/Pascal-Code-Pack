unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNum: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
  I: Integer;
begin
  for I := 0 to 5 do
  begin
    Memo1.Lines.Add(IntToStr(I));
  end;

  for I := 5 downto 1 do
  begin
    Memo1.Lines.Add(IntToStr(I));
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I, Num, Sum: Integer;
begin
  if not TryStrToInt(edtNum.Text, Num) then
  begin
    ShowMessage('숫자를 입력해 주세요.');
    edtNum.SetFocus;
    Exit;
  end;

  Sum := 0;
  for I := 1 to Num do
    Sum := Sum + I;

  Memo1.Lines.Add(Format('1부터 %d까지의 합은 %d입니다.', [Num, Sum]));	
    
end;

procedure TForm1.Button3Click(Sender: TObject);
var 
  I, J: Integer;
begin
  for I := 2 to 9 do
  begin
    Memo1.Lines.Add(Format('[%d 단] ', [I]));
    for J := 1 to 9 do
      Memo1.Lines.Add(Format('%d * %d = %d', [I, J, I*J]));
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
const
  IntArray: array[0..4] of Integer = (1,2,3,4,5);
var
  I, Val: Integer;
begin
  Memo1.Lines.Clear;

  Memo1.Lines.Add('For Loop');
  for I := 0 to Length(IntArray) - 1 do
    begin
      Val := IntArray[I];

      Memo1.Lines.Add(IntToStr(Val));
    end;

    Memo1.Lines.Add('For-in loop');
    for Val in IntArray do
      Memo1.Lines.Add(IntToStr(Val));



end;

end.
