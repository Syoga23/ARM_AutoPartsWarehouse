object TransactionsTypesRef: TTransactionsTypesRef
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1081
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
    ExplicitWidth = 784
    ExplicitHeight = 517
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 786
      Height = 516
      Align = alClient
      DataSource = BDForm.TransactionTypesDS
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
    ExplicitTop = 520
    ExplicitWidth = 784
    object DBNavigator1: TDBNavigator
      Left = 547
      Top = 1
      Width = 240
      Height = 39
      DataSource = BDForm.TransactionTypesDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 543
    end
  end
end
