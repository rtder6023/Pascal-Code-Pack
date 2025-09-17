object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object mmoMessage: TMemo
    Left = 16
    Top = 89
    Width = 265
    Height = 161
    Lines.Strings = (
      '[Name]'#45784' '#50504#45397#54616#49464#50836'.'
      ''
      '[Name] '#45784#51032' [Age]'#48264#51704' '#49373#51068#51012' '#52629#54616#54633#45768#45796'.'
      ''
      '[Name] '#45784#50640#44172'...')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 143
    Top = 30
    Width = 75
    Height = 25
    Caption = #52629#54616#47700#49884#51648
    TabOrder = 1
    OnClick = Button1Click
  end
  object edtName: TEdit
    Left = 16
    Top = 31
    Width = 121
    Height = 23
    TabOrder = 2
    Text = #54861#44600#46041
  end
  object edtAge: TEdit
    Left = 16
    Top = 60
    Width = 121
    Height = 23
    TabOrder = 3
    Text = '18'
  end
end
