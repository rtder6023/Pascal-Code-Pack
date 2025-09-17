unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    btnExecute: TButton;
    btnExit: TButton;
    procedure btnExitClick(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Increase : Integer;

implementation

{$R *.dfm}

procedure TForm1.btnExecuteClick(Sender: TObject);
begin
    Memo1.Lines.Add(FormatDateTime('YYYY-MM-DD',Now));
end;

procedure TForm1.btnExitClick(Sender: TObject);
begin
    self.Close;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     // Inc는 값을 늘림, 예) Inc(Increase, 5)는 Increase를 버튼을 한 번 누를 때마다 5씩 늘어남, 뒤에 숫자를 않쓰고 Increase만 쓸 시 1씩 늘어남
     if Key = VK_F2 then Inc(Increase); Memo1.Lines.Add(IntToStr(Increase));
     if Key = VK_ESCAPE then btnExit.Click;
          
end;

end.
