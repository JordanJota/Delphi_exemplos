object Form1: TForm1
  AlignWithMargins = True
  Left = 0
  Top = 0
  Anchors = [akLeft, akRight, akBottom]
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  DesignSize = (
    800
    442)
  TextHeight = 15
  object Panel1: TPanel
    Left = 29
    Top = 24
    Width = 153
    Height = 370
    Anchors = [akLeft, akBottom]
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 146
      Width = 59
      Height = 15
      Caption = 'Aniversario'
    end
    object Label2: TLabel
      Left = 1
      Top = 196
      Width = 83
      Height = 15
      Caption = 'Tipo de Usuario'
      Color = clWhite
      ParentColor = False
    end
    object Label3: TLabel
      Left = 4
      Top = 98
      Width = 45
      Height = 15
      Caption = 'Telefone'
    end
    object Label4: TLabel
      Left = 4
      Top = 49
      Width = 29
      Height = 15
      Caption = 'Email'
    end
    object Label5: TLabel
      Left = 1
      Top = 1
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
    object Label6: TLabel
      Left = 1
      Top = 244
      Width = 32
      Height = 15
      Caption = 'Senha'
      Color = clWhite
      ParentColor = False
    end
    object Label7: TLabel
      Left = 1
      Top = 294
      Width = 89
      Height = 15
      Caption = 'Confirmar Senha'
      Color = clWhite
      ParentColor = False
    end
    object Button1: TButton
      Left = 4
      Top = 344
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Tipo: TComboBox
      Left = 1
      Top = 223
      Width = 141
      Height = 23
      Style = csDropDownList
      TabOrder = 1
      Items.Strings = (
        'Normal'
        'Administrador')
    end
    object Data: TDateTimePicker
      AlignWithMargins = True
      Left = 4
      Top = 167
      Width = 145
      Height = 23
      Date = 45743.000000000000000000
      Time = 0.829451053243246900
      TabOrder = 2
    end
    object Nome: TEdit
      Left = 4
      Top = 20
      Width = 145
      Height = 23
      TabOrder = 3
      TextHint = 'Nome'
    end
    object Email: TEdit
      Left = 4
      Top = 69
      Width = 145
      Height = 23
      TabOrder = 4
      TextHint = 'Email'#13#10
    end
    object SenhaConfirmar: TEdit
      Left = 1
      Top = 315
      Width = 145
      Height = 23
      PasswordChar = '*'
      TabOrder = 5
      TextHint = 'Senha'
    end
    object Senha: TEdit
      Left = 1
      Top = 265
      Width = 145
      Height = 23
      PasswordChar = '*'
      TabOrder = 6
      TextHint = 'Senha'
    end
    object Telefone: TMaskEdit
      Left = 4
      Top = 118
      Width = 145
      Height = 23
      EditMask = '!\(999\)000-0000;1;_'
      MaxLength = 13
      TabOrder = 7
      Text = '(   )   -    '
      TextHint = #13#10
    end
  end
  object Tabela: TStringGrid
    Left = 245
    Top = 8
    Width = 547
    Height = 417
    Anchors = [akTop, akRight, akBottom]
    ColCount = 6
    FixedCols = 0
    RowCount = 100
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
    TabOrder = 1
    ExplicitLeft = 252
    ColWidths = (
      49
      85
      81
      85
      98
      121)
  end
end
