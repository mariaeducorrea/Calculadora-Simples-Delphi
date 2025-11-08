object Calculadora: TCalculadora
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Calculadora'
  ClientHeight = 337
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Priemeirovalor: TLabel
    Left = 26
    Top = 37
    Width = 100
    Height = 21
    Caption = 'Primeiro Valor'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 26
    Top = 109
    Width = 102
    Height = 21
    Caption = 'Segundo Valor'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Resultado: TLabel
    Left = 26
    Top = 249
    Width = 69
    Height = 21
    Caption = 'Resultado'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object txtResultado: TEdit
    Left = 26
    Top = 276
    Width = 121
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btSubtrair: TButton
    Left = 190
    Top = 58
    Width = 50
    Height = 50
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btSubtrairClick
  end
  object btDivisao: TButton
    Left = 256
    Top = 124
    Width = 50
    Height = 50
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btDivisaoClick
  end
  object btSomar: TButton
    Left = 256
    Top = 58
    Width = 50
    Height = 50
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btSomarClick
  end
  object btMultiplicar: TButton
    Left = 190
    Top = 124
    Width = 50
    Height = 50
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btMultiplicarClick
  end
  object opcVisual: TRadioGroup
    Left = 190
    Top = 200
    Width = 116
    Height = 113
    Caption = 'Visual '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Windows'
      'Sky'
      'Glow')
    ParentFont = False
    TabOrder = 5
    OnClick = opcVisualClick
  end
  object txtNum2: TEdit
    Left = 26
    Top = 136
    Width = 121
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object txtNum1: TEdit
    Left = 26
    Top = 64
    Width = 121
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
end
