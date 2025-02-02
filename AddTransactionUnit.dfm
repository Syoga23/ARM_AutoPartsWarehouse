object AddTransactionForm: TAddTransactionForm
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1102
  ClientHeight = 181
  ClientWidth = 934
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
    Width = 934
    Height = 142
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 930
    ExplicitHeight = 141
    object Label1: TLabel
      Left = 10
      Top = 28
      Width = 78
      Height = 15
      Caption = #1053#1086#1084#1077#1088' '#1079#1072#1082#1072#1079#1072':'
    end
    object Label3: TLabel
      Left = 323
      Top = 28
      Width = 94
      Height = 15
      Caption = #1044#1072#1090#1072' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1080':'
    end
    object Label7: TLabel
      Left = 636
      Top = 28
      Width = 68
      Height = 15
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
    end
    object Label4: TLabel
      Left = 10
      Top = 68
      Width = 89
      Height = 15
      Caption = #1042#1080#1076' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1080':'
    end
    object Label5: TLabel
      Left = 323
      Top = 68
      Width = 39
      Height = 15
      Caption = #1057#1090#1072#1090#1091#1089':'
    end
    object Label2: TLabel
      Left = 636
      Top = 68
      Width = 62
      Height = 15
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082':'
    end
    object Label6: TLabel
      Left = 10
      Top = 110
      Width = 42
      Height = 15
      Caption = #1050#1083#1080#1077#1085#1090':'
    end
    object Label8: TLabel
      Left = 323
      Top = 110
      Width = 82
      Height = 15
      Caption = #1052#1077#1090#1086#1076' '#1086#1087#1083#1072#1090#1099':'
    end
    object DBEdit5: TDBEdit
      Left = 421
      Top = 25
      Width = 209
      Height = 23
      DataField = 'TransactionDate'
      DataSource = BDForm.TransactionsDS
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 102
      Top = 65
      Width = 209
      Height = 23
      DataField = 'TransactionType'
      DataSource = BDForm.TransactionsDS
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 421
      Top = 65
      Width = 209
      Height = 23
      DataField = 'Status'
      DataSource = BDForm.TransactionsDS
      TabOrder = 2
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 710
      Top = 65
      Width = 209
      Height = 23
      DataField = 'Employee'
      DataSource = BDForm.TransactionsDS
      TabOrder = 3
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 102
      Top = 105
      Width = 209
      Height = 23
      DataField = 'Client'
      DataSource = BDForm.TransactionsDS
      TabOrder = 4
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 102
      Top = 25
      Width = 209
      Height = 23
      DataField = 'Order'
      DataSource = BDForm.TransactionsDS
      TabOrder = 5
    end
    object DBEdit1: TDBEdit
      Left = 710
      Top = 25
      Width = 209
      Height = 23
      DataField = 'Quantity'
      DataSource = BDForm.TransactionsDS
      TabOrder = 6
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 421
      Top = 105
      Width = 209
      Height = 23
      DataField = 'PaymentType'
      DataSource = BDForm.TransactionsDS
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 142
    Width = 934
    Height = 39
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 141
    ExplicitWidth = 930
    object Button1: TButton
      Left = 770
      Top = 6
      Width = 126
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1102
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 634
      Top = 6
      Width = 118
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
