unit Unit1;

interface

uses
  Vcl.Forms, Vcl.Controls, Vcl.Graphics, Vcl.StdCtrls, System.SysUtils, System.Classes, Unit2;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
begin
  // Main screen에서 물건 선택 화면으로 이동
  Form2.Show;
  Form1.Hide;
end;

end.

