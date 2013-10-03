object FrmAutoriza: TFrmAutoriza
  Left = 449
  Top = 231
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Autoriza'
  ClientHeight = 209
  ClientWidth = 163
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 161
    Height = 129
  end
  object Label1: TLabel
    Left = 20
    Top = 16
    Width = 121
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'USU'#193'RIO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 20
    Top = 72
    Width = 121
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'SENHA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edUsuario: TEdit
    Left = 20
    Top = 32
    Width = 121
    Height = 24
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object edSenha: TEdit
    Left = 20
    Top = 88
    Width = 121
    Height = 24
    CharCase = ecUpperCase
    PasswordChar = '#'
    TabOrder = 1
  end
  object btConfirmar: TdxButton
    Left = 21
    Top = 136
    Width = 121
    Cursor = crHandPoint
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = btConfirmarClick
    Caption = '&Confirmar'
    TabOrder = 2
  end
  object dxButton2: TdxButton
    Left = 21
    Top = 168
    Width = 121
    Cursor = crHandPoint
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = dxButton2Click
    Caption = '&Sair'
    TabOrder = 3
  end
  object qyParam_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PARAMETROS')
    Left = 112
    Top = 16
    object qyParam_Ano: TStringField
      FieldName = 'Ano'
      Size = 4
    end
    object qyParam_usuario: TStringField
      FieldName = 'usuario'
    end
    object qyParam_senha: TStringField
      FieldName = 'senha'
      Size = 10
    end
  end
  object qyUs_: TADOQuery
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    Left = 112
    Top = 48
    object qyUs_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyUs_Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object qyUs_Usuario: TStringField
      FieldName = 'Usuario'
    end
    object qyUs_Senha: TStringField
      FieldName = 'Senha'
      Size = 10
    end
    object qyUs_Permite: TStringField
      FieldName = 'Permite'
      FixedChar = True
      Size = 1
    end
    object qyUs_Perfil: TStringField
      FieldName = 'Perfil'
      FixedChar = True
      Size = 1
    end
  end
end
