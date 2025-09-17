object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Button1: TButton
      Left = 182
      Top = 304
      Width = 75
      Height = 25
      Caption = #47196#44536#51064
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 366
      Top = 304
      Width = 75
      Height = 25
      Caption = #54924#50896#44032#51077
      ModalResult = 2
      TabOrder = 1
    end
    object edtID: TEdit
      Left = 182
      Top = 144
      Width = 121
      Height = 23
      TabOrder = 2
      TextHint = #50500#51060#46356
    end
    object edtPa: TEdit
      Left = 182
      Top = 184
      Width = 121
      Height = 23
      TabOrder = 3
      TextHint = #48708#48128#48264#54840
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=check'
      'User_Name=check_user'
      'Password=1234'
      'Server=localhost'
      'CharacterSet=utf8'
      'DriverID=MySQL')
    Connected = True
    Left = 488
    Top = 88
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from users;')
    Left = 488
    Top = 176
  end
end
