object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 646
  ClientWidth = 867
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 873
    Height = 97
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 25
      Width = 130
      Height = 23
      Caption = #44536#47532#44592
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 304
      Top = 0
      Width = 185
      Height = 97
      Caption = #49353
      TabOrder = 1
      OnClick = Panel3Click
    end
    object Button2: TButton
      Left = 608
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = -16
    Top = 85
    Width = 889
    Height = 656
    TabOrder = 1
    object Image1: TPaintBox
      Left = 16
      Top = 0
      Width = 873
      Height = 649
    end
  end
  object ColorDialog1: TColorDialog
    Left = 336
    Top = 32
  end
  object OpenDialog1: TOpenDialog
    Filter = 'getImg|*.bmp'
    Left = 808
    Top = 40
  end
end
