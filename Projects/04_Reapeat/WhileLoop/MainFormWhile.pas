unit MainFormWhile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  I, Sum: Integer;
begin
  Sum := 0;

  for I := 1 to 10 do
    Sum := Sum + I;
  Memo1.Lines.Add(IntToStr(Sum));

  Sum := 0;
  I := 1;
  while (I<=10) do
  begin
    Sum := Sum + I;
    Inc(I);
  end;
  Memo1.Lines.Add(IntToStr(Sum));

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I, Sum: Integer;
begin
  Memo1.Lines.Clear;

  Sum := 0;
  I := 1;
  while Sum < 100 do
  begin
    Sum := Sum + I;
    Memo1.Lines.Add(Format('+ %d = %d', [I, Sum]));

    Inc(I);
  end;

  Memo1.Lines.Add(Format('  1부터 %d까지의 합 = %d', [I-1, Sum]));

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  I, Sum: Integer;
begin
  Memo1.Lines.Clear;

  Sum := 0;
  I := 1;
  repeat
    Sum := Sum + I;
    Memo1.Lines.Add(Format('+ %d = %d', [I, Sum]));

    Inc(I);
  until (Sum >= 100);

  Memo1.Lines.Add(Format('  1부터 %d까지의 합 = %d', [I-1, Sum]));
end;

end.
