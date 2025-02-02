object ClientsRef: TClientsRef
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1082#1083#1080#1077#1085#1090#1086#1074
  ClientHeight = 742
  ClientWidth = 1118
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 699
    Width = 1118
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -320
    ExplicitTop = 439
    ExplicitWidth = 948
  end
  object Panel1: TPanel
    Left = 0
    Top = 702
    Width = 1118
    Height = 40
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 701
    ExplicitWidth = 1114
    object DBNavigator1: TDBNavigator
      Left = 877
      Top = 1
      Width = 240
      Height = 38
      DataSource = BDForm.ClientsDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 873
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1118
    Height = 699
    Align = alClient
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    ExplicitWidth = 1114
    ExplicitHeight = 698
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1116
      Height = 697
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
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Birthdate'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'location_ID'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Email'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Phone'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Location'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Supplier'
          Width = 180
          Visible = True
        end>
    end
  end
end
