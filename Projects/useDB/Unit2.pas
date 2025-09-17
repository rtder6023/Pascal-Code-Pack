unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    edtID: TEdit;
    edtPa: TEdit;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  if edtID.Text = '' then
  begin
  Button1.ModalResult := mrNone;
  ShowMessage('아이디를 적어주세요');
  end
  else
  if edtPa.Text = '' then
  begin
  Button1.ModalResult := mrNone;
  ShowMessage('비밀번호를 적어주세요');
  end;
  if edtID.Text = FDQuery1.ParamByName('namee') then

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FDConnection1.Params.Clear;
  FDConnection1.DriverName := 'MySQL';
  FDConnection1.Params.Add('Server=localhost');
  FDConnection1.Params.Add('Database=check');
  FDConnection1.Params.Add('User_Name=check_user');
  FDConnection1.Params.Add('CharacterSet=utf8');
  FDConnection1.Params.Add('Password=1234');
end;

end.
