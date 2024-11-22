object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1040#1056#1052' '#1089#1082#1083#1072#1076#1072' '#1072#1074#1090#1086#1079#1072#1087#1095#1072#1089#1090#1077#1081
  ClientHeight = 926
  ClientWidth = 1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = BDForm.Menu
  OnShow = FormShow
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 185
    Top = 204
    Height = 722
    ExplicitLeft = 472
    ExplicitTop = 600
    ExplicitHeight = 100
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 201
    Width = 1093
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = 188
    ExplicitWidth = 724
  end
  object TreePanel: TPanel
    Left = 0
    Top = 204
    Width = 185
    Height = 722
    Align = alLeft
    TabOrder = 0
    ExplicitTop = 64
    ExplicitHeight = 861
    object TreeView1: TTreeView
      Left = 1
      Top = 1
      Width = 183
      Height = 720
      Align = alClient
      Indent = 19
      TabOrder = 0
      ExplicitLeft = 64
      ExplicitTop = 264
      ExplicitWidth = 121
      ExplicitHeight = 97
    end
  end
  object GridPanel: TPanel
    Left = 188
    Top = 204
    Width = 905
    Height = 722
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 600
    ExplicitTop = 376
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 903
      Height = 720
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object DetailsPanel: TPanel
    Left = 0
    Top = 0
    Width = 1093
    Height = 201
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 1089
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 1091
      Height = 29
      Caption = 'ToolBar1'
      TabOrder = 0
      ExplicitLeft = 336
      ExplicitTop = 88
      ExplicitWidth = 150
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Caption = 'ToolButton1'
        ImageIndex = 0
      end
      object ToolButton2: TToolButton
        Left = 23
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 31
        Top = 0
        Caption = 'ToolButton3'
        ImageIndex = 1
      end
      object ToolButton4: TToolButton
        Left = 54
        Top = 0
        Caption = 'ToolButton4'
        ImageIndex = 2
      end
    end
  end
end
