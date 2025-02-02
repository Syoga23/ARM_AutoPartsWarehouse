object AddPartForm: TAddPartForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1095#1072#1089#1090#1100':'
  ClientHeight = 281
  ClientWidth = 1122
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
    Width = 1122
    Height = 228
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = 96
    ExplicitTop = 45
    object Label2: TLabel
      Left = 18
      Top = 28
      Width = 55
      Height = 15
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    end
    object Label3: TLabel
      Left = 306
      Top = 28
      Width = 59
      Height = 15
      Caption = #1062#1077#1085#1072' 1 '#1096#1090':'
    end
    object Label4: TLabel
      Left = 306
      Top = 68
      Width = 43
      Height = 15
      Caption = #1040#1088#1090#1080#1082#1083':'
    end
    object Label5: TLabel
      Left = 15
      Top = 68
      Width = 58
      Height = 30
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#13#10#1076#1077#1090#1072#1083#1080':'
    end
    object Label6: TLabel
      Left = 306
      Top = 111
      Width = 68
      Height = 15
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
    end
    object Label7: TLabel
      Left = 602
      Top = 28
      Width = 36
      Height = 15
      Caption = #1057#1082#1083#1072#1076':'
    end
    object Label8: TLabel
      Left = 602
      Top = 68
      Width = 66
      Height = 15
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082':'
    end
    object Label9: TLabel
      Left = 602
      Top = 111
      Width = 75
      Height = 15
      Caption = #1042#1080#1076' '#1079#1072#1087#1095#1072#1089#1090#1080':'
    end
    object DBImagePanel: TPanel
      AlignWithMargins = True
      Left = 921
      Top = 16
      Width = 185
      Height = 196
      Margins.Left = 0
      Margins.Top = 15
      Margins.Right = 15
      Margins.Bottom = 15
      Align = alRight
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 0
      ExplicitLeft = 917
      ExplicitHeight = 195
      object DBImage1: TDBImage
        Left = 1
        Top = 1
        Width = 183
        Height = 194
        Align = alClient
        DataField = 'Photo'
        DataSource = BDForm.PartsDS
        PopupMenu = BDForm.PhotoPopupMenu
        Stretch = True
        TabOrder = 0
        ExplicitLeft = 80
        ExplicitTop = 96
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
    object WarehouseLookup: TDBLookupComboBox
      Left = 688
      Top = 25
      Width = 209
      Height = 23
      DataField = 'Warehouse'
      DataSource = BDForm.PartsDS
      ListField = 'Name'
      TabOrder = 1
    end
    object SupplierLookup: TDBLookupComboBox
      Left = 688
      Top = 65
      Width = 209
      Height = 23
      DataField = 'Supplier'
      DataSource = BDForm.PartsDS
      TabOrder = 2
    end
    object PartTypeLookup: TDBLookupComboBox
      Left = 688
      Top = 108
      Width = 209
      Height = 23
      DataField = 'Type'
      DataSource = BDForm.PartsDS
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 79
      Top = 25
      Width = 200
      Height = 23
      DataField = 'PartName'
      DataSource = BDForm.PartsDS
      TabOrder = 4
    end
    object DBMemo1: TDBMemo
      Left = 79
      Top = 65
      Width = 200
      Height = 146
      DataField = 'Description'
      DataSource = BDForm.PartsDS
      TabOrder = 5
    end
    object DBEdit2: TDBEdit
      Left = 380
      Top = 108
      Width = 209
      Height = 23
      DataField = 'Quantity'
      DataSource = BDForm.PartsDS
      TabOrder = 6
    end
    object DBEdit3: TDBEdit
      Left = 380
      Top = 65
      Width = 209
      Height = 23
      DataField = 'Article'
      DataSource = BDForm.PartsDS
      TabOrder = 7
    end
    object DBEdit4: TDBEdit
      Left = 380
      Top = 25
      Width = 209
      Height = 23
      DataField = 'Price'
      DataSource = BDForm.PartsDS
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 228
    Width = 1122
    Height = 53
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 227
    ExplicitWidth = 1118
    object Button1: TButton
      Left = 992
      Top = 14
      Width = 114
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1095#1072#1089#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 856
      Top = 14
      Width = 114
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
