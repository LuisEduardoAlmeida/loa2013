object frmSeaLocali: TfrmSeaLocali
  Left = 204
  Top = 237
  BorderStyle = bsDialog
  Caption = 'Consulta '#224's Localiza'#231#245'es Existentes'
  ClientHeight = 216
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 80
    Top = 196
    Width = 561
    Height = 3
  end
  object BitBtn1: TBitBtn
    Left = 608
    Top = 184
    Width = 75
    Height = 25
    TabOrder = 0
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 5
    Top = 183
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkCancel
  end
  object dbGrid: TDBGrid
    Left = 8
    Top = 8
    Width = 673
    Height = 169
    Color = cl3DLight
    DataSource = sQry
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'locali'
        Title.Alignment = taCenter
        Title.Caption = 'Localiza'#231#227'o'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Descri'#231#227'o'
        Width = 567
        Visible = True
      end>
  end
  object sQry: TDataSource
    DataSet = qry
    Left = 440
    Top = 144
  end
  object qry: TADOQuery
    Active = True
    Connection = dmtData.adoCon
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'programa'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'acao'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM locali'
      ' WHERE programa = :programa AND'
      '               acao = :acao'
      '  ORDER BY locali desc'
      '')
    Left = 408
    Top = 144
  end
  object qy_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'programa'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'acao'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM emendas_locali'
      ' WHERE programa = :programa AND'
      '               acao = :acao'
      '  ORDER BY locali desc'
      '')
    Left = 408
    Top = 88
  end
  object ds_: TDataSource
    DataSet = qy_
    Left = 440
    Top = 88
  end
end
