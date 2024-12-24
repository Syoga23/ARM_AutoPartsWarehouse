unit BDUnit;

interface

uses
  System.SysUtils, System.Classes, VCL.Forms, Data.DB, Data.Win.ADODB, VCL.Dialogs, IniFiles,
  Vcl.Menus;
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
    Locations: TADOQuery;
    LocationsDS: TDataSource;
    Warehouses: TADOQuery;
    WarehousesDS: TDataSource;
    TransactionTypes: TADOQuery;
    TransactionTypesDS: TDataSource;
    Orders: TADOQuery;
    OrdersDS: TDataSource;
    Transactions: TADOQuery;
    TransactionsDS: TDataSource;
    c1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Employee: TADOQuery;
    EmployeeDS: TDataSource;
    Clients: TADOQuery;
    ClientsDS: TDataSource;
    C2: TMenuItem;
    LocationsLocation_ID: TAutoIncField;
    LocationsLocation_Name: TWideStringField;
    EmployeeID: TAutoIncField;
    EmployeeFIO: TWideStringField;
    EmployeeBirthdate: TWideStringField;
    EmployeeDateOfJoining: TWideStringField;
    EmployeeEmail: TWideStringField;
    EmployeePhone: TWideStringField;
    EmployeePost: TWideStringField;
    ClientsID: TAutoIncField;
    ClientsFIO: TWideStringField;
    ClientsBirthdate: TWideStringField;
    Clientslocation_ID: TIntegerField;
    ClientsEmail: TWideStringField;
    ClientsPhone: TWideStringField;
    ClientsLocation: TStringField;
    Status: TADOQuery;
    StatusDS: TDataSource;
    StatusID: TIntegerField;
    StatusName: TWideStringField;
    TransactionTypesID: TAutoIncField;
    TransactionTypesName: TWideStringField;
    WarehousesWarehouseID: TAutoIncField;
    Warehouseslocation_ID: TIntegerField;
    Warehouseslocation: TStringField;
    TransactionsTransactionID: TAutoIncField;
    TransactionsOrder_ID: TIntegerField;
    TransactionsTransactionDate: TDateTimeField;
    TransactionsQuantity: TIntegerField;
    TransactionsPayment_method: TWideStringField;
    TransactionsTransactionType_ID: TIntegerField;
    TransactionsStatus_ID: TIntegerField;
    TransactionsWorker_ID: TIntegerField;
    TransactionsClient_ID: TIntegerField;
    OrdersOrderID: TAutoIncField;
    OrdersOrderDate: TWideStringField;
    OrdersQuantity: TIntegerField;
    OrdersPartID: TIntegerField;
    OrdersUnitPrice: TBCDField;
    OrdersStatus_ID: TIntegerField;
    OrdersEmployee_ID: TIntegerField;
    OrdersClient_ID: TIntegerField;
    PartsPartID: TAutoIncField;
    PartsPartName: TWideStringField;
    PartsDescription: TWideStringField;
    PartsPrice: TBCDField;
    PartsSupplierID: TIntegerField;
    PartsArticle: TIntegerField;
    PartsTypeID: TIntegerField;
    PartsPhoto: TBlobField;
    PartsWarehouse_ID: TIntegerField;
    PartsQuantity: TIntegerField;
    PartTypesType_ID: TAutoIncField;
    PartTypesType_Name: TWideStringField;
    PartTypesType_Description: TWideStringField;
    PartsSupplier: TStringField;
    PartsType: TStringField;
    PartsWarehouse: TStringField;
    WarehousesName: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure s2Click(Sender: TObject);
    procedure PartsBeforePost(DataSet: TDataSet);
    procedure G1Click(Sender: TObject);
    procedure PartTypesDSDataChange(Sender: TObject; Field: TField);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure c1Click(Sender: TObject);
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

Uses MainUnit, DetailTypesRefUnit, SuppliersRefUnit, ClientsRefUnit,
  EmployeeRefUnit, LocationsRefUnit, StartupUnit, StatusUnit,
  TransactionsTypesUnit, WarehousesUnit;

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
    MessageDlg('������ �������� ����� ������������: '+ E.Message, mtError, [mbOk], 0)
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
    MessageDlg('������ �������� ������������: '+ E.Message, mtError, [mbOk], 0)
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

procedure TBDForm.c1Click(Sender: TObject);
begin
  LocationsRef.Show();
end;

procedure TBDForm.C2Click(Sender: TObject);
begin
  WarehousesRef.Show();
end;

procedure TBDForm.N4Click(Sender: TObject);
begin
  EmployeeRef.Show;
end;

procedure TBDForm.N5Click(Sender: TObject);
begin
  ClientsRef.Show();
end;

procedure TBDForm.PartsBeforePost(DataSet: TDataSet);
begin
Parts.FieldByName('TypeID').Value:= BDForm.Parts.Parameters.ParamByName('TypeID').Value;
end;

procedure TBDForm.PartTypesDSDataChange(Sender: TObject; Field: TField);
begin
Parts.Close;
Parts.Parameters.ParamByName('TypeID').Value := PartTypes.FieldByName('Type_ID').Value;
Parts.Open;
end;

procedure TBDForm.s2Click(Sender: TObject);
begin
DetailTypesRef.Show;
end;

end.
