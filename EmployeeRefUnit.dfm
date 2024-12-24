object EmployeeRef: TEmployeeRef
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
  ClientHeight = 731
  ClientWidth = 1120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 688
    Width = 1120
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -320
    ExplicitTop = 439
    ExplicitWidth = 948
  end
  object Panel1: TPanel
    Left = 0
    Top = 691
    Width = 1120
    Height = 40
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 879
      Top = 1
      Width = 240
      Height = 38
      DataSource = BDForm.EmployeeDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 707
      ExplicitHeight = 42
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1120
    Height = 688
    Align = alClient
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = -320
    ExplicitTop = -163
    ExplicitWidth = 948
    ExplicitHeight = 605
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1118
      Height = 686
      Align = alClient
      DataSource = BDForm.EmployeeDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIO'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Birthdate'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DateOfJoining'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Phone'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Post'
          Width = 170
          Visible = True
        end>
    end
  end
end
