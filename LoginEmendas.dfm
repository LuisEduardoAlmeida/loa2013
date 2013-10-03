object FrmLoginEmendas: TFrmLoginEmendas
  Left = 504
  Top = 317
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Login '
  ClientHeight = 193
  ClientWidth = 147
  Color = 4227200
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 18
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 145
    Height = 113
  end
  object Label1: TLabel
    Left = 6
    Top = 10
    Width = 129
    Height = 18
    Alignment = taCenter
    AutoSize = False
    Caption = 'USU'#193'RIO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 6
    Top = 58
    Width = 129
    Height = 18
    Alignment = taCenter
    AutoSize = False
    Caption = 'SENHA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edUsuario: TEdit
    Left = 6
    Top = 26
    Width = 129
    Height = 26
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object EdSenha: TEdit
    Left = 6
    Top = 74
    Width = 129
    Height = 26
    PasswordChar = '#'
    TabOrder = 1
  end
  object btConfirmar: TdxButton
    Left = 7
    Top = 126
    Width = 130
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
    Left = 7
    Top = 158
    Width = 130
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
  object qyEL_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Usuarios')
    Left = 56
    Top = 96
    object qyEL_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyEL_Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object qyEL_Usuario: TStringField
      FieldName = 'Usuario'
    end
    object qyEL_Senha: TStringField
      FieldName = 'Senha'
      Size = 10
    end
    object qyEL_Permite: TStringField
      FieldName = 'Permite'
      FixedChar = True
      Size = 1
    end
    object qyEL_Perfil: TStringField
      FieldName = 'Perfil'
      FixedChar = True
      Size = 1
    end
  end
end
