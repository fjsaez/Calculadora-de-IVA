object FCalc: TFCalc
  Left = 227
  Top = 154
  HelpType = htKeyword
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora de IVA ***'
  ClientHeight = 298
  ClientWidth = 479
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 26
    Top = 30
    Width = 37
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Monto'
  end
  object Label2: TLabel
    Left = 219
    Top = 31
    Width = 36
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = '% IVA'
  end
  object Label3: TLabel
    Left = 70
    Top = 144
    Width = 58
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'SubTotal:'
  end
  object LSubTotal: TLabel
    Left = 345
    Top = 140
    Width = 43
    Height = 25
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LIVA: TLabel
    Left = 345
    Top = 170
    Width = 43
    Height = 25
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 70
    Top = 174
    Width = 24
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'IVA:'
  end
  object LTotal: TLabel
    Left = 345
    Top = 200
    Width = 43
    Height = 25
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 70
    Top = 204
    Width = 41
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 29
    Top = 134
    Width = 421
    Height = 99
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Shape = bsFrame
  end
  object CB1: TCheckBox
    Left = 158
    Top = 59
    Width = 163
    Height = 21
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'IVA incluido en el Total'
    TabOrder = 0
    OnClick = CB1Click
  end
  object BCalcular: TButton
    Left = 333
    Top = 23
    Width = 93
    Height = 36
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BCalcularClick
  end
  object Button1: TButton
    Left = 205
    Top = 250
    Width = 70
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Cancel = True
    Caption = 'Salir'
    TabOrder = 2
    OnClick = Button1Click
  end
  object BBAcerca: TBitBtn
    Left = 445
    Top = 0
    Width = 34
    Height = 33
    HelpType = htKeyword
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = ' '
    Kind = bkHelp
    NumGlyphs = 2
    TabOrder = 3
    TabStop = False
    OnClick = BBAcercaClick
  end
  object BLimpiar: TButton
    Left = 193
    Top = 90
    Width = 93
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Limpiar'
    TabOrder = 4
    TabStop = False
    OnClick = BLimpiarClick
  end
  object NBMonto: TNumberBox
    Left = 71
    Top = 27
    Width = 114
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Alignment = taRightJustify
    CurrencyFormat = nbcfNone
    DisplayFormat = '0.00'
    Mode = nbmCurrency
    MaxLength = 12
    TabOrder = 5
    SpinButtonOptions.ButtonWidth = 21
  end
  object NBIVA: TNumberBox
    Left = 269
    Top = 27
    Width = 44
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Alignment = taRightJustify
    CurrencyFormat = nbcfNone
    DisplayFormat = '0.00'
    Mode = nbmCurrency
    MaxLength = 5
    TabOrder = 6
    SpinButtonOptions.ButtonWidth = 21
  end
end
