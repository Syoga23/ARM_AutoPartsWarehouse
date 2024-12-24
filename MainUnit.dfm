object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1040#1056#1052' '#1089#1082#1083#1072#1076#1072' '#1072#1074#1090#1086#1079#1072#1087#1095#1072#1089#1090#1077#1081
  ClientHeight = 800
  ClientWidth = 1102
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
  OnShow = FormShow
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 241
    Top = 228
    Height = 572
    ExplicitLeft = 191
    ExplicitTop = 196
    ExplicitHeight = 721
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 225
    Width = 1102
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
    Height = 572
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 571
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 239
      Height = 570
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
    Width = 1102
    Height = 225
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1084
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 1100
      Height = 29
      BorderWidth = 1
      Caption = 'ToolBar1'
      EdgeBorders = [ebBottom]
      EdgeInner = esNone
      EdgeOuter = esRaised
      TabOrder = 0
      ExplicitWidth = 1082
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
      Left = 911
      Top = 33
      Width = 185
      Height = 186
      Margins.Left = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 1
      ExplicitLeft = 893
      object DBImage1: TDBImage
        Left = 1
        Top = 1
        Width = 183
        Height = 184
        Align = alClient
        Stretch = True
        TabOrder = 0
      end
    end
    object Edit1: TEdit
      Left = 752
      Top = 48
      Width = 121
      Height = 23
      TabOrder = 2
      TextHint = #1055#1086#1080#1089#1082
    end
  end
  object GridPanel: TPanel
    Left = 244
    Top = 228
    Width = 858
    Height = 572
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 840
    ExplicitHeight = 571
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 856
      Height = 570
      ActivePage = Tab1
      Align = alClient
      MultiLine = True
      TabOrder = 0
      TabPosition = tpBottom
      ExplicitWidth = 842
      object Tab1: TTabSheet
        Caption = #1047#1072#1087#1095#1072#1089#1090#1080
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 848
          Height = 542
          Align = alClient
          DataSource = BDForm.PartsDS
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
              Width = -1
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
              Width = -1
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TypeID'
              Width = -1
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Warehouse_ID'
              Width = -1
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
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 848
          Height = 542
          Align = alClient
          DataSource = BDForm.OrdersDS
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
              FieldName = 'PartID'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UnitPrice'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Status_ID'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Client_ID'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Employee_ID'
              Width = 110
              Visible = True
            end>
        end
      end
      object Tab3: TTabSheet
        Caption = #1048#1089#1090#1086#1088#1080#1103' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1081
        ImageIndex = 2
        object DBGrid4: TDBGrid
          Left = 0
          Top = 0
          Width = 848
          Height = 542
          Align = alClient
          DataSource = BDForm.TransactionsDS
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TransactionDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantity'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Payment_method'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TransactionType_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Status_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Employee_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Client_ID'
              Visible = True
            end>
        end
      end
    end
  end
end
