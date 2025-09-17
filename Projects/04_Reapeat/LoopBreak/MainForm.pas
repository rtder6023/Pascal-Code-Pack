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
    Memo1: TMemo;
    Memo2: TMemo;
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
  Memo2.Lines.Clear;
  for I := 1 to 10 do
  begin
    if I = 5 then
      Break;

    Memo2.Lines.Add(IntToStr(I));
  end;

  for I := 1 to 10 do
  begin
    if I mod 2 = 0 then
    Continue;

    Memo2.Lines.Add(IntToStr(I));
  end;

  I := 1;
  Sum := 0;
  while True do
  begin
    Sum := Sum + I;
    if Sum > 100 then
      Break;

    Inc(I);
  end;

  Memo2.Lines.Add(IntToStr(Sum));

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I: Integer;
  Str: string;
begin
  Memo2.Lines.Clear;

  for I := 0 to Memo1.Lines.Count - 1 do
  begin
    Str := Memo1.Lines[I];
    if Str = '' then
      Break;

    Memo2.Lines.Add(Str);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  I: Integer;
  Str: string;
begin
  Memo2.Lines.Clear;

  for I := 0 to Memo1.Lines.Count - 1 do
  begin
    Str := Memo1.Lines[I];
    if Str = '' then
      Continue;

    Memo2.Lines.Add(Str)
  end;

end;

end.
