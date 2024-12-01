object SuppliersRef: TSuppliersRef
  Left = 0
  Top = 0
  Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
  ClientHeight = 688
  ClientWidth = 987
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 644
    Width = 987
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 0
    ExplicitWidth = 401
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 987
    Height = 644
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 319
    ExplicitWidth = 628
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 985
      Height = 642
      Align = alClient
      DataSource = BDForm.SuppliersDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 647
    Width = 987
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = 240
    ExplicitTop = 160
    ExplicitWidth = 185
    object DBNavigator1: TDBNavigator
      Left = 746
      Top = 1
      Width = 240
      Height = 39
      DataSource = BDForm.SuppliersDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 720
      ExplicitTop = 6
      ExplicitHeight = 25
    end
  end
end
