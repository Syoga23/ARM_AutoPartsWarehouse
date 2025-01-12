object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1040#1056#1052' '#1089#1082#1083#1072#1076#1072' '#1072#1074#1090#1086#1079#1072#1087#1095#1072#1089#1090#1077#1081
  ClientHeight = 799
  ClientWidth = 1098
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
    Top = 228
    Height = 571
    ExplicitLeft = 191
    ExplicitTop = 196
    ExplicitHeight = 721
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 225
    Width = 1098
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = 188
    ExplicitTop = 201
    ExplicitWidth = 724
  end
  object TreePanel: TPanel
    Left = 0
    Top = 228
    Width = 241
    Height = 571
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 570
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
      Height = 550
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
    Width = 1098
    Height = 225
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1094
    object Label1: TLabel
      Left = 10
      Top = 45
      Width = 23
      Height = 15
      Caption = #1050#1086#1076':'
    end
    object Label2: TLabel
      Left = 10
      Top = 80
      Width = 55
      Height = 15
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    end
    object Label3: TLabel
      Left = 10
      Top = 118
      Width = 55
      Height = 30
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080':'
      WordWrap = True
    end
    object Label4: TLabel
      Left = 284
      Top = 45
      Width = 59
      Height = 15
      Caption = #1062#1077#1085#1072' 1 '#1096#1090':'
    end
    object Label5: TLabel
      Left = 284
      Top = 189
      Width = 68
      Height = 15
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
    end
    object Label6: TLabel
      Left = 284
      Top = 118
      Width = 43
      Height = 15
      Caption = #1040#1088#1090#1080#1082#1083':'
    end
    object Label7: TLabel
      Left = 576
      Top = 189
      Width = 75
      Height = 15
      Caption = #1042#1080#1076' '#1079#1072#1087#1095#1072#1089#1090#1080':'
    end
    object Label8: TLabel
      Left = 576
      Top = 118
      Width = 66
      Height = 15
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082':'
    end
    object Label9: TLabel
      Left = 576
      Top = 45
      Width = 36
      Height = 15
      Caption = #1057#1082#1083#1072#1076':'
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 1096
      Height = 29
      BorderWidth = 1
      Caption = 'ToolBar1'
      EdgeBorders = [ebBottom]
      EdgeInner = esNone
      EdgeOuter = esRaised
      TabOrder = 0
      ExplicitWidth = 1092
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
    object DBImagePanel: TPanel
      AlignWithMargins = True
      Left = 897
      Top = 45
      Width = 185
      Height = 164
      Margins.Left = 0
      Margins.Top = 15
      Margins.Right = 15
      Margins.Bottom = 15
      Align = alRight
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 1
      ExplicitLeft = 893
      object DBImage1: TDBImage
        Left = 1
        Top = 1
        Width = 183
        Height = 162
        Align = alClient
        DataField = 'Photo'
        DataSource = BDForm.PartsDS
        PopupMenu = BDForm.PhotoPopupMenu
        Stretch = True
        TabOrder = 0
      end
    end
    object DBEdit1: TDBEdit
      Left = 71
      Top = 42
      Width = 200
      Height = 23
      DataField = 'PartID'
      DataSource = BDForm.PartsDS
      ReadOnly = True
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 657
      Top = 115
      Width = 215
      Height = 23
      KeyField = 'SupplierID'
      ListField = 'Name'
      ListSource = BDForm.SuppliersDS
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 71
      Top = 77
      Width = 200
      Height = 23
      DataField = 'PartName'
      DataSource = BDForm.PartsDS
      TabOrder = 4
    end
    object DBMemo1: TDBMemo
      Left = 71
      Top = 115
      Width = 200
      Height = 94
      DataField = 'Description'
      DataSource = BDForm.PartsDS
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 363
      Top = 42
      Width = 200
      Height = 23
      DataField = 'Price'
      DataSource = BDForm.PartsDS
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 363
      Top = 115
      Width = 200
      Height = 23
      DataField = 'Article'
      DataSource = BDForm.PartsDS
      TabOrder = 7
    end
    object DBEdit5: TDBEdit
      Left = 363
      Top = 186
      Width = 200
      Height = 23
      DataField = 'Quantity'
      DataSource = BDForm.PartsDS
      TabOrder = 8
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 657
      Top = 186
      Width = 215
      Height = 23
      KeyField = 'Type_ID'
      ListField = 'Type_Name'
      ListSource = BDForm.PartTypeLookupDS
      TabOrder = 9
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 657
      Top = 42
      Width = 215
      Height = 23
      KeyField = 'WarehouseID'
      ListField = 'Name'
      ListSource = BDForm.WarehousesDS
      TabOrder = 10
    end
  end
  object GridPanel: TPanel
    Left = 244
    Top = 228
    Width = 854
    Height = 571
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 850
    ExplicitHeight = 570
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 852
      Height = 569
      ActivePage = Tab2
      Align = alClient
      MultiLine = True
      TabOrder = 0
      TabPosition = tpBottom
      ExplicitWidth = 848
      ExplicitHeight = 568
      object Tab1: TTabSheet
        Caption = #1047#1072#1087#1095#1072#1089#1090#1080
        object DetailsGrid: TDBGrid
          Left = 0
          Top = 0
          Width = 844
          Height = 541
          Align = alClient
          DataSource = BDForm.PartsDS
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
              FieldName = 'PartID'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PartName'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Description'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Price'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantity'
              Width = 90
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
              FieldName = 'Supplier'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Type'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Warehouse'
              Width = 90
              Visible = True
            end>
        end
      end
      object Tab2: TTabSheet
        Caption = #1047#1072#1082#1072#1079#1099
        ImageIndex = 1
        object Splitter4: TSplitter
          Left = 0
          Top = 269
          Width = 844
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 270
        end
        object OrdersGrid: TDBGrid
          Left = 0
          Top = 0
          Width = 844
          Height = 269
          Align = alClient
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
          Width = 844
          Height = 269
          Align = alBottom
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
          Top = 269
          Width = 844
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 0
          ExplicitWidth = 272
        end
        object TransactionsGrid: TDBGrid
          Left = 0
          Top = 0
          Width = 844
          Height = 269
          Align = alClient
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Order_ID'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TransactionDate'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantity'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PaymentType_ID'
              Width = -1
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TransactionType_ID'
              Width = -1
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Status_ID'
              Width = -1
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Employee_ID'
              Width = -1
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Client_ID'
              Width = -1
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TransactionType'
              Width = -1
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Status'
              Width = 110
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
          Top = 272
          Width = 844
          Height = 269
          Align = alBottom
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
              Width = -1
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
              Width = -1
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
