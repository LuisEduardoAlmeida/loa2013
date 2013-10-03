object FrmTrocaSenha: TFrmTrocaSenha
  Left = 255
  Top = 180
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Senhas'
  ClientHeight = 243
  ClientWidth = 218
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 16
    Width = 40
    Height = 16
    Caption = 'usuario'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 64
    Width = 32
    Height = 16
    Caption = 'senha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 112
    Width = 61
    Height = 16
    Caption = 'nova senha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edusuario: TEdit
    Left = 48
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edsenha: TEdit
    Left = 48
    Top = 80
    Width = 121
    Height = 21
    PasswordChar = '#'
    TabOrder = 1
  end
  object ednovasenha: TEdit
    Left = 48
    Top = 128
    Width = 121
    Height = 21
    PasswordChar = '#'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 48
    Top = 168
    Width = 121
    Height = 25
    Cursor = crHandPoint
    Caption = 'Confirmar'
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
    Left = 48
    Top = 208
    Width = 121
    Height = 25
    Cursor = crHandPoint
    Caption = 'Fechar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object dsqy: TDataSource
    DataSet = qy
    Left = 112
    Top = 160
  end
  object qy: TADOQuery
    Connection = dmtData.Ado_Emendas
    Parameters = <
      item
        Name = 'usuario'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'Senha'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select * from usuarios'
      'where Usuario = :usuario and Senha = :Senha')
    Left = 88
    Top = 160
    object qyCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qyNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object qyUsuario: TStringField
      FieldName = 'Usuario'
    end
    object qySenha: TStringField
      FieldName = 'Senha'
      Size = 10
    end
    object qyPermite: TStringField
      FieldName = 'Permite'
      FixedChar = True
      Size = 1
    end
    object qyPerfil: TStringField
      FieldName = 'Perfil'
      FixedChar = True
      Size = 1
    end
    object qyAltera: TStringField
      FieldName = 'Altera'
      FixedChar = True
      Size = 1
    end
  end
end
