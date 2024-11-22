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
  object Menu: TMainMenu
    Left = 24
    Top = 424
    object S1: TMenuItem
      Caption = #1060#1072#1081#1083
    end
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
    end
    object N2: TMenuItem
      Caption = #1053#1072#1074#1080#1075#1072#1094#1080#1103
    end
    object N3: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    end
  end
end
