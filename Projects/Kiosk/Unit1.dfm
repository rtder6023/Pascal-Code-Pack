object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Kiosk - Main Screen'
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  TextHeight = 14
  object Label1: TLabel
    Left = 200
    Top = 200
    Width = 241
    Height = 27
    Alignment = taCenter
    Caption = 'Welcome to the Kiosk!'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 350
    Top = 300
    Width = 100
    Height = 50
    Caption = 'Click Me'
    TabOrder = 0
    OnClick = Button1Click
  end
end
