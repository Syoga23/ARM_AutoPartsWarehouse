object BDForm: TBDForm
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
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
    Left = 168
    Top = 24
  end
  object PartTypes: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    AfterPost = PartTypesAfterPost
    AfterDelete = PartTypesAfterDelete
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PartTypes')
    Left = 96
    Top = 24
  end
  object Menu: TMainMenu
    Left = 24
    Top = 424
    object S1: TMenuItem
      Caption = #1060#1072#1081#1083
    end
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object s2: TMenuItem
        Caption = #1042#1080#1076#1099' '#1076#1077#1090#1072#1083#1077#1081
        OnClick = s2Click
      end
      object G1: TMenuItem
        Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
        OnClick = G1Click
      end
    end
    object N2: TMenuItem
      Caption = #1053#1072#1074#1080#1075#1072#1094#1080#1103
    end
    object N3: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
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
    Top = 144
  end
  object SuppliersDS: TDataSource
    DataSet = Suppliers
    Left = 168
    Top = 144
  end
end
