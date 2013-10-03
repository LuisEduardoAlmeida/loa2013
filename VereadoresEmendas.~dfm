object FrmVereadoresEmendas: TFrmVereadoresEmendas
  Left = 330
  Top = 270
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Vereadores por Emendas'
  ClientHeight = 336
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 96
    Width = 577
    Height = 41
  end
  object Label1: TLabel
    Left = 96
    Top = 48
    Width = 81
    Height = 18
    Caption = 'VEREADOR(A)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 464
    Top = 48
    Width = 49
    Height = 18
    Caption = 'EMENDA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnEmenda: TPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object btFechar: TButton
    Left = 464
    Top = 104
    Width = 108
    Height = 25
    Cursor = crHandPoint
    Caption = 'Fechar [F7]'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btFecharClick
  end
  object edCod: TEdit
    Left = 8
    Top = 64
    Width = 81
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnExit = edCodExit
  end
  object cbPesq: TComboBox
    Left = 96
    Top = 64
    Width = 361
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ItemHeight = 18
    ParentFont = False
    TabOrder = 1
    OnChange = cbPesqChange
    OnExit = cbPesqExit
  end
  object edEmenda: TEdit
    Left = 464
    Top = 64
    Width = 113
    Height = 26
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object btAdicionar: TButton
    Left = 96
    Top = 104
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = 'Adicionar [F3]'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btAdicionarClick
  end
  object btCancelar: TButton
    Left = 208
    Top = 104
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = 'Cancelar [F4]'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btCancelarClick
  end
  object btExcluir: TButton
    Left = 320
    Top = 104
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = 'Excluir [F6]'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btExcluirClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 144
    Width = 569
    Height = 185
    DataSource = dsVE_
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Emenda'
        Title.Color = -1
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vereador'
        Title.Color = -1
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 418
        Visible = True
      end>
  end
  object dsVE_: TDataSource
    DataSet = qyVE_
    Left = 40
  end
  object qyVE_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EMENDA'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM VEREADORES_EMENDAS'
      'WHERE EMENDA = :EMENDA')
    Left = 8
    object qyVE_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyVE_Codigo_Vereador: TIntegerField
      FieldName = 'Codigo_Vereador'
    end
    object qyVE_Emenda: TStringField
      FieldName = 'Emenda'
    end
    object qyVE_Colocacao: TIntegerField
      FieldName = 'Colocacao'
    end
    object qyVE_Vereador: TStringField
      FieldKind = fkLookup
      FieldName = 'Vereador'
      LookupDataSet = qyVereadores_
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Codigo_Vereador'
      Size = 50
      Lookup = True
    end
  end
  object qyVereadores_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM vereadores'
      'ORDER BY NOME'
      '')
    Left = 80
    object qyVereadores_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyVereadores_Nome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object qyVereadores_Partido_Sigla: TStringField
      FieldName = 'Partido_Sigla'
      Size = 6
    end
    object qyVereadores_Condicao: TStringField
      FieldName = 'Condicao'
      FixedChar = True
      Size = 2
    end
    object qyVereadores_Comentario: TStringField
      FieldName = 'Comentario'
      Size = 250
    end
    object qyVereadores_DtCadastro: TDateTimeField
      FieldName = 'DtCadastro'
    end
  end
end
