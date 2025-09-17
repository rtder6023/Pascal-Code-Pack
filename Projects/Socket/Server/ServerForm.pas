unit ServerForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  IdBaseComponent, IdComponent, IdCustomTCPServer, IdTCPServer, IdContext, IdCoderMIME, IdGlobal;

type
  TForm1 = class(TForm)
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    IdTCPServer1: TIdTCPServer;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure IdTCPServer1Connect(AContext: TIdContext);
    procedure IdTCPServer1Disconnect(AContext: TIdContext);
    procedure IdTCPServer1Execute(AContext: TIdContext);
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
  IdTCPServer1.DefaultPort := SpinEdit1.Value;
  IdTCPServer1.Active := True;



  Memo1.Lines.Add('서버 켜짐');
end;




procedure TForm1.Button2Click(Sender: TObject);
begin
  IdTCPServer1.Active := False;

  Memo1.Lines.Add('서버 종료됨');
end;





procedure TForm1.IdTCPServer1Connect(AContext: TIdContext);
begin
  // Memo1.Lines.Add(AContext.Binding.PeerIP + ':' + IntToStr(AContext.Binding.PeerPort));
  Memo1.Lines.Add('접속');
end;

procedure TForm1.IdTCPServer1Disconnect(AContext: TIdContext);
begin
  // Memo1.Lines.Add(AContext.Binding.PeerIP + ':' + IntToStr(AContext.Binding.PeerPort));
  Memo1.Lines.Add('접속해지됨');
end;


procedure TForm1.IdTCPServer1Execute(AContext: TIdContext);
var
  msg: string;
begin
  msg := AContext.Connection.IOHandler.ReadLn(IndyTextEncoding_UTF8);
  Memo1.Lines.Add(AContext.Binding.PeerIP + ' : ' + msg);
end;




end.

