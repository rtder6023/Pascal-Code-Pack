unit HappyBDay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    mmoMessage: TMemo;
    Button1: TButton;
    edtName: TEdit;
    edtAge: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
begin
  S := mmoMessage.Lines.Text;
  Name := edtName.Text;
  Age := edtAge.Text;

  S2 := StringReplace(S, '[Name]', Name, [rfReplaceAll]);
  S2 := StringReplace(S2, '[Age]', Age, [rfReplaceAll]); //
  // S2�� [Name]  �׸��� StringReplace  �Լ��� �̿��� �Է¹��� �̸����� ġȯ�ϼ���.
  // S2�� [Age]  �׸��� StringReplace  �Լ��� �̿��� �Է¹��� ���̷� ġȯ�ϼ���.

  ShowMessage(S2);
end;


procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_F1 then Button1.Click();
    if Key = VK_ESCAPE then Close();
end;

end.
