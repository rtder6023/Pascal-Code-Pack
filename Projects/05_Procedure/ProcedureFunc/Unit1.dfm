object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 237
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 115
    Width = 34
    Height = 15
    Caption = 'Global'
  end
  object Label2: TLabel
    Left = 16
    Top = 144
    Width = 28
    Height = 15
    Caption = 'Local'
  end
  object Button1: TButton
    Left = 16
    Top = 18
    Width = 137
    Height = 25
    Caption = #51204#50669' '#48320#49688', '#51648#50669' '#48264#49688
    TabOrder = 0
    OnClick = Button1Click
  end
  object edtGlobalNum: TEdit
    Left = 72
    Top = 111
    Width = 49
    Height = 23
    TabOrder = 1
  end
  object Button6: TButton
    Left = 190
    Top = 18
    Width = 137
    Height = 25
    Caption = #47716#48260' '#48320#49688
    TabOrder = 2
    OnClick = Button6Click
  end
  object Button10: TButton
    Left = 360
    Top = 18
    Width = 137
    Height = 25
    Caption = 'Property'
    TabOrder = 3
  end
  object Button2: TButton
    Left = 16
    Top = 49
    Width = 137
    Height = 25
    Caption = #48320#49688' '#52280#51312
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button7: TButton
    Left = 190
    Top = 49
    Width = 137
    Height = 25
    Caption = #49707#51088' '#51613#44032
    TabOrder = 5
  end
  object Button11: TButton
    Left = 360
    Top = 49
    Width = 137
    Height = 25
    Caption = #51069#44592#51204#50857' '#49549#49457
    TabOrder = 6
  end
  object Button12: TButton
    Left = 360
    Top = 80
    Width = 137
    Height = 25
    Caption = #49549#49457'('#45236#48512#54632#49688')'
    TabOrder = 7
  end
  object Button13: TButton
    Left = 360
    Top = 111
    Width = 137
    Height = 25
    Caption = #50416#44592' '#54632#49688' '#49549#49457
    TabOrder = 8
  end
  object Button3: TButton
    Left = 16
    Top = 80
    Width = 137
    Height = 25
    Caption = #49707#51088' '#51613#44032
    TabOrder = 9
    OnClick = Button3Click
  end
  object edtMemberNum: TEdit
    Left = 190
    Top = 82
    Width = 68
    Height = 23
    TabOrder = 10
  end
  object edtLocalNum: TEdit
    Left = 72
    Top = 137
    Width = 49
    Height = 23
    TabOrder = 11
  end
  object Button4: TButton
    Left = 16
    Top = 166
    Width = 137
    Height = 25
    Caption = #45796#47480' '#50976#45787#51032' '#51204#50669' '#48320#49688
    TabOrder = 12
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 16
    Top = 197
    Width = 137
    Height = 25
    Caption = 'GlobalStr'#52636#47141
    TabOrder = 13
    OnClick = Button5Click
  end
  object Button8: TButton
    Left = 190
    Top = 140
    Width = 137
    Height = 25
    Caption = #44277#50857'(Public) '#54632#49688
    TabOrder = 14
  end
  object Button9: TButton
    Left = 190
    Top = 171
    Width = 137
    Height = 25
    Caption = #45236#48512'(Private) '#54632#49688
    TabOrder = 15
  end
end
