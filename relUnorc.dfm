object frmrelUnorc: TfrmrelUnorc
  Left = 188
  Top = 258
  Width = 720
  Height = 480
  HorzScrollBar.Position = 202
  VertScrollBar.Position = 128
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
    Left = -178
    Top = -96
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qyUnorc_
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
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
      200
      2970
      200
      150
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object detail: TQRBand
      Left = 76
      Top = 654
      Width = 991
      Height = 24
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
        63.5
        2622.02083333333)
      BandType = rbDetail
      object entidade: TQRDBText
        Left = 0
        Top = 2
        Width = 991
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          0
          5.29166666666667
          2622.02083333333)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qyUnorc_
        DataField = 'Titulo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
    object PageHeaderBand2: TQRBand
      Left = 76
      Top = 76
      Width = 991
      Height = 578
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
        1529.29166666667
        2622.02083333333)
      BandType = rbPageHeader
      object QRLabel4: TQRLabel
        Left = 260
        Top = 152
        Width = 470
        Height = 120
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          317.5
          687.916666666667
          402.166666666667
          1243.54166666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'OR'#199'AMENTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clActiveBorder
        Font.Height = -80
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 60
      end
      object QRLabel1: TQRLabel
        Left = 261
        Top = 248
        Width = 469
        Height = 251
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          664.104166666667
          690.5625
          656.166666666667
          1240.89583333333)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = '2013'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clActiveBorder
        Font.Height = -200
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 150
      end
    end
  end
  object qyUnorc_: TADOQuery
    Connection = frmPrincipalFolha.adFolha
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Tipo, Titulo, Titular, tam, Negrito'
      'FROM Folhas'
      'WHERE   (Tipo = '#39'U'#39') '
      'ORDER BY titulo')
    Left = 96
    Top = 64
    object qyUnorc_Tipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object qyUnorc_Titulo: TStringField
      FieldName = 'Titulo'
      Size = 100
    end
    object qyUnorc_Titular: TStringField
      FieldName = 'Titular'
      Size = 100
    end
    object qyUnorc_tam: TStringField
      FieldName = 'tam'
      FixedChar = True
      Size = 10
    end
    object qyUnorc_Negrito: TStringField
      FieldName = 'Negrito'
      FixedChar = True
      Size = 10
    end
  end
end
