unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.Mask;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1id: TFDAutoIncField;
    FDQuery1name: TWideStringField;
    FDQuery1address: TWideStringField;
    FDQuery1ident: TWideStringField;
    FDQuery1phone_number: TWideStringField;
    FDQuery1gender: TWideStringField;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    DBName: TDBEdit;
    DBAddress: TDBEdit;
    DBIden: TDBEdit;
    DBCell: TDBEdit;
    DBGend: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
    FDConnection1.Params.Clear;
    FDConnection1.DriverName := 'MySQL';
    FDConnection1.Params.Add('Server=localhost');
    FDConnection1.Params.Add('Database=user_db');
    FDConnection1.Params.Add('User_Name=root');
    FDConnection1.Params.Add('Password=1234');

end;

end.
