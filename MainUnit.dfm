object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1040#1056#1052' '#1089#1082#1083#1072#1076#1072' '#1072#1074#1090#1086#1079#1072#1087#1095#1072#1089#1090#1077#1081
  ClientHeight = 840
  ClientWidth = 1090
  Color = clBtnFace
  Constraints.MinHeight = 800
  Constraints.MinWidth = 1100
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  Menu = BDForm.Menu
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 241
    Top = 245
    Height = 595
    ExplicitLeft = 191
    ExplicitTop = 196
    ExplicitHeight = 721
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 242
    Width = 1090
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = 188
    ExplicitTop = 201
    ExplicitWidth = 724
  end
  object TreePanel: TPanel
    Left = 0
    Top = 245
    Width = 241
    Height = 595
    Align = alLeft
    TabOrder = 0
    object DetTypesTitle: TLabel
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 237
      Height = 17
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alTop
      Caption = #1042#1080#1076#1099' '#1076#1077#1090#1072#1083#1077#1081':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 94
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 20
      Width = 239
      Height = 574
      Align = alClient
      DataSource = BDForm.PartTypesDS
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Type_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Type_Name'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Type_Description'
          Visible = False
        end>
    end
  end
  object DetailsPanel: TPanel
    Left = 0
    Top = 0
    Width = 1090
    Height = 242
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 52
      Width = 23
      Height = 15
      Caption = #1050#1086#1076':'
    end
    object Label2: TLabel
      Left = 10
      Top = 96
      Width = 55
      Height = 15
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    end
    object Label3: TLabel
      Left = 10
      Top = 135
      Width = 55
      Height = 30
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080':'
      WordWrap = True
    end
    object Label4: TLabel
      Left = 284
      Top = 52
      Width = 59
      Height = 15
      Caption = #1062#1077#1085#1072' 1 '#1096#1090':'
    end
    object Label5: TLabel
      Left = 284
      Top = 205
      Width = 68
      Height = 15
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
    end
    object Label6: TLabel
      Left = 284
      Top = 134
      Width = 43
      Height = 15
      Caption = #1040#1088#1090#1080#1082#1083':'
    end
    object Label7: TLabel
      Left = 576
      Top = 205
      Width = 75
      Height = 15
      Caption = #1042#1080#1076' '#1079#1072#1087#1095#1072#1089#1090#1080':'
    end
    object Label8: TLabel
      Left = 576
      Top = 134
      Width = 66
      Height = 15
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082':'
    end
    object Label9: TLabel
      Left = 576
      Top = 52
      Width = 36
      Height = 15
      Caption = #1057#1082#1083#1072#1076':'
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 1088
      Height = 42
      BorderWidth = 1
      ButtonHeight = 38
      ButtonWidth = 39
      Caption = 'ToolBar1'
      EdgeBorders = [ebBottom]
      EdgeInner = esNone
      EdgeOuter = esRaised
      Images = BDForm.ImageListBar
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Caption = 'ToolButton1'
        ImageIndex = 0
        OnClick = ToolButton1Click
      end
      object ToolButton3: TToolButton
        Left = 39
        Top = 0
        Caption = 'ToolButton3'
        ImageIndex = 2
        OnClick = ToolButton3Click
      end
      object ToolButton4: TToolButton
        Left = 78
        Top = 0
        Caption = 'ToolButton4'
        ImageIndex = 1
        OnClick = ToolButton4Click
      end
    end
    object DBImagePanel: TPanel
      AlignWithMargins = True
      Left = 889
      Top = 58
      Width = 185
      Height = 168
      Margins.Left = 0
      Margins.Top = 15
      Margins.Right = 15
      Margins.Bottom = 15
      Align = alRight
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 1
      object DBImage1: TDBImage
        Left = 1
        Top = 1
        Width = 183
        Height = 166
        Align = alClient
        DataField = 'Photo'
        DataSource = BDForm.PartsDS
        Stretch = True
        TabOrder = 0
      end
    end
    object DBEdit1: TDBEdit
      Left = 71
      Top = 49
      Width = 200
      Height = 23
      DataField = 'PartID'
      DataSource = BDForm.PartsDS
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 71
      Top = 93
      Width = 200
      Height = 23
      DataField = 'PartName'
      DataSource = BDForm.PartsDS
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 71
      Top = 132
      Width = 200
      Height = 94
      DataField = 'Description'
      DataSource = BDForm.PartsDS
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 363
      Top = 49
      Width = 200
      Height = 23
      DataField = 'Price'
      DataSource = BDForm.PartsDS
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 363
      Top = 131
      Width = 200
      Height = 23
      DataField = 'Article'
      DataSource = BDForm.PartsDS
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 363
      Top = 202
      Width = 200
      Height = 23
      DataField = 'Quantity'
      DataSource = BDForm.PartsDS
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 657
      Top = 49
      Width = 215
      Height = 23
      DataField = 'Warehouse'
      DataSource = BDForm.PartsDS
      TabOrder = 8
    end
    object DBEdit7: TDBEdit
      Left = 657
      Top = 131
      Width = 215
      Height = 23
      DataField = 'Supplier'
      DataSource = BDForm.PartsDS
      TabOrder = 9
    end
    object DBEdit8: TDBEdit
      Left = 657
      Top = 202
      Width = 215
      Height = 23
      DataField = 'Type'
      DataSource = BDForm.PartsDS
      TabOrder = 10
    end
  end
  object GridPanel: TPanel
    Left = 244
    Top = 245
    Width = 846
    Height = 595
    Align = alClient
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 844
      Height = 593
      ActivePage = Tab3
      Align = alClient
      MultiLine = True
      TabOrder = 0
      TabPosition = tpBottom
      OnChange = PageControl1Change
      object Tab1: TTabSheet
        Caption = #1047#1072#1087#1095#1072#1089#1090#1080
        object DetailsGrid: TDBGrid
          Left = 0
          Top = 0
          Width = 836
          Height = 565
          Align = alClient
          Color = clBtnFace
          DataSource = BDForm.PartsDS
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
          PopupMenu = BDForm.GridPopupMenu
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PartID'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PartName'
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Description'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Price'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantity'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Photo'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Article'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SupplierID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Supplier'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TypeID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Warehouse_ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Type'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Warehouse'
              Width = 100
              Visible = True
            end>
        end
      end
      object Tab2: TTabSheet
        Caption = #1047#1072#1082#1072#1079#1099
        ImageIndex = 1
        object Splitter4: TSplitter
          Left = 0
          Top = 250
          Width = 836
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = -3
          ExplicitTop = 244
          ExplicitWidth = 844
        end
        object Label10: TLabel
          AlignWithMargins = True
          Left = 1
          Top = 254
          Width = 834
          Height = 17
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alTop
          Caption = #1044#1077#1090#1072#1083#1080' '#1074' '#1079#1072#1082#1072#1079#1077':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 106
        end
        object OrdersGrid: TDBGrid
          Left = 0
          Top = 0
          Width = 836
          Height = 250
          Align = alTop
          DataSource = BDForm.OrdersDS
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
          PopupMenu = BDForm.GridPopupMenu
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OrderID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OrderDate'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantity'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Status_ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Client_ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Employee_ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Status'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Client'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Employee'
              Width = 150
              Visible = True
            end>
        end
        object ItemsGrid1: TDBGrid
          Left = 0
          Top = 272
          Width = 836
          Height = 293
          Align = alClient
          DataSource = BDForm.OrderItemsDS
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
          PopupMenu = BDForm.GridPopupMenu
          TabOrder = 1
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
              FieldName = 'Part'
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OrderID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Order_Date'
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Part_ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Quantity'
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Price'
              Width = 190
              Visible = True
            end>
        end
      end
      object Tab3: TTabSheet
        Caption = #1048#1089#1090#1086#1088#1080#1103' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1081
        ImageIndex = 2
        object Splitter3: TSplitter
          Left = 0
          Top = 289
          Width = 836
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = 1
          ExplicitTop = 244
          ExplicitWidth = 844
        end
        object Label11: TLabel
          AlignWithMargins = True
          Left = 1
          Top = 293
          Width = 834
          Height = 17
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alTop
          Caption = #1044#1077#1090#1072#1083#1080' '#1074' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1080':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 139
        end
        object TransactionsGrid: TDBGrid
          Left = 0
          Top = 0
          Width = 836
          Height = 289
          Align = alTop
          DataSource = BDForm.TransactionsDS
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
          PopupMenu = BDForm.GridPopupMenu
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'TransactionID'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Order'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Order_ID'
              Width = -1
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TransactionDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantity'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PaymentType_ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TransactionType_ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Status_ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Employee_ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Client_ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TransactionType'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Status'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Employee'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Client'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PaymentType'
              Width = 110
              Visible = True
            end>
        end
        object ItemsGrid2: TDBGrid
          Left = 0
          Top = 311
          Width = 836
          Height = 254
          Align = alClient
          DataSource = BDForm.OrderItemsDS
          PopupMenu = BDForm.GridPopupMenu
          TabOrder = 1
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
              FieldName = 'OrderID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Part'
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Order_Date'
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Part_ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Quantity'
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Price'
              Width = 190
              Visible = True
            end>
        end
      end
    end
  end
end
