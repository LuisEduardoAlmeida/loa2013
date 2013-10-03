object frmTrocas: TfrmTrocas
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'Trocas de numeros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 16
    Width = 26
    Height = 13
    Caption = 'velha'
  end
  object Label2: TLabel
    Left = 208
    Top = 16
    Width = 24
    Height = 13
    Caption = 'nova'
  end
  object edVelha: TEdit
    Left = 80
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 336
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Troca'
    TabOrder = 2
    OnClick = Button1Click
  end
  object edNova: TEdit
    Left = 208
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object qyemendas_: TADOQuery
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'novaemenda'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'velhaemenda'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'UPDATE EMENDAS SET NUMEMENDA=:novaemenda WHERE NUMEMENDA=:velhae' +
        'menda')
    Left = 120
    Top = 96
  end
  object qyEv: TADOQuery
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'velhaemenda'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'novaemenda'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'UPDATE EMENDAS_VALOR SET EMENDA=:velhaemenda WHERE EMENDA=:novae' +
        'menda')
    Left = 120
    Top = 128
  end
  object qyEL: TADOQuery
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'velhaemenda'
        Size = -1
        Value = Null
      end
      item
        Name = 'novaemenda'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'UPDATE EMENDAS_VEREADORES SET EMENDA=:velhaemenda WHERE EMENDA=:' +
        'novaemenda')
    Left = 120
    Top = 160
  end
end
