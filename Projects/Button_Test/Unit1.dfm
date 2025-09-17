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
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 457
    Height = 265
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object btnExecute: TButton
    Left = 191
    Top = 279
    Width = 75
    Height = 25
    Caption = #49892#54665
    TabOrder = 1
    OnClick = btnExecuteClick
  end
  object btnExit: TButton
    Left = 272
    Top = 279
    Width = 75
    Height = 25
    Caption = #45803#44592
    TabOrder = 2
    OnClick = btnExitClick
  end
end
