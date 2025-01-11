object BDForm: TBDForm
  OnCreate = DataModuleCreate
  Height = 367
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
    Active = True
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
    object N2: TMenuItem
      Caption = #1053#1072#1074#1080#1075#1072#1094#1080#1103
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
    Active = True
    Connection = Connection
    CursorType = ctStatic
    BeforePost = PartsBeforePost
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
      Visible = False
    end
    object PartsTypeID: TIntegerField
      FieldName = 'TypeID'
      Visible = False
    end
    object PartsWarehouse_ID: TIntegerField
      FieldName = 'Warehouse_ID'
      Visible = False
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
    object PartsType: TStringField
      DisplayLabel = #1042#1080#1076' '#1079#1072#1087#1095#1072#1089#1090#1080
      FieldKind = fkLookup
      FieldName = 'Type'
      LookupDataSet = PartTypes
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
      Lookup = True
    end
  end
  object Suppliers: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    BeforePost = PartsBeforePost
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
      DisplayLabel = #1050#1086#1084#1087#1072#1085#1080#1103' '#1087#1086#1089#1090#1072#1074#1097#1080#1082
      FieldName = 'Name'
      Size = 100
    end
    object SuppliersContactName: TWideStringField
      DisplayLabel = #1050#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1080#1084#1103
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
      DisplayLabel = #1069#1083#1077#1082#1090#1088#1086#1085#1072#1072#1103' '#1087#1086#1095#1090#1072
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
    Active = True
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
    object TransactionsOrder_ID: TIntegerField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1079#1072#1082#1072#1079#1072
      FieldName = 'Order_ID'
    end
    object TransactionsTransactionDate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1080
      FieldName = 'TransactionDate'
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
      Visible = False
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
    object TransactionsEmployee: TStringField
      DisplayLabel = #1056#1072#1073#1086#1090#1085#1080#1082
      FieldKind = fkLookup
      FieldName = 'Employee'
      LookupDataSet = Employee
      LookupKeyFields = 'ID'
      LookupResultField = 'FIO'
      KeyFields = 'Employee_ID'
      Size = 0
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
  end
  object TransactionsDS: TDataSource
    DataSet = Transactions
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
      Size = 10
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
    Active = True
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
    Left = 200
    Top = 304
    object e1: TMenuItem
      Caption = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1092#1086#1090#1086
    end
    object N6: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1092#1086#1090#1086
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
    object OrderItemsPart_ID: TIntegerField
      FieldName = 'Part_ID'
      Visible = False
    end
    object OrderItemsPartName: TStringField
      DisplayLabel = #1044#1077#1090#1072#1083#1100
      FieldKind = fkLookup
      FieldName = 'PartName'
      LookupDataSet = Parts
      LookupKeyFields = 'PartID'
      LookupResultField = 'PartName'
      KeyFields = 'Part_ID'
      Lookup = True
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
    Left = 336
    Top = 304
    object N8: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = N8Click
    end
    object N9: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    end
    object N10: TMenuItem
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    end
    object N11: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
    end
  end
end
