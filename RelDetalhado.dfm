object FrmRelDetalhado: TFrmRelDetalhado
  Left = 74
  Top = 137
  Width = 812
  Height = 480
  VertScrollBar.Position = 187
  Caption = 'FrmRelDetalhado'
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
    Left = 13
    Top = -168
    Width = 2021
    Height = 1429
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
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      180
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
    Zoom = 180
    object ColumnHeaderBand1: TQRBand
      Left = 122
      Top = 170
      Width = 1776
      Height = 196
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
        288.101851851852
        2610.55555555556)
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 1714
        Top = 157
        Width = 61
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.5671296296296
          2519.4212962963
          230.775462962963
          89.6643518518519)
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
      object QRLabel16: TQRLabel
        Left = 1620
        Top = 157
        Width = 23
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.5671296296296
          2381.25
          230.775462962963
          33.8078703703704)
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
      object QRLabel2: TQRLabel
        Left = 1589
        Top = 157
        Width = 22
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.5671296296296
          2335.68287037037
          230.775462962963
          32.337962962963)
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
      object QRLabel5: TQRLabel
        Left = 1490
        Top = 157
        Width = 97
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.0972222222222
          2190.16203703704
          230.775462962963
          142.581018518519)
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
      object QRLabel51: TQRLabel
        Left = 1494
        Top = 120
        Width = 233
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.5671296296296
          2196.04166666667
          176.388888888889
          342.488425925926)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'RECURSOS DE DA CONSULTA   '
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
      object lblEsfera: TQRLabel
        Left = 0
        Top = 122
        Width = 410
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.6273148148148
          0
          179.328703703704
          602.662037037037)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QUADRO DE DETALHAMENTO DA CONSULTA'
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
      object QRShape11: TQRShape
        Left = 0
        Top = 147
        Width = 1777
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          0
          216.076388888889
          2612.02546296296)
        Shape = qrsHorLine
      end
      object QRLabel4: TQRLabel
        Left = 0
        Top = 157
        Width = 142
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.6273148148148
          0
          230.775462962963
          208.726851851852)
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
        Top = 184
        Width = 1777
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          0
          270.462962962963
          2612.02546296296)
        Shape = qrsHorLine
      end
      object QRLabel61: TQRLabel
        Left = 1718
        Top = 119
        Width = 58
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.6273148148148
          2525.30092592593
          174.918981481481
          85.2546296296296)
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
      object QRLabel7: TQRLabel
        Left = 0
        Top = 0
        Width = 465
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.9768518518519
          0
          0
          683.506944444444)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'PREFEITURA MUNICIPAL DE FORTALEZA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 1
        Top = 29
        Width = 626
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.9768518518519
          1.46990740740741
          42.6273148148148
          920.162037037037)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SECRETARIA MUNICIPAL DE PLANEJAMENTO E OR'#199'AMENTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 1
        Top = 58
        Width = 302
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.9768518518519
          1.46990740740741
          85.2546296296296
          443.912037037037)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'COORDENADORIA DE OR'#199'AMENTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRGroup1: TQRGroup
      Left = 122
      Top = 366
      Width = 1776
      Height = 33
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
        48.5069444444444
        2610.55555555556)
      Expression = 'qryEsfera.Unorc + qryEsfera.Unorcd'
      FooterBand = QRBand3
      Master = report
      ReprintOnNewPage = False
      object QRDBText1: TQRDBText
        Left = 0
        Top = 0
        Width = 56
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.6273148148148
          0
          0
          82.3148148148148)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'Unorc'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 59
        Top = 0
        Width = 1714
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          87.3125
          0
          2518.83333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'Unorcd'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRGroup2: TQRGroup
      Left = 122
      Top = 399
      Width = 1776
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRGroup2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        45.5671296296296
        2610.55555555556)
      Expression = 
        'qryEsfera.Funcao + qryEsfera.SubFuncao + qryEsfera.Programa + qr' +
        'yEsfera.Acao + qryEsfera.Localis + qryEsfera.Descricao'
      Master = report
      ReprintOnNewPage = False
      object QRDBText20: TQRDBText
        Left = 64
        Top = 0
        Width = 26
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.5671296296296
          94.0740740740741
          0
          38.2175925925926)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'Funcao'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 88
        Top = 0
        Width = 9
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.6273148148148
          129.351851851852
          0
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText21: TQRDBText
        Left = 98
        Top = 0
        Width = 35
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.5671296296296
          144.050925925926
          0
          51.4467592592593)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'SubFuncao'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 132
        Top = 0
        Width = 9
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.6273148148148
          194.027777777778
          0
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText22: TQRDBText
        Left = 140
        Top = 0
        Width = 47
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.5671296296296
          205.787037037037
          0
          69.0856481481482)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'Programa'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 184
        Top = 0
        Width = 9
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.6273148148148
          270.462962962963
          0
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText23: TQRDBText
        Left = 192
        Top = 0
        Width = 45
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.5671296296296
          282.222222222222
          0
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'Acao'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 236
        Top = 0
        Width = 9
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.6273148148148
          346.898148148148
          0
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText24: TQRDBText
        Left = 246
        Top = 0
        Width = 46
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.5671296296296
          361.597222222222
          0
          67.6157407407407)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'Localis'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText25: TQRDBText
        Left = 300
        Top = 0
        Width = 1464
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.5671296296296
          440.972222222222
          0
          2151.94444444444)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'Descricao'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand1: TQRBand
      Left = 122
      Top = 430
      Width = 1776
      Height = 30
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
        44.0972222222222
        2610.55555555556)
      BandType = rbDetail
      object QRDBText8: TQRDBText
        Left = 1661
        Top = 1
        Width = 115
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.6273148148148
          2441.5162037037
          1.46990740740741
          169.039351851852)
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
        Font.Style = []
        Mask = '#,###,###,###'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 1614
        Top = 1
        Width = 41
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.5671296296296
          2372.43055555556
          1.46990740740741
          60.2662037037037)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'fonte'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 1594
        Top = 1
        Width = 21
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.5671296296296
          2343.03240740741
          1.46990740740741
          30.8680555555556)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'induso'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 1495
        Top = 1
        Width = 91
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.5671296296296
          2197.51157407407
          1.46990740740741
          133.761574074074)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'eldespesa'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 109
        Top = 1
        Width = 1377
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.6273148148148
          160.219907407407
          1.46990740740741
          2024.0625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qryEsfera
        DataField = 'elDespesaD'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 122
      Top = 460
      Width = 1776
      Height = 37
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand3BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        54.3865740740741
        2610.55555555556)
      BandType = rbGroupFooter
      object QRLabel8: TQRLabel
        Left = 1327
        Top = 7
        Width = 301
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.6273148148148
          1950.56712962963
          10.2893518518519
          442.44212962963)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TOTAL DA UNIDADE OR'#199'AMENT'#193'RIA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText9: TQRDBText
        Left = 1662
        Top = 3
        Width = 114
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.6273148148148
          2442.98611111111
          4.40972222222222
          167.569444444444)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrySoma
        DataField = 'COLUMN1'
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
      object QRShape3: TQRShape
        Left = 0
        Top = 0
        Width = 1777
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          0
          0
          2612.02546296296)
        Shape = qrsHorLine
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 27
        Width = 1777
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          0
          39.6875
          2612.02546296296)
        Shape = qrsHorLine
      end
    end
  end
  object qryEsfera: TADOQuery
    Active = True
    Connection = dmtData.adoCon
    CursorType = ctStatic
    DataSource = frmUnoDialGerRel.sQry
    Parameters = <>
    SQL.Strings = (
      
        'SELECT o.Unorc, o.Unorcd,o.Funcao,o.SubFuncao, o.Programa,o.Acao' +
        ', o.Localis, o.Descricao '
      
        ',e.descricao as elDespesaD,o.eldespesa, o.induso,o.fonte,CASE WH' +
        'EN sum(o.valor) is not NULL THEN sum(o.valor) '
      'else 0 end as total'
      ' '
      'FROM ORCAMENTO o'
      'left join eldespesa e on e.codigo = eldespesa'
      
        'GROUP BY o.Unorc, o.Unorcd,o.Funcao,o.SubFuncao, o.Programa, o.A' +
        'cao, o.Localis,o.Descricao'
      ',e.descricao,o.eldespesa, o.induso,o.fonte, o.valor'
      
        'ORDER BY o.Unorc, o.Unorcd,o.Funcao,o.SubFuncao, o.Programa, o.A' +
        'cao, o.Localis,o.Eldespesa, o.Fonte,  o.IndUso ')
    Left = 388
    Top = 8
    object qryEsferaUnorc: TStringField
      FieldName = 'Unorc'
      Size = 5
    end
    object qryEsferaUnorcd: TStringField
      FieldName = 'Unorcd'
      Size = 255
    end
    object qryEsferaFuncao: TStringField
      FieldName = 'Funcao'
      Size = 2
    end
    object qryEsferaSubFuncao: TStringField
      FieldName = 'SubFuncao'
      Size = 3
    end
    object qryEsferaPrograma: TStringField
      FieldName = 'Programa'
      Size = 4
    end
    object qryEsferaAcao: TStringField
      FieldName = 'Acao'
      Size = 4
    end
    object qryEsferaLocalis: TStringField
      FieldName = 'Localis'
      Size = 4
    end
    object qryEsferaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 255
    end
    object qryEsferaelDespesaD: TStringField
      FieldName = 'elDespesaD'
      Size = 255
    end
    object qryEsferaeldespesa: TStringField
      FieldName = 'eldespesa'
      Size = 6
    end
    object qryEsferainduso: TStringField
      FieldName = 'induso'
      Size = 1
    end
    object qryEsferafonte: TStringField
      FieldName = 'fonte'
      Size = 3
    end
    object qryEsferatotal: TBCDField
      FieldName = 'total'
      ReadOnly = True
      Precision = 19
    end
  end
  object sQryEsfera: TDataSource
    DataSet = qryEsfera
    Left = 388
    Top = 50
  end
  object qrySoma: TADOQuery
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
      end
      item
        Name = 'localis'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = '0001'
      end>
    SQL.Strings = (
      'select sum(valor) from orcamento '
      
        'WHERE unorc = :unorc and funcao = :funcao and subfuncao = :subfu' +
        'ncao'
      
        ' and programa = :programa and acao = :acao and localis = :locali' +
        's  '
      '')
    Left = 432
    Top = 8
    object qrySomaCOLUMN1: TBCDField
      FieldName = 'COLUMN1'
      ReadOnly = True
      Precision = 19
    end
  end
end
