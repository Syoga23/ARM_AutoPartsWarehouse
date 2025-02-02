object BDForm: TBDForm
  OnCreate = DataModuleCreate
  Height = 424
  Width = 960
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=AutoPartsWarehouse;Data Source=SERGEIPC' +
      '\SQLSERVER2008'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 24
  end
  object PartTypesDS: TDataSource
    DataSet = PartTypes
    OnDataChange = PartTypesDSDataChange
    Left = 168
    Top = 24
  end
  object PartTypes: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PartTypes')
    Left = 96
    Top = 24
    object PartTypesType_ID: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'Type_ID'
      ReadOnly = True
    end
    object PartTypesType_Name: TWideStringField
      DisplayLabel = #1042#1080#1076' '#1076#1077#1090#1072#1083#1080
      FieldName = 'Type_Name'
      Size = 100
    end
    object PartTypesType_Description: TWideStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077' '#1074#1080#1076#1072' '#1076#1077#1090#1072#1083#1080
      FieldName = 'Type_Description'
      Size = 100
    end
  end
  object Menu: TMainMenu
    Left = 16
    Top = 304
    object S1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N13: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1095#1072#1089#1090#1100
        OnClick = N13Click
      end
      object N2: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079
        OnClick = N2Click
      end
      object N9: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1102
        OnClick = N9Click
      end
    end
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object N4: TMenuItem
        Caption = #1056#1072#1073#1086#1090#1085#1080#1082#1080
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1050#1083#1080#1077#1085#1090#1099
        OnClick = N5Click
      end
      object C2: TMenuItem
        Caption = #1057#1082#1083#1072#1076#1099
        OnClick = C2Click
      end
      object N8: TMenuItem
        Caption = #1042#1080#1076#1099' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1081
        OnClick = N8Click
      end
      object s2: TMenuItem
        Caption = #1042#1080#1076#1099' '#1076#1077#1090#1072#1083#1077#1081
        OnClick = s2Click
      end
      object G1: TMenuItem
        Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
        OnClick = G1Click
      end
      object s3: TMenuItem
        Caption = #1052#1077#1090#1086#1076#1099' '#1086#1087#1083#1072#1090#1099
        OnClick = s3Click
      end
      object N7: TMenuItem
        Caption = #1057#1090#1072#1090#1091#1089#1099
        OnClick = N7Click
      end
      object c1: TMenuItem
        Caption = #1040#1076#1088#1077#1089#1072
        OnClick = c1Click
      end
    end
    object N3: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N3Click
    end
  end
  object PartsDS: TDataSource
    DataSet = Parts
    Left = 168
    Top = 80
  end
  object Parts: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TypeID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Parts WHERE TypeID = :TypeID')
    Left = 96
    Top = 80
    object PartsPartID: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'PartID'
      ReadOnly = True
    end
    object PartsPartName: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1079#1072#1087#1095#1072#1089#1090#1080
      FieldName = 'PartName'
      Size = 100
    end
    object PartsDescription: TWideStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080
      FieldName = 'Description'
      Size = 255
    end
    object PartsPrice: TBCDField
      DisplayLabel = #1062#1077#1085#1072' 1 '#1096#1090'.'
      FieldName = 'Price'
      Precision = 10
      Size = 2
    end
    object PartsQuantity: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'Quantity'
    end
    object PartsPhoto: TBlobField
      DisplayLabel = #1060#1086#1090#1086
      FieldName = 'Photo'
      Visible = False
    end
    object PartsArticle: TIntegerField
      DisplayLabel = #1040#1088#1090#1080#1082#1083
      FieldName = 'Article'
    end
    object PartsSupplierID: TIntegerField
      FieldName = 'SupplierID'
    end
    object PartsSupplier: TStringField
      DisplayLabel = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      FieldKind = fkLookup
      FieldName = 'Supplier'
      LookupDataSet = Suppliers
      LookupKeyFields = 'SupplierID'
      LookupResultField = 'Name'
      KeyFields = 'SupplierID'
      Lookup = True
    end
    object PartsTypeID: TIntegerField
      FieldName = 'TypeID'
      Visible = False
    end
    object PartsWarehouse_ID: TIntegerField
      FieldName = 'Warehouse_ID'
      Visible = False
    end
    object PartsType: TStringField
      DisplayLabel = #1042#1080#1076' '#1079#1072#1087#1095#1072#1089#1090#1080
      FieldKind = fkLookup
      FieldName = 'Type'
      LookupDataSet = PartTypeLookup
      LookupKeyFields = 'Type_ID'
      LookupResultField = 'Type_Name'
      KeyFields = 'TypeID'
      Lookup = True
    end
    object PartsWarehouse: TStringField
      DisplayLabel = #1057#1082#1083#1072#1076
      FieldKind = fkLookup
      FieldName = 'Warehouse'
      LookupDataSet = Warehouses
      LookupKeyFields = 'WarehouseID'
      LookupResultField = 'Name'
      KeyFields = 'Warehouse_ID'
      Size = 100
      Lookup = True
    end
  end
  object Suppliers: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Suppliers')
    Left = 96
    Top = 136
    object SuppliersSupplierID: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'SupplierID'
      ReadOnly = True
    end
    object SuppliersName: TWideStringField
      DisplayLabel = #1050#1086#1084#1087#1072#1085#1080#1103
      FieldName = 'Name'
      Size = 100
    end
    object SuppliersContactName: TWideStringField
      DisplayLabel = #1050#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086
      FieldName = 'ContactName'
      Size = 100
    end
    object SuppliersContactPhone: TWideStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      FieldName = 'ContactPhone'
    end
    object SuppliersCountry: TWideStringField
      DisplayLabel = #1057#1090#1088#1072#1085#1072
      FieldName = 'Country'
      Size = 100
    end
    object SuppliersAddress: TWideStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'Address'
      Size = 255
    end
    object SuppliersEmail: TWideStringField
      DisplayLabel = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072
      FieldName = 'Email'
      Size = 100
    end
  end
  object SuppliersDS: TDataSource
    DataSet = Suppliers
    Left = 168
    Top = 136
  end
  object Locations: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Locations')
    Left = 96
    Top = 192
    object LocationsLocation_ID: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'Location_ID'
      ReadOnly = True
    end
    object LocationsLocation_Name: TWideStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'Location_Name'
      Size = 100
    end
  end
  object LocationsDS: TDataSource
    DataSet = Locations
    Left = 168
    Top = 192
  end
  object Warehouses: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Warehouse')
    Left = 256
    Top = 24
    object WarehousesWarehouseID: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'WarehouseID'
      ReadOnly = True
    end
    object WarehousesName: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1082#1083#1072#1076#1072
      FieldName = 'Name'
      FixedChar = True
      Size = 100
    end
    object Warehouseslocation_ID: TIntegerField
      FieldName = 'location_ID'
      Visible = False
    end
    object Warehouseslocation: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldKind = fkLookup
      FieldName = 'location'
      LookupDataSet = Locations
      LookupKeyFields = 'Location_ID'
      LookupResultField = 'Location_Name'
      KeyFields = 'location_ID'
      Lookup = True
    end
  end
  object WarehousesDS: TDataSource
    DataSet = Warehouses
    Left = 336
    Top = 24
  end
  object TransactionTypes: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TransactionTypes')
    Left = 432
    Top = 24
    object TransactionTypesID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object TransactionTypesName: TWideStringField
      DisplayLabel = #1042#1080#1076' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1080
      FieldName = 'Name'
      Size = 255
    end
  end
  object TransactionTypesDS: TDataSource
    DataSet = TransactionTypes
    Left = 544
    Top = 24
  end
  object Orders: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Orders')
    Left = 256
    Top = 136
    object OrdersOrderID: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'OrderID'
      ReadOnly = True
    end
    object OrdersOrderDate: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
      FieldName = 'OrderDate'
      Size = 10
    end
    object OrdersQuantity: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'Quantity'
    end
    object OrdersStatus_ID: TIntegerField
      FieldName = 'Status_ID'
    end
    object OrdersClient_ID: TIntegerField
      DisplayLabel = 'client'
      FieldName = 'Client_ID'
    end
    object OrdersEmployee_ID: TIntegerField
      DisplayLabel = 'work'
      FieldName = 'Employee_ID'
    end
    object OrdersStatus: TStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1079#1072#1082#1072#1079#1072
      FieldKind = fkLookup
      FieldName = 'Status'
      LookupDataSet = Status
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'Status_ID'
      Lookup = True
    end
    object OrdersClient: TStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldKind = fkLookup
      FieldName = 'Client'
      LookupDataSet = Clients
      LookupKeyFields = 'ID'
      LookupResultField = 'FIO'
      KeyFields = 'Client_ID'
      Lookup = True
    end
    object OrdersEmployee: TStringField
      DisplayLabel = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      FieldKind = fkLookup
      FieldName = 'Employee'
      LookupDataSet = Employee
      LookupKeyFields = 'ID'
      LookupResultField = 'FIO'
      KeyFields = 'Employee_ID'
      Lookup = True
    end
  end
  object OrdersDS: TDataSource
    DataSet = Orders
    OnDataChange = OrdersDSDataChange
    Left = 336
    Top = 136
  end
  object Transactions: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Transactions')
    Left = 256
    Top = 192
    object TransactionsTransactionID: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'TransactionID'
      ReadOnly = True
    end
    object TransactionsOrder: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
      FieldKind = fkLookup
      FieldName = 'Order'
      LookupDataSet = Orders
      LookupKeyFields = 'OrderID'
      LookupResultField = 'OrderDate'
      KeyFields = 'Order_ID'
      Lookup = True
    end
    object TransactionsTransactionDate: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1080
      FieldName = 'TransactionDate'
      Size = 10
    end
    object TransactionsOrder_ID: TIntegerField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1079#1072#1082#1072#1079#1072
      FieldName = 'Order_ID'
    end
    object TransactionsQuantity: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'Quantity'
    end
    object TransactionsPaymentType_ID: TIntegerField
      FieldName = 'PaymentType_ID'
    end
    object TransactionsTransactionType_ID: TIntegerField
      FieldName = 'TransactionType_ID'
      Visible = False
    end
    object TransactionsStatus_ID: TIntegerField
      FieldName = 'Status_ID'
      Visible = False
    end
    object TransactionsWorker_ID: TIntegerField
      FieldName = 'Employee_ID'
    end
    object TransactionsClient_ID: TIntegerField
      FieldName = 'Client_ID'
      Visible = False
    end
    object TransactionsTransactionType: TStringField
      DisplayLabel = #1042#1080#1076' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1080
      FieldKind = fkLookup
      FieldName = 'TransactionType'
      LookupDataSet = TransactionTypes
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'TransactionType_ID'
      Lookup = True
    end
    object TransactionsStatus: TStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldKind = fkLookup
      FieldName = 'Status'
      LookupDataSet = Status
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'Status_ID'
      Lookup = True
    end
    object TransactionsEmployee2: TStringField
      DisplayLabel = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      FieldKind = fkLookup
      FieldName = 'Employee'
      LookupDataSet = Employee
      LookupKeyFields = 'ID'
      LookupResultField = 'FIO'
      KeyFields = 'Employee_ID'
      Lookup = True
    end
    object TransactionsClient: TStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldKind = fkLookup
      FieldName = 'Client'
      LookupDataSet = Clients
      LookupKeyFields = 'ID'
      LookupResultField = 'FIO'
      KeyFields = 'Client_ID'
      Lookup = True
    end
    object TransactionsPaymentType: TStringField
      DisplayLabel = #1052#1077#1090#1086#1076' '#1086#1087#1083#1072#1090#1099
      FieldKind = fkLookup
      FieldName = 'PaymentType'
      LookupDataSet = PaymentType
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'PaymentType_ID'
      Lookup = True
    end
  end
  object TransactionsDS: TDataSource
    DataSet = Transactions
    OnDataChange = TransactionsDSDataChange
    Left = 336
    Top = 192
  end
  object Employee: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Employee')
    Left = 432
    Top = 80
    object EmployeeID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object EmployeeFIO: TWideStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Size = 255
    end
    object EmployeeBirthdate: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'Birthdate'
      Size = 10
    end
    object EmployeeDateOfJoining: TWideStringField
      DisplayLabel = #1055#1088#1080#1085#1103#1090' '#1085#1072' '#1088#1072#1073#1086#1090#1091
      FieldName = 'DateOfJoining'
      Size = 10
    end
    object EmployeeEmail: TWideStringField
      DisplayLabel = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072
      FieldName = 'Email'
      Size = 255
    end
    object EmployeePhone: TWideStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      FieldName = 'Phone'
      Size = 30
    end
    object EmployeePost: TWideStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'Post'
      Size = 255
    end
  end
  object EmployeeDS: TDataSource
    DataSet = Employee
    Left = 544
    Top = 80
  end
  object Clients: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Clients')
    Left = 432
    Top = 136
    object ClientsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ClientsFIO: TWideStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Size = 255
    end
    object ClientsBirthdate: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'Birthdate'
      Size = 10
    end
    object Clientslocation_ID: TIntegerField
      FieldName = 'location_ID'
      Visible = False
    end
    object ClientsEmail: TWideStringField
      DisplayLabel = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072
      FieldName = 'Email'
      FixedChar = True
      Size = 10
    end
    object ClientsPhone: TWideStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      FieldName = 'Phone'
      FixedChar = True
      Size = 10
    end
    object ClientsLocation: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldKind = fkLookup
      FieldName = 'Location'
      LookupDataSet = Locations
      LookupKeyFields = 'Location_ID'
      LookupResultField = 'Location_Name'
      KeyFields = 'location_ID'
      Lookup = True
    end
    object ClientsSupplier_ID: TIntegerField
      FieldName = 'Supplier_ID'
    end
    object ClientsSupplier: TStringField
      DisplayLabel = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      FieldKind = fkLookup
      FieldName = 'Supplier'
      LookupDataSet = SuppliersLookup
      LookupKeyFields = 'SupplierID'
      LookupResultField = 'Name'
      KeyFields = 'Supplier_ID'
      Lookup = True
    end
  end
  object ClientsDS: TDataSource
    DataSet = Clients
    Left = 544
    Top = 136
  end
  object Status: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Status')
    Left = 256
    Top = 80
    object StatusID: TIntegerField
      FieldName = 'ID'
    end
    object StatusName: TWideStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
  end
  object StatusDS: TDataSource
    DataSet = Status
    Left = 336
    Top = 80
  end
  object PartTypeLookupDS: TDataSource
    DataSet = PartTypeLookup
    Left = 96
    Top = 304
  end
  object PartTypeLookup: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PartTypes')
    Left = 96
    Top = 248
    object AutoIncField1: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'Type_ID'
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      DisplayLabel = #1042#1080#1076' '#1076#1077#1090#1072#1083#1080
      FieldName = 'Type_Name'
      Size = 100
    end
    object WideStringField2: TWideStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077' '#1074#1080#1076#1072' '#1076#1077#1090#1072#1083#1080
      FieldName = 'Type_Description'
      Size = 100
    end
  end
  object PhotoPopupMenu: TPopupMenu
    Left = 40
    Top = 368
    object e1: TMenuItem
      Caption = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1092#1086#1090#1086
      OnClick = e1Click
    end
    object N6: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1092#1086#1090#1086
      OnClick = N6Click
    end
  end
  object OrderItems: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'OrderKey'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM OrderItems WHERE OrderID = :OrderKey')
    Left = 432
    Top = 192
    object OrderItemsID: TIntegerField
      FieldName = 'ID'
    end
    object OrderItemsOrderID: TIntegerField
      FieldName = 'OrderID'
      Visible = False
    end
    object OrderItemsPart: TStringField
      DisplayLabel = #1044#1077#1090#1072#1083#1100
      FieldKind = fkLookup
      FieldName = 'Part'
      LookupDataSet = Parts
      LookupKeyFields = 'PartID'
      LookupResultField = 'PartName'
      KeyFields = 'Part_ID'
      Lookup = True
    end
    object OrderItemsOrder_Date: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
      FieldKind = fkLookup
      FieldName = 'Order_Date'
      LookupDataSet = OrdersLookup
      LookupKeyFields = 'OrderID'
      LookupResultField = 'OrderDate'
      KeyFields = 'OrderID'
      Lookup = True
    end
    object OrderItemsPart_ID: TIntegerField
      FieldName = 'Part_ID'
      Visible = False
    end
    object OrderItemsQuantity: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'Quantity'
    end
    object OrderItemsPrice: TBCDField
      DisplayLabel = #1062#1077#1085#1072' '#1079#1072' 1 '#1096#1090'.'
      FieldName = 'Price'
      Precision = 10
      Size = 2
    end
  end
  object OrderItemsDS: TDataSource
    DataSet = OrderItems
    Left = 544
    Top = 192
  end
  object PaymentType: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PaymentType')
    Left = 648
    Top = 24
    object PaymentTypeID: TIntegerField
      FieldName = 'ID'
    end
    object PaymentTypeName: TWideStringField
      DisplayLabel = #1052#1077#1090#1086#1076' '#1086#1087#1083#1072#1090#1099
      FieldName = 'Name'
      Size = 255
    end
  end
  object PaymentTypeDS: TDataSource
    DataSet = PaymentType
    Left = 760
    Top = 24
  end
  object GridPopupMenu: TPopupMenu
    Images = ImageListPopup
    Left = 336
    Top = 304
    object Edit: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ImageIndex = 2
      OnClick = EditClick
    end
    object Add: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100'/'#1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 0
      OnClick = AddClick
    end
    object Cancel: TMenuItem
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ImageIndex = 1
      OnClick = CancelClick
    end
    object Del: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 3
      OnClick = DelClick
    end
  end
  object OrdersLookupDS: TDataSource
    DataSet = OrdersLookup
    Left = 432
    Top = 304
  end
  object OrdersLookup: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Orders')
    Left = 432
    Top = 248
    object OrdersLookupOrderID: TAutoIncField
      FieldName = 'OrderID'
      ReadOnly = True
    end
    object OrdersLookupOrderDate: TWideStringField
      FieldName = 'OrderDate'
      Size = 10
    end
    object OrdersLookupQuantity: TIntegerField
      FieldName = 'Quantity'
    end
    object OrdersLookupStatus_ID: TIntegerField
      FieldName = 'Status_ID'
    end
    object OrdersLookupClient_ID: TIntegerField
      FieldName = 'Client_ID'
    end
    object OrdersLookupEmployee_ID: TIntegerField
      FieldName = 'Employee_ID'
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 152
    Top = 368
  end
  object SuppliersLookup: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Suppliers')
    Left = 544
    Top = 248
    object SuppliersLookupSupplierID: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'SupplierID'
      ReadOnly = True
    end
    object SuppliersLookupName: TWideStringField
      DisplayLabel = #1050#1086#1084#1087#1072#1085#1080#1103
      FieldName = 'Name'
      Size = 100
    end
    object SuppliersLookupContactName: TWideStringField
      DisplayLabel = #1050#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086
      FieldName = 'ContactName'
      Size = 100
    end
    object SuppliersLookupContactPhone: TWideStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      FieldName = 'ContactPhone'
    end
    object SuppliersLookupCountry: TWideStringField
      DisplayLabel = #1057#1090#1088#1072#1085#1072
      FieldName = 'Country'
      Size = 100
    end
    object SuppliersLookupAddress: TWideStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'Address'
      Size = 255
    end
    object SuppliersLookupEmail: TWideStringField
      DisplayLabel = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072
      FieldName = 'Email'
      Size = 100
    end
  end
  object SuppliersLookupDS: TDataSource
    DataSet = SuppliersLookup
    Left = 544
    Top = 304
  end
  object ImageListBar: TImageList
    Height = 32
    Width = 32
    Left = 336
    Top = 368
    Bitmap = {
      494C010103001800040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A06020C251705283A23073E3A23073E251705280A06020C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000221504257A4B
      1181BF761ACBF19420FEF29520FFF29520FFF29520FFF29520FFF09420FDBE76
      1ACA794A11802114042400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000110A02138A551292ED9220FAF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFEC9120F98753128F100A01120000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002B27
      1E8F4B4334F43B3529C208060419000000000000000000000000000000000000
      0000000000002B271E8F4B4334F43B3529C20806041900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002C1B062FD4821CDFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFD3821CDE2B1A052E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000012100C394E46
      36FF6F634CFF554D3BFF2C271D8D000000000000000000000000000000000000
      000012100C394E4636FF6F634CFF554D3BFF2C271D8D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000051320B56EB911FF8F29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFEA901FF750310A55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100F0C384E46
      36FF6E644CFF554D3BFF2A261E8C000000000000000000000000000000000000
      0000100F0C384E4636FF6E644CFF554D3BFF2A261E8C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002E1C0531E88F1FF5F29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29927FFF29623FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFE88E1FF42D1B06300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002B27
      1E8F474032E93A3428C008060419000000000000000000000000000000000000
      0000000000002B271E8F474032E93A3428C00806041900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF4C082FFEBAD
      67FFEBAD67FFEBAD67FFEBAD67FFEBAD67FFEBAD67FFEBAD67FFEBAD67FFF4C0
      82FFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000130B0215DA861DE6F29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF6BB70FFFCEFDFFFFBE9D1FFF4A33FFFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFD9861DE5110A
      0213000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F11001E5B6400AC808D
      00F2879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF5A6300AA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFEBAD67FFD175
      18FFD17518FFD17518FFD17518FFD17518FFD17518FFD17518FFD17518FFEBAD
      67FFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000000000000000
      00008451128CF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF9DEB9FFFCF1E2FFFCF1E2FFF7C07AFFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FF8250
      1289000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000141600277E8B00EE879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF5A6300AA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000000000001E12
      0321EC9120F9F29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF7C381FFFCF1E2FFFCEDDBFFF5A849FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFEB91
      1FF81D11031F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005C6500AE879500FF879500FF6E7A
      00D1636D00BB636D00BB636D00BB636D00BB636D00BB636D00BB636D00BB636D
      00BB636D00BB636D00BB636D00BB636D00BB4249007D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFEFB774FFDE91
      3FFFDE913FFFDE913FFFDE913FFFDE913FFFDE913FFFDE913FFFDE913FFFDE91
      3FFFDE913FFFDE913FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000000000007649
      107DF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF4A33DFFF39D31FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FF73470F7A0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808D00F1879500FF6D7900CF0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFEFB774FFDE91
      3FFFDE913FFFDE913FFFDE913FFFDE913FFFDE913FFFDE913FFFDE913FFFDE91
      3FFFDE913FFFDE913FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      000000000000000000000000000000000000000000000000000000000000C378
      1ACEF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF4A23BFFF4AE54FFF4AE54FFF29826FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFBF761ACB0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000879500FF879500FF5A6300AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000120B0214F295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF7C27EFFFCF1E2FFFCF1E2FFF4A848FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF19420FE100A011200000000000000000000000000000000000000000000
      000000000000000000000000000000000000879500FF879500FF758000DD5A63
      00AA5A6300AA5A6300AA5A6300AA5A6300AA5A6300AA5A6300AA5A6300AA5A63
      00AA5A6300AA5A6300AA5A6300AA515A009A0E0F001C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFEBAD67FFD175
      18FFD17518FFD17518FFD17518FFD17518FFD17518FFD17518FFD17518FFEBAD
      67FFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      00000000000000000000000000000000000000000000000000002C1B062FF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF5B35EFFFCF1E2FFFCF1E2FFF8CD96FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FF2A19052D00000000000000000000000000000000000000000000
      000000000000000000000000000000000000879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF606A00B600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF4C082FFEBAD
      67FFEBAD67FFEBAD67FFEBAD67FFEBAD67FFEBAD67FFEBAD67FFEBAD67FFF4C0
      82FFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000452A0849F295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29927FFFBE6CAFFFCF1E2FFFCF1E2FFF7C17DFFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FF4429094800000000000000000000000000000000000000000000
      000000000000000000000000000000000000879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF869400FD14160027000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF4C082FFEBAD
      67FFEBAD67FFEBAD67FFEBAD67FFEBAD67FFEBAD67FFEBAD67FFEBAD67FFEBAD
      67FFEBAD67FFEBAD67FFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000452A0849F295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF4A642FFFBEAD3FFFCF1E2FFFCF1E2FFF6BC
      73FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FF4429094800000000000000000000000000000000000000000000
      000000000000000000000000000000000000879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF515A009A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFEBAD67FFD175
      18FFD17518FFD17518FFD17518FFD17518FFD17518FFD17518FFD17518FFD175
      18FFD17518FFD17518FFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      00000000000000000000000000000000000000000000000000002D1B0630F295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF4A747FFFBECD8FFFCF1E2FFFCEF
      DFFFF4A643FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FF2B1A052E00000000000000000000000000000000000000000000
      000000000000000000000000000000000000879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF829000F60B0C00160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000120B0214F295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF4A6
      42FFF4AE54FFF4AE54FFF39D31FFF29520FFF29520FFF7C17DFFFCF1E2FFFCF1
      E2FFF8C88CFFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF19420FE100A011200000000000000000000000000000000000000000000
      00000000000000000000000000000505000A859400FC879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF444B00810000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      000000000000000000000000000000000000000000000000000000000000C87B
      1BD3F29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF9CF
      9AFFFCF1E2FFFCF1E2FFF6BA6EFFF29520FFF29520FFF6BA6DFFFCF1E2FFFCF1
      E2FFF9D19DFFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFC5791AD00000000000000000000000000000000000000000000000000000
      00000000000000000000000000002D320056879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF7C8900EB0505
      000A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000000000007B4B
      1082F29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF6BE
      76FFFCF1E2FFFCF1E2FFFAE3C4FFF5AA4DFFF4A746FFFADFBBFFFCF1E2FFFCF1
      E2FFF7C382FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FF794A11800000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A6300AA879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF383D
      006A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000000000001E12
      0321EC9120F9F29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF39B
      2EFFFBE8D0FFFCF1E2FFFCF1E2FFFCF1E2FFFCF1E2FFFCF1E2FFFCF1E2FFFBED
      D9FFF4A038FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFEB91
      1FF81D11031F0000000000000000000000000000000000000000000000000000
      000000000000000000000505000A818E00F4879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF737F
      00DA010100020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF9D0
      9EFFFAD4A5FFFAD4A5FFFAD4A5FFFAD4A5FFFAD4A5FFF9CF9AFFA5865FAA0000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E571296F29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF4A440FFF9DDB6FFFCF1E2FFFCF1E2FFFCF1E2FFFCF1E2FFFAE5C8FFF5AC
      50FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FF8A55
      1292000000000000000000000000000000000000000000000000000000000000
      000000000000000000002C300054879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF2A2F00510000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFFBE5
      C5FFFDF4E0FFFDF4E0FFFDF4E0FFFDF4E0FFFCECD2FFF8CC96FF68553C6C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000130B0215DA861DE6F29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF4A33DFFF5B461FFF4AC51FFF4A33FFFF29623FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFD9861DE5110A
      0213000000000000000000000000000000000000000000000000000000000000
      00000000000000000000596200A8879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF687200C40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFFBE5
      C5FFFDF4E0FFFDF4E0FFFDF4E0FFFCECD1FFF8CC96FF7C644780000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C250840ED9220FAF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFED9220FA3B24073F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040009818E00F3879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF879500FF879500FF879500FF879500FF879500FF879500FF8795
      00FF879500FF1B1E003500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFFBE5
      C5FFFDF4E0FFFDF4E0FFFCECD1FFF8CC95FF7C64478000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000051320B56EB911FF8F29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFEA901FF750310A55000000000000
      00000000000000000000000000000000000000000000000000001D2100534F59
      00C95A6400B5646E00BD879500FF879500FF525B009C2C3100552C3100552C31
      00552C3100552C3100552C3100552C3100552C3100552C3100552C3100552C31
      00552C3100552C3100552C3100552C3100552C3100552C3100552C3100552C31
      00552C310055181A002E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFFBE5
      C5FFFDF4E0FFFCECD0FFF8CC95FF7C6447800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003E260942E08A1EECF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFF29520FFF29520FFDF891EEB3D25074100000000000000000000
      0000000000000000000000000000000000000000000000000000566200F05B68
      00FF6C7A00FF879500FF879500FF849100F90F11001E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFFBE5
      C5FFFCEBD0FFF8CC95FF7C644780000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000110A02138A551292ED9220FAF295
      20FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF29520FFF295
      20FFF29520FFEC9120F98753128F100A01120000000000000000000000000000
      00000000000000000000000000000000000000000000000000003840009E5C68
      00F8798700FF849200FA748000DC272B004B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFFBDB
      B1FFF8CB93FF7C64478000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000221504257A4B
      1181BF761ACBF19420FEF29520FFF29520FFF29520FFF29520FFF09420FDBE76
      1ACA794A11802114042400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5865FAAF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C98FFFF8C9
      8FFF735D42770000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A06020C251705283A23073E3A23073E251705280A06020C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000F800001FFFF81FFFFFFFFFFF00000000
      F800001FFFC003FFFFFFFFFF00000000F800001FFF0000FFFFE1F87F00000000
      F800001FFE00007FFFC1F07F00000000F800001FFC00003FFFC1F07F00000000
      F800001FF800001FFFE1F87F00000000F800001FF000000FFF80007F00000000
      F800001FF000000FFF00007F00000000F800001FE0000007FF00007F00000000
      F800001FE0000007FF0FFFFF00000000F800001FE0000007FF1FFFFF00000000
      F800001FC0000003FF00007F00000000F800001FC0000003FF00007F00000000
      F800001FC0000003FF00003F00000000F800001FC0000003FF00003F00000000
      F800001FC0000003FF00001F00000000F800001FC0000003FE00001F00000000
      F800001FE0000007FE00000F00000000F800001FE0000007FE00000F00000000
      F800001FE0000007FC00000700000000F800001FF000000FFC00000700000000
      F800001FF000000FFC00000700000000F800003FF800001FF800000300000000
      F800007FFC00003FC000000300000000F80000FFFE00007FC07FFFFF00000000
      F80001FFFF0000FFC0FFFFFF00000000F80003FFFFC003FFFFFFFFFF00000000
      F80007FFFFF81FFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ImageListPopup: TImageList
    Left = 424
    Top = 368
    Bitmap = {
      494C010104000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D1D0C2C234F2274316C2E9F316C2E9F234E21730C1D0C2B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080C292C181D6E742229979F2229979F171E6D73080A282B0000
      00000000000000000000000000000000000000000000061315260A191D370000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1B22BDB9B1DC7C7A7591000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000308
      030D326D2FA14FAD4BFE4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAD4BFE316C
      2E9F0307030C0000000000000000000000000000000000000000000000000202
      0B0D212A99A13542F2FE3542F3FF3542F3FF3542F3FF3542F3FF3542F2FE2229
      979F03030A0C000000000000000000000000000000000A1F233E258CA8FF0591
      C2C3003A5F600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      171DBDB9B1DCDBD7CEFFDBD7CEFF73716C860000000000000000000000000000
      00000000000000000000000000000000000000000000000000000308030D408D
      3DCF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
      4BFF408C3DCE0307030C0000000000000000000000000000000002020B0D2B36
      C5CF3542F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542
      F3FF2B35C4CE03030A0C000000000000000000000000000000000497CACB008A
      E0E10095FAFB0033575800000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001717161CBDB9
      B1DCDBD7CEFFDBD7CEFFDBD7CEFFDBD7CEFF73716C8600000000000000000000
      0000000000000000000000000000000000000000000000000000326E30A24FAE
      4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
      4BFF4FAE4BFF316B2E9E00000000000000000000000000000000222B9AA23542
      F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542
      F3FF3542F3FF2029969E0000000000000000000000000000000000375C5D0096
      FCFD0097FEFF0096FDFE003C6566000000000000000000000000000000000000
      000000000000000000000000000000000000000000001717161CBCB9B1DBDBD7
      CEFFDBD7CEFFDBD7CEFFDBD7CEFFDBD7CEFFDBD7CEFF73716C86000000000000
      000000000000000000000000000000000000000000000C1A0C284FAC4BFD4FAE
      4BFF4FAE4BFF4FAE4BFF4FAE4BFFC4E4C3FFC4E4C3FF4FAE4BFF4FAE4BFF4FAE
      4BFF4FAE4BFF4FAC4BFD0C190A260000000000000000070A25283542F1FD3542
      F3FF3542F3FF6A73F6FF8C93F8FF3542F3FF3542F3FF8C93F8FF6973F6FF3542
      F3FF3542F3FF3542F1FD0809232600000000000000000000000000000000003F
      6B6C0096FDFE0097FEFF0095FBFC003357580000000000000000000000000000
      00000000000000000000000000000000000000000000B7B5AED7DBD7CEFFDBD7
      CEFFDBD7CEFFDBD7CEFFDBD7CEFFDBD7CEFFDBD7CEFFDBD7CEFF6663598C0000
      000000000000000000000000000000000000000000002653247B4FAE4BFF4FAE
      4BFF4FAE4BFF4FAE4BFF4FAE4BFFC4E4C3FFC4E4C3FF4FAE4BFF4FAE4BFF4FAE
      4BFF4FAE4BFF4FAE4BFF255124780000000000000000191F757B3542F3FF3542
      F3FF3542F3FF8A92F8FFFDFDFEFF8E95F8FF8E95F8FFFDFDFEFF8A92F8FF3542
      F3FF3542F3FF3542F3FF181F7278000000000000000000000000000000000000
      0000003F6B6C0096FDFE0097FEFF0095FBFC0033575800000000000000000000
      0000000000000000000000000000000000000000000073716C86DBD7CEFFDBD7
      CEFFDBD7CEFFDBD7CEFFDBD7CEFFDBD7CEFFDBD7CEFF9F998DCE8A7D60FF453F
      30800000000000000000000000000000000000000000316C2E9F4FAE4BFF4FAE
      4BFF4FAE4BFFC4E4C3FFC4E4C3FFEBF5EBFFEBF5EBFFC4E4C3FFC4E4C3FF4FAE
      4BFF4FAE4BFF4FAE4BFF316B2E9E00000000000000002229979F3542F3FF3542
      F3FF3542F3FF3542F3FF969DF8FFFDFDFEFFFDFDFEFF969DF8FF3542F3FF3542
      F3FF3542F3FF3542F3FF2029969E000000000000000000000000000000000000
      00000000000000406C6D0096FDFE0097FEFF0096FCFD00385F60000000000000
      000000000000000000000000000000000000000000000000000182807A98DBD7
      CEFFDBD7CEFFDBD7CEFFDBD7CEFFDBD7CEFFA39E92D18B7D60FF8A7C5FFF8A7C
      5FFF453F308000000000000000000000000000000000316C2E9F4FAE4BFF4FAE
      4BFF4FAE4BFFC4E4C3FFC4E4C3FFEBF5EBFFEBF5EBFFC4E4C3FFC4E4C3FF4FAE
      4BFF4FAE4BFF4FAE4BFF316B2E9E00000000000000002229979F3542F3FF3542
      F3FF3542F3FF3542F3FF838BF7FFFDFDFEFFFDFDFEFF838BF7FF3542F3FF3542
      F3FF3542F3FF3542F3FF2029969E000000000000000000000000000000000000
      0000000000000000000000416D6E0096FDFE0097FEFF0096FCFD00385F600000
      0000000000000000000000000000000000000000000000000000000000018280
      7A98DBD7CEFFDBD7CEFFDBD7CEFFA39E92D18B7D60FF8A7C5FFF8A7C5FFF8A7C
      5FFF8A7C5FFF474131860000000000000000000000002654247C4FAE4BFF4FAE
      4BFF4FAE4BFF4FAE4BFF4FAE4BFFC4E4C3FFC4E4C3FF4FAE4BFF4FAE4BFF4FAE
      4BFF4FAE4BFF4FAE4BFF2552237900000000000000001920767C3542F3FF3542
      F3FF3542F3FF8A92F8FFFDFDFEFF8E95F8FF8E95F8FFFDFDFEFF8A92F8FF3542
      F3FF3542F3FF3542F3FF191F7379000000000000000000000000000000000000
      000000000000000000000000000000416D6E0096FDFE0097FEFF0096FCFD0038
      5F60000000000000000000000000000000000000000000000000000000000000
      000182807A98DBD7CEFFA7A295D78B7D60FF8A7C5FFF8A7C5FFF8A7C5FFF8A7C
      5FFF897B5EFF7C7055FF635844C600000000000000000D1E0D2D4FAD4BFE4FAE
      4BFF4FAE4BFF4FAE4BFF4FAE4BFFC4E4C3FFC4E4C3FF4FAE4BFF4FAE4BFF4FAE
      4BFF4FAE4BFF4FAD4BFE0C1D0C2B00000000000000000A0B2A2D3542F2FE3542
      F3FF3542F3FF6A73F6FF8C93F8FF3542F3FF3542F3FF8C93F8FF6973F6FF3542
      F3FF3542F3FF3542F2FE080A282B000000000000000000000000000000000000
      000000000000000000000000000000000000003D67680096FDFE0097FEFF0096
      FDFE0A3C5E630000000000000000000000000000000000000000000000000000
      0000000000006561588C8A7D60FF8A7C5FFF8A7C5FFF8A7C5FFF8A7C5FFF897B
      5EFF7C7055FF796D53FF786C52F8000000000000000000000000357533AC4FAE
      4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
      4BFF4FAE4BFF347231A800000000000000000000000000000000232DA4AC3542
      F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542
      F3FF3542F3FF242BA0A800000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004777780097FEFF1C8E
      D9E5AFAB9FE74240415B00000000000000000000000000000000000000000000
      00000000000001010102554C3A9E8A7C5FFF8A7C5FFF8A7C5FFF897B5EFF7C70
      55FF796D53FF796D54FD25221A4B000000000000000000000000050A0510428E
      3ED14FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE
      4BFF418E3DD00409030F0000000000000000000000000000000003040E102C36
      C7D13542F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542
      F3FF2B36C6D002030D0F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000093D6166ADA9
      9DE4A29D95D7706FCEEB16162D33000000000000000000000000000000000000
      0000000000000000000001010102554C3A9E8A7C5FFF897B5EFF7C7055FF796D
      53FF796D54FD26231A4D0000000000000000000000000000000000000000050A
      0510367634AD4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAE4BFF4FAD4BFE3674
      32AB0409030F0000000000000000000000000000000000000000000000000304
      0E10252CA5AD3542F3FF3542F3FF3542F3FF3542F3FF3542F3FF3542F2FE242C
      A3AB02030D0F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004644
      45627070D1ED494991A300000203000000000000000000000000000000000000
      000000000000000000000000000001010102574E3BA37D7056FF796D53FF7A6D
      53FC232018460000000000000000000000000000000000000000000000000000
      0000000000000E1F0D2F28582782327030A4327030A4275825810E1F0E2E0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000090B2C2F1B227B82222A9CA4222A9CA41A217A81090C2B2E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000016162C320000020300000000000000000000000000000000000000000000
      00000000000000000000000000000000000001000002685C46D0786D53FA1F1D
      153F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFF81FF81F9FFFF0FF
      E007E00787FFE0FFC003C003C3FFC07FC003C003C1FF803F80018001E0FF801F
      80018001F07F800F80018001F83F800780018001FC1FC00380018001FE0FE001
      80018001FF07F801C003C003FF83F801C003C003FFC1FC03E007E007FFE1FE07
      F81FF81FFFF3FF0FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
