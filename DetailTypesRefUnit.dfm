object DetailTypesRef: TDetailTypesRef
  Left = 0
  Top = 0
  Caption = #1058#1080#1087#1099' '#1076#1077#1090#1072#1083#1077#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
  ClientHeight = 652
  ClientWidth = 948
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDefault
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 605
    Width = 948
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 0
    ExplicitWidth = 608
  end
  object Panel1: TPanel
    Left = 0
    Top = 608
    Width = 948
    Height = 44
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 707
      Top = 1
      Width = 240
      Height = 42
      DataSource = BDForm.PartTypesDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 696
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 948
    Height = 605
    Align = alClient
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = 464
    ExplicitTop = 320
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 946
      Height = 603
      Align = alClient
      DataSource = BDForm.PartTypesDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
end
