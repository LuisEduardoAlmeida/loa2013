object frmGraficoFonte: TfrmGraficoFonte
  Left = 45
  Top = 114
  Width = 956
  Height = 628
  Caption = 'Grafico por Fonte'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 41
    Width = 940
    Height = 551
    AllowPanning = pmNone
    AllowZoom = False
    AnimatedZoom = True
    AnimatedZoomSteps = 15
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -21
    Title.Font.Name = 'Arial'
    Title.Font.Style = []
    Title.Frame.Width = 2
    Title.Frame.Visible = True
    Title.Text.Strings = (
      '   Gr'#225'fico da Despesa por Fonte   ')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    Legend.TextStyle = ltsRightValue
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    Locked = True
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsPercent
      Marks.Visible = True
      DataSource = qryFonte
      SeriesColor = clRed
      Title = 'Por Fonte'
      XLabelsSource = 'fonte'
      Dark3D = False
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1
      PieValues.Order = loNone
      PieValues.ValueSource = 'valor'
      RotationAngle = 275
    end
  end
  object pn: TPanel
    Left = 0
    Top = 0
    Width = 940
    Height = 41
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object qryFonte: TADOQuery
    Connection = dmtData.adoCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select fonte, sum(valor) as valor from orcamento'
      'group by fonte'
      'order by fonte')
    Left = 96
    Top = 56
  end
  object qyParametro: TADOQuery
    Active = True
    Connection = dmtData.adoCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM parametro')
    Left = 216
    Top = 72
    object qyParametroprefeitura: TStringField
      FieldName = 'prefeitura'
      Size = 255
    end
    object qyParametrobanco: TStringField
      FieldName = 'banco'
      Size = 30
    end
    object qyParametroexercicio: TIntegerField
      FieldName = 'exercicio'
    end
    object qyParametroevolRec: TStringField
      FieldName = 'evolRec'
      Size = 50
    end
    object qyParametroevolDesp: TStringField
      FieldName = 'evolDesp'
      Size = 50
    end
    object qyParametroAcesso: TStringField
      FieldName = 'Acesso'
      FixedChar = True
      Size = 1
    end
    object qyParametroMenssagem: TMemoField
      FieldName = 'Menssagem'
      BlobType = ftMemo
    end
    object qyParametroVersao: TStringField
      FieldName = 'Versao'
      Size = 10
    end
  end
end
