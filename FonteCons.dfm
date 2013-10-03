object FrmFonteCons: TFrmFonteCons
  Left = 172
  Top = 125
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Consulta Gerencial - Fonte'
  ClientHeight = 410
  ClientWidth = 595
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 0
    Top = 381
    Width = 595
    Height = 29
    Align = alBottom
  end
  object Bevel2: TBevel
    Left = 8
    Top = 8
    Width = 585
    Height = 369
  end
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 207
    Height = 16
    Caption = 'Fonte 101 com Fun'#231#227'o diferente de 12'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 120
    Width = 207
    Height = 16
    Caption = 'Fonte 102 com Fun'#231#227'o diferente de 10'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 192
    Width = 190
    Height = 16
    Caption = 'Fun'#231#227'o igual a 08 e Esfera igual a 10'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 264
    Width = 190
    Height = 16
    Caption = 'Fun'#231#227'o igual a 10 e Esfera igual a 10'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btFechar: TButton
    Left = 479
    Top = 383
    Width = 113
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btFecharClick
  end
  object btFonte101: TButton
    Left = 16
    Top = 16
    Width = 217
    Height = 25
    Caption = 'Fonte 101'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btFonte101Click
  end
  object btFonte102: TButton
    Left = 16
    Top = 88
    Width = 217
    Height = 25
    Caption = 'Fonte 102'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btFonte102Click
  end
  object Button1: TButton
    Left = 16
    Top = 160
    Width = 217
    Height = 25
    Caption = 'Fun'#231#227'o 08'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 232
    Width = 217
    Height = 25
    Caption = 'Fun'#231#227'o 10'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
end
