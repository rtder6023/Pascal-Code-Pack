unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm3 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    FMemberStr: string;   // ���� ��� ����

    FPropertyStr: string;
    { Private declarations }
    function PrivateFunc: string;
    procedure SetNumberStr(const Value: string);
  public
    { Public declarations }
    PublicMemberStr: string;   // ���� ��� ����

    function PublicFunc: string;

    property PropertyStr string read FPropertyStr write FPropertyStr;
    property ReadOnlyStr string read FPropertyStr;
    property PrivateFuncStr string read PrivateFunc;
    property NumberStr string read FPropertyStr write SetNumberStr;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  PublicMemberStr := 'TForm3�� ���� ��� ����';
end;

function TForm3.PrivateFunc: string;
begin
  Result := 'TForm3�� ���� �Լ�';
end;

function TForm3.PublicFunc: string;
begin
  Result := 'TForm3�� ���� �Լ�';
end;

procedure TForm3.SetNumberStr(const Value: string);
var
  Num: Integer;
begin
  if not TryStrToInt(Value, Num) then
    Num := 0;

  FPropertyStr := IntToStr(Num);
end;
end.
