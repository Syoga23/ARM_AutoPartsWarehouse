program WarehouseProject;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  StartupUnit in 'StartupUnit.pas' {StartupForm},
  BDUnit in 'BDUnit.pas' {BDForm: TDataModule},
  DetailTypesRefUnit in 'DetailTypesRefUnit.pas' {DetailTypesRef},
  SuppliersRefUnit in 'SuppliersRefUnit.pas' {SuppliersRef},
  WarehousesUnit in 'WarehousesUnit.pas' {WarehousesRef},
  LocationsRefUnit in 'LocationsRefUnit.pas' {LocationsRef},
  EmployeeRefUnit in 'EmployeeRefUnit.pas' {EmployeeRef},
  ClientsRefUnit in 'ClientsRefUnit.pas' {ClientsRef},
  StatusUnit in 'StatusUnit.pas' {StatusRef},
  TransactionsTypesUnit in 'TransactionsTypesUnit.pas' {TransactionsTypesRef},
  AboutUnit in 'AboutUnit.pas' {AboutProgram},
  PaymentTypesUnit in 'PaymentTypesUnit.pas' {PaymentTypesRef};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBDForm, BDForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDetailTypesRef, DetailTypesRef);
  Application.CreateForm(TSuppliersRef, SuppliersRef);
  Application.CreateForm(TWarehousesRef, WarehousesRef);
  Application.CreateForm(TLocationsRef, LocationsRef);
  Application.CreateForm(TEmployeeRef, EmployeeRef);
  Application.CreateForm(TClientsRef, ClientsRef);
  Application.CreateForm(TStatusRef, StatusRef);
  Application.CreateForm(TTransactionsTypesRef, TransactionsTypesRef);
  Application.CreateForm(TAboutProgram, AboutProgram);
  Application.CreateForm(TPaymentTypesRef, PaymentTypesRef);
  Application.Run;
end.
