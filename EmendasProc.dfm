object frmEmendasProc: TfrmEmendasProc
  Left = 132
  Top = 239
  BorderStyle = bsSingle
  Caption = 'Processamento de Emendas'
  ClientHeight = 186
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object gbBotom: TGroupBox
    Left = 0
    Top = 138
    Width = 718
    Height = 48
    Align = alBottom
    TabOrder = 0
    object btSair: TButton
      Left = 616
      Top = 16
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btSairClick
    end
    object btConverte: TButton
      Left = 8
      Top = 16
      Width = 281
      Height = 25
      Cursor = crHandPoint
      Caption = 'Convers'#227'o de Dados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btConverteClick
    end
  end
  object qyEmendas_: TADOQuery
    Connection = dmtData.Ado_Emendas
    Parameters = <>
    SQL.Strings = (
      'select * from Emendas'
      'where status = '#39'1'#39
      'order by numemenda')
    Left = 408
    Top = 16
    object qyEmendas_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyEmendas_NumEmenda: TStringField
      FieldName = 'NumEmenda'
      FixedChar = True
      Size = 10
    end
    object qyEmendas_Votacao: TStringField
      FieldName = 'Votacao'
      FixedChar = True
      Size = 1
    end
    object qyEmendas_Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object qyEmendas_Tipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object qyEmendas_Texto: TMemoField
      FieldName = 'Texto'
      BlobType = ftMemo
    end
    object qyEmendas_Unorc: TStringField
      FieldName = 'Unorc'
      FixedChar = True
      Size = 5
    end
    object qyEmendas_Funcao: TStringField
      FieldName = 'Funcao'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_SubFuncao: TStringField
      FieldName = 'SubFuncao'
      FixedChar = True
      Size = 3
    end
    object qyEmendas_Programa: TStringField
      FieldName = 'Programa'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_Acao: TStringField
      FieldName = 'Acao'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_Locali: TIntegerField
      FieldName = 'Locali'
    end
    object qyEmendas_Esfera: TStringField
      FieldName = 'Esfera'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Regional: TStringField
      FieldName = 'Regional'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_MetaFisica: TIntegerField
      FieldName = 'MetaFisica'
    end
    object qyEmendas_Produto: TStringField
      FieldName = 'Produto'
      Size = 80
    end
    object qyEmendas_aUnorc: TStringField
      FieldName = 'aUnorc'
      FixedChar = True
      Size = 5
    end
    object qyEmendas_aFuncao: TStringField
      FieldName = 'aFuncao'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_aSubFuncao: TStringField
      FieldName = 'aSubFuncao'
      FixedChar = True
      Size = 3
    end
    object qyEmendas_aPrograma: TStringField
      FieldName = 'aPrograma'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_aAcao: TStringField
      FieldName = 'aAcao'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_aLocali: TStringField
      FieldName = 'aLocali'
      Size = 4
    end
    object qyEmendas_aGrupo: TStringField
      FieldName = 'aGrupo'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_aEsfera: TStringField
      FieldName = 'aEsfera'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_aRegional: TStringField
      FieldName = 'aRegional'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_aMetaFisica: TIntegerField
      FieldName = 'aMetaFisica'
    end
    object qyEmendas_aGrupoDesp: TStringField
      FieldName = 'aGrupoDesp'
      Size = 2
    end
    object qyEmendas_rUnorc: TStringField
      FieldName = 'rUnorc'
      FixedChar = True
      Size = 5
    end
    object qyEmendas_rFuncao: TStringField
      FieldName = 'rFuncao'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_rSubFuncao: TStringField
      FieldName = 'rSubFuncao'
      FixedChar = True
      Size = 3
    end
    object qyEmendas_rPrograma: TStringField
      FieldName = 'rPrograma'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_rAcao: TStringField
      FieldName = 'rAcao'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_rLocali: TStringField
      FieldName = 'rLocali'
      Size = 4
    end
    object qyEmendas_rGrupo: TStringField
      FieldName = 'rGrupo'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_rEsfera: TStringField
      FieldName = 'rEsfera'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_rRegional: TStringField
      FieldName = 'rRegional'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_rMetaFisica: TIntegerField
      FieldName = 'rMetaFisica'
    end
    object qyEmendas_rGrupoDesp: TStringField
      FieldName = 'rGrupoDesp'
      Size = 2
    end
  end
  object qyEmendas_Valor_: TADOQuery
    Connection = dmtData.Ado_Emendas
    Parameters = <
      item
        Name = 'emenda'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * from emendas_valor'
      'where emenda = :emenda')
    Left = 408
    Top = 56
    object qyEmendas_Valor_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyEmendas_Valor_Emenda: TStringField
      FieldName = 'Emenda'
      FixedChar = True
      Size = 10
    end
    object qyEmendas_Valor_relemento: TStringField
      FieldName = 'relemento'
      FixedChar = True
      Size = 6
    end
    object qyEmendas_Valor_rIndUso: TStringField
      FieldName = 'rIndUso'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Valor_rFonte: TStringField
      FieldName = 'rFonte'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_Valor_rValor: TBCDField
      FieldName = 'rValor'
      Precision = 19
    end
    object qyEmendas_Valor_aelemento: TStringField
      FieldName = 'aelemento'
      FixedChar = True
      Size = 6
    end
    object qyEmendas_Valor_aIndUso: TStringField
      FieldName = 'aIndUso'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Valor_aFonte: TStringField
      FieldName = 'aFonte'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_Valor_aValor: TBCDField
      FieldName = 'aValor'
      Precision = 19
    end
    object qyEmendas_Valor_Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
  end
  object qyEmendas_Locali_: TADOQuery
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'emenda'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select * from emendas_locali'
      'where emenda = :emenda')
    Left = 408
    Top = 96
    object qyEmendas_Locali_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyEmendas_Locali_Emenda: TStringField
      FieldName = 'Emenda'
    end
    object qyEmendas_Locali_Esfera: TStringField
      FieldName = 'Esfera'
      Size = 2
    end
    object qyEmendas_Locali_unorc: TStringField
      FieldName = 'unorc'
      Size = 5
    end
    object qyEmendas_Locali_funcao: TStringField
      FieldName = 'funcao'
      Size = 2
    end
    object qyEmendas_Locali_subFuncao: TStringField
      FieldName = 'subFuncao'
      Size = 3
    end
    object qyEmendas_Locali_programa: TStringField
      FieldName = 'programa'
      Size = 4
    end
    object qyEmendas_Locali_acao: TStringField
      FieldName = 'acao'
      Size = 4
    end
    object qyEmendas_Locali_locali: TStringField
      FieldName = 'locali'
      Size = 4
    end
    object qyEmendas_Locali_regional: TStringField
      FieldName = 'regional'
      Size = 1
    end
    object qyEmendas_Locali_descricao: TStringField
      FieldName = 'descricao'
      Size = 255
    end
    object qyEmendas_Locali_metaFisica: TBCDField
      FieldName = 'metaFisica'
      Precision = 19
    end
  end
  object qyLocali_: TADOQuery
    Active = True
    Connection = dmtData.adoCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Locali')
    Left = 504
    Top = 16
    object qyLocali_CODIGO: TAutoIncField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object qyLocali_esfera: TStringField
      FieldName = 'esfera'
      Size = 2
    end
    object qyLocali_unorc: TStringField
      FieldName = 'unorc'
      Size = 5
    end
    object qyLocali_funcao: TStringField
      FieldName = 'funcao'
      Size = 2
    end
    object qyLocali_subFuncao: TStringField
      FieldName = 'subFuncao'
      Size = 3
    end
    object qyLocali_programa: TStringField
      FieldName = 'programa'
      Size = 4
    end
    object qyLocali_acao: TStringField
      FieldName = 'acao'
      Size = 4
    end
    object qyLocali_locali: TStringField
      FieldName = 'locali'
      Size = 4
    end
    object qyLocali_regional: TStringField
      FieldName = 'regional'
      Size = 1
    end
    object qyLocali_descricao: TStringField
      FieldName = 'descricao'
      Size = 255
    end
    object qyLocali_metaFisica: TBCDField
      FieldName = 'metaFisica'
      Precision = 19
    end
  end
  object qyDet_: TADOQuery
    Active = True
    Connection = dmtData.adoCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Det')
    Left = 504
    Top = 56
    object qyDet_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyDet_locali: TIntegerField
      FieldName = 'locali'
    end
    object qyDet_elDespesa: TStringField
      FieldName = 'elDespesa'
      Size = 6
    end
    object qyDet_indUso: TStringField
      FieldName = 'indUso'
      Size = 1
    end
    object qyDet_fonte: TStringField
      FieldName = 'fonte'
      Size = 3
    end
    object qyDet_valor: TBCDField
      FieldName = 'valor'
      Precision = 19
    end
  end
end
