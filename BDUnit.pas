unit BDUnit;

interface

uses
  System.SysUtils, System.Classes, VCL.Forms, Data.DB, Data.Win.ADODB, VCL.Dialogs, IniFiles;
  //Vcl.Dialogs; if need test
type
  TBDForm = class(TDataModule)
    Connection: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
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

end.
