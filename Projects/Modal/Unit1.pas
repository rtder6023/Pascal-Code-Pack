unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit2;

type
  TForm1 = class(TForm)
    ButtonShowModal: TButton;
    procedure ButtonShowModalClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  true_count: Integer;
  false_count: Integer;
implementation

{$R *.dfm}

procedure TForm1.ButtonShowModalClick(Sender: TObject);
var
  ModalForm: TForm2;
begin
  ModalForm := TForm2.Create(nil);
  Hide;
  try
    if ModalForm.ShowModal = mrOK then
    begin
      Inc(true_count);
      ShowMessage('모달 폼에서 확인 버튼을 눌렀습니다.');
    end
    else
    begin
      Inc(false_count);
      ShowMessage('모달 폼에서 확인 버튼 외 다른 액션이 수행되었습니다.');
    end;
  finally
    Show;
    ModalForm.Free;
  end;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  t_cnt : Integer;
begin
    t_cnt := true_count + false_count;
    case Key of
      VK_ESCAPE: Close;

      VK_F1:
      begin
        if true_count = 0 then
          ShowMessage('No TRUE Count')
        else if false_count = 0 then
          ShowMessage('No FALSE Count')
        else
          ShowMessage('확인 횟수:' + IntToStr(true_count) + #13#10 + '비확인 횟수:' + IntToStr(false_count));
    end;
      VK_F2: ShowMessage('합계:'+IntToStr(t_cnt));
    end;
  end;

//procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
//  Shift: TShiftState);
//  var
//  t_cnt : Integer;
//begin
//    t_cnt := true_count + false_count;
//    if Key = VK_ESCAPE then Close;
//    if Key = VK_F2 then ShowMessage('총합 횟수:' + IntToStr(t_cnt));
//
//      if true_count = 0 then        // if문
//        begin
//          ShowMessage('확인 버튼을 한번 이상 누르십시오');
//        end
//      else
//        if false_count = 0 then
//          begin
//            ShowMessage('모달에서 이외의 행동을 하십시오');
//          end
//      else
//        if Key = VK_F1 then ShowMessage('확인 횟수:' + IntToStr(true_count) + #13#10 + '비확인 횟수:' + IntToStr(false_count));
//      end;

end.
