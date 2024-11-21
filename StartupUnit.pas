unit StartupUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  BDUnit, MainUnit;

type
  TStartupForm = class(TForm)
    Panel: TPanel;
    LoginEdit: TEdit;
    LoginButton: TButton;
    LoginText: TLabel;
    procedure FormShow(Sender: TObject);
    procedure LoginButtonClick(Sender: TObject);
  private
    procedure CreateParams(var Params: TCreateParams); override;
  public
    closeVar: integer;
  end;

var
  StartupForm: TStartupForm;

implementation

{$R *.dfm}

procedure Launch();
begin
  //SERGEIPC\SQLSERVER2008
  BDForm.Connection.ConnectionString := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=AutoPartsWarehouse;Data Source=' + StartupForm.LoginEdit.Text;
  try
  BDForm.Connection.Open;
  MessageDlg('Соединение успешно!', mtInformation, [mbOk], 0);
  StartupForm.closeVar := 1;
  StartupForm.close;
  BDForm.Ini.WriteString('Connection','Connection_string', '' + StartupForm.LoginEdit.Text);
  BDForm.Ini.Free;
  Except on E:Exception do
    MessageDlg('Ошибка подключения к БД: '+ E.Message, mtError, [mbOk], 0);

  end;

end;

procedure TStartupForm.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TStartupForm.FormShow(Sender: TObject);
begin
LoginEdit.Text := BDForm.Ini.ReadString('Connection','Connection_string', '');
LoginButton.SetFocus;
end;

procedure TStartupForm.LoginButtonClick(Sender: TObject);
begin
Launch();
end;

end.
