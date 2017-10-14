object FCalc: TFCalc
  Left = 227
  Top = 154
  HelpType = htKeyword
  BorderStyle = bsSingle
  Caption = 'Calculadora de IVA ***'
  ClientHeight = 238
  ClientWidth = 383
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 21
    Top = 24
    Width = 30
    Height = 13
    Caption = 'Monto'
  end
  object Label2: TLabel
    Left = 175
    Top = 25
    Width = 28
    Height = 13
    Caption = '% IVA'
  end
  object Label3: TLabel
    Left = 56
    Top = 115
    Width = 46
    Height = 13
    Caption = 'SubTotal:'
  end
  object LSubTotal: TLabel
    Left = 274
    Top = 112
    Width = 36
    Height = 20
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LIVA: TLabel
    Left = 274
    Top = 136
    Width = 36
    Height = 20
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 56
    Top = 139
    Width = 20
    Height = 13
    Caption = 'IVA:'
  end
  object LTotal: TLabel
    Left = 274
    Top = 160
    Width = 36
    Height = 20
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 56
    Top = 163
    Width = 34
    Height = 13
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 23
    Top = 107
    Width = 337
    Height = 79
    Shape = bsFrame
  end
  object MEMonto: TMaskEdit
    Left = 63
    Top = 20
    Width = 91
    Height = 21
    BiDiMode = bdLeftToRight
    EditMask = '!99999999999,99;1; '
    MaxLength = 14
    ParentBiDiMode = False
    TabOrder = 0
    Text = '           ,  '
    OnExit = MEMontoExit
  end
  object CB1: TCheckBox
    Left = 126
    Top = 47
    Width = 131
    Height = 17
    Caption = 'IVA incluido en el Total'
    TabOrder = 2
    OnClick = CB1Click
  end
  object MEIVA: TMaskEdit
    Left = 215
    Top = 21
    Width = 35
    Height = 21
    EditMask = '!99,99;1; '
    MaxLength = 5
    TabOrder = 1
    Text = '  ,  '
    OnExit = MEIVAExit
  end
  object BCalcular: TButton
    Left = 266
    Top = 18
    Width = 75
    Height = 29
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BCalcularClick
  end
  object Button1: TButton
    Left = 164
    Top = 200
    Width = 56
    Height = 25
    Cancel = True
    Caption = 'Salir'
    TabOrder = 4
    OnClick = Button1Click
  end
  object BBAcerca: TBitBtn
    Left = 356
    Top = 0
    Width = 27
    Height = 26
    HelpType = htKeyword
    Caption = ' '
    Kind = bkHelp
    NumGlyphs = 2
    TabOrder = 5
    TabStop = False
    OnClick = BBAcercaClick
  end
  object BLimpiar: TButton
    Left = 154
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Limpiar'
    TabOrder = 6
    TabStop = False
    OnClick = BLimpiarClick
  end
  object XPManifest1: TXPManifest
    Left = 8
    Top = 200
  end
end
