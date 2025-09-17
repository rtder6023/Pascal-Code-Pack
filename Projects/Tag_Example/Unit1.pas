unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnItem1: TButton;
    btnItem2: TButton;
    btnItem3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
   btnItem1.Tag := 1;
   btnItem2.Tag := 2;
   btnItem3.Tag := 3;

   btnItem1.OnClick := ButtonClick;
   btnItem2.OnClick := ButtonClick;
   btnItem3.OnClick := ButtonClick;
end;

procedure TForm1.ButtonClick(Sender: TObject);
var
  ItemId: Integer;
  ItemName: string;
begin
  ItemId := (Sender as TButton).Tag;

  case ItemId of
    1: ItemName := 'ǳ��';
    2: ItemName := 'Ŀ��';
    3: ItemName := '���';
  else
    ItemName := '�� �� ����';
  end;

  ShowMessage('������ ������: ' + ItemName);
end;

end.

end.
