object SuppliersRef: TSuppliersRef
  Left = 0
  Top = 0
  Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
  ClientHeight = 693
  ClientWidth = 994
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 650
    Width = 994
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 0
    ExplicitWidth = 401
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 650
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 983
    ExplicitHeight = 643
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 992
      Height = 648
      Align = alClient
      DataSource = BDForm.SuppliersDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SupplierID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContactName'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContactPhone'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Country'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Width = 150
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 653
    Width = 994
    Height = 40
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 753
      Top = 1
      Width = 240
      Height = 38
      DataSource = BDForm.SuppliersDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 742
      ExplicitHeight = 39
    end
  end
end
