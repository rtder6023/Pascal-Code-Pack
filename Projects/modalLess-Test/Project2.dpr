program Project2;

uses
  Vcl.Forms,
  signUp in 'signUp.pas' {Form1},
  signIn in 'signIn.pas' {Form2},
  listForm in 'listForm.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(signUp.TForm1, Form1);
  Application.CreateForm(signIn.TForm2, Form2);
  Application.CreateForm(listForm.TForm3, Form3);
  Application.Run;
end.
