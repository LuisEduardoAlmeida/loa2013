�
 TFRMORGAOLIST 0Y  TPF0TfrmOrgaoListfrmOrgaoListLeft� TopWidth�Height�Caption0   Modelo de Impressão de Relatório do OrçamentoColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderScaledPixelsPerInch`
TextHeight 	TQuickRepreportLeft(Top(WidthHeightcFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSetqryFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTrebuchet MS
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeA4Page.Values       �@      ��
@       �@      @�
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinAutoPrintIfEmpty	
SnapToGrid	UnitsMMZoomd TQRBandColumnHeaderBand1LeftDTop^Width�HeightLFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.ValuesUUUUUU�@��������	@ BandTyperbColumnHeader TQRLabel	QRLabel44Left TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@          VUUUUU��@������z�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   LISTAGEM DA TABELA DE ÓRGÃOSColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTrebuchet MS
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize  TQRShape	QRShape11Left Top,Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�@������@          �VUUU��@c5������	@ Shape
qrsHorLine  TQRShape	QRShape21Left TopDWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�@������@          ~�����@c5������	@ Shape
qrsHorLine  TQRLabel	QRLabel71Left Top2Width*HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@          ������J�@      @�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   CÓDIGOColorclWhiteTransparent	WordWrap	FontSize  	TQRDBText	QRDBText1Left Top Width5HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@                    ������:�@ 	AlignmenttaLeftJustifyAlignToBand	AutoSize	AutoStretchColorclWhiteDataSetqryParametro	DataField
prefeituraTransparentWordWrap	FontSize  TQRLabelQRLabel1Left8Top2Width9HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@������*�@������J�@      Ж@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   DESCRIÇÃOColorclWhiteTransparent	WordWrap	FontSize   TQRBandDetailBand1LeftDTop� Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values�������@��������	@ BandTyperbDetail 	TQRDBText	QRDBText2Left Top Width"HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@                    �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetqry	DataFieldcodigoTransparentWordWrap	FontSize  	TQRDBText	QRDBText3Left8Top WidthYHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@~����*�@          c5������	@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretch	ColorclWhiteDataSetqry	DataField	descricaoTransparentWordWrap	FontSize    	TADOQueryqryParametroActive	
ConnectiondmtData.adoCon
CursorTypectStatic
Parameters SQL.StringsSELECT * FROM parametro LeftTop�   	TADOQueryqryActive	
ConnectiondmtData.adoCon
CursorTypectStatic
Parameters SQL.StringsSELECT * FROM orgao       ORDER BY  codigo LeftTop   