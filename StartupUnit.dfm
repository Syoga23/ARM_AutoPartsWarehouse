object StartupForm: TStartupForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1040#1056#1052': '#1051#1086#1075#1080#1085
  ClientHeight = 85
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 85
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 517
    ExplicitHeight = 84
    object LoginText: TLabel
      Left = 24
      Top = 5
      Width = 192
      Height = 21
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1089#1077#1088#1074#1077#1088#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      GlowSize = 1
      ParentFont = False
    end
    object LoginEdit: TEdit
      Left = 24
      Top = 32
      Width = 370
      Height = 30
      AutoSelect = False
      AutoSize = False
      TabOrder = 0
      TextHint = 'PC\SQLSERVER2008'
    end
    object LoginButton: TButton
      Left = 408
      Top = 32
      Width = 81
      Height = 30
      Caption = #1044#1072#1083#1077#1077
      TabOrder = 1
      OnClick = LoginButtonClick
    end
  end
end
