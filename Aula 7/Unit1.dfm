object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 750
  ClientWidth = 1434
  Color = clBtnFace
  Constraints.MaxHeight = 789
  Constraints.MaxWidth = 1450
  Constraints.MinHeight = 789
  Constraints.MinWidth = 1450
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  DesignSize = (
    1434
    750)
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1434
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1434
      113)
    object Label1: TLabel
      Left = 711
      Top = 55
      Width = 84
      Height = 15
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      Caption = '0 de 175 acertos'
    end
    object Pesquica: TEdit
      Left = 272
      Top = 20
      Width = 928
      Height = 29
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Digite um texto para pesqui'#231'ar'
      OnKeyDown = PesquicaKeyDown
    end
  end
  object Panel2: TPanel
    Left = 24
    Top = 95
    Width = 1383
    Height = 626
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 1
  end
end
