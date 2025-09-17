object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 176
    Top = 232
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object SpinEdit1: TSpinEdit
    Left = 71
    Top = 56
    Width = 185
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 8089
  end
  object Button1: TButton
    Left = 88
    Top = 86
    Width = 73
    Height = 25
    Caption = #49436#48260' '#51217#49549
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 167
    Top = 86
    Width = 74
    Height = 25
    Caption = #51217#49549' '#51333#47308
    TabOrder = 2
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 71
    Top = 118
    Width = 185
    Height = 266
    TabOrder = 3
  end
  object Button3: TButton
    Left = 215
    Top = 390
    Width = 41
    Height = 25
    Caption = #51204#49569
    TabOrder = 4
    OnClick = Button3Click
  end
  object Edit2: TEdit
    Left = 71
    Top = 390
    Width = 138
    Height = 23
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 71
    Top = 27
    Width = 185
    Height = 23
    TabOrder = 6
    Text = '127.0.0.1'
  end
  object IdTCPClient1: TIdTCPClient
    OnDisconnected = IdTCPClient1Disconnected
    OnConnected = IdTCPClient1Connected
    ConnectTimeout = 0
    Port = 0
    ReadTimeout = -1
    Left = 16
    Top = 176
  end
end
