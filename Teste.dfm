�
 TFRMTESTE 0�  TPF0	TfrmTestefrmTesteLeft Top WidthcHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSet	ADOQuery1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.OrientationpoLandscapePage.PaperSizeA4Page.Values       �@      @�
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinAutoPrintIfEmpty	
SnapToGrid	UnitsNativeZoomd TQRBandQRBand1Left&Top&WidthHeight(Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@      #�
@ BandTyperbPageHeader  TQRBandQRBand2Left&TopaWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      ��@      #�
@ BandTyperbDetail 	TQRDBText	QRDBText3Left�Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@������J�	@          UUUUUUu�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet
qyLei2007_	DataFieldfonteTransparentWordWrap	FontSize
  	TQRDBText	QRDBText4Left�Top WidthDHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@������
�	@          �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet
qyLei2007_	DataFieldvalorlei2007TransparentWordWrap	FontSize
  	TQRDBText	QRDBText5Left@Top WidthOHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��	@          UUUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetqyProposta2008_	DataFieldVProjeto2008TransparentWordWrap	FontSize
   TQRGroupQRGroup1Left&TopNWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values PUUUU�@      #�
@ 
ExpressionADOQuery1.unorcMasterOwnerReprintOnNewPage 	TQRDBText	QRDBText1LeftTop Width!HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@ XUUUUU�@                ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet	ADOQuery1	DataFieldunorcTransparentWordWrap	FontSize
  	TQRDBText	QRDBText2LeftXTop Width)HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ `UUUU��@                t�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet	ADOQuery1	DataFieldunorcdTransparentWordWrap	FontSize
   TDataSourceDataSource1DataSet	ADOQuery1Left0Top  	TADOQuery	ADOQuery1Active	
ConnectiondmtData.adoCon
CursorTypectStatic
Parameters SQL.Strings,SELECT distinct unorc, unorcd FROM orcamentoORDER BY unorc  LeftTop TStringFieldADOQuery1unorc	FieldNameunorcSize  TStringFieldADOQuery1unorcd	FieldNameunorcdSize�    	TADOQuery
qyLei2007_
ConnectiondmtData.adoCon
CursorTypectStatic
DataSourceDataSource1
ParametersNameunorcDataTypeftStringNumericScale� 	Precision� SizeValue28101  SQL.StringsMselect sum(do.valor) as valorlei2007, do.fonte from lei2007.dbo.orcamento do where do.unorc = :unorcgroup by do.fonte Left(Top�  	TBCDFieldqyLei2007_valorlei2007	FieldNamevalorlei2007ReadOnly		Precision  TStringFieldqyLei2007_fonte	FieldNamefonteSize   TDataSource
dsLei2007_DataSet
qyLei2007_LeftHTop�   	TADOQueryqyProposta2008_Active	
ConnectiondmtData.adoCon
CursorTypectStatic
DataSourceDataSource1
ParametersNameUnorcDataTypeftStringNumericScale� 	Precision� SizeValue01101  SQL.StringsNselect sum(o.valor) as VProjeto2008, o.fonte from Projeto2008.dbo.orcamento o where o.unorc = :Unorcgroup by o.fonte Left�Top�  	TBCDFieldqyProposta2008_VProjeto2008	FieldNameVProjeto2008ReadOnly		Precision  TStringFieldqyProposta2008_fonte	FieldNamefonteSize   TDataSourcedsProposta2008_DataSetqyProposta2008_Left�Top�   	TADOQueryqyFonteActive	
ConnectiondmtData.adoCon
CursorTypectStatic
Parameters SQL.StringsSELECT * from fonte LeftXTop TStringFieldqyFontecodigo	FieldNamecodigoSize  TStringFieldqyFontedescricao	FieldName	descricaoSize�    TDataSourcedsFonteDataSetqyFonteLeftxTop   