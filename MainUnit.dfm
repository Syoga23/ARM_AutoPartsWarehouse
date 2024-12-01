object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1040#1056#1052' '#1089#1082#1083#1072#1076#1072' '#1072#1074#1090#1086#1079#1072#1087#1095#1072#1089#1090#1077#1081
  ClientHeight = 924
  ClientWidth = 1085
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
    Left = 241
    Top = 228
    Height = 696
    ExplicitLeft = 191
    ExplicitTop = 196
    ExplicitHeight = 721
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 225
    Width = 1085
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
    Height = 696
    Align = alLeft
    TabOrder = 0
    object TreeView1: TTreeView
      Left = 1
      Top = 1
      Width = 239
      Height = 694
      Align = alClient
      Indent = 19
      TabOrder = 0
      OnClick = TreeView1Click
      Items.NodeData = {
        0301000000240000000000000000000000FFFFFFFFFFFFFFFF00000000000000
        0001000000010341006C006C00260000000000000000000000FFFFFFFFFFFFFF
        FF000000000000000000000000010453006F006D006500}
    end
  end
  object GridPanel: TPanel
    Left = 244
    Top = 228
    Width = 841
    Height = 696
    Align = alClient
    TabOrder = 1
    object Splitter3: TSplitter
      Left = 1
      Top = 651
      Width = 839
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 576
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 839
      Height = 650
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PartName'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Description'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Price'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SupplierID'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Article'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TypeID'
          Width = 128
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 654
      Width = 839
      Height = 41
      Align = alBottom
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 1
      ExplicitLeft = 208
      ExplicitTop = 552
      ExplicitWidth = 185
      object DBNavigator1: TDBNavigator
        Left = 598
        Top = 1
        Width = 240
        Height = 39
        DataSource = BDForm.PartsDS
        Align = alRight
        TabOrder = 0
        ExplicitTop = 6
      end
    end
  end
  object DetailsPanel: TPanel
    Left = 0
    Top = 0
    Width = 1085
    Height = 225
    Align = alTop
    TabOrder = 2
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 1083
      Height = 29
      BorderWidth = 1
      Caption = 'ToolBar1'
      EdgeBorders = [ebBottom]
      EdgeInner = esNone
      EdgeOuter = esRaised
      TabOrder = 0
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
      Left = 894
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
      ExplicitLeft = 696
      ExplicitTop = 92
      ExplicitHeight = 41
      object DBImage1: TDBImage
        Left = 1
        Top = 1
        Width = 183
        Height = 184
        Align = alClient
        Stretch = True
        TabOrder = 0
        ExplicitLeft = 80
        ExplicitTop = 36
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
  end
end
