object Form1: TForm1
  AlignWithMargins = True
  Left = 0
  Top = 0
  Anchors = [akLeft, akRight, akBottom]
  Caption = 'Form1'
  ClientHeight = 391
  ClientWidth = 784
  Color = clBtnFace
  Constraints.MaxHeight = 600
  Constraints.MaxWidth = 900
  Constraints.MinHeight = 430
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    784
    391)
  TextHeight = 15
  object Panel1: TPanel
    Left = 8
    Top = 6
    Width = 175
    Height = 370
    Anchors = [akLeft, akRight]
    TabOrder = 0
    ExplicitTop = 40
    ExplicitWidth = 142
    DesignSize = (
      175
      370)
    object Label1: TLabel
      Left = 1
      Top = 146
      Width = 59
      Height = 15
      AutoSize = False
      Caption = 'Aniversario'
    end
    object Label2: TLabel
      Left = 1
      Top = 196
      Width = 83
      Height = 15
      AutoSize = False
      Caption = 'Tipo de Usuario'
      Color = clWhite
      ParentColor = False
    end
    object Label3: TLabel
      Left = 4
      Top = 98
      Width = 45
      Height = 15
      AutoSize = False
      Caption = 'Telefone'
    end
    object Label4: TLabel
      Left = 4
      Top = 49
      Width = 29
      Height = 15
      AutoSize = False
      Caption = 'Email'
    end
    object Label5: TLabel
      Left = 1
      Top = 1
      Width = 33
      Height = 15
      AutoSize = False
      Caption = 'Nome'
    end
    object Label6: TLabel
      Left = 1
      Top = 244
      Width = 32
      Height = 15
      AutoSize = False
      Caption = 'Senha'
      Color = clWhite
      ParentColor = False
    end
    object Label7: TLabel
      Left = 1
      Top = 294
      Width = 89
      Height = 15
      AutoSize = False
      Caption = 'Confirmar Senha'
      Color = clWhite
      ParentColor = False
    end
    object Button1: TButton
      Left = 46
      Top = 344
      Width = 75
      Height = 25
      Anchors = []
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 135
    end
    object Tipo: TComboBox
      Left = 1
      Top = 223
      Width = 169
      Height = 23
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      Items.Strings = (
        'Normal'
        'Administrador')
      ExplicitWidth = 136
    end
    object Data: TDateTimePicker
      AlignWithMargins = True
      Left = 4
      Top = 167
      Width = 167
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      Date = 45743.000000000000000000
      Time = 0.829451053243246900
      TabOrder = 2
      ExplicitWidth = 145
    end
    object Nome: TEdit
      Left = 4
      Top = 20
      Width = 167
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      TabOrder = 3
      TextHint = 'Nome'
      ExplicitWidth = 145
    end
    object Email: TEdit
      Left = 4
      Top = 69
      Width = 167
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      TabOrder = 4
      TextHint = 'Email'#13#10
      ExplicitWidth = 145
    end
    object SenhaConfirmar: TEdit
      Left = 1
      Top = 315
      Width = 167
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      MaxLength = 6
      PasswordChar = '*'
      TabOrder = 5
      TextHint = 'Senha'
      ExplicitWidth = 145
    end
    object Senha: TEdit
      Left = 1
      Top = 265
      Width = 167
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      MaxLength = 5
      PasswordChar = '*'
      TabOrder = 6
      TextHint = 'Senha'
      ExplicitWidth = 145
    end
    object Telefone: TMaskEdit
      Left = 4
      Top = 118
      Width = 167
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      EditMask = '!\(999\)000-0000;1;_'
      MaxLength = 13
      TabOrder = 7
      Text = '(   )   -    '
      TextHint = #13#10
      ExplicitWidth = 145
    end
  end
  object Tabela: TStringGrid
    Left = 205
    Top = 8
    Width = 547
    Height = 366
    Anchors = [akTop, akRight, akBottom]
    ColCount = 6
    FixedCols = 0
    RowCount = 100
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
    TabOrder = 1
    ExplicitLeft = 246
    ExplicitHeight = 436
    ColWidths = (
      49
      85
      81
      85
      98
      121)
  end
end
