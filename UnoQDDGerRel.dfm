object frmUnoQDDGerRel: TfrmUnoQDDGerRel
  Left = -51
  Top = 107
  Width = 1024
  Height = 662
  Caption = 'Modelo de Impress'#227'o de Relat'#243'rio do Or'#231'amento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object report: TQuickRep
    Left = 10
    Top = 19
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qryEsfera
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      200
      2100
      250
      2970
      180
      180
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = False
    SnapToGrid = True
    Units = Native
    Zoom = 100
    object ColumnHeaderBand1: TQRBand
      Left = 68
      Top = 94
      Width = 987
      Height = 115
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = ColumnHeaderBand1AfterPrint
      AlignToBottom = False
      BeforePrint = ColumnHeaderBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        304.270833333333
        2611.4375)
      BandType = rbColumnHeader
      object lblEsfera: TQRLabel
        Left = 0
        Top = 48
        Width = 284
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          0
          127
          751.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QUADRO DE DETALHAMENTO DA DESPESA - GERENCIAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 0
        Top = 0
        Width = 53
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          0
          0
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryParametro
        DataField = 'prefeitura'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText19: TQRDBText
        Left = 0
        Top = 13
        Width = 35
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          0
          34.3958333333333
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmUnoDialGerRel.qry
        DataField = 'orgaoS'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText20: TQRDBText
        Left = 35
        Top = 13
        Width = 37
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          92.6041666666667
          34.3958333333333
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmUnoDialGerRel.qry
        DataField = 'orgaoD'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 0
        Top = 24
        Width = 34
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          0
          63.5
          89.9583333333333)
        Alignment = taLeftJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmUnoDialGerRel.qry
        DataField = 'codigo'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 35
        Top = 24
        Width = 50
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          92.6041666666667
          63.5
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmUnoDialGerRel.qry
        DataField = 'descricao'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 0
        Top = 64
        Width = 569
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          0
          169.333333333333
          1505.47916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'esferaD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape11: TQRShape
        Left = 0
        Top = 84
        Width = 987
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          0
          222.25
          2611.4375)
        Shape = qrsHorLine
      end
      object QRLabel4: TQRLabel
        Left = 0
        Top = 93
        Width = 79
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          0
          246.0625
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ESPECIFICA'#199#195'O'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape21: TQRShape
        Left = 0
        Top = 108
        Width = 987
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          0
          285.75
          2611.4375)
        Shape = qrsHorLine
      end
      object QRLabel51: TQRLabel
        Left = 857
        Top = 60
        Width = 130
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2267.47916666667
          158.75
          343.958333333333)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'RECURSOS DE TODAS AS FONTES'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel61: TQRLabel
        Left = 955
        Top = 68
        Width = 32
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2526.77083333333
          179.916666666667
          84.6666666666667)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'R$ 1,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel5: TQRLabel
        Left = 718
        Top = 93
        Width = 54
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1899.70833333333
          246.0625
          142.875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ELEMENTO'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 780
        Top = 93
        Width = 12
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2063.75
          246.0625
          31.75)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'IU'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 801
        Top = 93
        Width = 13
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2119.3125
          246.0625
          34.3958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FT'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 865
        Top = 93
        Width = 34
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2288.64583333333
          246.0625
          89.9583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VALOR'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 954
        Top = 93
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2524.125
          246.0625
          87.3125)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'TOTAL'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object lbano: TQRLabel
        Left = 292
        Top = 48
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          772.583333333333
          127
          55.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ano'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 954
        Top = 93
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2524.125
          246.0625
          87.3125)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'TOTAL'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 866
        Top = 16
        Width = 121
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2291.29166666667
          42.3333333333333
          320.145833333333)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsItalic]
        ParentFont = False
        Text = 'Impresso em :  '
        Transparent = False
        FontSize = 7
      end
    end
    object sdtPrograma: TQRSubDetail
      Left = 68
      Top = 210
      Width = 987
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        47.625
        2611.4375)
      Master = report
      DataSet = qryProg
      FooterBand = footerBand
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText2: TQRDBText
        Left = 0
        Top = 4
        Width = 52
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          0
          10.5833333333333
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryProg
        DataField = 'programa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object rdbCatOutras: TQRDBText
        Left = 912
        Top = 4
        Width = 75
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2413
          10.5833333333333
          198.4375)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryProg
        DataField = 'total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        Mask = '#,###,###,###'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 32
        Top = 4
        Width = 689
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          84.6666666666667
          10.5833333333333
          1822.97916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qryProg
        DataField = 'programaD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
    object footerBand: TQRBand
      Left = 68
      Top = 302
      Width = 987
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        2611.4375)
      BandType = rbGroupFooter
      object QRShape1: TQRShape
        Left = 0
        Top = 4
        Width = 987
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          0
          10.5833333333333
          2611.4375)
        Shape = qrsHorLine
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 27
        Width = 987
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          0
          71.4375
          2611.4375)
        Shape = qrsHorLine
      end
      object QRLabel6: TQRLabel
        Left = 714
        Top = 11
        Width = 190
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1889.125
          29.1041666666667
          502.708333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TOTAL DA UNIDADE OR'#199'AMENT'#193'RIA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 912
        Top = 11
        Width = 75
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2413
          29.1041666666667
          198.4375)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        Mask = '#,###,###,###'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object ssdtAcao: TQRSubDetail
      Left = 68
      Top = 228
      Width = 987
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        47.625
        2611.4375)
      Master = sdtPrograma
      DataSet = qryAcao
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText8: TQRDBText
        Left = 32
        Top = 2
        Width = 52
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          84.6666666666667
          5.29166666666667
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryAcao
        DataField = 'funcional'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 128
        Top = 2
        Width = 593
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          338.666666666667
          5.29166666666667
          1568.97916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qryAcao
        DataField = 'acaoD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 912
        Top = 2
        Width = 75
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2413
          5.29166666666667
          198.4375)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryAcao
        DataField = 'total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        Mask = '#,###,###,###'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object ChildBand1: TQRChildBand
      Left = 68
      Top = 246
      Width = 987
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = ChildBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.0416666666667
        2611.4375)
      ParentBand = ssdtAcao
      object lblProduto: TQRLabel
        Left = 128
        Top = 0
        Width = 593
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          338.666666666667
          0
          1568.97916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'lblProduto'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    object sdtLocal: TQRSubDetail
      Left = 68
      Top = 260
      Width = 987
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.0416666666667
        2611.4375)
      Master = ssdtAcao
      DataSet = qryLocali
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText11: TQRDBText
        Left = 32
        Top = 0
        Width = 52
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          84.6666666666667
          0
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryLocali
        DataField = 'funcional'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 155
        Top = 0
        Width = 569
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          410.104166666667
          0
          1505.47916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qryLocali
        DataField = 'descricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 912
        Top = 0
        Width = 75
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          2413
          0
          198.4375)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryLocali
        DataField = 'total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Mask = '#,###,###,###'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object ChildBand2: TQRChildBand
      Left = 68
      Top = 274
      Width = 987
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = ChildBand2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.0416666666667
        2611.4375)
      ParentBand = sdtLocal
      object QRDBText14: TQRDBText
        Left = 168
        Top = 0
        Width = 556
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          444.5
          0
          1471.08333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qryLocali
        DataField = 'meta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
    end
    object sdtElemento: TQRSubDetail
      Left = 68
      Top = 288
      Width = 987
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.0416666666667
        2611.4375)
      Master = sdtLocal
      DataSet = qry
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText15: TQRDBText
        Left = 832
        Top = 0
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2201.33333333333
          0
          198.4375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry
        DataField = 'valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Mask = '#,###,###,###'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText16: TQRDBText
        Left = 808
        Top = 0
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2137.83333333333
          0
          50.2708333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry
        DataField = 'fonte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText17: TQRDBText
        Left = 790
        Top = 0
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2090.20833333333
          0
          29.1041666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry
        DataField = 'indUso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText18: TQRDBText
        Left = 728
        Top = 0
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1926.16666666667
          0
          134.9375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry
        DataField = 'elDespesa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText21: TQRDBText
        Left = 168
        Top = 2
        Width = 555
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          444.5
          5.29166666666667
          1468.4375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qry
        DataField = 'elementoD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText22: TQRDBText
        Left = 953
        Top = 0
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2521.47916666667
          0
          198.4375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry
        DataField = 'codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsItalic, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    object DetailBand1: TQRBand
      Left = 68
      Top = 209
      Width = 987
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        2.64583333333333
        2611.4375)
      BandType = rbDetail
    end
  end
  object qryParametro: TADOQuery
    Active = True
    Connection = dmtData.adoCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM parametro')
    Left = 618
    Top = 11
    object qryParametroprefeitura: TStringField
      FieldName = 'prefeitura'
      Size = 255
    end
    object qryParametrobanco: TStringField
      FieldName = 'banco'
      Size = 30
    end
    object qryParametroexercicio: TIntegerField
      FieldName = 'exercicio'
    end
    object qryParametroevolRec: TStringField
      FieldName = 'evolRec'
      Size = 50
    end
    object qryParametroevolDesp: TStringField
      FieldName = 'evolDesp'
      Size = 50
    end
  end
  object qryEsfera: TADOQuery
    Active = True
    Connection = dmtData.adoCon
    CursorType = ctStatic
    DataSource = frmUnoDialGerRel.sQry
    Parameters = <
      item
        Name = 'codigo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = '01101'
      end>
    SQL.Strings = (
      'SELECT unorc, esfera, esferaD, total = SUM(valor)'
      '    FROM orcamento'
      '        WHERE unorc = :codigo'
      '      GROUP BY unorc, esfera, esferaD'
      '      ORDER BY unorc, esfera ')
    Left = 388
    Top = 8
  end
  object sQryEsfera: TDataSource
    DataSet = qryEsfera
    Left = 388
    Top = 50
  end
  object qryProg: TADOQuery
    Connection = dmtData.adoCon
    CursorType = ctStatic
    DataSource = sQryEsfera
    Parameters = <
      item
        Name = 'unorc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = '01101'
      end
      item
        Name = 'esfera'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = '10'
      end>
    SQL.Strings = (
      'SELECT unorc, esfera, programa, programaD, total = SUM(valor)'
      '    FROM orcamento'
      '        WHERE unorc = :unorc AND esfera = :esfera'
      '      GROUP BY unorc, esfera, programa, programaD'
      '      ORDER BY programa ')
    Left = 420
    Top = 8
  end
  object sQryProg: TDataSource
    DataSet = qryProg
    Left = 420
    Top = 50
  end
  object qryAcao: TADOQuery
    Connection = dmtData.adoCon
    CursorType = ctStatic
    DataSource = sQryProg
    Parameters = <
      item
        Name = 'unorc'
        DataType = ftString
        Size = 5
        Value = '01101'
      end
      item
        Name = 'esfera'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = '10'
      end
      item
        Name = 'programa'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = '0001'
      end>
    SQL.Strings = (
      'SELECT unorc, esfera, programa, acao, acaoD, funcao, subFuncao, '
      '       produto, '
      
        '       meta = (SELECT SUM(metaFisica) FROM locali WHERE unorc = ' +
        'o.unorc AND programa = o.programa AND acao = o.acao),'
      
        '       funcional = funcao + '#39'.'#39' + subFuncao + '#39'.'#39' + programa + '#39 +
        '.'#39' +  acao,'
      '       total = SUM(valor)'
      '    FROM orcamento o'
      
        '        WHERE unorc = :unorc AND esfera = :esfera AND programa =' +
        ' :programa'
      
        '      GROUP BY unorc, esfera,  funcao, subFuncao, programa, acao' +
        ', acaoD,produto'
      '      ORDER BY acao, funcao, subFuncao')
    Left = 452
    Top = 8
  end
  object sQryAcao: TDataSource
    DataSet = qryAcao
    Left = 452
    Top = 50
  end
  object qryLocali: TADOQuery
    Connection = dmtData.adoCon
    CursorType = ctStatic
    DataSource = sQryAcao
    Parameters = <
      item
        Name = 'unorc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = '01101'
      end
      item
        Name = 'esfera'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = '10'
      end
      item
        Name = 'funcao'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = '01'
      end
      item
        Name = 'subfuncao'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = '031'
      end
      item
        Name = 'programa'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = '0001'
      end
      item
        Name = 'acao'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = '1225'
      end>
    SQL.Strings = (
      
        'SELECT distinct unorc, esfera, programa, acao, funcao, subFuncao' +
        ', meta, localiS, descricao, locali,'
      
        '       funcional = funcao + '#39'.'#39' + subFuncao + '#39'.'#39' + programa + '#39 +
        '.'#39' +  acao + '#39'.'#39' + localiS,'
      '       total = SUM(valor)'
      '    FROM orcamento o'
      '       '
      
        '        WHERE unorc = :unorc AND esfera = :esfera AND  funcao = ' +
        ':funcao AND subfuncao = :subfuncao AND programa = :programa AND ' +
        'acao = :acao'
      '               '
      
        '      GROUP BY unorc, esfera, funcao, subFuncao, programa, acao,' +
        ' meta, localiS, descricao, locali'
      '      ORDER BY acao, funcao, subFuncao, localis'
      '')
    Left = 484
    Top = 8
  end
  object sQryLocali: TDataSource
    DataSet = qryLocali
    Left = 484
    Top = 50
  end
  object qry: TADOQuery
    Active = True
    Connection = dmtData.adoCon
    CursorType = ctStatic
    DataSource = sQryLocali
    Parameters = <
      item
        Name = 'locali'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    SQL.Strings = (
      'SELECT o.*, elementoD = e.descricao'
      '    FROM orcamento o'
      '      INNER JOIN elDespesa e ON e.codigo = o.elDespesa'
      '        WHERE locali = :locali'
      '   ORDER BY elDespesa, fonte, indUso')
    Left = 516
    Top = 8
    object qrycodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qrylocali2: TIntegerField
      FieldName = 'locali'
    end
    object qryelDespesa: TStringField
      FieldName = 'elDespesa'
      Size = 6
    end
    object qryindUso: TStringField
      FieldName = 'indUso'
      Size = 1
    end
    object qryfonte: TStringField
      FieldName = 'fonte'
      Size = 3
    end
    object qryvalor: TBCDField
      FieldName = 'valor'
      Precision = 19
    end
    object qryesfera2: TStringField
      FieldName = 'esfera'
      Size = 2
    end
    object qryunorc: TStringField
      FieldName = 'unorc'
      Size = 5
    end
    object qryfuncao: TStringField
      FieldName = 'funcao'
      Size = 2
    end
    object qrysubFuncao: TStringField
      FieldName = 'subFuncao'
      Size = 3
    end
    object qryprograma: TStringField
      FieldName = 'programa'
      Size = 4
    end
    object qryacao2: TStringField
      FieldName = 'acao'
      Size = 4
    end
    object qryregional: TStringField
      FieldName = 'regional'
      Size = 1
    end
    object qrydescricao: TStringField
      FieldName = 'descricao'
      Size = 255
    end
    object qrymetafisica: TBCDField
      FieldName = 'metafisica'
      Precision = 19
    end
    object qrylocaliS: TStringField
      FieldName = 'localiS'
      Size = 4
    end
    object qryfuncaoD: TStringField
      FieldName = 'funcaoD'
      Size = 255
    end
    object qrysubFuncaoD: TStringField
      FieldName = 'subFuncaoD'
      Size = 255
    end
    object qryfonteD: TStringField
      FieldName = 'fonteD'
      Size = 255
    end
    object qrycat: TStringField
      FieldName = 'cat'
      Size = 1
    end
    object qrycatD: TStringField
      FieldName = 'catD'
      Size = 6
    end
    object qrygrupo: TStringField
      FieldName = 'grupo'
      Size = 1
    end
    object qrygrupoD: TStringField
      FieldName = 'grupoD'
      Size = 6
    end
    object qrymod: TStringField
      FieldName = 'mod'
      Size = 2
    end
    object qrymodD: TStringField
      FieldName = 'modD'
      Size = 6
    end
    object qryelem: TStringField
      FieldName = 'elem'
      Size = 2
    end
    object qryorgao: TStringField
      FieldName = 'orgao'
      Size = 2
    end
    object qryorgaoS: TStringField
      FieldName = 'orgaoS'
      Size = 5
    end
    object qryorgaoD: TStringField
      FieldName = 'orgaoD'
      Size = 255
    end
    object qryacaoD: TStringField
      FieldName = 'acaoD'
      Size = 255
    end
    object qryprogramaD: TStringField
      FieldName = 'programaD'
      Size = 255
    end
    object qryunorcD: TStringField
      FieldName = 'unorcD'
      Size = 255
    end
    object qryrecurso: TStringField
      FieldName = 'recurso'
      Size = 1
    end
    object qryesferaD: TStringField
      FieldName = 'esferaD'
      Size = 30
    end
    object qrytipoLocalD: TStringField
      FieldName = 'tipoLocalD'
      Size = 23
    end
    object qryPoder: TStringField
      FieldName = 'Poder'
      Size = 1
    end
    object qryPoderD: TStringField
      FieldName = 'PoderD'
      Size = 23
    end
    object qryrecursoD: TStringField
      FieldName = 'recursoD'
      Size = 25
    end
    object qryproduto: TStringField
      FieldName = 'produto'
      Size = 282
    end
    object qrymeta: TStringField
      FieldName = 'meta'
      Size = 303
    end
    object qryfiscal: TBCDField
      FieldName = 'fiscal'
      Precision = 19
    end
    object qryseguridade: TBCDField
      FieldName = 'seguridade'
      Precision = 19
    end
    object qrytesouro: TBCDField
      FieldName = 'tesouro'
      Precision = 19
    end
    object qryoutrasF: TBCDField
      FieldName = 'outrasF'
      Precision = 19
    end
    object qryfisTesouro: TBCDField
      FieldName = 'fisTesouro'
      Precision = 19
    end
    object qryfisOutras: TBCDField
      FieldName = 'fisOutras'
      Precision = 19
    end
    object qrysegTesouro: TBCDField
      FieldName = 'segTesouro'
      Precision = 19
    end
    object qrysegOutras: TBCDField
      FieldName = 'segOutras'
      Precision = 19
    end
    object qrypessoal: TBCDField
      FieldName = 'pessoal'
      Precision = 19
    end
    object qryjuros: TBCDField
      FieldName = 'juros'
      Precision = 19
    end
    object qryoutras: TBCDField
      FieldName = 'outras'
      Precision = 19
    end
    object qryinvest: TBCDField
      FieldName = 'invest'
      Precision = 19
    end
    object qryinvFin: TBCDField
      FieldName = 'invFin'
      Precision = 19
    end
    object qryamortiza: TBCDField
      FieldName = 'amortiza'
      Precision = 19
    end
    object qryelementoD: TStringField
      FieldName = 'elementoD'
      Size = 255
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    AutoLaunch = False
    Compression = ctNone
    DocumentInfo_Author = 'Windows 9x/NT/2000/XP User'
    DocumentInfo_Creator = 'llPDFLib program'
    DocumentInfo_Keywords = 'llPDFLib'
    DocumentInfo_Subject = 'None'
    DocumentInfo_Title = 'No Title'
    PageLayout = plSinglePage
    PageMode = pmUseNone
    ProtectionEnabled = False
    ProtectionOptions = []
    JPEGQuality = 80
    Left = 700
    Top = 10
  end
  object QRPDFFilter2: TQRPDFFilter
    AutoLaunch = False
    Compression = ctNone
    DocumentInfo_Author = 'Windows 9x/NT/2000/XP User'
    DocumentInfo_Creator = 'llPDFLib program'
    DocumentInfo_Keywords = 'llPDFLib'
    DocumentInfo_Subject = 'None'
    DocumentInfo_Title = 'No Title'
    PageLayout = plSinglePage
    PageMode = pmUseNone
    ProtectionEnabled = False
    ProtectionOptions = []
    JPEGQuality = 80
    Left = 320
    Top = 40
  end
end
