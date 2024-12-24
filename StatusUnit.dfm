object StatusRef: TStatusRef
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1090#1072#1090#1091#1089#1086#1074
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
    Top = 518
    Width = 788
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -359
    ExplicitTop = 439
    ExplicitWidth = 987
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 518
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = -359
    ExplicitTop = -202
    ExplicitWidth = 987
    ExplicitHeight = 644
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 786
      Height = 516
      Align = alClient
      DataSource = BDForm.StatusDS
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
          FieldName = 'Name'
          Width = 650
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 521
    Width = 788
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = -359
    ExplicitTop = 401
    ExplicitWidth = 987
    object DBNavigator1: TDBNavigator
      Left = 547
      Top = 1
      Width = 240
      Height = 39
      DataSource = BDForm.StatusDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 746
    end
  end
end
