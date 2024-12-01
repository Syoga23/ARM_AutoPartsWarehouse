unit BDUnit;

interface

uses
  System.SysUtils, System.Classes, VCL.Forms, Data.DB, Data.Win.ADODB, VCL.Dialogs, IniFiles,
  Vcl.Menus, MainUnit, DetailTypesRefUnit, SuppliersRefUnit;
  //Vcl.Dialogs; if need test
type
  TBDForm = class(TDataModule)
    Connection: TADOConnection;
    PartTypesDS: TDataSource;
    PartTypes: TADOQuery;
    Menu: TMainMenu;
    S1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    PartsDS: TDataSource;
    Parts: TADOQuery;
    s2: TMenuItem;
    G1: TMenuItem;
    Suppliers: TADOQuery;
    SuppliersDS: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure PartTypesAfterPost(DataSet: TDataSet);
    procedure s2Click(Sender: TObject);
    procedure PartTypesAfterDelete(DataSet: TDataSet);
    procedure PartsBeforePost(DataSet: TDataSet);
    procedure G1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Ini:TIniFile;
  end;

var
  BDForm: TBDForm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure SetIniDefaults;
 Var IniLocal: TiniFile;
     ConfigPath: String;
begin
 try
 ConfigPath:= ExtractFileDir(Application.ExeName) + '\config.ini';
 IniLocal := TIniFile.Create(ConfigPath);
 IniLocal.writeString('Connection','Connection_string','');
 IniLocal.Free

 except on E:Exception do
    MessageDlg('Ошибка создания файла конфигураций: '+ E.Message, mtError, [mbOk], 0)
 end;
end;

procedure TBDForm.DataModuleCreate(Sender: TObject);
  var ConfigPath: String;
begin
  Connection.Connected := False;
  Connection.ConnectionString := '';
  //EmployeesSql.Active:= False;

  try
    ConfigPath:= ExtractFileDir(Application.ExeName) + '\config.ini';
    Ini := TIniFile.Create(ConfigPath);
  except on E:Exception do
    MessageDlg('Ошибка создания конфигурации: '+ E.Message, mtError, [mbOk], 0)
  end;
if (Not FileExists(ConfigPath))
  then begin
        SetIniDefaults;
  end;
end;

procedure TBDForm.G1Click(Sender: TObject);
begin
SuppliersRef.show;
end;

procedure TBDForm.PartsBeforePost(DataSet: TDataSet);
begin
Parts.FieldByName('TypeID').Value:= BDForm.Parts.Parameters.ParamByName('TypeID').Value;
end;

procedure TBDForm.PartTypesAfterDelete(DataSet: TDataSet);
begin
MainForm.UpdateTreeView(PartTypes);
end;


procedure TBDForm.PartTypesAfterPost(DataSet: TDataSet);
begin
MainForm.UpdateTreeView(PartTypes);
end;

procedure TBDForm.s2Click(Sender: TObject);
begin
DetailTypesRef.Show;
end;

end.
