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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 61
      Width = 129
      Height = 15
      Caption = #47196#44536#51064' '#46104#51648' '#50506#50520#49845#45768#45796'.'
    end
    object Button1: TButton
      Left = 232
      Top = 120
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object edtName: TEdit
      Left = 80
      Top = 96
      Width = 121
      Height = 23
      Hint = 'ID'
      TabOrder = 1
      Text = #51064#53076#46377#53580#49828#53944
      TextHint = #50500#51060#46356
    end
    object edtPW: TEdit
      Left = 80
      Top = 144
      Width = 121
      Height = 23
      Hint = 'Password'
      TabOrder = 2
      Text = #54616#45208#46168
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
    Left = 480
    Top = 104
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 472
    Top = 232
    ParamData = <
      item
        Name = 'namee'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
      end>
  end
end
