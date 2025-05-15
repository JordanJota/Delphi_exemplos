object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 578
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 993
    Height = 250
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 40
      Width = 48
      Height = 15
      Caption = 'Chamin'#233
    end
    object Label2: TLabel
      Left = 6
      Top = 69
      Width = 76
      Height = 15
      Caption = 'Nacionalidade'
    end
    object Label3: TLabel
      Left = 3
      Top = 98
      Width = 76
      Height = 15
      Caption = 'Carregamento'
    end
    object Label4: TLabel
      Left = 16
      Top = 127
      Width = 28
      Height = 15
      Caption = 'Sa'#237'da'
    end
    object Label5: TLabel
      Left = 16
      Top = 156
      Width = 40
      Height = 15
      Caption = 'Destino'
    end
    object GroupBox1: TGroupBox
      Left = 88
      Top = 8
      Width = 161
      Height = 201
      Hint = #13#10
      Caption = 'Navio #1'
      TabOrder = 0
      object ComboBox1: TComboBox
        Left = 3
        Top = 30
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 0
        OnSelect = ComboBoxSelect
      end
      object ComboBox2: TComboBox
        Left = 3
        Top = 59
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 1
        OnSelect = ComboBoxSelect
      end
      object ComboBox3: TComboBox
        Left = 3
        Top = 87
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 2
        OnSelect = ComboBoxSelect
      end
      object ComboBox4: TComboBox
        Left = 3
        Top = 115
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 3
      end
      object ComboBox5: TComboBox
        Left = 3
        Top = 145
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 4
      end
    end
    object GroupBox2: TGroupBox
      Left = 272
      Top = 8
      Width = 161
      Height = 201
      Hint = #13#10
      Caption = 'Navio #2'
      TabOrder = 1
      object ComboBox6: TComboBox
        Left = 3
        Top = 29
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 0
      end
      object ComboBox7: TComboBox
        Left = 3
        Top = 58
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 1
      end
      object ComboBox8: TComboBox
        Left = 3
        Top = 87
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 2
      end
      object ComboBox9: TComboBox
        Left = 3
        Top = 116
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 3
      end
      object ComboBox10: TComboBox
        Left = 3
        Top = 145
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 4
      end
    end
    object GroupBox3: TGroupBox
      Left = 456
      Top = 8
      Width = 161
      Height = 201
      Hint = #13#10
      Caption = 'Navio #3'
      TabOrder = 2
      object ComboBox11: TComboBox
        Left = 3
        Top = 29
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 0
      end
      object ComboBox12: TComboBox
        Left = 3
        Top = 58
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 1
      end
      object ComboBox13: TComboBox
        Left = 3
        Top = 87
        Width = 145
        Height = 22
        Style = csOwnerDrawVariable
        TabOrder = 2
      end
      object ComboBox14: TComboBox
        Left = 3
        Top = 116
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 3
      end
      object ComboBox15: TComboBox
        Left = 3
        Top = 145
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 4
      end
    end
    object GroupBox4: TGroupBox
      Left = 648
      Top = 8
      Width = 161
      Height = 201
      Hint = #13#10
      Caption = 'Navio #4'
      TabOrder = 3
      object ComboBox16: TComboBox
        Left = 3
        Top = 29
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 0
      end
      object ComboBox17: TComboBox
        Left = 3
        Top = 58
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 1
      end
      object ComboBox18: TComboBox
        Left = 3
        Top = 87
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 2
      end
      object ComboBox19: TComboBox
        Left = 3
        Top = 116
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 3
      end
      object ComboBox20: TComboBox
        Left = 3
        Top = 145
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 4
      end
    end
    object GroupBox5: TGroupBox
      Left = 832
      Top = 8
      Width = 161
      Height = 201
      Hint = #13#10
      Caption = 'Navio #5'
      TabOrder = 4
      object ComboBox21: TComboBox
        Left = 3
        Top = 29
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 0
      end
      object ComboBox22: TComboBox
        Left = 3
        Top = 58
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 1
      end
      object ComboBox23: TComboBox
        Left = 3
        Top = 87
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 2
      end
      object ComboBox24: TComboBox
        Left = 3
        Top = 116
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 3
      end
      object ComboBox25: TComboBox
        Left = 3
        Top = 145
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 4
      end
    end
  end
  object Panel2: TPanel
    Left = 21
    Top = 296
    Width = 980
    Height = 273
    TabOrder = 1
    object Label6: TLabel
      Left = 25
      Top = 24
      Width = 175
      Height = 15
      Caption = 'O navio Grego sai '#224's 6 da manh'#227'.'
    end
    object Label7: TLabel
      Left = 25
      Top = 45
      Width = 232
      Height = 15
      Caption = 'O navio que sai '#224's 6 da manh'#227' carrega Caf'#233'.'
    end
    object Label8: TLabel
      Left = 25
      Top = 66
      Width = 203
      Height = 15
      Caption = 'O navio do meio tem a chamin'#233' Preta.'
    end
    object Label9: TLabel
      Left = 25
      Top = 87
      Width = 174
      Height = 15
      Caption = 'O navio Ingl'#234's sai '#224's 9 da manh'#227'.'
    end
    object Label10: TLabel
      Left = 25
      Top = 108
      Width = 195
      Height = 15
      Caption = 'O navio Franc'#234's tem a chamin'#233' Azul.'
    end
    object Label11: TLabel
      Left = 25
      Top = 129
      Width = 312
      Height = 15
      Caption = 'O navio Franc'#234's est'#225' '#224' esquerda do navio que carrega Caf'#233'.'
    end
    object Label12: TLabel
      Left = 25
      Top = 150
      Width = 369
      Height = 30
      Caption = 
        #192' direita do navio que carrega Cacau est'#225' o navio que vai para M' +
        'acau.'#13#10
    end
    object Label13: TLabel
      Left = 25
      Top = 171
      Width = 211
      Height = 30
      Caption = 'O navio Brasileiro est'#225' indo para Manila.'#13#10
    end
    object Label14: TLabel
      Left = 26
      Top = 192
      Width = 416
      Height = 30
      Caption = 
        'O navio que carrega Arroz est'#225' ancorado ao lado do navio com cha' +
        'min'#233' Verde.'#13#10
    end
    object Label15: TLabel
      Left = 514
      Top = 108
      Width = 422
      Height = 30
      Caption = 
        'O navio que sai '#224's 7 da manh'#227' est'#225' ao lado do navio que tem a ch' +
        'amin'#233' Branca.'#13#10
    end
    object Label16: TLabel
      Left = 514
      Top = 129
      Width = 170
      Height = 45
      Caption = 'O navio do canto carrega Milho.'#13#10#13#10
    end
    object Label17: TLabel
      Left = 515
      Top = 149
      Width = 246
      Height = 30
      Caption = 'O navio com chamin'#233' Preta sai '#224's 8 da manh'#227'.'#13#10
    end
    object Label18: TLabel
      Left = 515
      Top = 168
      Width = 430
      Height = 30
      Caption = 
        'O navio que que carrega Milho est'#225' ancorado ao lado do navio que' +
        ' carrega Arroz.'#13#10
    end
    object Label19: TLabel
      Left = 514
      Top = 192
      Width = 268
      Height = 30
      Caption = 'O navio que vai para Hamburgo sai '#224's 6 da manh'#227'.'#13#10
    end
    object Label20: TLabel
      Left = 515
      Top = 24
      Width = 245
      Height = 30
      Caption = 'O navio que vai para Santos sai '#224's 5 da manh'#227'.'#13#10
    end
    object Label21: TLabel
      Left = 515
      Top = 45
      Width = 191
      Height = 15
      Caption = 'O navio Espanhol sai '#224's 7 da manh'#227'.'
    end
    object Label22: TLabel
      Left = 514
      Top = 66
      Width = 319
      Height = 15
      Caption = 'O navio Espanhol est'#225' '#224' direita do navio que vai para Macau.'
    end
    object Label23: TLabel
      Left = 514
      Top = 87
      Width = 286
      Height = 15
      Caption = 'O navio com a chamin'#233' Vermelha vai para Hamburgo.'
    end
  end
end
