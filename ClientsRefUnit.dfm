object ClientsRef: TClientsRef
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1082#1083#1080#1077#1085#1090#1086#1074
  ClientHeight = 736
  ClientWidth = 1115
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 693
    Width = 1115
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -320
    ExplicitTop = 439
    ExplicitWidth = 948
  end
  object Panel1: TPanel
    Left = 0
    Top = 696
    Width = 1115
    Height = 40
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 874
      Top = 1
      Width = 240
      Height = 38
      DataSource = BDForm.ClientsDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 707
      ExplicitHeight = 42
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1115
    Height = 693
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
      Width = 1113
      Height = 691
      Align = alClient
      DataSource = BDForm.ClientsDS
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
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Birthdate'
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'location_ID'
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Phone'
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Location'
          Width = 165
          Visible = True
        end>
    end
  end
end
