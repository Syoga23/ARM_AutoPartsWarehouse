object PaymentTypesRef: TPaymentTypesRef
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1084#1077#1090#1086#1076#1086#1074' '#1086#1087#1083#1072#1090
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
    Top = 519
    Width = 788
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -320
    ExplicitTop = 439
    ExplicitWidth = 948
  end
  object Panel1: TPanel
    Left = 0
    Top = 522
    Width = 788
    Height = 40
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 521
    ExplicitWidth = 784
    object DBNavigator1: TDBNavigator
      Left = 547
      Top = 1
      Width = 240
      Height = 38
      DataSource = BDForm.PaymentTypeDS
      Align = alRight
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 519
    Align = alClient
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    ExplicitWidth = 784
    ExplicitHeight = 518
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 786
      Height = 517
      Align = alClient
      DataSource = BDForm.PaymentTypeDS
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
end
