object frmBanco: TfrmBanco
  Left = 0
  Top = 30
  BorderStyle = bsSingle
  Caption = 'Consultas ao Banco'
  ClientHeight = 674
  ClientWidth = 1019
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 248
    Width = 761
    Height = 9
  end
  object Bevel2: TBevel
    Left = 512
    Top = 220
    Width = 249
    Height = 25
  end
  object Bevel3: TBevel
    Left = -1
    Top = 208
    Width = 762
    Height = 9
  end
  object mm_: TMemo
    Left = 0
    Top = 0
    Width = 761
    Height = 201
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 259
    Width = 1019
    Height = 415
    Align = alBottom
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object btExecutar: TdxButton
    Left = 16
    Top = 220
    Width = 140
    Cursor = crHandPoint
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    Version = '1.0.2e'
    OnClick = btExecutarClick
    Caption = 'Executar [Ctrl+Alt+E]'
    TabOrder = 2
  end
  object btApagar: TdxButton
    Left = 160
    Top = 220
    Width = 140
    Cursor = crHandPoint
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    Version = '1.0.2e'
    OnClick = btApagarClick
    Caption = 'Apagar  [Ctrl+Alt+A]'
    TabOrder = 3
  end
  object dxButton1: TdxButton
    Left = 304
    Top = 220
    Width = 201
    Cursor = crHandPoint
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'Salvar Dados do Grid  p/ ClipBoard'
    TabOrder = 4
  end
  object DBGrid2: TDBGrid
    Left = 762
    Top = 0
    Width = 257
    Height = 259
    Align = alRight
    Color = 14016445
    DataSource = dsqk_
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid2DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'TABLE_NAME'
        Title.Caption = 'TABELA'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = []
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TABLE_TYPE'
        Title.Caption = 'TIPO'
        Title.Color = clBlack
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = []
        Width = 70
        Visible = True
      end>
  end
  object qy_: TADOQuery
    Parameters = <>
    Left = 408
    Top = 32
  end
  object ds: TDataSource
    DataSet = qy_
    Left = 440
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 64
    object ExecutarSQL1: TMenuItem
      Caption = 'Executar SQL'
      ShortCut = 49221
      OnClick = ExecutarSQL1Click
    end
    object ApagarSQL1: TMenuItem
      Caption = 'Apagar SQL'
      ShortCut = 49217
      OnClick = ApagarSQL1Click
    end
    object AtualizarTabelas1: TMenuItem
      Caption = 'Atualizar Tabelas'
      ShortCut = 16496
      OnClick = AtualizarTabelas1Click
    end
  end
  object qk_: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from information_schema.tables'
      'order by table_name')
    Left = 488
    Top = 32
    object qk_TABLE_CATALOG: TWideStringField
      FieldName = 'TABLE_CATALOG'
      Size = 128
    end
    object qk_TABLE_SCHEMA: TWideStringField
      FieldName = 'TABLE_SCHEMA'
      Size = 128
    end
    object qk_TABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      Size = 128
    end
    object qk_TABLE_TYPE: TStringField
      FieldName = 'TABLE_TYPE'
      Size = 10
    end
  end
  object dsqk_: TDataSource
    DataSet = qk_
    Left = 520
    Top = 32
  end
end
