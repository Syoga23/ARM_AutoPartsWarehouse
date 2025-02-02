object AddOrderForm: TAddOrderForm
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079':'
  ClientHeight = 145
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 106
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 1084
    ExplicitHeight = 177
    object Label1: TLabel
      Left = 18
      Top = 28
      Width = 65
      Height = 15
      Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072':'
    end
    object Label3: TLabel
      Left = 319
      Top = 28
      Width = 68
      Height = 15
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
    end
    object Label7: TLabel
      Left = 608
      Top = 28
      Width = 82
      Height = 15
      Caption = #1057#1090#1072#1090#1091#1089#1072' '#1079#1072#1082#1072#1079#1072':'
    end
    object Label4: TLabel
      Left = 18
      Top = 68
      Width = 42
      Height = 15
      Caption = #1050#1083#1080#1077#1085#1090':'
    end
    object Label5: TLabel
      Left = 319
      Top = 68
      Width = 62
      Height = 15
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082':'
    end
    object WarehousLookup: TDBLookupComboBox
      Left = 696
      Top = 25
      Width = 209
      Height = 23
      DataField = 'Status'
      DataSource = BDForm.OrdersDS
      ListField = 'Name'
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 102
      Top = 25
      Width = 209
      Height = 23
      DataField = 'OrderDate'
      DataSource = BDForm.OrdersDS
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 393
      Top = 25
      Width = 209
      Height = 23
      DataField = 'Quantity'
      DataSource = BDForm.OrdersDS
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 102
      Top = 65
      Width = 209
      Height = 23
      DataField = 'Client'
      DataSource = BDForm.OrdersDS
      TabOrder = 3
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 393
      Top = 65
      Width = 209
      Height = 23
      DataField = 'Employee'
      DataSource = BDForm.OrdersDS
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 106
    Width = 914
    Height = 39
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 132
    ExplicitWidth = 1084
    object Button1: TButton
      Left = 778
      Top = 6
      Width = 114
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 642
      Top = 6
      Width = 114
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
