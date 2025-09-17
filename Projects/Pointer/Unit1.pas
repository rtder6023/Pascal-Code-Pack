unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  X, Y: Integer;
  P: ^Integer; // P는 Integer자료형을 가르킴
implementation

{$R *.dfm}

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    X:= 17;
    P:= @X;
    Y:= P^;
    if Key = VK_F1 then ShowMessage(IntToStr(X));               // X의 값을 출력
    if Key = VK_F2 then ShowMessage(IntToHex(NativeInt(P), 8)); // P가 가리키는 주소값을 출력
    // 32비트에서는 Integer를 사용해도 됨.
    // 하지만 64비트에서는 주소손상 + 런타임에러를 일으킬 수 있음,
    // 델파이에서는 NativeInt가 Pointer의 크기랑 맞춰져 있음,
    // 현재 32비트에서 실행중이지만 64비트로도 실행할 수도 있기에 NativeInt를 사용
    if Key = VK_F3 then ShowMessage(IntToStr(Y));               // 포인터를 역참조해 얻은 값

    if Key = VK_ESCAPE then Close;
end;

end.
