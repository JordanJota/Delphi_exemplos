object Form1: TForm1
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = 'Form1'
  ClientHeight = 652
  ClientWidth = 995
  Color = clBtnFace
  Constraints.MaxHeight = 691
  Constraints.MaxWidth = 1011
  Constraints.MinHeight = 691
  Constraints.MinWidth = 1011
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentBiDiMode = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Edit1: TEdit
    Left = 160
    Top = 0
    Width = 641
    Height = 57
    Alignment = taCenter
    AutoSize = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 816
    Top = 8
    Width = 57
    Height = 40
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
