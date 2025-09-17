object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object Image1: TImage
    Left = 153
    Top = 0
    Width = 652
    Height = 441
    Align = alClient
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
    OnMouseUp = Image1MouseUp
    ExplicitLeft = -607
    ExplicitTop = -16
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 441
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 128
      Width = 145
      Height = 15
      Align = alTop
      Caption = #51460' '#45331#51060
      ExplicitWidth = 39
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 35
      Width = 145
      Height = 25
      Align = alTop
      Caption = #46972#51064' '#47564#46308#44592
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 4
      Top = 66
      Width = 145
      Height = 25
      Align = alTop
      Caption = #50896' '#44536#47532#44592
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 4
      Top = 97
      Width = 145
      Height = 25
      Align = alTop
      Caption = #44536#47532#44592
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 145
      Height = 25
      Align = alTop
      Caption = #51460
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 149
      Width = 145
      Height = 23
      Align = alTop
      TabOrder = 4
      Text = '2'
      OnChange = Edit1Change
    end
    object Panel2: TPanel
      Left = 1
      Top = 175
      Width = 151
      Height = 41
      Align = alTop
      Caption = #49353#49345
      TabOrder = 5
      OnClick = Panel2Click
    end
    object Panel3: TPanel
      Left = 1
      Top = 272
      Width = 151
      Height = 168
      Align = alBottom
      TabOrder = 6
      object Button6: TButton
        Left = 1
        Top = 142
        Width = 149
        Height = 25
        Align = alBottom
        Caption = #52488#44592#54868
        TabOrder = 0
        OnClick = Button6Click
      end
    end
  end
  object ColorDialog1: TColorDialog
    Left = 104
    Top = 224
  end
  object OpenDialog1: TOpenDialog
    Filter = 'pict|*.jpg'
    Left = 56
    Top = 304
  end
end
