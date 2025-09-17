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
  TextHeight = 15
  object Button1: TButton
    Left = 24
    Top = 24
    Width = 113
    Height = 25
    Caption = #47928#51088#50676' '#54632#49688
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 287
    Top = 66
    Width = 138
    Height = 25
    Caption = 'Length  '#54632#49688
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 287
    Top = 97
    Width = 138
    Height = 25
    Caption = 'Pos '#54632#49688
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 287
    Top = 128
    Width = 138
    Height = 25
    Caption = 'Copy '#54632#49688
    TabOrder = 3
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 55
    Width = 257
    Height = 171
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object edtName: TEdit
    Left = 287
    Top = 232
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object Memo2: TMemo
    Left = 24
    Top = 232
    Width = 257
    Height = 121
    Lines.Strings = (
      '[Name]'#45784' '#50504#45397#54616#49464#50836'.'
      #45944#54028#51060' '#49688#50629#50640#49436' [Name]'#45784#51012' '#52488#45824#54633#45768#45796'.'
      ''
      '[Name]'#45784#50640#44172)
    TabOrder = 6
  end
  object Button6: TButton
    Left = 287
    Top = 261
    Width = 138
    Height = 25
    Caption = #51060#47492' '#52824#54872#54616#44592
    TabOrder = 7
    OnClick = Button6Click
  end
end
