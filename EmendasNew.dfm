object frmEmendasNew: TfrmEmendasNew
  Left = 337
  Top = 255
  BorderIcons = [biMaximize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Emendas (NEW)'
  ClientHeight = 670
  ClientWidth = 1025
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 630
    Width = 1025
    Height = 40
    Align = alBottom
    Brush.Color = clSilver
    Pen.Color = clWhite
  end
  object btnRefresh: TSpeedButton
    Left = 580
    Top = 444
    Width = 25
    Height = 25
    Hint = 'Restaurar Tabela'
    Glyph.Data = {
      96010000424D9601000000000000760000002800000018000000180000000100
      040000000000200100000000000000000000100000001000000000000000FFFF
      FF00613030006E3D3D00C2919100CF9E9E00F2C2C200FFCFCF00F2F2F2000D0D
      0D00C0C0C0000000000000000000000000000000000000000000AAAAAAAAAAAA
      AAAAAAAAAAAAAAAAAAAAAAA81AAAAAAAAAAAAAAAAAAAAA838AAAAAAAAAAAAAAA
      AAAAA8921AAAAAAAAAAAAAAAAAAA89638181AAAAAAAAAAAAAAA89472909018AA
      AAAAAAAAAA8945676767098AAAAAAAAAAA94545454547698AAAAA18181894545
      454545698AAAA090901A94529094545698AAA965498AA943AAA9454701AAA074
      501AAA92AAAA9454701AA965498AAAA38AAAA945698AA0745498AAA298AAA054
      701AAA0745498183498AA945698AAA96545490925498A090901AAAA965454545
      45498AAAAAAAAAAA96745454545498AAAAAAAAAAA90767676549AAAAAAAAAAAA
      AAA09092749AAAAAAAAAAAAAAAAAAAA369AAAAAAAAAAAAAAAAAAAAA29AAAAAAA
      AAAAAAAAAAAAAAA3AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
    ParentShowHint = False
    ShowHint = True
    OnClick = btnRefreshClick
  end
  object SpeedButton1: TSpeedButton
    Left = 988
    Top = 9
    Width = 23
    Height = 22
    Hint = 'Fechar'
    Glyph.Data = {
      C6050000424DC605000000000000360400002800000014000000140000000100
      08000000000090010000120B0000120B00000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AAFF0000AAFF000092
      DC00007AB90000629600004A730000325000D4E3FF00B1C7FF008EABFF006B8F
      FF004873FF002557FF000055FF000049DC00003DB90000319600002573000019
      5000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525FF000000FE000000
      DC000000B900000096000000730000005000E3D4FF00C7B1FF00AB8EFF008F6B
      FF007348FF005725FF005500FF004900DC003D00B90031009600250073001900
      5000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25FF00AA00FF009200
      DC007A00B900620096004A00730032005000FFD4FF00FFB1FF00FF8EFF00FF6B
      FF00FF48FF00FF25FF00FE00FE00DC00DC00B900B90096009600730073005000
      5000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25AA00FF00AA00DC00
      9200B9007A009600620073004A0050003200FFD4E300FFB1C700FF8EAB00FF6B
      8F00FF487300FF255700FF005500DC004900B9003D0096003100730025005000
      1900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF252500FE000000DC00
      0000B9000000960000007300000050000000FFE3D400FFC7B100FFAB8E00FF8F
      6B00FF734800FF572500FF550000DC490000B93D000096310000732500005019
      0000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA2500FFAA0000DC92
      0000B97A000096620000734A000050320000FFFFD400FFFFB100FFFF8E00FFFF
      6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B9000096960000737300005050
      0000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF2500AAFF000092DC
      00007AB90000629600004A73000032500000E3FFD400C7FFB100ABFF8E008FFF
      6B0073FF480057FF250055FF000049DC00003DB9000031960000257300001950
      0000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF250000FE000000DC
      000000B90000009600000073000000500000D4FFE300B1FFC7008EFFAB006BFF
      8F0048FF730025FF570000FF550000DC490000B93D0000963100007325000050
      1900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FFAA0000FFAA0000DC
      920000B97A000096620000734A0000503200D4FFFF00B1FFFF008EFFFF006BFF
      FF0048FFFF0025FFFF0000FEFE0000DCDC0000B9B90000969600007373000050
      5000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6B600AAAAAA009E9E
      9E0092929200868686007A7A7A006E6E6E0062626200565656004A4A4A003E3E
      3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00EAEAEAEAEAEA
      EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
      EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
      EAEAEAEAEAEAEAEAEAEAEAEAEA00EAEAEAEAEAEAEAEAEA00003333EAEAEAEAEA
      330000EAEAEAEAEAEAEA00003333EAEAEAEAEAEA3333000000EAEAEAEA000033
      3333EAEAEAEAEAEA33333333000000EA0000333333EAEAEAEAEAEAEAEAEA3333
      3333000000333333EAEAEAEAEAEAEAEAEAEAEA333333330000333333EAEAEAEA
      EAEAEAEAEAEAEAEA33333333333333EAEAEAEAEAEAEAEAEAEAEAEAEAEA003333
      33330000EAEAEAEAEAEAEAEAEAEAEAEA000033333333330000EAEAEAEAEAEAEA
      EAEAEA0000333333333333330000EAEAEAEAEAEAEAEA0000333333EAEA333333
      3300EAEAEAEAEAEAEAEA00333333EAEAEAEA3333330000EAEAEAEAEAEA000033
      33EAEAEAEAEAEAEA333300EAEAEAEAEAEA003333EAEAEAEAEAEAEAEA333333EA
      EAEAEAEAEAEA3333EAEAEAEAEAEAEAEAEA33EAEAEAEAEAEAEAEAEAEAEAEAEAEA
      EAEAEAEAEAEAEAEAEAEA}
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object Label4: TLabel
    Left = 191
    Top = 0
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'digo'
    Transparent = True
  end
  object Label3: TLabel
    Left = 401
    Top = 0
    Width = 71
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome da A'#231#227'o'
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 697
    Top = 635
    Width = 4
    Height = 38
  end
  object RxLabel1: TRxLabel
    Left = 767
    Top = 638
    Width = 109
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'APROVADAS'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ShadowColor = -1
  end
  object RxLabel2: TRxLabel
    Left = 767
    Top = 654
    Width = 109
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'RETIRADAS'
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ShadowColor = -1
  end
  object RxLabel3: TRxLabel
    Left = 705
    Top = 639
    Width = 62
    Height = 32
    Alignment = taCenter
    AutoSize = False
    Caption = 'STATUS'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ShadowColor = 10354687
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 0
    Width = 1025
    Height = 633
    ActivePage = TabSheet1
    Align = alTop
    TabIndex = 0
    TabOrder = 0
    OnChange = PageControl2Change
    object TabSheet1: TTabSheet
      Caption = 'Controle'
      object gbCadastro: TGroupBox
        Left = 0
        Top = 0
        Width = 1017
        Height = 605
        Align = alClient
        TabOrder = 0
        object Bevel11: TBevel
          Left = 2
          Top = 15
          Width = 1013
          Height = 46
          Align = alTop
        end
        object Label8: TLabel
          Left = 447
          Top = 22
          Width = 45
          Height = 16
          Caption = 'Vota'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 103
          Top = 22
          Width = 41
          Height = 16
          Caption = 'Detalhe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 584
          Top = 21
          Width = 32
          Height = 16
          Caption = 'Status'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 736
          Top = 20
          Width = 24
          Height = 16
          Caption = 'Tipo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Bevel12: TBevel
          Left = 2
          Top = 61
          Width = 1013
          Height = 20
          Align = alTop
        end
        object lbVereador: TLabel
          Left = 4
          Top = 63
          Width = 1002
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'VEREADOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 10
          Top = 22
          Width = 73
          Height = 16
          Caption = 'Emenda Geral'
          FocusControl = acmbAcao
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label49: TLabel
          Left = 247
          Top = 22
          Width = 59
          Height = 16
          Caption = 'Valor Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label52: TLabel
          Left = 404
          Top = 22
          Width = 29
          Height = 16
          Caption = 'Saldo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object txtemenda: TEdit
          Left = 103
          Top = 36
          Width = 81
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnExit = txtemendaExit
        end
        object cbVotacao: TComboBox
          Left = 447
          Top = 36
          Width = 130
          Height = 24
          Style = csDropDownList
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 2
          OnChange = txtNomeChange
          Items.Strings = (
            '1'#186' - Vota'#231#227'o'
            '2'#186' - Vota'#231#227'o')
        end
        object cbStatus: TComboBox
          Left = 584
          Top = 35
          Width = 145
          Height = 24
          Style = csDropDownList
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 3
          Items.Strings = (
            '1 - Aprovada'
            '2 - Retirada'
            '3 - Em Discuss'#227'o'
            '')
        end
        object cbTipo: TComboBox
          Left = 736
          Top = 34
          Width = 145
          Height = 24
          Style = csDropDownList
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 4
          OnExit = cbTipoExit
          Items.Strings = (
            '1 - Aditiva de Texto'
            '2 - Modificativa de Texto'
            '3 - Aditiva de Valor'
            '4 - Modificativa de Valor'
            '5 - Aditiva de Meta'
            '6 - Modificativa de Meta')
        end
        object btVereadores: TButton
          Left = 888
          Top = 33
          Width = 109
          Height = 25
          Caption = 'Vereadore(s)'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btVereadoresClick
        end
        object PageControl1: TPageControl
          Left = 2
          Top = 85
          Width = 1013
          Height = 518
          ActivePage = tabAditivaValor
          Align = alBottom
          TabIndex = 1
          TabOrder = 6
          object TabTexto: TTabSheet
            Caption = 'Texto'
            object gbTexto: TGroupBox
              Left = 0
              Top = 0
              Width = 1005
              Height = 490
              Align = alClient
              Enabled = False
              TabOrder = 0
              object lbtexto: TLabel
                Left = 11
                Top = 9
                Width = 174
                Height = 13
                Caption = 'ADITIVA / MOFICATIVA DE TEXTO'
                Transparent = True
              end
              object MTexto: TMemo
                Left = 2
                Top = 6
                Width = 1001
                Height = 482
                Align = alBottom
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = []
                ParentFont = False
                ScrollBars = ssBoth
                TabOrder = 0
              end
            end
          end
          object tabAditivaValor: TTabSheet
            Caption = 'Aditiva de Valor'
            ImageIndex = 1
            object gbAditivavalor: TGroupBox
              Left = 0
              Top = 0
              Width = 1005
              Height = 490
              Align = alClient
              Enabled = False
              TabOrder = 0
              object Label30: TLabel
                Left = 107
                Top = 35
                Width = 106
                Height = 13
                Caption = 'Unidade Or'#231'ament'#225'ria'
                Transparent = True
              end
              object Label31: TLabel
                Left = 105
                Top = 74
                Width = 36
                Height = 13
                Caption = 'Fun'#231#227'o'
                Transparent = True
              end
              object Label32: TLabel
                Left = 105
                Top = 114
                Width = 55
                Height = 13
                Caption = 'SubFun'#231#227'o'
                Transparent = True
              end
              object Label33: TLabel
                Left = 105
                Top = 155
                Width = 45
                Height = 13
                Caption = 'Programa'
                Transparent = True
              end
              object Label34: TLabel
                Left = 105
                Top = 198
                Width = 25
                Height = 13
                Caption = 'A'#231#227'o'
                Transparent = True
              end
              object Label35: TLabel
                Left = 105
                Top = 240
                Width = 57
                Height = 13
                Caption = 'Localiza'#231#227'o'
                Transparent = True
              end
              object Label36: TLabel
                Left = 85
                Top = 8
                Width = 393
                Height = 22
                Alignment = taCenter
                AutoSize = False
                Caption = 'REDU'#199#195'O [F8]'
                FocusControl = acmbAcao
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Bevel7: TBevel
                Left = 482
                Top = 34
                Width = 7
                Height = 455
              end
              object Label37: TLabel
                Left = 488
                Top = 9
                Width = 393
                Height = 22
                Alignment = taCenter
                AutoSize = False
                Caption = 'ACR'#201'SCIMO [F9]'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label38: TLabel
                Left = 546
                Top = 76
                Width = 106
                Height = 13
                Caption = 'Unidade Or'#231'ament'#225'ria'
                Transparent = True
              end
              object Label39: TLabel
                Left = 546
                Top = 115
                Width = 36
                Height = 13
                Caption = 'Fun'#231#227'o'
                Transparent = True
              end
              object Label40: TLabel
                Left = 546
                Top = 155
                Width = 55
                Height = 13
                Caption = 'SubFun'#231#227'o'
                Transparent = True
              end
              object Label41: TLabel
                Left = 546
                Top = 196
                Width = 45
                Height = 13
                Caption = 'Programa'
                Transparent = True
              end
              object Label42: TLabel
                Left = 546
                Top = 239
                Width = 25
                Height = 13
                Caption = 'A'#231#227'o'
                Transparent = True
              end
              object Label43: TLabel
                Left = 105
                Top = 280
                Width = 29
                Height = 13
                Caption = 'Grupo'
                Transparent = True
              end
              object Bevel8: TBevel
                Left = 106
                Top = 31
                Width = 822
                Height = 4
              end
              object Label44: TLabel
                Left = 546
                Top = 280
                Width = 57
                Height = 13
                Caption = 'Localiza'#231#227'o'
                Transparent = True
              end
              object Label45: TLabel
                Left = 546
                Top = 36
                Width = 48
                Height = 13
                Caption = 'Descri'#231#227'o'
                Transparent = True
              end
              object Label46: TLabel
                Left = 744
                Top = 280
                Width = 30
                Height = 13
                Caption = 'Esfera'
                Transparent = True
              end
              object Label47: TLabel
                Left = 844
                Top = 280
                Width = 42
                Height = 13
                Caption = 'Regional'
                Transparent = True
              end
              object Label48: TLabel
                Left = 548
                Top = 321
                Width = 56
                Height = 13
                Caption = 'Meta F'#237'sica'
                Transparent = True
              end
              object Bevel9: TBevel
                Left = 659
                Top = 337
                Width = 212
                Height = 20
              end
              object txtProd2: TLabel
                Left = 653
                Top = 341
                Width = 195
                Height = 13
                AutoSize = False
                Caption = 'txtProduto'
                Transparent = True
              end
              object avtxtUnorc: TEdit
                Left = 105
                Top = 51
                Width = 40
                Height = 21
                MaxLength = 5
                TabOrder = 0
                OnChange = avtxtUnorcChange
                OnExit = avtxtUnorcExit
              end
              object avcmb_Unorc: TComboBox
                Left = 147
                Top = 51
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                MaxLength = 5
                TabOrder = 1
                TabStop = False
                OnChange = avcmb_UnorcChange
                OnClick = avcmb_UnorcClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object avtxtfuncao: TEdit
                Left = 105
                Top = 90
                Width = 40
                Height = 21
                MaxLength = 2
                TabOrder = 2
                OnChange = avtxtfuncaoChange
                OnExit = avtxtfuncaoExit
              end
              object avcmb_funcao: TComboBox
                Left = 147
                Top = 90
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 3
                TabStop = False
                OnChange = avcmb_funcaoChange
                OnClick = avcmb_funcaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object avtxtsubfuncao: TEdit
                Left = 105
                Top = 130
                Width = 40
                Height = 21
                MaxLength = 3
                TabOrder = 4
                OnChange = avtxtsubfuncaoChange
                OnExit = avtxtsubfuncaoExit
              end
              object avcmb_subfuncao: TComboBox
                Left = 147
                Top = 130
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 5
                TabStop = False
                OnChange = avcmb_subfuncaoChange
                OnClick = avcmb_subfuncaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object avtxprograma: TEdit
                Left = 105
                Top = 172
                Width = 40
                Height = 21
                MaxLength = 4
                TabOrder = 6
                OnChange = avtxprogramaChange
                OnExit = avtxprogramaExit
              end
              object avcmb_programa: TComboBox
                Left = 147
                Top = 172
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 7
                TabStop = False
                OnChange = avcmb_programaChange
                OnClick = avcmb_programaClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object avtxtacao: TEdit
                Left = 105
                Top = 213
                Width = 40
                Height = 21
                MaxLength = 4
                TabOrder = 8
                OnChange = avtxtacaoChange
                OnExit = avtxtacaoExit
              end
              object avcmb_acao: TComboBox
                Left = 147
                Top = 213
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 9
                TabStop = False
                OnChange = avcmb_acaoChange
                OnClick = avcmb_acaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object avtxtlocalizacao: TEdit
                Left = 105
                Top = 255
                Width = 40
                Height = 21
                MaxLength = 4
                TabOrder = 10
                OnChange = avtxtlocalizacaoChange
                OnExit = avtxtlocalizacaoExit
              end
              object AvrGrid: TDBGrid
                Left = 107
                Top = 320
                Width = 253
                Height = 137
                DataSource = dsEmendasValor
                TabOrder = 13
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColExit = AvrGridColExit
                OnKeyPress = AvrGridKeyPress
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'relemento'
                    Title.Caption = 'Elemento'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'rIndUso'
                    Title.Caption = 'IU'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'rFonte'
                    Title.Caption = 'FT'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'rValor'
                    Title.Caption = 'Valor'
                    Visible = True
                  end>
              end
              object ktunorc: TEdit
                Left = 546
                Top = 92
                Width = 38
                Height = 21
                MaxLength = 5
                TabOrder = 16
                OnChange = ktunorcChange
                OnExit = ktunorcExit
              end
              object kcunorc: TComboBox
                Left = 586
                Top = 92
                Width = 317
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                MaxLength = 5
                TabOrder = 17
                TabStop = False
                OnChange = kcunorcChange
                OnClick = kcunorcClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object ktfuncao: TEdit
                Left = 546
                Top = 131
                Width = 40
                Height = 21
                MaxLength = 2
                TabOrder = 18
                OnChange = ktfuncaoChange
                OnExit = ktfuncaoExit
              end
              object kcfuncao: TComboBox
                Left = 586
                Top = 131
                Width = 317
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 19
                TabStop = False
                OnChange = kcfuncaoChange
                OnClick = kcfuncaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object ktsubfuncao: TEdit
                Left = 546
                Top = 171
                Width = 40
                Height = 21
                MaxLength = 3
                TabOrder = 20
                OnChange = ktsubfuncaoChange
                OnExit = ktsubfuncaoExit
              end
              object kcsubfuncao: TComboBox
                Left = 586
                Top = 171
                Width = 317
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 21
                TabStop = False
                OnChange = kcsubfuncaoChange
                OnClick = kcsubfuncaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object ktprograma: TEdit
                Left = 546
                Top = 213
                Width = 40
                Height = 21
                MaxLength = 4
                TabOrder = 22
                OnChange = ktprogramaChange
                OnExit = ktprogramaExit
              end
              object ktacao: TEdit
                Left = 546
                Top = 254
                Width = 40
                Height = 21
                MaxLength = 4
                TabOrder = 24
                OnChange = ktacaoChange
                OnExit = ktacaoExit
              end
              object kcacao: TComboBox
                Left = 586
                Top = 254
                Width = 317
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 25
                TabStop = False
                OnChange = kcacaoChange
                OnClick = kcacaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object kcprograma: TComboBox
                Left = 586
                Top = 213
                Width = 317
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 23
                TabStop = False
                OnChange = kcprogramaChange
                OnClick = kcprogramaClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object avcbGrupo: TComboBox
                Left = 108
                Top = 294
                Width = 332
                Height = 21
                ItemHeight = 13
                TabOrder = 12
                OnExit = avcbGrupoExit
                Items.Strings = (
                  '31 - Pessoal e Encargos Sociais'
                  '32 - Juros e Encargos da D'#237'vida'
                  '33 - Ouras Despesas'
                  '44 - Investimeno'
                  '45 - Invers'#245'es Financeiras'
                  '46 - Amortiza'#231#227'o da D'#237'vida'
                  '00 - Todos'
                  '99 - Reserva de Conting'#234'ncia')
              end
              object avcmb_localizacao: TComboBox
                Left = 148
                Top = 255
                Width = 292
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 11
                TabStop = False
                OnChange = avcmb_localizacaoChange
                OnClick = avcmb_localizacaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object ktlocalizacao: TEdit
                Left = 546
                Top = 295
                Width = 61
                Height = 21
                MaxLength = 4
                TabOrder = 27
              end
              object AvcGrid: TDBGrid
                Left = 547
                Top = 362
                Width = 268
                Height = 95
                DataSource = dsEmendasValor02_
                TabOrder = 32
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColExit = AvcGridColExit
                OnKeyPress = AvcGridKeyPress
                Columns = <
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'aelemento'
                    PickList.Strings = (
                      '319015- Isto '#233' apenas um teste'
                      '318875-Isto '#233' apenas outro teste')
                    Title.Alignment = taCenter
                    Title.Caption = 'Elemento'
                    Width = 66
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'aIndUso'
                    PickList.Strings = (
                      '0 - Recursos n'#227'o destinados '#224' contrapartida'
                      '1 - Contrapartida BIRD'
                      '2 - Contrapartida BID'
                      '3 - Outras contrapartidas')
                    Title.Alignment = taCenter
                    Title.Caption = 'IU'
                    Width = 25
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'aFonte'
                    Title.Alignment = taCenter
                    Title.Caption = 'FT'
                    Width = 31
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'aValor'
                    Title.Alignment = taCenter
                    Title.Caption = 'Valor'
                    Width = 106
                    Visible = True
                  end>
              end
              object kDescricao: TEdit
                Left = 547
                Top = 52
                Width = 356
                Height = 21
                TabOrder = 14
              end
              object cmbEsfera: TComboBox
                Left = 729
                Top = 295
                Width = 105
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 29
                OnChange = txtFuncaoChange
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade'
                  '30 - Investimentos')
              end
              object ktRegional: TEdit
                Left = 838
                Top = 295
                Width = 33
                Height = 21
                MaxLength = 1
                TabOrder = 30
                OnChange = txtFuncaoChange
              end
              object ktMetafisica: TEdit
                Left = 548
                Top = 337
                Width = 89
                Height = 21
                TabOrder = 31
                OnChange = txtFuncaoChange
              end
              object Button1: TButton
                Left = 665
                Top = 296
                Width = 62
                Height = 21
                Caption = 'Or'#231'amento'
                TabOrder = 28
                OnClick = Button1Click
              end
              object Button2: TButton
                Left = 611
                Top = 296
                Width = 51
                Height = 21
                Caption = 'Emendas'
                TabOrder = 26
                OnClick = Button2Click
              end
              object btAditiva: TButton
                Left = 4
                Top = 50
                Width = 76
                Height = 22
                Caption = '90101 [F1]'
                TabOrder = 33
                OnClick = btAditivaClick
              end
              object DBNavigator3: TDBNavigator
                Left = 106
                Top = 461
                Width = 252
                Height = 25
                DataSource = dsEmendasValor
                VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
                TabOrder = 34
              end
              object DBNavigator4: TDBNavigator
                Left = 549
                Top = 460
                Width = 252
                Height = 25
                DataSource = dsEmendasValor02_
                VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
                TabOrder = 35
              end
              object ColarAditiva: TButton
                Left = 4
                Top = 111
                Width = 78
                Height = 22
                Caption = 'Colar (F11)'
                TabOrder = 36
                Visible = False
                OnClick = ColarAditivaClick
              end
              object btSeinf1: TButton
                Left = 5
                Top = 81
                Width = 76
                Height = 22
                Caption = 'SEINF (F10)'
                TabOrder = 37
                OnClick = btSeinf1Click
              end
              object rdgGrupo: TRadioGroup
                Left = 910
                Top = 45
                Width = 77
                Height = 68
                Items.Strings = (
                  'EP'
                  'EP/LOM'
                  'EP/C')
                TabOrder = 15
                OnClick = rdgGrupoClick
              end
            end
          end
          object TabValor: TTabSheet
            Caption = 'Modificativa de Valor'
            ImageIndex = 1
            object gbValor: TGroupBox
              Left = 0
              Top = 0
              Width = 1005
              Height = 490
              Align = alClient
              Enabled = False
              TabOrder = 0
              object Label15: TLabel
                Left = 105
                Top = 35
                Width = 106
                Height = 13
                Caption = 'Unidade Or'#231'ament'#225'ria'
                Transparent = True
              end
              object Label16: TLabel
                Left = 106
                Top = 74
                Width = 36
                Height = 13
                Caption = 'Fun'#231#227'o'
                Transparent = True
              end
              object Label17: TLabel
                Left = 105
                Top = 114
                Width = 55
                Height = 13
                Caption = 'SubFun'#231#227'o'
                Transparent = True
              end
              object Label18: TLabel
                Left = 105
                Top = 155
                Width = 45
                Height = 13
                Caption = 'Programa'
                Transparent = True
              end
              object Label19: TLabel
                Left = 105
                Top = 198
                Width = 25
                Height = 13
                Caption = 'A'#231#227'o'
                Transparent = True
              end
              object Label20: TLabel
                Left = 105
                Top = 240
                Width = 57
                Height = 13
                Caption = 'Localiza'#231#227'o'
                Transparent = True
              end
              object Label21: TLabel
                Left = 76
                Top = 8
                Width = 393
                Height = 22
                Alignment = taCenter
                AutoSize = False
                Caption = 'REDU'#199#195'O [F8]'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Bevel5: TBevel
                Left = 497
                Top = 34
                Width = 7
                Height = 455
              end
              object Label22: TLabel
                Left = 500
                Top = 9
                Width = 393
                Height = 22
                Alignment = taCenter
                AutoSize = False
                Caption = 'ACR'#201'SCIMO [F9]'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label23: TLabel
                Left = 551
                Top = 36
                Width = 106
                Height = 13
                Caption = 'Unidade Or'#231'ament'#225'ria'
                Transparent = True
              end
              object Label24: TLabel
                Left = 551
                Top = 75
                Width = 36
                Height = 13
                Caption = 'Fun'#231#227'o'
                Transparent = True
              end
              object Label25: TLabel
                Left = 551
                Top = 115
                Width = 55
                Height = 13
                Caption = 'SubFun'#231#227'o'
                Transparent = True
              end
              object Label26: TLabel
                Left = 551
                Top = 156
                Width = 45
                Height = 13
                Caption = 'Programa'
                Transparent = True
              end
              object Label27: TLabel
                Left = 551
                Top = 199
                Width = 25
                Height = 13
                Caption = 'A'#231#227'o'
                Transparent = True
              end
              object labels: TLabel
                Left = 105
                Top = 280
                Width = 29
                Height = 13
                Caption = 'Grupo'
                Transparent = True
              end
              object Bevel6: TBevel
                Left = 99
                Top = 32
                Width = 812
                Height = 4
              end
              object Label28: TLabel
                Left = 551
                Top = 240
                Width = 57
                Height = 13
                Caption = 'Localiza'#231#227'o'
                Transparent = True
              end
              object Label29: TLabel
                Left = 551
                Top = 280
                Width = 29
                Height = 13
                Caption = 'Grupo'
                Transparent = True
              end
              object rtxtUnorc: TEdit
                Left = 105
                Top = 51
                Width = 40
                Height = 21
                MaxLength = 5
                TabOrder = 0
                OnChange = rtxtUnorcChange
                OnExit = rtxtUnorcExit
              end
              object rcmbUnorc: TComboBox
                Left = 145
                Top = 51
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                MaxLength = 5
                TabOrder = 1
                TabStop = False
                OnChange = rcmbUnorcChange
                OnClick = rcmbUnorcClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object rtxtFuncao: TEdit
                Left = 105
                Top = 90
                Width = 40
                Height = 21
                MaxLength = 2
                TabOrder = 2
                OnChange = rtxtFuncaoChange
                OnExit = rtxtFuncaoExit
              end
              object rcmbFuncao: TComboBox
                Left = 145
                Top = 90
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 3
                TabStop = False
                OnChange = rcmbFuncaoChange
                OnClick = rcmbFuncaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object rtxtSubFuncao: TEdit
                Left = 105
                Top = 130
                Width = 40
                Height = 21
                MaxLength = 3
                TabOrder = 4
                OnChange = rtxtSubFuncaoChange
                OnExit = rtxtSubFuncaoExit
              end
              object rcmbSubFuncao: TComboBox
                Left = 145
                Top = 130
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 5
                TabStop = False
                OnChange = rcmbSubFuncaoChange
                OnClick = rcmbSubFuncaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object rtxtPrograma: TEdit
                Left = 105
                Top = 172
                Width = 40
                Height = 21
                MaxLength = 4
                TabOrder = 6
                OnChange = rtxtProgramaChange
                OnExit = rtxtProgramaExit
              end
              object rcmbPrograma: TComboBox
                Left = 145
                Top = 172
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 7
                TabStop = False
                OnChange = rcmbProgramaChange
                OnClick = rcmbProgramaClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object rtxtAcao: TEdit
                Left = 105
                Top = 213
                Width = 40
                Height = 21
                MaxLength = 4
                TabOrder = 8
                OnChange = rtxtAcaoChange
                OnExit = rtxtAcaoExit
              end
              object rcmbAcao: TComboBox
                Left = 145
                Top = 213
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 9
                TabStop = False
                OnChange = rcmbAcaoChange
                OnClick = rcmbAcaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object rtxtLocali: TEdit
                Left = 105
                Top = 255
                Width = 40
                Height = 21
                MaxLength = 4
                TabOrder = 10
                OnChange = rtxtLocaliChange
                OnExit = rtxtLocaliExit
              end
              object dbgElementoReducao: TDBGrid
                Left = 105
                Top = 320
                Width = 253
                Height = 137
                DataSource = dsEmendasValor
                TabOrder = 13
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColExit = dbgElementoReducaoColExit
                OnExit = dbgElementoReducaoExit
                OnKeyPress = dbgElementoReducaoKeyPress
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'relemento'
                    Title.Caption = 'Elemento'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'rIndUso'
                    Title.Caption = 'IU'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'rFonte'
                    Title.Caption = 'FT'
                    Width = 27
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'rValor'
                    Title.Caption = 'Valor'
                    Visible = True
                  end>
              end
              object atxtUnorc: TEdit
                Left = 551
                Top = 52
                Width = 45
                Height = 21
                MaxLength = 5
                TabOrder = 14
                OnChange = atxtUnorcChange
                OnExit = atxtUnorcExit
              end
              object acmbUnorc: TComboBox
                Left = 591
                Top = 52
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                MaxLength = 5
                TabOrder = 15
                TabStop = False
                OnChange = acmbUnorcChange
                OnClick = acmbUnorcClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object atxtFuncao: TEdit
                Left = 551
                Top = 91
                Width = 40
                Height = 21
                MaxLength = 2
                TabOrder = 16
                OnChange = atxtFuncaoChange
                OnExit = atxtFuncaoExit
              end
              object acmbFuncao: TComboBox
                Left = 591
                Top = 91
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 17
                TabStop = False
                OnChange = acmbFuncaoChange
                OnClick = acmbFuncaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object atxtSubFuncao: TEdit
                Left = 551
                Top = 131
                Width = 40
                Height = 21
                MaxLength = 3
                TabOrder = 18
                OnChange = atxtSubFuncaoChange
                OnExit = atxtSubFuncaoExit
              end
              object acmbSubFuncao: TComboBox
                Left = 591
                Top = 131
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 19
                TabStop = False
                OnChange = acmbSubFuncaoChange
                OnClick = acmbSubFuncaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object atxtPrograma: TEdit
                Left = 551
                Top = 173
                Width = 40
                Height = 21
                MaxLength = 4
                TabOrder = 20
                OnChange = atxtProgramaChange
                OnExit = atxtProgramaExit
              end
              object atxtAcao: TEdit
                Left = 551
                Top = 214
                Width = 40
                Height = 21
                MaxLength = 4
                TabOrder = 21
                OnChange = atxtAcaoChange
                OnExit = atxtAcaoExit
              end
              object acmbAcao: TComboBox
                Left = 591
                Top = 214
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 22
                TabStop = False
                OnChange = acmbAcaoChange
                OnClick = acmbAcaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object acmbPrograma: TComboBox
                Left = 591
                Top = 173
                Width = 293
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 23
                TabStop = False
                OnChange = acmbProgramaChange
                OnClick = acmbProgramaClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object rcmbGrupo: TComboBox
                Left = 106
                Top = 294
                Width = 332
                Height = 21
                ItemHeight = 13
                TabOrder = 12
                OnExit = rcmbGrupoExit
                Items.Strings = (
                  '31 - Pessoal e Encargos Sociais'
                  '32 - Juros e Encargos da D'#237'vida'
                  '33 - Ouras Despesas'
                  '44 - Investimeno'
                  '45 - Invers'#245'es Financeiras'
                  '46 - Amortiza'#231#227'o da D'#237'vida'
                  '00 - Todos'
                  '99 - Reserva de Conting'#234'ncia'
                  '')
              end
              object rcmbLocalizacao: TComboBox
                Left = 146
                Top = 255
                Width = 292
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 11
                TabStop = False
                OnChange = rcmbLocalizacaoChange
                OnClick = rcmbLocalizacaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object atxtLocali: TEdit
                Left = 551
                Top = 255
                Width = 40
                Height = 21
                MaxLength = 4
                TabOrder = 24
                OnChange = atxtLocaliChange
                OnExit = atxtLocaliExit
              end
              object acmbLocalizacao: TComboBox
                Left = 592
                Top = 255
                Width = 292
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 25
                TabStop = False
                OnChange = acmbLocalizacaoChange
                OnClick = acmbLocalizacaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object acmbGrupo: TComboBox
                Left = 552
                Top = 294
                Width = 332
                Height = 21
                ItemHeight = 13
                TabOrder = 26
                OnExit = acmbGrupoExit
                Items.Strings = (
                  '31 - Pessoal e Encargos Sociais'
                  '32 - Juros e Encargos da D'#237'vida'
                  '33 - Ouras Despesas'
                  '44 - Investimeno'
                  '45 - Invers'#245'es Financeiras'
                  '46 - Amortiza'#231#227'o da D'#237'vida'
                  '00 - Todos'
                  '99 - Reserva de Conting'#234'ncia'
                  '')
              end
              object dbgElementoAcrescimo: TDBGrid
                Left = 551
                Top = 320
                Width = 264
                Height = 137
                DataSource = dsEmendasValor02_
                TabOrder = 27
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColExit = dbgElementoAcrescimoColExit
                OnKeyPress = dbgElementoAcrescimoKeyPress
                Columns = <
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'aelemento'
                    PickList.Strings = (
                      '319015- Isto '#233' apenas um teste'
                      '318875-Isto '#233' apenas outro teste')
                    Title.Alignment = taCenter
                    Title.Caption = 'Elemento'
                    Width = 66
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'aIndUso'
                    PickList.Strings = (
                      '0 - Recursos n'#227'o destinados '#224' contrapartida'
                      '1 - Contrapartida BIRD'
                      '2 - Contrapartida BID'
                      '3 - Outras contrapartidas')
                    Title.Alignment = taCenter
                    Title.Caption = 'IU'
                    Width = 25
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'aFonte'
                    Title.Alignment = taCenter
                    Title.Caption = 'FT'
                    Width = 31
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'aValor'
                    Title.Alignment = taCenter
                    Title.Caption = 'Valor'
                    Width = 106
                    Visible = True
                  end>
              end
              object DBNavigator1: TDBNavigator
                Left = 85
                Top = 461
                Width = 252
                Height = 25
                DataSource = dsEmendasValor
                VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
                TabOrder = 28
              end
              object DBNavigator2: TDBNavigator
                Left = 551
                Top = 460
                Width = 252
                Height = 25
                DataSource = dsEmendasValor02_
                VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
                TabOrder = 29
              end
              object btmodificativa: TButton
                Left = 5
                Top = 50
                Width = 76
                Height = 22
                Caption = '90101 [F1]'
                TabOrder = 30
                OnClick = btmodificativaClick
              end
              object btSeinf2: TButton
                Left = 6
                Top = 79
                Width = 76
                Height = 22
                Caption = 'SEINF (F10)'
                TabOrder = 31
                OnClick = btSeinf2Click
              end
              object ColarModificativa: TButton
                Left = 4
                Top = 111
                Width = 79
                Height = 22
                Caption = 'Colar (F11)'
                TabOrder = 32
                Visible = False
                OnClick = ColarModificativaClick
              end
            end
          end
          object TabMeta: TTabSheet
            Caption = 'Meta'
            ImageIndex = 2
            object gbMeta: TGroupBox
              Left = 0
              Top = 0
              Width = 1005
              Height = 490
              Align = alClient
              Enabled = False
              TabOrder = 0
              object Label13: TLabel
                Left = 20
                Top = 14
                Width = 106
                Height = 13
                Caption = 'Unidade Or'#231'ament'#225'ria'
                Transparent = True
              end
              object Label6: TLabel
                Left = 20
                Top = 62
                Width = 36
                Height = 13
                Caption = 'Fun'#231#227'o'
                Transparent = True
              end
              object Label9: TLabel
                Left = 20
                Top = 111
                Width = 55
                Height = 13
                Caption = 'SubFun'#231#227'o'
                Transparent = True
              end
              object Label10: TLabel
                Left = 20
                Top = 159
                Width = 45
                Height = 13
                Caption = 'Programa'
                Transparent = True
              end
              object Label11: TLabel
                Left = 20
                Top = 210
                Width = 25
                Height = 13
                Caption = 'A'#231#227'o'
                Transparent = True
              end
              object Label12: TLabel
                Left = 20
                Top = 259
                Width = 57
                Height = 13
                Caption = 'Localiza'#231#227'o'
                Transparent = True
              end
              object Label14: TLabel
                Left = 22
                Top = 302
                Width = 56
                Height = 13
                Caption = 'Meta F'#237'sica'
                Transparent = True
              end
              object txtProduto: TLabel
                Left = 134
                Top = 320
                Width = 323
                Height = 13
                AutoSize = False
                Caption = 'txtProduto'
                Transparent = True
              end
              object Bevel4: TBevel
                Left = 128
                Top = 316
                Width = 332
                Height = 20
              end
              object txtUnorc: TEdit
                Left = 20
                Top = 30
                Width = 40
                Height = 21
                MaxLength = 5
                TabOrder = 0
                OnChange = txtUnorcChange
                OnExit = txtUnorcExit
              end
              object cmbUnorc: TComboBox
                Left = 60
                Top = 30
                Width = 341
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                MaxLength = 5
                TabOrder = 1
                TabStop = False
                OnChange = cmbUnorcChange
                OnClick = cmbUnorcClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object txtFuncao: TEdit
                Left = 20
                Top = 78
                Width = 40
                Height = 21
                MaxLength = 2
                TabOrder = 2
                OnChange = txtFuncaoChange
                OnExit = txtFuncaoExit
              end
              object cmbFuncao: TComboBox
                Left = 60
                Top = 78
                Width = 341
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 3
                TabStop = False
                OnChange = cmbFuncaoChange
                OnClick = cmbFuncaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object txtSubFuncao: TEdit
                Left = 20
                Top = 127
                Width = 40
                Height = 21
                MaxLength = 3
                TabOrder = 4
                OnChange = txtSubFuncaoChange
                OnExit = txtSubFuncaoExit
              end
              object cmbSubFuncao: TComboBox
                Left = 60
                Top = 127
                Width = 341
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 5
                TabStop = False
                OnChange = cmbSubFuncaoChange
                OnClick = cmbSubFuncaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object txtPrograma: TEdit
                Left = 20
                Top = 176
                Width = 40
                Height = 21
                MaxLength = 4
                TabOrder = 6
                OnChange = txtProgramaChange
                OnExit = txtProgramaExit
              end
              object cmbPrograma: TComboBox
                Left = 60
                Top = 176
                Width = 341
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 7
                TabStop = False
                OnChange = cmbProgramaChange
                OnClick = cmbProgramaClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object txtAcao: TEdit
                Left = 20
                Top = 225
                Width = 40
                Height = 21
                MaxLength = 4
                TabOrder = 8
                OnChange = txtAcaoChange
                OnExit = txtAcaoExit
              end
              object cmbAcao: TComboBox
                Left = 60
                Top = 225
                Width = 341
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 9
                TabStop = False
                OnChange = cmbAcaoChange
                OnClick = cmbAcaoClick
                Items.Strings = (
                  '10 - Fiscal'
                  '20 - Seguridade')
              end
              object txtLocali: TEdit
                Left = 20
                Top = 274
                Width = 49
                Height = 21
                MaxLength = 4
                TabOrder = 10
              end
              object txtMetaFisica: TEdit
                Left = 20
                Top = 316
                Width = 89
                Height = 21
                TabOrder = 11
              end
            end
          end
        end
        object tEG_: TEdit
          Left = 9
          Top = 36
          Width = 88
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = tEG_Exit
        end
        object edValorTotal: TRxCalcEdit
          Left = 197
          Top = 35
          Width = 114
          Height = 26
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 7
        end
        object edSaldo: TRxCalcEdit
          Left = 320
          Top = 35
          Width = 116
          Height = 26
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 8
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 1
      object Bevel2: TBevel
        Left = 0
        Top = 546
        Width = 1009
        Height = 55
      end
      object Label50: TLabel
        Left = 16
        Top = 554
        Width = 90
        Height = 16
        Caption = 'Tipo de Pesquisa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label51: TLabel
        Left = 248
        Top = 554
        Width = 120
        Height = 16
        Caption = 'Dados da Pesquisa [F1]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 1017
        Height = 545
        Hint = 'Para Visualizar Click Duas Vezes No Registro'
        Align = alTop
        Color = cl3DLight
        DataSource = sQry
        FixedColor = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGridCellClick
        OnDrawColumnCell = DBGridDrawColumnCell
        OnDblClick = DBGridDblClick
        OnExit = DBGridExit
        Columns = <
          item
            Expanded = False
            FieldName = 'NumEmenda'
            Title.Caption = 'Emenda'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vereador'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 235
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo_1'
            Title.Caption = 'Tipo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 166
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Status_1'
            Title.Caption = 'Status'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processado'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EL_Descricao'
            Title.Caption = 'Acr'#233'scimo Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 272
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EL_MetaFisica'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end>
      end
      object cbPesq: TComboBox
        Left = 16
        Top = 570
        Width = 225
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 1
        Text = 'Emenda'
        Items.Strings = (
          'Emenda'
          'Vereador'
          'Processado'
          'Descri'#231#227'o')
      end
      object edPesq: TEdit
        Left = 248
        Top = 570
        Width = 377
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object btPesquisar: TButton
        Left = 640
        Top = 568
        Width = 169
        Height = 25
        Cursor = crHandPoint
        Caption = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btPesquisarClick
      end
      object btRenovar: TButton
        Left = 816
        Top = 568
        Width = 169
        Height = 25
        Cursor = crHandPoint
        Caption = 'Renovar a Consulta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = btRenovarClick
      end
    end
  end
  object btnCancel: TdxButton
    Left = 236
    Top = 642
    Width = 110
    Cursor = crHandPoint
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = btnCancelClick
    Caption = '&Cancelar [F4]'
    Glyph.Data = {
      96010000424D9601000000000000760000002800000018000000180000000100
      0400000000002001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888884F88888888888888888888804F88888888888888888
      888084F888888888888888888808840000FF888888888888808888888800F888
      888888880888888888880F888888888880888888888880F88888888888088400
      0888880F88888888888084F88088880F88888888888804F888088880F8888888
      8888848888808880F88888888888888888808880F88888888888888888808880
      F88888888888888888808880F88888888880F88888088880F888888888080FFF
      F088880F88888888808880000888880F8888888808888888888880F888888888
      8088888888880888888888888800888888008888888888888888000000888888
      8888888888888888888888888888888888888888888888888888}
    TabOrder = 2
  end
  object btnDelete: TdxButton
    Left = 458
    Top = 642
    Width = 110
    Cursor = crHandPoint
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = btnDeleteClick
    Caption = '&Excluer [F6]'
    Glyph.Data = {
      96010000424D9601000000000000760000002800000018000000180000000100
      0400000000002001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      888888888888888888888888888888888888888888FFFFFFFFFFFFF888888888
      80000000000000F88888888880F88888877770F88888888880F78787807070F8
      8888888880F78787807070F88888888880F78787807070F88888888880F78787
      807070F88888888880F78787807070F88888888880F78787807070F888888888
      80F78787807070F88888888880F78787807070F88888888880F78787807070F8
      8888888880F78787807070F88888888880F78787807070F88888888880F88888
      877770FF88888888000000000000000F888888880F8888887777770F88888888
      0000000000000008888888888888808880888888888888888888880008888888
      8888888888888888888888888888888888888888888888888888}
    TabOrder = 4
  end
  object btnNew: TdxButton
    Left = 7
    Top = 642
    Width = 101
    Cursor = crHandPoint
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = btnNewClick
    Caption = '&Novo [F2] '
    Glyph.Data = {
      96010000424D9601000000000000760000002800000018000000180000000100
      0400000000002001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888F88888888888888888888F80F88F8888888FFFFFFFF808F0F80888888
      80800000008808080888888880F8F888888FF0F08FFF888880FF8F8888000F0F
      0008888880F8F8F8888880F08F88888880FF8F8F8888080F08F8888880F8F8F8
      F880880F8088888880F88F8F8F8888088888888880F88888F8F8F888F8888888
      80F888888F8F8F80F888888880F8888888F8F8F0F888888880F88888888F8F80
      F888888880F888888888F800F888888880F88888888880808888888880F88888
      8888080F8888888880F8888888808F088888888880F888888808F0F888888888
      80F88888880FF0888888888880FFFFFFFFF00F88888888888000000000000888
      8888888888888888888888888888888888888888888888888888}
    TabOrder = 1
  end
  object btnAlterar: TdxButton
    Left = 348
    Top = 642
    Width = 110
    Cursor = crHandPoint
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = btnAlterarClick
    Caption = '&Alterar [F5]'
    Glyph.Data = {
      96010000424D9601000000000000760000002800000018000000180000000100
      0400000000002001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      88888888888888888888888FF888888888888888888888F4F888888888888888
      88888F04F8888888888888888888F084FFFF888888888888888F08840000FF88
      8888888888F08888888800F888888888880888888888880F88888FFFFFF08888
      88888880F888800000F80884000888880F88808880F88084888088880F888088
      80F888048888088880F8808880F88884F888808880F88088880F88840F888088
      80F888088880FFF480F8808880F8880888880004880F800000F8888088888888
      8880F888888888880888888888880F8888888888800888888880888888888888
      8880000488088888888888888888888480888888888888888888888408888888
      8888888888888884888888888888888888888888888888888888}
    TabOrder = 3
  end
  object btClosed: TdxButton
    Left = 896
    Top = 641
    Width = 109
    Cursor = crHandPoint
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = btClosedClick
    Caption = '&Fechar [F7]'
    Glyph.Data = {
      76020000424D7602000000000000760000002800000020000000200000000100
      0400000000000002000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000777FFFFFFFFFFFFFFFFFFFFFFF0808
      880077777777FFFFFFFFFFFFFFFFF080888077777777777FFFFFFFFFFFFFFF08
      080077777777777FFFFFFFFFFFFFFF000030FFFFFFFFFFFFFFFFFFFFFFFFFF07
      07700FFFFFFFFFFFFFFFFFFFFFFFF00707730FFFFFFFFFFFFFFFFFFFFFFFF077
      0773000FFFFFFFFFFFFFFFFFFFFFF0770733000FFFFFFFFFFFFFFFFFFFFFF037
      07FF0880FFFFFFFFFFFFFFFFFFFF0F3777FF0880FFFFFFFFFFFFFFFFFFFF0FF3
      77F30000FFFFFFFFFFFFFFFFFFFFF0F373330BB0FFFFFFFFFFFFFFFFFFFFF033
      33000BB0FFFFFFFFFFFFFFFFFFFFFF0003030BB0FFFFFFFFFFFFFFFF0000F0BB
      B0B30BB0FFFFFFFFFFFFFFFF088000BBB0B30BB0FFFFFFFFFFFFFFFF0800B07B
      BBBBB0B0FFF00FFFFFFFFFFFF0FB007BBBBBFFB0FF0770FFFFFFFFFFF0BBB000
      0FFFBBB0F088770FFFFFFFFFF00BF3BFF00BBB00F088870FFFFFFFFFFF0BBFF7
      777770FFF087870FFFFFFFFFFF0BBB7000070000F078870FFFFFFFFFFFF0B003
      33300FFF0077880FFFFFFFFFFFFF003788000FFFFF0000FFFFFFFFFFFFFFF077
      38000FFF00808000FFFFFFFFFFFFF07787000FF0080080FFFFFFFFFFFFFFF000
      07007FFFFFFF00FFFFFFFFFFFFFFF7000000FFFFFFFFFFFFFFFFFFFFFFFFFF70
      007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 5
  end
  object btnSave: TdxButton
    Left = 111
    Top = 642
    Width = 123
    Cursor = crHandPoint
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    Version = '1.0.2e'
    OnClick = btnSaveClick
    Caption = '&Salvar [F3]'
    Glyph.Data = {
      96010000424D9601000000000000760000002800000018000000180000000100
      0400000000002001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888888888888888888888888FFFFFFFFFFFFFFFF88888880
      0000000000000000F888880F87FFFFFFFFFFFF880F88880F8788888888888F88
      0F88880F87FFFFFFFFFFFF880F88880F8788888888888F880F88880F87FFFFFF
      FFFFFF880F88880F8788888888888F880F88880F87FFFFFFFFFFFF880F88880F
      87777777777777880F88880F88888888888888880F88880F88FFFFFFFFFFF888
      0F88880F8788877777777F880F88880F8788877778887F880F88880F87888777
      78887F880F88880F8788877778887F880F88880F8788877778887F880F88880F
      8788877778887F880F88880FF7FFF77777777FFF088888800000000000000000
      8888888888888888888888888888888888888888888888888888}
    TabOrder = 6
  end
  object qry: TADOQuery
    Active = True
    AutoCalcFields = False
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select  E.*, V.Nome as Vereador,'
      '       Tipo = '
      '        Case '
      '           when E.tipo = 1 then '#39'1 - Aditiva de Texto'#39
      '           when E.tipo = 2 then '#39'2 - Modificativa de Texto'#39
      '           when E.tipo = 3 then '#39'3 - Aditiva de Valor'#39
      '           when E.tipo = 4 then '#39'4 - Modificativa de Valor'#39
      '           when E.tipo = 5 then '#39'5 - Aditiva de Meta'#39
      '           when E.tipo = 6 then '#39'6 - Modificativa de Meta'#39
      '        End, '
      '        Status = '
      '        Case '
      '           When E.Status = 1 Then '#39'1 - Aprovada'#39
      '           When E.Status = 2 Then '#39'2 - Retida'#39
      '           When E.Status = 3 Then '#39'3 - Em Discuss'#227'o'#39
      '        End, '
      '       '
      '       EL.Descricao as EL_Descricao,'
      '       EL.MetaFisica as EL_MetaFisica, Processado  '
      'From Emendas E'
      'Left outer join Emendas_Locali EL     on EL.Emenda = E.NumEmenda'
      
        '-- Left outer join Emendas_Valor  EV     on EV.Emenda = E.NumEme' +
        'nda'
      'Left outer Join Vereadores_Emendas VE on VE.Emenda = E.NumEmenda'
      
        'Left outer Join Vereadores          V on V.Codigo =  VE.Codigo_V' +
        'ereador'
      'Order by E.NumEmenda, V.Nome')
    Left = 296
    Top = 88
    object qryCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qryNumEmenda: TStringField
      FieldName = 'NumEmenda'
      FixedChar = True
      Size = 10
    end
    object qryVotacao: TStringField
      FieldName = 'Votacao'
      FixedChar = True
      Size = 1
    end
    object qryStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object qryTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object qryTexto: TMemoField
      FieldName = 'Texto'
      BlobType = ftMemo
    end
    object qryUnorc: TStringField
      FieldName = 'Unorc'
      FixedChar = True
      Size = 5
    end
    object qryFuncao: TStringField
      FieldName = 'Funcao'
      FixedChar = True
      Size = 2
    end
    object qrySubFuncao: TStringField
      FieldName = 'SubFuncao'
      FixedChar = True
      Size = 3
    end
    object qryPrograma: TStringField
      FieldName = 'Programa'
      FixedChar = True
      Size = 4
    end
    object qryAcao: TStringField
      FieldName = 'Acao'
      FixedChar = True
      Size = 4
    end
    object qryLocali: TIntegerField
      FieldName = 'Locali'
    end
    object qryEsfera: TStringField
      FieldName = 'Esfera'
      FixedChar = True
      Size = 2
    end
    object qryRegional: TStringField
      FieldName = 'Regional'
      FixedChar = True
      Size = 2
    end
    object qryMetaFisica: TIntegerField
      FieldName = 'MetaFisica'
    end
    object qryProduto: TStringField
      FieldName = 'Produto'
      Size = 80
    end
    object qryaUnorc: TStringField
      FieldName = 'aUnorc'
      FixedChar = True
      Size = 5
    end
    object qryaFuncao: TStringField
      FieldName = 'aFuncao'
      FixedChar = True
      Size = 2
    end
    object qryaSubFuncao: TStringField
      FieldName = 'aSubFuncao'
      FixedChar = True
      Size = 3
    end
    object qryaPrograma: TStringField
      FieldName = 'aPrograma'
      FixedChar = True
      Size = 4
    end
    object qryaAcao: TStringField
      FieldName = 'aAcao'
      FixedChar = True
      Size = 4
    end
    object qryaLocali: TStringField
      FieldName = 'aLocali'
      Size = 4
    end
    object qryaGrupo: TStringField
      FieldName = 'aGrupo'
      FixedChar = True
      Size = 2
    end
    object qryaEsfera: TStringField
      FieldName = 'aEsfera'
      FixedChar = True
      Size = 2
    end
    object qryaRegional: TStringField
      FieldName = 'aRegional'
      FixedChar = True
      Size = 2
    end
    object qryaMetaFisica: TIntegerField
      FieldName = 'aMetaFisica'
    end
    object qryaGrupoDesp: TStringField
      FieldName = 'aGrupoDesp'
      Size = 2
    end
    object qryrUnorc: TStringField
      FieldName = 'rUnorc'
      FixedChar = True
      Size = 5
    end
    object qryrFuncao: TStringField
      FieldName = 'rFuncao'
      FixedChar = True
      Size = 2
    end
    object qryrSubFuncao: TStringField
      FieldName = 'rSubFuncao'
      FixedChar = True
      Size = 3
    end
    object qryrPrograma: TStringField
      FieldName = 'rPrograma'
      FixedChar = True
      Size = 4
    end
    object qryrAcao: TStringField
      FieldName = 'rAcao'
      FixedChar = True
      Size = 4
    end
    object qryrLocali: TStringField
      FieldName = 'rLocali'
      Size = 4
    end
    object qryrGrupo: TStringField
      FieldName = 'rGrupo'
      FixedChar = True
      Size = 2
    end
    object qryrEsfera: TStringField
      FieldName = 'rEsfera'
      FixedChar = True
      Size = 2
    end
    object qryrRegional: TStringField
      FieldName = 'rRegional'
      FixedChar = True
      Size = 2
    end
    object qryrMetaFisica: TIntegerField
      FieldName = 'rMetaFisica'
    end
    object qryrGrupoDesp: TStringField
      FieldName = 'rGrupoDesp'
      Size = 2
    end
    object qryProcessado: TStringField
      FieldName = 'Processado'
      Size = 1
    end
    object qryVereador: TStringField
      FieldName = 'Vereador'
      Size = 60
    end
    object qryEL_Descricao: TStringField
      FieldName = 'EL_Descricao'
      Size = 255
    end
    object qryEL_MetaFisica: TBCDField
      FieldName = 'EL_MetaFisica'
      Precision = 19
    end
    object qryProcessado_1: TStringField
      FieldName = 'Processado_1'
      Size = 1
    end
    object qryTipo_1: TStringField
      FieldName = 'Tipo_1'
      ReadOnly = True
      Size = 25
    end
    object qryStatus_1: TStringField
      FieldName = 'Status_1'
      ReadOnly = True
      Size = 16
    end
    object qryEmendaG: TStringField
      FieldName = 'EmendaG'
      FixedChar = True
      Size = 10
    end
  end
  object sQry: TDataSource
    DataSet = qry
    Left = 328
    Top = 88
  end
  object stp: TADOStoredProc
    Connection = dmtData.adoCon
    ProcedureName = 'stp_acoesUpdate;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@p_operation'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@p_codigo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@p_descricao'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@p_tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@p_produto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@p_unidade'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end>
    Prepared = True
    Left = 64
    Top = 80
  end
  object qryTable: TADOQuery
    Connection = dmtData.adoCon
    Parameters = <>
    Left = 24
    Top = 176
  end
  object qy_meta_: TADOQuery
    Connection = dmtData.adoCon
    Parameters = <>
    Left = 24
    Top = 208
  end
  object qyEmendasValor_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    BeforePost = qyEmendasValor_BeforePost
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
      'where emenda = :emenda'
      'and status ='#39'r'#39)
    Left = 24
    Top = 512
    object qyEmendasValor_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyEmendasValor_Emenda: TStringField
      FieldName = 'Emenda'
      FixedChar = True
      Size = 10
    end
    object qyEmendasValor_relemento: TStringField
      FieldName = 'relemento'
      FixedChar = True
      Size = 6
    end
    object qyEmendasValor_rIndUso: TStringField
      FieldName = 'rIndUso'
      FixedChar = True
      Size = 2
    end
    object qyEmendasValor_rFonte: TStringField
      FieldName = 'rFonte'
      FixedChar = True
      Size = 4
    end
    object qyEmendasValor_rValor: TBCDField
      FieldName = 'rValor'
      DisplayFormat = '#,###,###,###'
      Precision = 19
    end
    object qyEmendasValor_aelemento: TStringField
      FieldName = 'aelemento'
      FixedChar = True
      Size = 6
    end
    object qyEmendasValor_aIndUso: TStringField
      FieldName = 'aIndUso'
      FixedChar = True
      Size = 2
    end
    object qyEmendasValor_aFonte: TStringField
      FieldName = 'aFonte'
      FixedChar = True
      Size = 4
    end
    object qyEmendasValor_aValor: TBCDField
      FieldName = 'aValor'
      DisplayFormat = '#,###,###,###'
      Precision = 19
    end
    object qyEmendasValor_Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
  end
  object dsEmendasValor: TDataSource
    DataSet = qyEmendasValor_
    Left = 56
    Top = 512
  end
  object qyEmendaCons_: TADOQuery
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
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM EMENDAS  WHERE numEMENDA = :EMENDA'
      'ORDER BY numEMENDA')
    Left = 224
    Top = 208
    object qyEmendaCons_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyEmendaCons_EmendaG: TStringField
      FieldName = 'EmendaG'
      FixedChar = True
      Size = 10
    end
    object qyEmendaCons_NumEmenda: TStringField
      FieldName = 'NumEmenda'
      FixedChar = True
      Size = 10
    end
    object qyEmendaCons_Votacao: TStringField
      FieldName = 'Votacao'
      FixedChar = True
      Size = 1
    end
    object qyEmendaCons_Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object qyEmendaCons_Tipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object qyEmendaCons_Texto: TMemoField
      FieldName = 'Texto'
      BlobType = ftMemo
    end
    object qyEmendaCons_Unorc: TStringField
      FieldName = 'Unorc'
      FixedChar = True
      Size = 5
    end
    object qyEmendaCons_Funcao: TStringField
      FieldName = 'Funcao'
      FixedChar = True
      Size = 2
    end
    object qyEmendaCons_SubFuncao: TStringField
      FieldName = 'SubFuncao'
      FixedChar = True
      Size = 3
    end
    object qyEmendaCons_Programa: TStringField
      FieldName = 'Programa'
      FixedChar = True
      Size = 4
    end
    object qyEmendaCons_Acao: TStringField
      FieldName = 'Acao'
      FixedChar = True
      Size = 4
    end
    object qyEmendaCons_Locali: TIntegerField
      FieldName = 'Locali'
    end
    object qyEmendaCons_Esfera: TStringField
      FieldName = 'Esfera'
      FixedChar = True
      Size = 2
    end
    object qyEmendaCons_Regional: TStringField
      FieldName = 'Regional'
      FixedChar = True
      Size = 2
    end
    object qyEmendaCons_MetaFisica: TIntegerField
      FieldName = 'MetaFisica'
    end
    object qyEmendaCons_Produto: TStringField
      FieldName = 'Produto'
      Size = 80
    end
    object qyEmendaCons_aUnorc: TStringField
      FieldName = 'aUnorc'
      FixedChar = True
      Size = 5
    end
    object qyEmendaCons_aFuncao: TStringField
      FieldName = 'aFuncao'
      FixedChar = True
      Size = 2
    end
    object qyEmendaCons_aSubFuncao: TStringField
      FieldName = 'aSubFuncao'
      FixedChar = True
      Size = 3
    end
    object qyEmendaCons_aPrograma: TStringField
      FieldName = 'aPrograma'
      FixedChar = True
      Size = 4
    end
    object qyEmendaCons_aAcao: TStringField
      FieldName = 'aAcao'
      FixedChar = True
      Size = 4
    end
    object qyEmendaCons_aLocali: TStringField
      FieldName = 'aLocali'
      Size = 4
    end
    object qyEmendaCons_aGrupo: TStringField
      FieldName = 'aGrupo'
      FixedChar = True
      Size = 2
    end
    object qyEmendaCons_aEsfera: TStringField
      FieldName = 'aEsfera'
      FixedChar = True
      Size = 2
    end
    object qyEmendaCons_aRegional: TStringField
      FieldName = 'aRegional'
      FixedChar = True
      Size = 2
    end
    object qyEmendaCons_aMetaFisica: TIntegerField
      FieldName = 'aMetaFisica'
    end
    object qyEmendaCons_aGrupoDesp: TStringField
      FieldName = 'aGrupoDesp'
      Size = 2
    end
    object qyEmendaCons_rUnorc: TStringField
      FieldName = 'rUnorc'
      FixedChar = True
      Size = 5
    end
    object qyEmendaCons_rFuncao: TStringField
      FieldName = 'rFuncao'
      FixedChar = True
      Size = 2
    end
    object qyEmendaCons_rSubFuncao: TStringField
      FieldName = 'rSubFuncao'
      FixedChar = True
      Size = 3
    end
    object qyEmendaCons_rPrograma: TStringField
      FieldName = 'rPrograma'
      FixedChar = True
      Size = 4
    end
    object qyEmendaCons_rAcao: TStringField
      FieldName = 'rAcao'
      FixedChar = True
      Size = 4
    end
    object qyEmendaCons_rLocali: TStringField
      FieldName = 'rLocali'
      Size = 4
    end
    object qyEmendaCons_rGrupo: TStringField
      FieldName = 'rGrupo'
      FixedChar = True
      Size = 2
    end
    object qyEmendaCons_rEsfera: TStringField
      FieldName = 'rEsfera'
      FixedChar = True
      Size = 2
    end
    object qyEmendaCons_rRegional: TStringField
      FieldName = 'rRegional'
      FixedChar = True
      Size = 2
    end
    object qyEmendaCons_rMetaFisica: TIntegerField
      FieldName = 'rMetaFisica'
    end
    object qyEmendaCons_rGrupoDesp: TStringField
      FieldName = 'rGrupoDesp'
      Size = 2
    end
    object qyEmendaCons_Processado: TStringField
      FieldName = 'Processado'
      Size = 1
    end
  end
  object Qy_: TADOQuery
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EMENDA'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM EMENDAS  WHERE numEMENDA = :EMENDA'
      'ORDER BY numEMENDA')
    Left = 24
    Top = 352
    object AutoIncField1: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'NumEmenda'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'Votacao'
      FixedChar = True
      Size = 1
    end
    object StringField3: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object StringField4: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object StringField5: TStringField
      FieldName = 'Texto'
      Size = 255
    end
    object StringField6: TStringField
      FieldName = 'Unorc'
      FixedChar = True
      Size = 5
    end
    object StringField7: TStringField
      FieldName = 'Funcao'
      FixedChar = True
      Size = 2
    end
    object StringField8: TStringField
      FieldName = 'SubFuncao'
      FixedChar = True
      Size = 3
    end
    object StringField9: TStringField
      FieldName = 'Programa'
      FixedChar = True
      Size = 4
    end
    object StringField10: TStringField
      FieldName = 'Acao'
      FixedChar = True
      Size = 4
    end
    object IntegerField1: TIntegerField
      FieldName = 'Locali'
    end
    object StringField11: TStringField
      FieldName = 'Esfera'
      FixedChar = True
      Size = 2
    end
    object StringField12: TStringField
      FieldName = 'Regional'
      FixedChar = True
      Size = 2
    end
    object IntegerField2: TIntegerField
      FieldName = 'MetaFisica'
    end
    object StringField13: TStringField
      FieldName = 'Produto'
      Size = 80
    end
    object StringField14: TStringField
      FieldName = 'aUnorc'
      FixedChar = True
      Size = 5
    end
    object StringField15: TStringField
      FieldName = 'aFuncao'
      FixedChar = True
      Size = 2
    end
    object StringField16: TStringField
      FieldName = 'aSubFuncao'
      FixedChar = True
      Size = 3
    end
    object StringField17: TStringField
      FieldName = 'aPrograma'
      FixedChar = True
      Size = 4
    end
    object StringField18: TStringField
      FieldName = 'aAcao'
      FixedChar = True
      Size = 4
    end
    object IntegerField3: TIntegerField
      FieldName = 'aLocali'
    end
    object StringField19: TStringField
      FieldName = 'aGrupo'
      FixedChar = True
      Size = 2
    end
    object StringField20: TStringField
      FieldName = 'aEsfera'
      FixedChar = True
      Size = 2
    end
    object StringField21: TStringField
      FieldName = 'aRegional'
      FixedChar = True
      Size = 2
    end
    object IntegerField4: TIntegerField
      FieldName = 'aMetaFisica'
    end
    object StringField22: TStringField
      FieldName = 'aGrupoDesp'
      Size = 25
    end
    object StringField23: TStringField
      FieldName = 'rUnorc'
      FixedChar = True
      Size = 5
    end
    object StringField24: TStringField
      FieldName = 'rFuncao'
      FixedChar = True
      Size = 2
    end
    object StringField25: TStringField
      FieldName = 'rSubFuncao'
      FixedChar = True
      Size = 3
    end
    object StringField26: TStringField
      FieldName = 'rPrograma'
      FixedChar = True
      Size = 4
    end
    object StringField27: TStringField
      FieldName = 'rAcao'
      FixedChar = True
      Size = 4
    end
    object IntegerField5: TIntegerField
      FieldName = 'rLocali'
    end
    object StringField28: TStringField
      FieldName = 'rGrupo'
      FixedChar = True
      Size = 2
    end
    object StringField29: TStringField
      FieldName = 'rEsfera'
      FixedChar = True
      Size = 2
    end
    object StringField30: TStringField
      FieldName = 'rRegional'
      FixedChar = True
      Size = 2
    end
    object IntegerField6: TIntegerField
      FieldName = 'rMetaFisica'
    end
    object StringField31: TStringField
      FieldName = 'rGrupoDesp'
      Size = 25
    end
  end
  object qyElr_: TADOQuery
    Active = True
    Connection = dmtData.adoCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ELDESPESA, INDUSO, FONTE, VALOR FROM ORCAMENTO')
    Left = 24
    Top = 384
    object qyElr_ELDESPESA: TStringField
      FieldName = 'ELDESPESA'
      Size = 6
    end
    object qyElr_INDUSO: TStringField
      FieldName = 'INDUSO'
      Size = 1
    end
    object qyElr_FONTE: TStringField
      FieldName = 'FONTE'
      Size = 3
    end
    object qyElr_VALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 19
    end
  end
  object dsElr_: TDataSource
    DataSet = qyElr_
    Left = 56
    Top = 384
  end
  object qyEla_: TADOQuery
    Active = True
    Connection = dmtData.adoCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ELDESPESA, INDUSO, FONTE, VALOR FROM ORCAMENTO')
    Left = 24
    Top = 416
    object StringField32: TStringField
      FieldName = 'ELDESPESA'
      Size = 6
    end
    object StringField33: TStringField
      FieldName = 'INDUSO'
      Size = 1
    end
    object StringField34: TStringField
      FieldName = 'FONTE'
      Size = 3
    end
    object BCDField1: TBCDField
      FieldName = 'VALOR'
      Precision = 19
    end
  end
  object dsEla_: TDataSource
    DataSet = qyEla_
    Left = 56
    Top = 416
  end
  object qyEmendasValor02_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    BeforePost = qyEmendasValor02_BeforePost
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
      'where emenda = :emenda'
      'and status ='#39'a'#39)
    Left = 24
    Top = 544
    object qyEmendasValor02_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyEmendasValor02_Emenda: TStringField
      FieldName = 'Emenda'
      FixedChar = True
      Size = 10
    end
    object qyEmendasValor02_relemento: TStringField
      FieldName = 'relemento'
      FixedChar = True
      Size = 6
    end
    object qyEmendasValor02_rIndUso: TStringField
      FieldName = 'rIndUso'
      FixedChar = True
      Size = 2
    end
    object qyEmendasValor02_rFonte: TStringField
      FieldName = 'rFonte'
      FixedChar = True
      Size = 4
    end
    object qyEmendasValor02_rValor: TBCDField
      FieldName = 'rValor'
      DisplayFormat = '#,###,###,###'
      Precision = 19
    end
    object qyEmendasValor02_aelemento: TStringField
      FieldName = 'aelemento'
      FixedChar = True
      Size = 6
    end
    object qyEmendasValor02_aIndUso: TStringField
      FieldName = 'aIndUso'
      FixedChar = True
      Size = 2
    end
    object qyEmendasValor02_aFonte: TStringField
      FieldName = 'aFonte'
      FixedChar = True
      Size = 4
    end
    object qyEmendasValor02_aValor: TBCDField
      FieldName = 'aValor'
      DisplayFormat = '#,###,###,###'
      Precision = 19
    end
    object qyEmendasValor02_Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
  end
  object dsEmendasValor02_: TDataSource
    DataSet = qyEmendasValor02_
    Left = 56
    Top = 544
  end
  object qyLocali_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    BeforePost = qyEmendasValor_BeforePost
    Parameters = <
      item
        Name = 'emenda'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select * from emendas_locali'
      'where emenda = :emenda')
    Left = 24
    Top = 272
    object qyLocali_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyLocali_Emenda: TStringField
      FieldName = 'Emenda'
    end
    object qyLocali_Esfera: TStringField
      FieldName = 'Esfera'
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
  object dsLocali_: TDataSource
    DataSet = qyLocali_
    Left = 56
    Top = 272
  end
  object qyEv_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM EMENDAS_VALOR')
    Left = 120
    Top = 72
    object qyEv_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyEv_Emenda: TStringField
      FieldName = 'Emenda'
      FixedChar = True
      Size = 10
    end
    object qyEv_relemento: TStringField
      FieldName = 'relemento'
      FixedChar = True
      Size = 6
    end
    object qyEv_rIndUso: TStringField
      FieldName = 'rIndUso'
      FixedChar = True
      Size = 2
    end
    object qyEv_rFonte: TStringField
      FieldName = 'rFonte'
      FixedChar = True
      Size = 4
    end
    object qyEv_rValor: TBCDField
      FieldName = 'rValor'
      Precision = 19
    end
    object qyEv_aelemento: TStringField
      FieldName = 'aelemento'
      FixedChar = True
      Size = 6
    end
    object qyEv_aIndUso: TStringField
      FieldName = 'aIndUso'
      FixedChar = True
      Size = 2
    end
    object qyEv_aFonte: TStringField
      FieldName = 'aFonte'
      FixedChar = True
      Size = 4
    end
    object qyEv_aValor: TBCDField
      FieldName = 'aValor'
      Precision = 19
    end
    object qyEv_Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
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
    Left = 880
    Top = 80
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
      Size = 60
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
    Left = 944
    Top = 80
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
  object dsVE_: TDataSource
    DataSet = qyVE_
    Left = 912
    Top = 80
  end
  object qyLocali_Lei_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Lei
    CursorType = ctStatic
    BeforePost = qyEmendasValor02_BeforePost
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
      'SELECT * FROM LOCALI'
      '')
    Left = 448
    Top = 240
    object qyLocali_Lei_CODIGO: TAutoIncField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object qyLocali_Lei_esfera: TStringField
      FieldName = 'esfera'
      Size = 2
    end
    object qyLocali_Lei_unorc: TStringField
      FieldName = 'unorc'
      Size = 5
    end
    object qyLocali_Lei_funcao: TStringField
      FieldName = 'funcao'
      Size = 2
    end
    object qyLocali_Lei_subFuncao: TStringField
      FieldName = 'subFuncao'
      Size = 3
    end
    object qyLocali_Lei_programa: TStringField
      FieldName = 'programa'
      Size = 4
    end
    object qyLocali_Lei_acao: TStringField
      FieldName = 'acao'
      Size = 4
    end
    object qyLocali_Lei_locali: TStringField
      FieldName = 'locali'
      Size = 4
    end
    object qyLocali_Lei_regional: TStringField
      FieldName = 'regional'
      Size = 1
    end
    object qyLocali_Lei_descricao: TStringField
      FieldName = 'descricao'
      Size = 255
    end
    object qyLocali_Lei_metaFisica: TBCDField
      FieldName = 'metaFisica'
      Precision = 19
    end
  end
  object dsLocali_Lei_: TDataSource
    DataSet = qyLocali_Lei_
    Left = 480
    Top = 240
  end
  object qyDet_Lei_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Lei
    CursorType = ctStatic
    BeforePost = qyEmendasValor02_BeforePost
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DET'
      '')
    Left = 448
    Top = 288
    object qyDet_Lei_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyDet_Lei_locali: TIntegerField
      FieldName = 'locali'
    end
    object qyDet_Lei_elDespesa: TStringField
      FieldName = 'elDespesa'
      Size = 6
    end
    object qyDet_Lei_indUso: TStringField
      FieldName = 'indUso'
      Size = 1
    end
    object qyDet_Lei_fonte: TStringField
      FieldName = 'fonte'
      Size = 3
    end
    object qyDet_Lei_valor: TBCDField
      FieldName = 'valor'
      Precision = 19
    end
  end
  object dsDet_Lei_: TDataSource
    DataSet = qyDet_Lei_
    Left = 480
    Top = 288
  end
  object qyEvlr_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    BeforePost = qyEmendasValor02_BeforePost
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Emendas_Valor'
      '')
    Left = 224
    Top = 240
    object qyEvlr_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyEvlr_Emenda: TStringField
      FieldName = 'Emenda'
      FixedChar = True
      Size = 10
    end
    object qyEvlr_relemento: TStringField
      FieldName = 'relemento'
      FixedChar = True
      Size = 6
    end
    object qyEvlr_rIndUso: TStringField
      FieldName = 'rIndUso'
      FixedChar = True
      Size = 2
    end
    object qyEvlr_rFonte: TStringField
      FieldName = 'rFonte'
      FixedChar = True
      Size = 4
    end
    object qyEvlr_rValor: TBCDField
      FieldName = 'rValor'
      Precision = 19
    end
    object qyEvlr_aelemento: TStringField
      FieldName = 'aelemento'
      FixedChar = True
      Size = 6
    end
    object qyEvlr_aIndUso: TStringField
      FieldName = 'aIndUso'
      FixedChar = True
      Size = 2
    end
    object qyEvlr_aFonte: TStringField
      FieldName = 'aFonte'
      FixedChar = True
      Size = 4
    end
    object qyEvlr_aValor: TBCDField
      FieldName = 'aValor'
      Precision = 19
    end
    object qyEvlr_Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
  end
  object qyEmendas_Cons_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    BeforePost = qyEmendasValor02_BeforePost
    Parameters = <
      item
        Name = 'EMENDA'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM EMENDAS'
      'WHERE NUMEMENDA = :EMENDA'
      '')
    Left = 224
    Top = 176
    object qyEmendas_Cons_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyEmendas_Cons_NumEmenda: TStringField
      FieldName = 'NumEmenda'
      FixedChar = True
      Size = 10
    end
    object qyEmendas_Cons_Votacao: TStringField
      FieldName = 'Votacao'
      FixedChar = True
      Size = 1
    end
    object qyEmendas_Cons_Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object qyEmendas_Cons_Tipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object qyEmendas_Cons_Texto: TMemoField
      FieldName = 'Texto'
      BlobType = ftMemo
    end
    object qyEmendas_Cons_Unorc: TStringField
      FieldName = 'Unorc'
      FixedChar = True
      Size = 5
    end
    object qyEmendas_Cons_Funcao: TStringField
      FieldName = 'Funcao'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Cons_SubFuncao: TStringField
      FieldName = 'SubFuncao'
      FixedChar = True
      Size = 3
    end
    object qyEmendas_Cons_Programa: TStringField
      FieldName = 'Programa'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_Cons_Acao: TStringField
      FieldName = 'Acao'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_Cons_Locali: TIntegerField
      FieldName = 'Locali'
    end
    object qyEmendas_Cons_Esfera: TStringField
      FieldName = 'Esfera'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Cons_Regional: TStringField
      FieldName = 'Regional'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Cons_MetaFisica: TIntegerField
      FieldName = 'MetaFisica'
    end
    object qyEmendas_Cons_Produto: TStringField
      FieldName = 'Produto'
      Size = 80
    end
    object qyEmendas_Cons_aUnorc: TStringField
      FieldName = 'aUnorc'
      FixedChar = True
      Size = 5
    end
    object qyEmendas_Cons_aFuncao: TStringField
      FieldName = 'aFuncao'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Cons_aSubFuncao: TStringField
      FieldName = 'aSubFuncao'
      FixedChar = True
      Size = 3
    end
    object qyEmendas_Cons_aPrograma: TStringField
      FieldName = 'aPrograma'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_Cons_aAcao: TStringField
      FieldName = 'aAcao'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_Cons_aLocali: TStringField
      FieldName = 'aLocali'
      Size = 4
    end
    object qyEmendas_Cons_aGrupo: TStringField
      FieldName = 'aGrupo'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Cons_aEsfera: TStringField
      FieldName = 'aEsfera'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Cons_aRegional: TStringField
      FieldName = 'aRegional'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Cons_aMetaFisica: TIntegerField
      FieldName = 'aMetaFisica'
    end
    object qyEmendas_Cons_aGrupoDesp: TStringField
      FieldName = 'aGrupoDesp'
      Size = 2
    end
    object qyEmendas_Cons_rUnorc: TStringField
      FieldName = 'rUnorc'
      FixedChar = True
      Size = 5
    end
    object qyEmendas_Cons_rFuncao: TStringField
      FieldName = 'rFuncao'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Cons_rSubFuncao: TStringField
      FieldName = 'rSubFuncao'
      FixedChar = True
      Size = 3
    end
    object qyEmendas_Cons_rPrograma: TStringField
      FieldName = 'rPrograma'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_Cons_rAcao: TStringField
      FieldName = 'rAcao'
      FixedChar = True
      Size = 4
    end
    object qyEmendas_Cons_rLocali: TStringField
      FieldName = 'rLocali'
      Size = 4
    end
    object qyEmendas_Cons_rGrupo: TStringField
      FieldName = 'rGrupo'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Cons_rEsfera: TStringField
      FieldName = 'rEsfera'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Cons_rRegional: TStringField
      FieldName = 'rRegional'
      FixedChar = True
      Size = 2
    end
    object qyEmendas_Cons_rMetaFisica: TIntegerField
      FieldName = 'rMetaFisica'
    end
    object qyEmendas_Cons_rGrupoDesp: TStringField
      FieldName = 'rGrupoDesp'
      Size = 2
    end
    object qyEmendas_Cons_Processado: TStringField
      FieldName = 'Processado'
      Size = 1
    end
  end
  object qyEVSoma_Aditiva_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    BeforePost = qyEmendasValor02_BeforePost
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
      'select sum(rvalor) as rvalor from emendas_valor'
      'where emenda = :emenda'
      'and status ='#39'r'#39)
    Left = 368
    Top = 520
    object qyEVSoma_Aditiva_rvalor: TBCDField
      FieldName = 'rvalor'
      ReadOnly = True
      Precision = 19
    end
  end
  object qyEVSoma_Aditiva02_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    BeforePost = qyEmendasValor02_BeforePost
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
      'select sum(avalor) as avalor from emendas_valor'
      'where emenda = :emenda'
      'and status ='#39'a'#39
      '')
    Left = 400
    Top = 520
    object qyEVSoma_Aditiva02_avalor: TBCDField
      FieldName = 'avalor'
      ReadOnly = True
      Precision = 19
    end
  end
  object qyEG_: TADOQuery
    Active = True
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    BeforePost = qyEmendasValor02_BeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * from EmendasGeral')
    Left = 376
    Top = 88
    object qyEG_Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object qyEG_EmendaG: TStringField
      FieldName = 'EmendaG'
      Size = 10
    end
    object qyEG_Votacao: TStringField
      FieldName = 'Votacao'
      FixedChar = True
      Size = 1
    end
    object qyEG_Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object qyEG_Tipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object qyEG_Vereador: TIntegerField
      FieldName = 'Vereador'
    end
    object qyEG_ValorTotal: TBCDField
      FieldName = 'ValorTotal'
      Precision = 19
    end
  end
  object TotEme_: TADOQuery
    Active = True
    AutoCalcFields = False
    Connection = dmtData.Ado_Emendas
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Emenda'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    SQL.Strings = (
      'select sum(rvalor) as rvalor from emendas_valor'
      'where Substring(emenda,1,3) = :emenda'
      'and status ='#39'r'#39)
    Left = 296
    Top = 128
    object TotEme_rvalor: TBCDField
      FieldName = 'rvalor'
      ReadOnly = True
      Precision = 19
    end
  end
end
