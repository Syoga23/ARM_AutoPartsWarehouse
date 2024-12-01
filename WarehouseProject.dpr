program WarehouseProject;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  StartupUnit in 'StartupUnit.pas' {StartupForm},
  BDUnit in 'BDUnit.pas' {BDForm: TDataModule},
  DetailTypesRefUnit in 'DetailTypesRefUnit.pas' {DetailTypesRef},
  SuppliersRefUnit in 'SuppliersRefUnit.pas' {SuppliersRef};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBDForm, BDForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDetailTypesRef, DetailTypesRef);
  Application.CreateForm(TSuppliersRef, SuppliersRef);
  Application.Run;
end.
