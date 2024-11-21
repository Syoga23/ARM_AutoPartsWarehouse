object BDForm: TBDForm
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object Connection: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 24
  end
  object DataSource1: TDataSource
    Left = 224
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 128
    Top = 24
  end
end
