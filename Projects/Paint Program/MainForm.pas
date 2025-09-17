unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    ColorDialog1: TColorDialog;
    Panel3: TPanel;
    Button6: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button5Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    State: Integer;
    DrawColor: TColor;
    PenW: Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Drawing: Boolean;
  StartX, StartY, EndX, EndY: Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  State := 1;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  State := 2;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  State := 3;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  State := 4;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Image1.Picture.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Image1.Canvas.Pen.Color := clWhite;
  Image1.Canvas.Brush.Color := clWhite;
  Image1.Canvas.Rectangle(0, 0, Image1.Width - 1, Image1.Height - 1);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  PenW := StrToInt(Edit1.Text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  with Image1.Canvas do
  begin
    Pen.Color := clWhite;
    Brush.Color := clWhite;
    Rect(0, 0, Image1.Width - 1, Image1.Height - 1);
    State := 1;
    DrawColor := clBlack;
    PenW := 2;
  end;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  Image1.Width := ClientWidth;
  Image1.Height := ClientHeight - 60;
  Image1.Picture.Bitmap.Width := Image1.Width;
  Image1.Picture.Bitmap.Height := Image1.Height;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Drawing := True;
  StartX := X; StartY := Y;
  EndX := X; EndY := Y;

  if (State = 1) or (State = 2) then
  begin
    Image1.Canvas.Pen.Color := clWhite;
    Image1.Canvas.Pen.Width := PenW;
  end;

  if State = 4 then
  begin
    Image1.Canvas.Pen.Color := DrawColor;
    Image1.Canvas.Pen.Width := PenW;
    Image1.Canvas.PenPos := Point(X, Y);
  end;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  PenColor:TColor;
begin
if Drawing=true then
begin
if State=1 then  begin      //start drawing line
 with Image1.Canvas do begin
   Pen.Mode:=pmXor;
   MoveTo(StartX,StartY);
   LineTo(EndX,EndY);
   Pen.Mode:=pmXor;
   MoveTo(StartX,StartY);
   LineTo(x,y);
 end;
 EndX:=X; EndY:=Y;
end;

if State=2 then begin    // start drawing rectangular
with Image1.Canvas do begin
  Pen.Mode:=pmXOR;
  MoveTo(StartX,StartY);
  LineTo(StartX,EndY);
  LineTo(EndX,EndY);
  LineTo(EndX,StartY);
  LineTo(StartX,StartY);
  Pen.Mode:=pmXOR;
  MoveTo(StartX,StartY);
  LineTo(StartX,y);
  LineTo(x,y);
  LineTo(x,StartY);
  LineTo(StartX,StartY);
end;
EndX:=X; EndY:=Y;
end;

if State=3 then begin    // start drawing ellipse
with Image1.Canvas do begin
PenColor:=Pen.Color;
Pen.Color:=Brush.Color;
Ellipse(StartX,StartY,EndX,EndY);
Pen.Color:=PenColor;
Ellipse(StartX,StartY,X,Y);
end;
EndX:=X; EndY:=Y;
end;

if State=4 then begin    // start drawing freehand
with Image1.Canvas do begin
LineTo(X,Y);
end;

end;

end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if State=1 then  begin      //end drawing line
 with Image1.Canvas do begin
   Pen.Mode:=pmXOR;
   MoveTo(StartX,StartY);
   LineTo(EndX,EndY);
   Pen.Color:=DrawColor;
   Pen.Mode:=pmCopy;
   MoveTo(StartX,StartY);
   LineTo(EndX,EndY);
 end;
 end;

 if State=2 then begin    // end drawing rectangular
with Image1.Canvas do begin
      Pen.Mode:=pmXOR;
      MoveTo(StartX,StartY);
      LineTo(StartX,EndY);
      LineTo(EndX,EndY);
      LineTo(EndX,StartY);
      LineTo(StartX,StartY);
      Pen.Color:=DrawColor;
      Brush.Color:=clWhite;
      Pen.Mode:=pmCopy;
      MoveTo(StartX,StartY);
      LineTo(StartX,EndY);
      LineTo(EndX,EndY);
      LineTo(EndX,StartY);
      LineTo(StartX,StartY);
  end;
end;

Drawing:=False;
end;

procedure TForm1.Panel2Click(Sender: TObject);
begin
if ColorDialog1.Execute() then
begin
Panel2.Color:=ColorDialog1.Color;
DrawColor:=ColorDialog1.Color;
Panel2.Repaint;
end;
end;

end.

