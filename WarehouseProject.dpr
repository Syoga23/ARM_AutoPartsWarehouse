program WarehouseProject;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  StartupUnit in 'StartupUnit.pas' {StartupForm},
  BDUnit in 'BDUnit.pas' {BDForm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBDForm, BDForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
