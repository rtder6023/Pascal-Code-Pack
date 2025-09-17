object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 303
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 168
    Top = 192
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object SpinEdit1: TSpinEdit
    Left = 63
    Top = 16
    Width = 185
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object Button1: TButton
    Left = 80
    Top = 46
    Width = 73
    Height = 25
    Caption = #49436#48260' '#50676#44592
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 159
    Top = 46
    Width = 74
    Height = 25
    Caption = #49436#48260' '#45803#44592
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 63
    Top = 78
    Width = 185
    Height = 266
    TabOrder = 3
  end
  object IdTCPServer1: TIdTCPServer
    Bindings = <>
    DefaultPort = 0
    OnConnect = IdTCPServer1Connect
    OnDisconnect = IdTCPServer1Disconnect
    OnExecute = IdTCPServer1Execute
    Left = 144
    Top = 176
  end
end
