unit BDUnit;

interface

uses
  System.SysUtils, System.Classes, VCL.Forms, Data.DB, Data.Win.ADODB, VCL.Dialogs, IniFiles,
  Vcl.Menus, Vcl.Controls, Vcl.ExtDlgs, Vcl.Graphics;
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
    TransactionsTransactionType_ID: TIntegerField;
    TransactionsStatus_ID: TIntegerField;
    TransactionsWorker_ID: TIntegerField;
    TransactionsClient_ID: TIntegerField;
    OrdersOrderID: TAutoIncField;
    OrdersOrderDate: TWideStringField;
    OrdersQuantity: TIntegerField;
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
    OrdersStatus: TStringField;
    OrdersClient: TStringField;
    SuppliersSupplierID: TAutoIncField;
    SuppliersName: TWideStringField;
    SuppliersContactName: TWideStringField;
    SuppliersContactPhone: TWideStringField;
    SuppliersCountry: TWideStringField;
    SuppliersAddress: TWideStringField;
    SuppliersEmail: TWideStringField;
    PartTypeLookupDS: TDataSource;
    PartTypeLookup: TADOQuery;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    PhotoPopupMenu: TPopupMenu;
    e1: TMenuItem;
    N6: TMenuItem;
    TransactionsTransactionType: TStringField;
    TransactionsStatus: TStringField;
    TransactionsClient: TStringField;
    TransactionsPaymentType_ID: TIntegerField;
    OrderItems: TADOQuery;
    OrderItemsDS: TDataSource;
    PaymentType: TADOQuery;
    PaymentTypeDS: TDataSource;
    OrderItemsID: TIntegerField;
    OrderItemsOrderID: TIntegerField;
    OrderItemsPart_ID: TIntegerField;
    OrderItemsQuantity: TIntegerField;
    OrderItemsPrice: TBCDField;
    PaymentTypeID: TIntegerField;
    PaymentTypeName: TWideStringField;
    s3: TMenuItem;
    OrdersEmployee: TStringField;
    N7: TMenuItem;
    GridPopupMenu: TPopupMenu;
    Edit: TMenuItem;
    Add: TMenuItem;
    Cancel: TMenuItem;
    Del: TMenuItem;
    TransactionsPaymentType: TStringField;
    OrderItemsPart: TStringField;
    OrdersLookupDS: TDataSource;
    OrdersLookup: TADOQuery;
    OrdersLookupOrderID: TAutoIncField;
    OrdersLookupOrderDate: TWideStringField;
    OrdersLookupQuantity: TIntegerField;
    OrdersLookupStatus_ID: TIntegerField;
    OrdersLookupClient_ID: TIntegerField;
    OrdersLookupEmployee_ID: TIntegerField;
    OrderItemsOrder_Date: TDateField;
    N8: TMenuItem;
    TransactionsEmployee2: TStringField;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure DataModuleCreate(Sender: TObject);
    procedure s2Click(Sender: TObject);
    procedure PartsBeforePost(DataSet: TDataSet);
    procedure G1Click(Sender: TObject);
    procedure PartTypesDSDataChange(Sender: TObject; Field: TField);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure c1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure s3Click(Sender: TObject);
    procedure OrdersDSDataChange(Sender: TObject; Field: TField);
    procedure N7Click(Sender: TObject);
    procedure EditClick(Sender: TObject);
    procedure AddClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure DelClick(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure e1Click(Sender: TObject);
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
  TransactionsTypesUnit, WarehousesUnit, AboutUnit, PaymentTypesUnit;

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

procedure TBDForm.c1Click(Sender: TObject);
begin
  LocationsRef.Show();
end;

procedure TBDForm.C2Click(Sender: TObject);
begin
  WarehousesRef.Show();
end;

procedure TBDForm.N3Click(Sender: TObject);
begin
AboutProgram.Show();
end;

procedure TBDForm.N4Click(Sender: TObject);
begin
  EmployeeRef.Show;
end;

procedure TBDForm.N5Click(Sender: TObject);
begin
  ClientsRef.Show();
end;

procedure TBDForm.N6Click(Sender: TObject);
begin
  Parts.Edit;
  Parts.FieldByName('Photo').Clear;
  Parts.Post;
end;

procedure TBDForm.N7Click(Sender: TObject);
begin
  StatusRef.Show();
end;

procedure TBDForm.N8Click(Sender: TObject);
begin
  TransactionsTypesRef.Show();
end;

procedure TBDForm.AddClick(Sender: TObject);
begin
  if GridPopupMenu.PopupComponent = MainForm.DetailsGrid then
    if(Parts.State in [dsEdit, dsInsert])
    then Parts.Post
    else Parts.Insert
  else if GridPopupMenu.PopupComponent = MainForm.OrdersGrid then
    if(Orders.State in [dsEdit, dsInsert])
    then Orders.Post
    else Orders.Insert
  else if GridPopupMenu.PopupComponent = MainForm.TransactionsGrid then
    if(Transactions.State in [dsEdit, dsInsert])
    then Transactions.Post
    else Transactions.Insert
  else if (GridPopupMenu.PopupComponent = MainForm.ItemsGrid2) or (GridPopupMenu.PopupComponent = MainForm.ItemsGrid1)
    then if(OrderItems.State in [dsEdit, dsInsert])
    then OrderItems.Post
    else OrderItems.Insert
end;

procedure TBDForm.EditClick(Sender: TObject);
begin
  if GridPopupMenu.PopupComponent = MainForm.DetailsGrid then
    Parts.Edit
  else if GridPopupMenu.PopupComponent = MainForm.OrdersGrid then
    Orders.Edit
  else if GridPopupMenu.PopupComponent = MainForm.TransactionsGrid then
    Transactions.Edit
  else if (GridPopupMenu.PopupComponent = MainForm.ItemsGrid2) or (GridPopupMenu.PopupComponent = MainForm.ItemsGrid1)
    then OrderItems.Edit;
end;

procedure TBDForm.CancelClick(Sender: TObject);
begin
  if GridPopupMenu.PopupComponent = MainForm.DetailsGrid then
    Parts.Cancel
  else if GridPopupMenu.PopupComponent = MainForm.OrdersGrid then
    Orders.Cancel
  else if GridPopupMenu.PopupComponent = MainForm.TransactionsGrid then
    Transactions.Cancel
  else if (GridPopupMenu.PopupComponent = MainForm.ItemsGrid2) or (GridPopupMenu.PopupComponent = MainForm.ItemsGrid1)
    then OrderItems.Cancel;
end;

procedure TBDForm.DelClick(Sender: TObject);
begin
  if GridPopupMenu.PopupComponent = MainForm.DetailsGrid then
    begin
      if Parts.RecordCount <> 0 then
        if MessageDlg('Удалить выбранную запись?',mtWarning, [mbYes, mbNo], 0) = mrYes
          then Parts.Delete;
    end
  else if GridPopupMenu.PopupComponent = MainForm.OrdersGrid then
    begin
      if Orders.RecordCount <> 0 then
        if MessageDlg('Удалить выбранную запись?',mtWarning, [mbYes, mbNo], 0) = mrYes
          then Orders.Delete;
    end
  else if GridPopupMenu.PopupComponent = MainForm.TransactionsGrid then
    begin
      if Transactions.RecordCount <> 0 then
        if MessageDlg('Удалить выбранную запись?',mtWarning, [mbYes, mbNo], 0) = mrYes
          then Transactions.Delete;
    end
  else if (GridPopupMenu.PopupComponent = MainForm.ItemsGrid2) or (GridPopupMenu.PopupComponent = MainForm.ItemsGrid1) then
    begin
      if OrderItems.RecordCount <> 0 then
        if MessageDlg('Удалить выбранную запись?',mtWarning, [mbYes, mbNo], 0) = mrYes
          then OrderItems.Delete;
    end
end;

procedure TBDForm.e1Click(Sender: TObject);
var
    BlobStream: TMemoryStream;
    Field: TBlobField;
    pict: TPicture;
  const
    MAX_WIDTH = 640;
    MAX_HEIGHT = 640;
begin
  try
    if OpenPictureDialog1.Execute then
    begin
      pict := TPicture.Create;
      pict.LoadFromFile(OpenPictureDialog1.FileName);
      if (pict.Width<=MAX_WIDTH)and(pict.Height<=MAX_HEIGHT)
       then
     begin
      Pict.Free;
      BlobStream := TMemoryStream.Create;
      try
        BlobStream.LoadFromFile(OpenPictureDialog1.FileName);
        BlobStream.Position := 0;
        MainForm.DBImage1.Picture.LoadFromStream(BlobStream);
        if Parts.Active then
        begin
          Parts.Edit;
          Field := TBLobField(Parts.FieldByName('Photo'));
          Field.LoadFromStream(BlobStream);
          Parts.Post;
        end;
      finally
        BlobStream.Free;
      end;
     end
     else begin
       ShowMessage('Selected image is too large. Please choose an image with dimensions up to ' + IntToStr(MAX_WIDTH) + 'x' + IntToStr(MAX_HEIGHT) + '.');
       Pict.Free;
     end;

    end;
  finally

  end;

end;

procedure TBDForm.OrdersDSDataChange(Sender: TObject; Field: TField);
begin
OrderItems.Close;
OrderItems.Parameters.ParamByName('OrderKey').Value := Orders.FieldByName('OrderID').Value;
OrderItems.Open;
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

procedure TBDForm.s3Click(Sender: TObject);
begin
PaymentTypesRef.Show();
end;

end.
