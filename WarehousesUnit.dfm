object WarehousesRef: TWarehousesRef
  Left = 0
  Top = 0
  Caption = #1057#1082#1083#1072#1076#1099' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
  ClientHeight = 562
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 517
    Width = 788
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 113
    ExplicitWidth = 271
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 517
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 232
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 786
      Height = 515
      Align = alClient
      DataSource = BDForm.WarehousesDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'WarehouseID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 345
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
          FieldName = 'location'
          Width = 350
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 520
    Width = 788
    Height = 42
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 400
    ExplicitWidth = 628
    object DBNavigator1: TDBNavigator
      Left = 547
      Top = 1
      Width = 240
      Height = 40
      DataSource = BDForm.WarehousesDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 387
      ExplicitTop = 6
      ExplicitHeight = 25
    end
  end
end
