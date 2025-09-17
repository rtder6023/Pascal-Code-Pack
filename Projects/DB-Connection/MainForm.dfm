object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 836
  ClientWidth = 971
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 5
    Top = 8
    Width = 958
    Height = 113
    Caption = #45944#54028#51060' DB '#50672#46041
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 8
    Top = 127
    Width = 809
    Height = 393
    TabOrder = 1
    object Label1: TLabel
      Left = 56
      Top = 48
      Width = 54
      Height = 37
      Caption = #51060#47492
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 56
      Top = 112
      Width = 81
      Height = 37
      Caption = #51452#49548#51648
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 56
      Top = 176
      Width = 162
      Height = 37
      Caption = #51452#48124#46321#47197#48264#54840
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 56
      Top = 240
      Width = 108
      Height = 37
      Caption = #51204#54868#48264#54840
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 56
      Top = 304
      Width = 54
      Height = 37
      Caption = #49457#48324
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBName: TDBEdit
      Left = 240
      Top = 45
      Width = 401
      Height = 45
      DataField = 'name'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBAddress: TDBEdit
      Left = 240
      Top = 109
      Width = 401
      Height = 45
      DataField = 'address'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBIden: TDBEdit
      Left = 240
      Top = 173
      Width = 401
      Height = 45
      DataField = 'ident'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBCell: TDBEdit
      Left = 240
      Top = 240
      Width = 401
      Height = 45
      DataField = 'phone_number'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBGend: TDBEdit
      Left = 240
      Top = 304
      Width = 401
      Height = 45
      DataField = 'gender'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 526
    Width = 809
    Height = 259
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 15
      Top = 17
      Width = 778
      Height = 224
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
          FieldName = 'id'
          Width = 21
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'address'
          Width = 209
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ident'
          Width = 143
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'phone_number'
          Width = 248
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'gender'
          Width = 43
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 823
    Top = 127
    Width = 142
    Height = 658
    TabOrder = 3
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 8
      Width = 121
      Height = 640
      DataSource = DataSource1
      Kind = dbnVertical
      TabOrder = 0
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=user_db'
      'User_Name=root'
      'Password=1234'
      'Server=localhost'
      'CharacterSet=utf8mb4'
      'DriverID=MySQL')
    Connected = True
    Left = 736
    Top = 160
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from user_info;')
    Left = 736
    Top = 224
    object FDQuery1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1name: TWideStringField
      FieldName = 'name'
      Origin = '`name`'
      Required = True
      Size = 133
    end
    object FDQuery1address: TWideStringField
      FieldName = 'address'
      Origin = 'address'
      Required = True
      Size = 340
    end
    object FDQuery1ident: TWideStringField
      FieldName = 'ident'
      Origin = 'ident'
      Required = True
      Size = 340
    end
    object FDQuery1phone_number: TWideStringField
      FieldName = 'phone_number'
      Origin = 'phone_number'
      Required = True
    end
    object FDQuery1gender: TWideStringField
      FieldName = 'gender'
      Origin = 'gender'
      Required = True
      Size = 13
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 736
    Top = 288
  end
end
