object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'empId'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = #50500#51060#46356
        Width = 188
        Visible = True
      end
      item
        Expanded = False
        FieldName = #51060#47492
        Width = 164
        Visible = True
      end
      item
        Expanded = False
        FieldName = #48708#48128#48264#54840
        Width = 159
        Visible = True
      end>
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
    Left = 304
    Top = 224
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT empId, namee AS '#50500#51060#46356', real_name AS '#51060#47492', passwordd AS '#48708#48128#48264#54840' F' +
        'ROM users;')
    Left = 248
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 384
    Top = 24
  end
end
