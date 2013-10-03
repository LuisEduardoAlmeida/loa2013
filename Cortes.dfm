object frmCortes: TfrmCortes
  Left = 222
  Top = 200
  BorderStyle = bsSingle
  Caption = 'Cortes por Elemento'
  ClientHeight = 463
  ClientWidth = 979
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel4: TBevel
    Left = 661
    Top = 357
    Width = 313
    Height = 50
  end
  object Bevel3: TBevel
    Left = 663
    Top = 184
    Width = 313
    Height = 169
  end
  object Bevel2: TBevel
    Left = 663
    Top = 108
    Width = 313
    Height = 69
  end
  object Bevel1: TBevel
    Left = 661
    Top = 4
    Width = 313
    Height = 97
  end
  object Label1: TLabel
    Left = 680
    Top = 8
    Width = 57
    Height = 13
    Caption = 'Elemento '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 712
    Top = 240
    Width = 83
    Height = 13
    Caption = 'Percentual (%)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 864
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Fonte'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 920
    Top = 8
    Width = 41
    Height = 13
    Caption = 'IndUso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbValorElemento: TLabel
    Left = 664
    Top = 371
    Width = 305
    Height = 20
    Alignment = taCenter
    AutoSize = False
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 792
    Top = 8
    Width = 35
    Height = 13
    Caption = 'Unorc'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 800
    Top = 48
    Width = 30
    Height = 13
    Caption = 'A'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 680
    Top = 48
    Width = 54
    Height = 13
    Caption = 'Programa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel5: TBevel
    Left = 664
    Top = 416
    Width = 312
    Height = 41
  end
  object Label8: TLabel
    Left = 896
    Top = 240
    Width = 30
    Height = 13
    Caption = 'Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edElemento: TEdit
    Left = 680
    Top = 24
    Width = 105
    Height = 21
    TabOrder = 0
  end
  object edPercent: TRxCalcEdit
    Left = 696
    Top = 256
    Width = 100
    Height = 21
    AutoSize = False
    NumGlyphs = 2
    TabOrder = 8
  end
  object btConfirmar: TButton
    Left = 736
    Top = 280
    Width = 169
    Height = 25
    Cursor = crHandPoint
    Caption = '&Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = btConfirmarClick
  end
  object btFechar: TButton
    Left = 856
    Top = 424
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = btFecharClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 657
    Height = 463
    Align = alLeft
    DataSource = dsExecOrc_
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Unorc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unorcd'
        Width = 166
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Programa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Acao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Localis'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Eldespesa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IndUso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fonte'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Width = 102
        Visible = True
      end>
  end
  object edFonte: TEdit
    Left = 864
    Top = 24
    Width = 49
    Height = 21
    TabOrder = 2
  end
  object edIndUso: TEdit
    Left = 920
    Top = 24
    Width = 25
    Height = 21
    TabOrder = 3
  end
  object btLeitura: TButton
    Left = 736
    Top = 112
    Width = 169
    Height = 25
    Cursor = crHandPoint
    Caption = '&Leitura de Dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btLeituraClick
  end
  object btLimpar: TButton
    Left = 736
    Top = 144
    Width = 169
    Height = 25
    Caption = '&Limpar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btLimparClick
  end
  object edUnorc: TEdit
    Left = 789
    Top = 24
    Width = 71
    Height = 21
    TabOrder = 1
  end
  object edprograma: TEdit
    Left = 680
    Top = 64
    Width = 105
    Height = 21
    TabOrder = 4
  end
  object edacao: TEdit
    Left = 797
    Top = 64
    Width = 71
    Height = 21
    TabOrder = 5
  end
  object edvaldes: TRxCalcEdit
    Left = 832
    Top = 256
    Width = 100
    Height = 21
    AutoSize = False
    NumGlyphs = 2
    TabOrder = 9
  end
  object rg_: TRadioGroup
    Left = 672
    Top = 192
    Width = 297
    Height = 41
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Percentual'
      'Valor')
    TabOrder = 13
  end
  object Button1: TButton
    Left = 736
    Top = 312
    Width = 169
    Height = 25
    Caption = 'Simular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = Button1Click
  end
  object dsExecOrc_: TDataSource
    DataSet = qyExecOrc_
    Left = 240
    Top = 24
  end
  object qyExecOrc_: TADOQuery
    Connection = dmtData.adoCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Eldespesa, Fonte, IndUso, Unorc, Unorcd, Programa, Acao, ' +
        'Localis,locali,'
      '               descricao, Valor'
      ' FROM ORCAMENTO')
    Left = 208
    Top = 24
    object qyExecOrc_Eldespesa: TStringField
      FieldName = 'Eldespesa'
      Size = 6
    end
    object qyExecOrc_Fonte: TStringField
      FieldName = 'Fonte'
      Size = 3
    end
    object qyExecOrc_IndUso: TStringField
      FieldName = 'IndUso'
      Size = 1
    end
    object qyExecOrc_Unorc: TStringField
      FieldName = 'Unorc'
      Size = 5
    end
    object qyExecOrc_Unorcd: TStringField
      FieldName = 'Unorcd'
      Size = 255
    end
    object qyExecOrc_Programa: TStringField
      FieldName = 'Programa'
      Size = 4
    end
    object qyExecOrc_Acao: TStringField
      FieldName = 'Acao'
      Size = 4
    end
    object qyExecOrc_Localis: TStringField
      FieldName = 'Localis'
      Size = 4
    end
    object qyExecOrc_Valor: TBCDField
      FieldName = 'Valor'
      DisplayFormat = '###,###,###'
      Precision = 19
    end
    object qyExecOrc_locali: TIntegerField
      FieldName = 'locali'
    end
    object qyExecOrc_descricao: TStringField
      FieldName = 'descricao'
      Size = 255
    end
  end
  object qyLocalizacao_: TADOQuery
    Connection = dmtData.adoCon
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LOCALI'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ELDESPESA'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end
      item
        Name = 'FONTE'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'INDUSO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM DET'
      'WHERE LOCALI = :LOCALI AND ELDESPESA = :ELDESPESA '
      '               AND FONTE = :FONTE AND INDUSO = :INDUSO')
    Left = 208
    Top = 56
    object qyLocalizacao_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyLocalizacao_locali: TIntegerField
      FieldName = 'locali'
    end
    object qyLocalizacao_elDespesa: TStringField
      FieldName = 'elDespesa'
      Size = 6
    end
    object qyLocalizacao_indUso: TStringField
      FieldName = 'indUso'
      Size = 1
    end
    object qyLocalizacao_fonte: TStringField
      FieldName = 'fonte'
      Size = 3
    end
    object qyLocalizacao_valor: TBCDField
      FieldName = 'valor'
      Precision = 19
    end
  end
  object qy_: TADOQuery
    Connection = dmtData.adoCon
    Parameters = <>
    SQL.Strings = (
      'SELECT SUM(VALOR) AS TOTAL_ELEMENTO FROM ORCAMENTO')
    Left = 240
    Top = 56
    object qy_TOTAL_ELEMENTO: TBCDField
      FieldName = 'TOTAL_ELEMENTO'
      ReadOnly = True
      Precision = 19
    end
  end
  object qyExcl_: TADOQuery
    Connection = dmtData.adoCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Eldespesa, Fonte, IndUso, Unorc, Unorcd, Programa, Acao, ' +
        'Localis,locali,'
      '               descricao, Valor'
      ' FROM ORCAMENTO')
    Left = 208
    Top = 104
    object qyExcl_Eldespesa: TStringField
      FieldName = 'Eldespesa'
      Size = 6
    end
    object qyExcl_Fonte: TStringField
      FieldName = 'Fonte'
      Size = 3
    end
    object qyExcl_IndUso: TStringField
      FieldName = 'IndUso'
      Size = 1
    end
    object qyExcl_Unorc: TStringField
      FieldName = 'Unorc'
      Size = 5
    end
    object qyExcl_Unorcd: TStringField
      FieldName = 'Unorcd'
      Size = 255
    end
    object qyExcl_Programa: TStringField
      FieldName = 'Programa'
      Size = 4
    end
    object qyExcl_Acao: TStringField
      FieldName = 'Acao'
      Size = 4
    end
    object qyExcl_Localis: TStringField
      FieldName = 'Localis'
      Size = 4
    end
    object qyExcl_locali: TIntegerField
      FieldName = 'locali'
    end
    object qyExcl_descricao: TStringField
      FieldName = 'descricao'
      Size = 255
    end
    object qyExcl_Valor: TBCDField
      FieldName = 'Valor'
      Precision = 19
    end
  end
  object dsExcl_: TDataSource
    DataSet = qyExcl_
    Left = 240
    Top = 104
  end
end