�
 TFRMLOGIN 0�  TPF0	TfrmLogInfrmLogInLeft&Top� BorderStylebsNoneCaption   Lei Orçamentária Anual - 2005ClientHeight=ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderPositionpoScreenCenterOnCreate
FormCreatePixelsPerInch`
TextHeight TShapeShape3Left Top�Width�HeightABrush.ColorclActiveBorder	Pen.ColorclCream	Pen.Width  TShapeShape2LeftTop
WidthpHeight$	Pen.ColorclOlive	Pen.Width  TShapeShape1LeftTopWidthXHeight1Brush.Color	cl3DLight	Pen.StylepsClear  TLabelLabel1Left:Top&WidthHeight	AlignmenttaCenterCaption   LEI ORÇAMENTÁRIA ANUAL - 2013ColorclGreenFont.CharsetANSI_CHARSET
Font.ColorclOliveFont.Height�	Font.NameTrebuchet MS
Font.StylefsBold ParentColor
ParentFontTransparent	  TLabelLabel2Left(Top� WidthSHeightCaption   Ano em exercícioFont.CharsetDEFAULT_CHARSET
Font.ColorclOliveFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTransparent	  TLabelLabel3Left� TopWidth� HeightCaption   Versão 3.1 - 10/01/2013Font.CharsetDEFAULT_CHARSET
Font.ColorclOliveFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTransparent	  TBitBtnBitBtn1Left#TopWidthKHeightTabOrder OnClickBitBtn1ClickKindbkOK  TBitBtnBitBtn2LeftTopWidthKHeightTabOrderOnClickBitBtn2ClickKindbkCancel  TRadioGrouprdgOrcamentoLeftTopWWidthZHeight� Caption      Escolha o Orçamento  ColorclCreamFont.CharsetDEFAULT_CHARSET
Font.ColorclOliveFont.Height�	Font.NameMS Sans Serif
Font.Style 	ItemIndexItems.StringsPropostaProjeto de LeiLeiInvestimento das Empresas
   ExecuçãoLei - Reforma Administrativa ParentColor
ParentFontTabOrder  	TComboBox	CbPeriodoLeft� Top� Width� HeightBiDiModebdRightToLeft
ItemHeightParentBiDiModeTabOrderText2013OnChangeCbPeriodoChangeItems.Strings20062007200820092010201120122013   	TADOQueryqry
ConnectiondmtData.adoCon
CursorTypectStatic
Parameters SQL.Strings
SELECT *,        empresa = CASE ~                   WHEN banco IN ('projeto2012', 'lei2012', 'Pproposta2012', 'investimento2012', 'orcamento') THEN 'Fortaleza'#                   ELSE 'Fortaleza'                 END    FROM parametro  Left� TopR TStringFieldqryprefeitura	FieldName
prefeituraSize�   TStringFieldqrybanco	FieldNamebancoSize  TIntegerFieldqryexercicio	FieldName	exercicio  TStringField
qryevolRec	FieldNameevolRecSize2  TStringFieldqryevolDesp	FieldNameevolDespSize2  TStringField	qryAcesso	FieldNameAcesso	FixedChar	Size  
TMemoFieldqryMenssagem	FieldName	MenssagemBlobTypeftMemo  TStringField	qryVersao	FieldNameVersaoSize
  TStringField
qryempresa	FieldNameempresaReadOnly	Size	   	TADOQuery	qryUpdate
ConnectiondmtData.adoCon
CursorTypectStatic
ParametersNamebanco
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� SizeValue   SQL.Strings#UPDATE parametro SET banco = :banco  Left� TopR   