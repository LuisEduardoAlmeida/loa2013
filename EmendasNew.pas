unit EmendasNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids, DBCtrls, dxCore, dxButton, Mask, ToolEdit,
  CurrEdit, RXCtrls;

type
  TfrmEmendasNew = class(TForm)
    SpeedButton1: TSpeedButton;
    qry: TADOQuery;
    sQry: TDataSource;
    btnRefresh: TSpeedButton;
    stp: TADOStoredProc;
    qryTable: TADOQuery;
    qy_meta_: TADOQuery;
    qyEmendasValor_: TADOQuery;
    dsEmendasValor: TDataSource;
    qyEmendaCons_: TADOQuery;
    Qy_: TADOQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField1: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField2: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    IntegerField3: TIntegerField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    IntegerField4: TIntegerField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    IntegerField5: TIntegerField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    IntegerField6: TIntegerField;
    StringField31: TStringField;
    qyElr_: TADOQuery;
    qyElr_ELDESPESA: TStringField;
    qyElr_INDUSO: TStringField;
    qyElr_FONTE: TStringField;
    qyElr_VALOR: TBCDField;
    dsElr_: TDataSource;
    qyEla_: TADOQuery;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    BCDField1: TBCDField;
    dsEla_: TDataSource;
    qyEmendasValor_Codigo: TAutoIncField;
    qyEmendasValor_Emenda: TStringField;
    qyEmendasValor_relemento: TStringField;
    qyEmendasValor_rIndUso: TStringField;
    qyEmendasValor_rFonte: TStringField;
    qyEmendasValor_rValor: TBCDField;
    qyEmendasValor_aelemento: TStringField;
    qyEmendasValor_aIndUso: TStringField;
    qyEmendasValor_aFonte: TStringField;
    qyEmendasValor_aValor: TBCDField;
    qyEmendasValor02_: TADOQuery;
    dsEmendasValor02_: TDataSource;
    qyEmendasValor02_Codigo: TAutoIncField;
    qyEmendasValor02_Emenda: TStringField;
    qyEmendasValor02_relemento: TStringField;
    qyEmendasValor02_rIndUso: TStringField;
    qyEmendasValor02_rFonte: TStringField;
    qyEmendasValor02_rValor: TBCDField;
    qyEmendasValor02_aelemento: TStringField;
    qyEmendasValor02_aIndUso: TStringField;
    qyEmendasValor02_aFonte: TStringField;
    qyEmendasValor02_aValor: TBCDField;
    qyEmendasValor_Status: TStringField;
    qyEmendasValor02_Status: TStringField;
    qyLocali_: TADOQuery;
    dsLocali_: TDataSource;
    qyLocali_Codigo: TAutoIncField;
    qyLocali_Emenda: TStringField;
    qyLocali_Esfera: TStringField;
    qyLocali_unorc: TStringField;
    qyLocali_funcao: TStringField;
    qyLocali_subFuncao: TStringField;
    qyLocali_programa: TStringField;
    qyLocali_acao: TStringField;
    qyLocali_locali: TStringField;
    qyLocali_regional: TStringField;
    qyLocali_descricao: TStringField;
    qyLocali_metaFisica: TBCDField;
    qyEv_: TADOQuery;
    qyEv_Codigo: TAutoIncField;
    qyEv_Emenda: TStringField;
    qyEv_relemento: TStringField;
    qyEv_rIndUso: TStringField;
    qyEv_rFonte: TStringField;
    qyEv_rValor: TBCDField;
    qyEv_aelemento: TStringField;
    qyEv_aIndUso: TStringField;
    qyEv_aFonte: TStringField;
    qyEv_aValor: TBCDField;
    qyEv_Status: TStringField;
    qyVE_: TADOQuery;
    qyVE_Codigo_Vereador: TIntegerField;
    qyVE_Emenda: TStringField;
    qyVE_Colocacao: TIntegerField;
    qyVE_Codigo: TAutoIncField;
    qyVereadores_: TADOQuery;
    qyVereadores_Codigo: TAutoIncField;
    qyVereadores_Nome: TStringField;
    qyVereadores_Partido_Sigla: TStringField;
    qyVereadores_Condicao: TStringField;
    qyVereadores_Comentario: TStringField;
    qyVereadores_DtCadastro: TDateTimeField;
    qyVE_Vereador: TStringField;
    dsVE_: TDataSource;
    qyLocali_Lei_: TADOQuery;
    dsLocali_Lei_: TDataSource;
    qyLocali_Lei_CODIGO: TAutoIncField;
    qyLocali_Lei_esfera: TStringField;
    qyLocali_Lei_unorc: TStringField;
    qyLocali_Lei_funcao: TStringField;
    qyLocali_Lei_subFuncao: TStringField;
    qyLocali_Lei_programa: TStringField;
    qyLocali_Lei_acao: TStringField;
    qyLocali_Lei_locali: TStringField;
    qyLocali_Lei_regional: TStringField;
    qyLocali_Lei_descricao: TStringField;
    qyLocali_Lei_metaFisica: TBCDField;
    qyDet_Lei_: TADOQuery;
    dsDet_Lei_: TDataSource;
    qyDet_Lei_Codigo: TAutoIncField;
    qyDet_Lei_locali: TIntegerField;
    qyDet_Lei_elDespesa: TStringField;
    qyDet_Lei_indUso: TStringField;
    qyDet_Lei_fonte: TStringField;
    qyDet_Lei_valor: TBCDField;
    qyEvlr_: TADOQuery;
    qyEmendas_Cons_: TADOQuery;
    qyEvlr_Codigo: TAutoIncField;
    qyEvlr_Emenda: TStringField;
    qyEvlr_relemento: TStringField;
    qyEvlr_rIndUso: TStringField;
    qyEvlr_rFonte: TStringField;
    qyEvlr_rValor: TBCDField;
    qyEvlr_aelemento: TStringField;
    qyEvlr_aIndUso: TStringField;
    qyEvlr_aFonte: TStringField;
    qyEvlr_aValor: TBCDField;
    qyEvlr_Status: TStringField;
    qyEmendas_Cons_Codigo: TAutoIncField;
    qyEmendas_Cons_NumEmenda: TStringField;
    qyEmendas_Cons_Votacao: TStringField;
    qyEmendas_Cons_Status: TStringField;
    qyEmendas_Cons_Tipo: TStringField;
    qyEmendas_Cons_Texto: TMemoField;
    qyEmendas_Cons_Unorc: TStringField;
    qyEmendas_Cons_Funcao: TStringField;
    qyEmendas_Cons_SubFuncao: TStringField;
    qyEmendas_Cons_Programa: TStringField;
    qyEmendas_Cons_Acao: TStringField;
    qyEmendas_Cons_Locali: TIntegerField;
    qyEmendas_Cons_Esfera: TStringField;
    qyEmendas_Cons_Regional: TStringField;
    qyEmendas_Cons_MetaFisica: TIntegerField;
    qyEmendas_Cons_Produto: TStringField;
    qyEmendas_Cons_aUnorc: TStringField;
    qyEmendas_Cons_aFuncao: TStringField;
    qyEmendas_Cons_aSubFuncao: TStringField;
    qyEmendas_Cons_aPrograma: TStringField;
    qyEmendas_Cons_aAcao: TStringField;
    qyEmendas_Cons_aLocali: TStringField;
    qyEmendas_Cons_aGrupo: TStringField;
    qyEmendas_Cons_aEsfera: TStringField;
    qyEmendas_Cons_aRegional: TStringField;
    qyEmendas_Cons_aMetaFisica: TIntegerField;
    qyEmendas_Cons_aGrupoDesp: TStringField;
    qyEmendas_Cons_rUnorc: TStringField;
    qyEmendas_Cons_rFuncao: TStringField;
    qyEmendas_Cons_rSubFuncao: TStringField;
    qyEmendas_Cons_rPrograma: TStringField;
    qyEmendas_Cons_rAcao: TStringField;
    qyEmendas_Cons_rLocali: TStringField;
    qyEmendas_Cons_rGrupo: TStringField;
    qyEmendas_Cons_rEsfera: TStringField;
    qyEmendas_Cons_rRegional: TStringField;
    qyEmendas_Cons_rMetaFisica: TIntegerField;
    qyEmendas_Cons_rGrupoDesp: TStringField;
    qyEmendas_Cons_Processado: TStringField;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid: TDBGrid;
    gbCadastro: TGroupBox;
    txtemenda: TEdit;
    cbVotacao: TComboBox;
    Label8: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    cbStatus: TComboBox;
    Label5: TLabel;
    cbTipo: TComboBox;
    btVereadores: TButton;
    PageControl1: TPageControl;
    TabTexto: TTabSheet;
    gbTexto: TGroupBox;
    lbtexto: TLabel;
    MTexto: TMemo;
    tabAditivaValor: TTabSheet;
    gbAditivavalor: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Bevel7: TBevel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Bevel8: TBevel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Bevel9: TBevel;
    txtProd2: TLabel;
    avtxtUnorc: TEdit;
    avcmb_Unorc: TComboBox;
    avtxtfuncao: TEdit;
    avcmb_funcao: TComboBox;
    avtxtsubfuncao: TEdit;
    avcmb_subfuncao: TComboBox;
    avtxprograma: TEdit;
    avcmb_programa: TComboBox;
    avtxtacao: TEdit;
    avcmb_acao: TComboBox;
    avtxtlocalizacao: TEdit;
    AvrGrid: TDBGrid;
    ktunorc: TEdit;
    kcunorc: TComboBox;
    ktfuncao: TEdit;
    kcfuncao: TComboBox;
    ktsubfuncao: TEdit;
    kcsubfuncao: TComboBox;
    ktprograma: TEdit;
    ktacao: TEdit;
    kcacao: TComboBox;
    kcprograma: TComboBox;
    avcbGrupo: TComboBox;
    avcmb_localizacao: TComboBox;
    ktlocalizacao: TEdit;
    AvcGrid: TDBGrid;
    kDescricao: TEdit;
    cmbEsfera: TComboBox;
    ktRegional: TEdit;
    ktMetafisica: TEdit;
    Button1: TButton;
    Button2: TButton;
    btAditiva: TButton;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    TabValor: TTabSheet;
    gbValor: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Bevel5: TBevel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    labels: TLabel;
    Bevel6: TBevel;
    Label28: TLabel;
    Label29: TLabel;
    rtxtUnorc: TEdit;
    rcmbUnorc: TComboBox;
    rtxtFuncao: TEdit;
    rcmbFuncao: TComboBox;
    rtxtSubFuncao: TEdit;
    rcmbSubFuncao: TComboBox;
    rtxtPrograma: TEdit;
    rcmbPrograma: TComboBox;
    rtxtAcao: TEdit;
    rcmbAcao: TComboBox;
    rtxtLocali: TEdit;
    dbgElementoReducao: TDBGrid;
    atxtUnorc: TEdit;
    acmbUnorc: TComboBox;
    atxtFuncao: TEdit;
    acmbFuncao: TComboBox;
    atxtSubFuncao: TEdit;
    acmbSubFuncao: TComboBox;
    atxtPrograma: TEdit;
    atxtAcao: TEdit;
    acmbAcao: TComboBox;
    acmbPrograma: TComboBox;
    rcmbGrupo: TComboBox;
    rcmbLocalizacao: TComboBox;
    atxtLocali: TEdit;
    acmbLocalizacao: TComboBox;
    acmbGrupo: TComboBox;
    dbgElementoAcrescimo: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    TabMeta: TTabSheet;
    gbMeta: TGroupBox;
    Label13: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    txtProduto: TLabel;
    Bevel4: TBevel;
    txtUnorc: TEdit;
    cmbUnorc: TComboBox;
    txtFuncao: TEdit;
    cmbFuncao: TComboBox;
    txtSubFuncao: TEdit;
    cmbSubFuncao: TComboBox;
    txtPrograma: TEdit;
    cmbPrograma: TComboBox;
    txtAcao: TEdit;
    cmbAcao: TComboBox;
    txtLocali: TEdit;
    txtMetaFisica: TEdit;
    Shape1: TShape;
    Bevel11: TBevel;
    Bevel12: TBevel;
    btnCancel: TdxButton;
    btnDelete: TdxButton;
    btnNew: TdxButton;
    Label4: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    btnAlterar: TdxButton;
    cbPesq: TComboBox;
    Label50: TLabel;
    edPesq: TEdit;
    Label51: TLabel;
    Bevel2: TBevel;
    btPesquisar: TButton;
    btRenovar: TButton;
    qryCodigo: TAutoIncField;
    qryNumEmenda: TStringField;
    qryVotacao: TStringField;
    qryStatus: TStringField;
    qryTipo: TStringField;
    qryTexto: TMemoField;
    qryUnorc: TStringField;
    qryFuncao: TStringField;
    qrySubFuncao: TStringField;
    qryPrograma: TStringField;
    qryAcao: TStringField;
    qryLocali: TIntegerField;
    qryEsfera: TStringField;
    qryRegional: TStringField;
    qryMetaFisica: TIntegerField;
    qryProduto: TStringField;
    qryaUnorc: TStringField;
    qryaFuncao: TStringField;
    qryaSubFuncao: TStringField;
    qryaPrograma: TStringField;
    qryaAcao: TStringField;
    qryaLocali: TStringField;
    qryaGrupo: TStringField;
    qryaEsfera: TStringField;
    qryaRegional: TStringField;
    qryaMetaFisica: TIntegerField;
    qryaGrupoDesp: TStringField;
    qryrUnorc: TStringField;
    qryrFuncao: TStringField;
    qryrSubFuncao: TStringField;
    qryrPrograma: TStringField;
    qryrAcao: TStringField;
    qryrLocali: TStringField;
    qryrGrupo: TStringField;
    qryrEsfera: TStringField;
    qryrRegional: TStringField;
    qryrMetaFisica: TIntegerField;
    qryrGrupoDesp: TStringField;
    qryProcessado: TStringField;
    qryVereador: TStringField;
    qryEL_Descricao: TStringField;
    qryEL_MetaFisica: TBCDField;
    qryProcessado_1: TStringField;
    btClosed: TdxButton;
    btmodificativa: TButton;
    qryTipo_1: TStringField;
    qryStatus_1: TStringField;
    lbVereador: TLabel;
    qyEVSoma_Aditiva_: TADOQuery;
    qyEVSoma_Aditiva02_: TADOQuery;
    qyEVSoma_Aditiva_rvalor: TBCDField;
    qyEVSoma_Aditiva02_avalor: TBCDField;
    qyEG_: TADOQuery;
    qyEG_Codigo: TAutoIncField;
    qyEG_EmendaG: TStringField;
    qyEG_Votacao: TStringField;
    qyEG_Status: TStringField;
    qyEG_Tipo: TStringField;
    qyEG_Vereador: TIntegerField;
    tEG_: TEdit;
    qryEmendaG: TStringField;
    qyEG_ValorTotal: TBCDField;
    Label1: TLabel;
    edValorTotal: TRxCalcEdit;
    edSaldo: TRxCalcEdit;
    Label49: TLabel;
    Label52: TLabel;
    TotEme_: TADOQuery;
    TotEme_rvalor: TBCDField;
    qyEmendaCons_Codigo: TAutoIncField;
    qyEmendaCons_EmendaG: TStringField;
    qyEmendaCons_NumEmenda: TStringField;
    qyEmendaCons_Votacao: TStringField;
    qyEmendaCons_Status: TStringField;
    qyEmendaCons_Tipo: TStringField;
    qyEmendaCons_Texto: TMemoField;
    qyEmendaCons_Unorc: TStringField;
    qyEmendaCons_Funcao: TStringField;
    qyEmendaCons_SubFuncao: TStringField;
    qyEmendaCons_Programa: TStringField;
    qyEmendaCons_Acao: TStringField;
    qyEmendaCons_Locali: TIntegerField;
    qyEmendaCons_Esfera: TStringField;
    qyEmendaCons_Regional: TStringField;
    qyEmendaCons_MetaFisica: TIntegerField;
    qyEmendaCons_Produto: TStringField;
    qyEmendaCons_aUnorc: TStringField;
    qyEmendaCons_aFuncao: TStringField;
    qyEmendaCons_aSubFuncao: TStringField;
    qyEmendaCons_aPrograma: TStringField;
    qyEmendaCons_aAcao: TStringField;
    qyEmendaCons_aLocali: TStringField;
    qyEmendaCons_aGrupo: TStringField;
    qyEmendaCons_aEsfera: TStringField;
    qyEmendaCons_aRegional: TStringField;
    qyEmendaCons_aMetaFisica: TIntegerField;
    qyEmendaCons_aGrupoDesp: TStringField;
    qyEmendaCons_rUnorc: TStringField;
    qyEmendaCons_rFuncao: TStringField;
    qyEmendaCons_rSubFuncao: TStringField;
    qyEmendaCons_rPrograma: TStringField;
    qyEmendaCons_rAcao: TStringField;
    qyEmendaCons_rLocali: TStringField;
    qyEmendaCons_rGrupo: TStringField;
    qyEmendaCons_rEsfera: TStringField;
    qyEmendaCons_rRegional: TStringField;
    qyEmendaCons_rMetaFisica: TIntegerField;
    qyEmendaCons_rGrupoDesp: TStringField;
    qyEmendaCons_Processado: TStringField;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    ColarAditiva: TButton;
    btSeinf2: TButton;
    btnSave: TdxButton;
    btSeinf1: TButton;
    rdgGrupo: TRadioGroup;
    ColarModificativa: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure clearControls();
    procedure keyExit();
    procedure DBGridCellClick(Column: TColumn);
    procedure btnRefreshClick(Sender: TObject);
    procedure txtNomeChange(Sender: TObject);
    procedure isItChanged();
    procedure save();
    procedure DBGridEnter(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure cbTipoExit(Sender: TObject);
    procedure txtUnorcExit(Sender: TObject);
    procedure txtUnorcChange(Sender: TObject);
    procedure cmbUnorcChange(Sender: TObject);
    procedure cmbUnorcClick(Sender: TObject);
    procedure txtFuncaoChange(Sender: TObject);
    procedure txtSubFuncaoChange(Sender: TObject);
    procedure txtProgramaChange(Sender: TObject);
    procedure txtAcaoChange(Sender: TObject);
    procedure txtFuncaoExit(Sender: TObject);
    procedure txtSubFuncaoExit(Sender: TObject);
    procedure txtProgramaExit(Sender: TObject);
    procedure txtAcaoExit(Sender: TObject);
    procedure cmbFuncaoChange(Sender: TObject);
    procedure cmbSubFuncaoChange(Sender: TObject);
    procedure cmbProgramaChange(Sender: TObject);
    procedure cmbAcaoChange(Sender: TObject);
    procedure cmbFuncaoClick(Sender: TObject);
    procedure cmbSubFuncaoClick(Sender: TObject);
    procedure cmbProgramaClick(Sender: TObject);
    procedure cmbAcaoClick(Sender: TObject);
    procedure rtxtUnorcChange(Sender: TObject);
    procedure rtxtFuncaoChange(Sender: TObject);
    procedure rtxtSubFuncaoChange(Sender: TObject);
    procedure rtxtProgramaChange(Sender: TObject);
    procedure rtxtAcaoChange(Sender: TObject);
    procedure rcmbUnorcChange(Sender: TObject);
    procedure rcmbFuncaoChange(Sender: TObject);
    procedure rcmbSubFuncaoChange(Sender: TObject);
    procedure rcmbProgramaChange(Sender: TObject);
    procedure rcmbAcaoChange(Sender: TObject);
    procedure rtxtUnorcExit(Sender: TObject);
    procedure rtxtFuncaoExit(Sender: TObject);
    procedure rtxtSubFuncaoExit(Sender: TObject);
    procedure rtxtProgramaExit(Sender: TObject);
    procedure rtxtAcaoExit(Sender: TObject);
    procedure rcmbUnorcClick(Sender: TObject);
    procedure rcmbFuncaoClick(Sender: TObject);
    procedure rcmbSubFuncaoClick(Sender: TObject);
    procedure rcmbProgramaClick(Sender: TObject);
    procedure rcmbAcaoClick(Sender: TObject);
    procedure dbgElementoReducaoKeyPress(Sender: TObject; var Key: Char);
    procedure atxtUnorcChange(Sender: TObject);
    procedure atxtFuncaoChange(Sender: TObject);
    procedure atxtSubFuncaoChange(Sender: TObject);
    procedure atxtProgramaChange(Sender: TObject);
    procedure atxtAcaoChange(Sender: TObject);
    procedure txtemendaExit(Sender: TObject);
    procedure rtxtLocaliChange(Sender: TObject);
    procedure rtxtLocaliExit(Sender: TObject);
    procedure rcmbLocalizacaoChange(Sender: TObject);
    procedure rcmbLocalizacaoClick(Sender: TObject);
    procedure rcmbGrupoExit(Sender: TObject);
    procedure atxtUnorcExit(Sender: TObject);
    procedure atxtFuncaoExit(Sender: TObject);
    procedure atxtSubFuncaoExit(Sender: TObject);
    procedure atxtProgramaExit(Sender: TObject);
    procedure atxtAcaoExit(Sender: TObject);
    procedure atxtLocaliChange(Sender: TObject);
    procedure atxtLocaliExit(Sender: TObject);
    procedure acmbUnorcChange(Sender: TObject);
    procedure acmbFuncaoChange(Sender: TObject);
    procedure acmbSubFuncaoChange(Sender: TObject);
    procedure acmbProgramaChange(Sender: TObject);
    procedure acmbAcaoChange(Sender: TObject);
    procedure acmbLocalizacaoChange(Sender: TObject);
    procedure acmbUnorcClick(Sender: TObject);
    procedure acmbFuncaoClick(Sender: TObject);
    procedure acmbSubFuncaoClick(Sender: TObject);
    procedure acmbProgramaClick(Sender: TObject);
    procedure acmbAcaoClick(Sender: TObject);
    procedure acmbLocalizacaoClick(Sender: TObject);
    procedure acmbGrupoExit(Sender: TObject);
    procedure dbgElementoReducaoColExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgElementoReducaoExit(Sender: TObject);
    procedure qyEmendasValor_BeforePost(DataSet: TDataSet);
    procedure dbgElementoAcrescimoColExit(Sender: TObject);
    procedure qyEmendasValor02_BeforePost(DataSet: TDataSet);
    procedure dbgElementoAcrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure avtxtUnorcChange(Sender: TObject);
    procedure avtxtfuncaoChange(Sender: TObject);
    procedure avtxtsubfuncaoChange(Sender: TObject);
    procedure avtxprogramaChange(Sender: TObject);
    procedure avtxtacaoChange(Sender: TObject);
    procedure avtxtlocalizacaoChange(Sender: TObject);
    procedure avtxtUnorcExit(Sender: TObject);
    procedure avtxtfuncaoExit(Sender: TObject);
    procedure avtxtsubfuncaoExit(Sender: TObject);
    procedure avtxprogramaExit(Sender: TObject);
    procedure avtxtacaoExit(Sender: TObject);
    procedure avtxtlocalizacaoExit(Sender: TObject);
    procedure avcmb_UnorcChange(Sender: TObject);
    procedure avcmb_funcaoChange(Sender: TObject);
    procedure avcmb_subfuncaoChange(Sender: TObject);
    procedure avcmb_programaChange(Sender: TObject);
    procedure avcmb_acaoChange(Sender: TObject);
    procedure avcmb_localizacaoChange(Sender: TObject);
    procedure avcmb_UnorcClick(Sender: TObject);
    procedure avcmb_funcaoClick(Sender: TObject);
    procedure avcmb_subfuncaoClick(Sender: TObject);
    procedure avcmb_programaClick(Sender: TObject);
    procedure avcmb_acaoClick(Sender: TObject);
    procedure avcmb_localizacaoClick(Sender: TObject);
    procedure ktunorcChange(Sender: TObject);
    procedure ktfuncaoChange(Sender: TObject);
    procedure ktsubfuncaoChange(Sender: TObject);
    procedure ktprogramaChange(Sender: TObject);
    procedure ktacaoChange(Sender: TObject);
    procedure ktlocalizacaoChange(Sender: TObject);
    procedure ktunorcExit(Sender: TObject);
    procedure ktfuncaoExit(Sender: TObject);
    procedure ktsubfuncaoExit(Sender: TObject);
    procedure ktprogramaExit(Sender: TObject);
    procedure ktacaoExit(Sender: TObject);
    procedure kcunorcChange(Sender: TObject);
    procedure kcfuncaoChange(Sender: TObject);
    procedure kcsubfuncaoChange(Sender: TObject);
    procedure kcprogramaChange(Sender: TObject);
    procedure kcacaoChange(Sender: TObject);
    procedure kclocalizacaoChange(Sender: TObject);
    procedure kcunorcClick(Sender: TObject);
    procedure kcfuncaoClick(Sender: TObject);
    procedure kcsubfuncaoClick(Sender: TObject);
    procedure kcprogramaClick(Sender: TObject);
    procedure kcacaoClick(Sender: TObject);
    procedure kclocalizacaoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AvrGridKeyPress(Sender: TObject; var Key: Char);
    procedure AvrGridColExit(Sender: TObject);
    procedure avcbGrupoExit(Sender: TObject);
    procedure AvcGridColExit(Sender: TObject);
    procedure AvcGridKeyPress(Sender: TObject; var Key: Char);
    procedure btVereadoresClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btAditivaClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure btRenovarClick(Sender: TObject);
    procedure btClosedClick(Sender: TObject);
    procedure btmodificativaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl2Change(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tEG_Exit(Sender: TObject);
    procedure btSeinf1Click(Sender: TObject);
    procedure btSeinf2Click(Sender: TObject);
    procedure btnSaveNovoClick(Sender: TObject);
    procedure ColarAditivaClick(Sender: TObject);
    procedure rdgGrupoClick(Sender: TObject);
    procedure DBGridColEnter(Sender: TObject);
    procedure DBGridExit(Sender: TObject);
    procedure ColarModificativaClick(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
    // Emenda Geral /////////////
    Emenda, PE1, PE2: String;
    ValorEmendaGeral : Currency;
    /////////////////////////////
    seleto : string;
    Valor : Currency;
    Status_reg : String;
    Permite    : String;
    Statusvalor : String;

    SqlPrincipal : String;
    rcUnidad,rcFunc,rcSfunc,rcProgr,rcAc,rcLc : string;
    avUnidad,avFunc,avSfunc,avProgr,avAc,avLc,rcGpo,avGpo : string;
    Procedure Ativa_Memo();
    Procedure LerCombo();
    procedure loadTable(theTable: string; theCombo: tComboBox);
    procedure loadTable_x(TheCamp:String; TheDesc: string; theCombo: tComboBox);
    procedure loadTable_xacao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
    procedure loadTable_Unorc(TheCamp:String; TheDesc: string; theCombo: tComboBox);
    procedure loadTable_Funcao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
    procedure loadTable_SubFuncao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
    procedure loadTable_Programa(TheCamp:String; TheDesc: string; theCombo: tComboBox);
    procedure loadTable_Acao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
    procedure loadTable_Localizacao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
    Procedure Localizacao();
    Procedure rLocalizacao();
    procedure aLocalizacao;
    Procedure Apaga_Txt();
    Procedure Apaga_Combos();
    Procedure Apaga_MetaTotal();
    Procedure Grupo_reducao();
    Procedure Grupo_acrescimo();

    Procedure Apaga_Valor_r();
    Procedure Apaga_Valor_a();
    Procedure Apaga_aditivavalor();
    Procedure Deleta_Emendas_Valor();
    Procedure Deleta_Emendas_Locali();

    Procedure Conversor();
    Procedure Botoes();
    Procedure ValoresEmendas();

  end;

var
  frmEmendasNew   : TfrmEmendasNew;
  theOperation : char;
  itsChanged   : boolean;
  unoSize : integer;


implementation

uses data, acaoList, seaLocali, VereadoresEmendas, HWarning, main;

{$R *.dfm}


procedure TfrmEmendasNew.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmEmendasNew.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If key = #13 then
    Begin
       Perform(WM_NEXTDLGCTL,0,0);
       Key := #0;
    End; 
end;


procedure TfrmEmendasNew.FormActivate(Sender: TObject);
begin
  Status_reg := '';
  Permite := '';
  btnRefreshClick(nil);
  clearControls();
  Apaga_MetaTotal;
  Apaga_Valor_r();
  Apaga_Valor_a();
  cbStatus.ItemIndex := 2;
  PageControl1.ActivePageIndex := 0;
  dbGrid.setFocus;
  rdgGrupo.ItemIndex := -1;
end;

procedure TfrmEmendasNew.clearControls;
begin
  theOperation := '*';
  //txtCodigo.text := '';

  tEG_.Clear;
  txtemenda.Clear;
  edValorTotal.Value := 0;
  edSaldo.Value      := 0;

  //txtNome.text := '';
  //txtPartido.text := '';

  cbVotacao.text := '';
  cbVotacao.itemIndex := -1;

  cbStatus.text := '';
  cbStatus.itemIndex := -1;

  cbTipo.text := '';
  cbTipo.itemIndex := -1;

  MTexto.Clear;

  Ativa_Memo();

  //txtCodigo.readOnly := true;

end;

procedure TfrmEmendasNew.keyExit;
var t : integer;
    textep  : string;

begin

  clearControls();
  theOperation := 'a';
  Permite := 's';
  with qry do
  begin
      tEG_.Text      := fieldByName('EmendaG').asString;

      qyEG_.Close;
      qyEG_.SQL.Clear;
      qyEG_.SQL.Add('SELECT * FROM EMENDASGERAL');
      qyEG_.SQL.Add('WHERE EMENDAG = :EMENDAG');
      qyEG_.Parameters.ParamByName('EMENDAG').Value := tEG_.Text;
      qyEG_.ExecSQL;
      qyEG_.Open;
      ValorEmendaGeral := qyEG_ValorTotal.Value;

      edValorTotal.Value := ValorEmendaGeral;

      {
      TotEme_.Close;
      TotEme_.Parameters.ParamByName('Emenda').Value := copy(tEG_.Text,1,3);
      TotEme_.ExecSQL;
      TotEme_.Open;
       }



      txtemenda.text := fieldByName('numemenda').asString;
      //txtPartido.text := fieldByName('Partido_Sigla').asString;
      //txtCodigo.text := fieldByName('codigo').asString;
      //txtComentario.Lines.Add(fieldByName('comentario').asString);

      {If qryColetiva.Value = 'S' Then
         rgColetiva.ItemIndex := 0;

      If qryColetiva.Value = 'N' Then
         rgColetiva.ItemIndex := 1;
       }

      with dmtData do
      begin
        setComboBox(fieldByName('Votacao').asString, cbVotacao);
        setComboBox(fieldByName('Status').asString, cbstatus);
        setComboBox(fieldByName('Tipo').asString, cbTipo);
      end;

      //LerCombo();

     if (Copy(cbTipo.Text,1,1) = '1') or (Copy(cbTipo.Text,1,1) = '2') then
     begin
        PageControl1.ActivePage :=TabTexto;
        gbTexto.Enabled := True;
        gbValor.Enabled := False;
        gbMeta.Enabled  := False;
        gbAditivavalor.Enabled := false;

        MTexto.Text := qryTexto.Value;
     end;

     if (Copy(cbTipo.Text,1,1) = '3') then
     begin
        PageControl1.ActivePage :=tabAditivaValor;
        gbTexto.Enabled := False;
        gbValor.Enabled := False;
        gbMeta.Enabled  := False;
        gbAditivavalor.Enabled := True;

        loadTable_Unorc('unorc','Unorcd',avcmb_Unorc);
        unoSize := length(trim(qryTable.fieldByName('Unorc').asString));

        avtxtUnorc.Text       := qryrUnorc.Value;
        avtxtUnorcExit(avtxtUnorc);

        avtxtFuncao.Text      := qryrFuncao.Value;
        avtxtFuncaoExit(avtxtFuncao);

        avtxtSubFuncao.Text   := qryrSubFuncao.Value;
        avtxtSubFuncaoExit(avtxtSubFuncao);

        avtxPrograma.Text    := qryrPrograma.Value;
        avtxProgramaExit(avtxPrograma);

        avtxtAcao.Text        := qryrAcao.Value;
        avtxtAcaoExit(avtxtAcao);

        avtxtlocalizacao.Text      := qryrLocali.AsString;
        avtxtlocalizacaoExit(avtxtlocalizacao);

        with dmtData do
        begin
           setComboBox(qryrGrupo.AsString, avcbgrupo);
           //setComboBox(fieldByName('Status').asString, cbstatus);
           //setComboBox(fieldByName('Tipo').asString, cbTipo);
        end;

        qyEmendasValor_.Close;
        qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := Trim(txtemenda.Text);
        qyEmendasValor_.ExecSQL;
        qyEmendasValor_.Open;

        If qyEmendasValor_.RecordCount = 0 then ShowMessage('Erro EmendasValor');



        //////////////////////////////////////////////

        qyLocali_.Close;
        qyLocali_.Parameters.ParamByName('emenda').Value := Trim(txtemenda.Text);
        qyLocali_.ExecSQL;
        qyLocali_.Open;


        loadTable_x('unorc','Unorcd',kcunorc);
        unoSize := length(trim(qryTable.fieldByName('Unorc').asString));


        loadTable_x('funcao','funcaod',kcfuncao);
        loadTable_x('subfuncao','subfuncaod',kcsubfuncao);
        loadTable_x('programa','programad',kcprograma);
        loadTable_xacao('codigo','descricao',kcacao);

        kDescricao.Text       := qyLocali_descricao.Value;
           t := Length(qyLocali_descricao.Value);


        if COPY(qyLocali_descricao.Value,t-8,t) = '- EP/LOM' then rdgGrupo.ItemIndex := 1 ;
        if COPY(qyLocali_descricao.Value,t-6,t) = '- EP/C' then rdgGrupo.ItemIndex := 2 ;
        if COPY(qyLocali_descricao.Value,t-4,t) = '- EP' then rdgGrupo.ItemIndex := 0 ;

        ktunorc.Text       := qyLocali_unorc.Value;
        ktunorcExit(ktunorc);

        ktFuncao.Text      := qyLocali_Funcao.Value;
        ktFuncaoExit(ktFuncao);

        ktSubFuncao.Text   := qyLocali_SubFuncao.Value;
        ktSubFuncaoExit(ktSubFuncao);

        ktPrograma.Text    := qyLocali_Programa.Value;
        ktProgramaExit(ktPrograma);

        ktAcao.Text        := qyLocali_Acao.Value;
        ktAcaoExit(ktAcao);

        ktlocalizacao.Text      := qyLocali_locali.AsString;

        with dmtData do
        begin
           setComboBox(qyLocali_Esfera.Value, cmbesfera);
           //setComboBox(fieldByName('Status').asString, cbstatus);
           //setComboBox(fieldByName('Tipo').asString, cbTipo);
        end;

        ktRegional.Text := qyLocali_regional.Value;

        ktMetafisica.Text  := qyLocali_metaFisica.AsString;

        qyEmendasValor02_.Close;
        qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := Trim(txtemenda.Text);
        qyEmendasValor02_.ExecSQL;
        qyEmendasValor02_.Open;

        If qyEmendasValor02_.RecordCount = 0 then ShowMessage('Erro EmendasValor02');

        {qyEv_.Close;
        qyEv_.SQL.Clear;
        qyEv_.SQL.Add('SELECT * FROM EMENDAS_VALOR');
        qyEv_.SQL.Add('WHERE EMENDA = :EMENDA AND STATUS = :STATUS');
        qyEv_.SQL.Add('ORDER BY RELEMENTO');
        qyEv_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
        qyEv_.Parameters.ParamByName('STATUS').Value := 'r';
        qyEv_.Open;
        }

     end;


     if (Copy(cbTipo.Text,1,1) = '4') then
     begin
        PageControl1.ActivePage :=TabValor;
        gbTexto.Enabled := False;
        gbValor.Enabled := True;
        gbMeta.Enabled  := False;
        gbAditivavalor.Enabled := false;

        loadTable_Unorc('unorc','Unorcd',rcmbUnorc);
        unoSize := length(trim(qryTable.fieldByName('Unorc').asString));


        rtxtUnorc.Text       := qryrUnorc.Value;
        rtxtUnorcExit(rtxtUnorc);

        rtxtFuncao.Text      := qryrFuncao.Value;
        rtxtFuncaoExit(rtxtFuncao);

        rtxtSubFuncao.Text   := qryrSubFuncao.Value;
        rtxtSubFuncaoExit(rtxtSubFuncao);

        rtxtPrograma.Text    := qryrPrograma.Value;
        rtxtProgramaExit(rtxtPrograma);

        rtxtAcao.Text        := qryrAcao.Value;
        rtxtAcaoExit(rtxtAcao);

        rtxtLocali.Text      := qryrLocali.AsString;
        rtxtLocaliExit(rtxtLocali);

        with dmtData do
        begin
           setComboBox(fieldByName('rgrupo').asString, rcmbgrupo);
           //setComboBox(fieldByName('Status').asString, cbstatus);
           //setComboBox(fieldByName('Tipo').asString, cbTipo);
        end;

        loadTable_Unorc('unorc','Unorcd',acmbUnorc);
        unoSize := length(trim(qryTable.fieldByName('Unorc').asString));


        atxtUnorc.Text       := qryaUnorc.Value;
        atxtUnorcExit(atxtUnorc);

        atxtFuncao.Text      := qryaFuncao.Value;
        atxtFuncaoExit(atxtFuncao);

        atxtSubFuncao.Text   := qryaSubFuncao.Value;
        atxtSubFuncaoExit(atxtSubFuncao);

        atxtPrograma.Text    := qryaPrograma.Value;
        atxtProgramaExit(atxtPrograma);

        atxtAcao.Text        := qryaAcao.Value;
        atxtAcaoExit(atxtAcao);

        atxtLocali.Text      := qryaLocali.AsString;
        atxtLocaliExit(atxtLocali);

        with dmtData do
        begin
           setComboBox(fieldByName('agrupo').asString, acmbgrupo);
           //setComboBox(fieldByName('Status').asString, cbstatus);
           //setComboBox(fieldByName('Tipo').asString, cbTipo);
        end;

        qyEmendasValor_.Close;
        qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := Trim(txtemenda.Text);
        qyEmendasValor_.ExecSQL;
        qyEmendasValor_.Open;

        If qyEmendasValor_.RecordCount = 0 then ShowMessage('Erro EmendasValor');

        qyEmendasValor02_.Close;
        qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := Trim(txtemenda.Text);
        qyEmendasValor02_.ExecSQL;
        qyEmendasValor02_.Open;

        If qyEmendasValor02_.RecordCount = 0 then ShowMessage('Erro EmendasValor02');

     end;

     if (Copy(cbTipo.Text,1,1) = '5') or (Copy(cbTipo.Text,1,1) = '6') then
     begin

        PageControl1.ActivePage :=TabMeta;
        gbTexto.Enabled := False;
        gbValor.Enabled := False;
        gbAditivavalor.Enabled := false;
        gbMeta.Enabled  := True;


        loadTable_Unorc('unorc','Unorcd',cmbUnorc);
        unoSize := length(trim(qryTable.fieldByName('Unorc').asString));


        txtUnorc.Text       := qryUnorc.Value;
        txtUnorcExit(txtUnorc);

        txtFuncao.Text      := qryFuncao.Value;
        txtFuncaoExit(txtFuncao);

        txtSubFuncao.Text   := qrySubFuncao.Value;
        txtSubFuncaoExit(txtSubFuncao);

        txtPrograma.Text    := qryPrograma.Value;
        txtProgramaExit(txtPrograma);

        txtAcao.Text        := qryAcao.Value;
        txtAcaoExit(txtAcao);

        txtLocali.Text      := qryLocali.AsString;

        {with dmtData do
        begin
           setComboBox(qryEsfera.AsString, cmbEsfera);
        end;
        }
        //cmbEsfera.Text      := qryEsfera.Value;
        //txtRegional.Text    := qryRegional.Value;
        txtMetaFisica.Text  := qryMetaFisica.AsString;
        txtProduto.Caption  := qryProduto.Value;



        // loadTable_Unorc('unorc','Unorcd',cmbUnorc);
        // unoSize := length(trim(qryTable.fieldByName('Unorc').asString));
        // loadTable('unorc',cmbUnorc);
        {loadTable('funcao',cmbFuncao);
        loadTable('subFuncao',cmbsubFuncao);
        loadTable('programa',cmbPrograma);
        loadTable('acao',cmbAcao);}


        // txtUnorc.SetFocus;
     end;

  end;

  with dmtData do
  begin
    setComboBox(qryVotacao.asString, cbVotacao);
    setComboBox(qryStatus.AsString, cbstatus);
    setComboBox(qryTipo.asString, cbTipo);
  end;

  //LerCombo();


  itsChanged := false;

end;

procedure TfrmEmendasNew.DBGridCellClick(Column: TColumn);
var t : integer;
begin
   t := Length(kDescricao.Text);


 {
  btnNew.Enabled    := true;
  btnSave.Enabled   := true;
  btnCancel.Enabled := true;
  btnDelete.Enabled := true;
  }
  //Status_reg := 'a';
  {
  PageControl1.Enabled := True;
  isItChanged();
  Apaga_MetaTotal;
  Apaga_Valor_r();
  Apaga_Valor_a();
  Apaga_aditivavalor();

  qyEmendasValor_.Close;
  qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor_.ExecSQL;
  qyEmendasValor_.Open;

  qyEmendasValor02_.Close;
  qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor02_.ExecSQL;
  qyEmendasValor02_.Open;


  keyExit();
  }
  {
  qyEmendas_Cons_.Close;
  qyEmendas_Cons_.Parameters.ParamByName('EMENDA').Value := qryNumEmenda.Value; //txtemenda.Text;
  qyEmendas_Cons_.Open;

  IF qyEmendas_Cons_Processado.Value = 'S' THEN
  BEGIN
     PageControl1.Enabled := False;
     btnNew.Enabled    := False;
     btnSave.Enabled   := False;
     btnCancel.Enabled := False;
     btnDelete.Enabled := False;
  END;
  }

 PageControl1.Enabled := True;
  isItChanged();
  Apaga_MetaTotal;
  Apaga_Valor_r();
  Apaga_Valor_a();
  Apaga_aditivavalor();

  qyEmendasValor_.Close;
  qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor_.ExecSQL;
  qyEmendasValor_.Open;

  qyEmendasValor02_.Close;
  qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor02_.ExecSQL;
  qyEmendasValor02_.Open;


  keyExit();


  //Valor da Emendas e Saldo;


  ValoresEmendas;

//PageControl2.ActivePageIndex := 0;
  if (COPY(kDescricao.Text,t-7,t) = '- EP/LOM')then  rdgGrupo.ItemIndex := 1;
  if (COPY(kDescricao.Text,t-5,t) = '- EP/C')  then  rdgGrupo.ItemIndex := 2;
  if (COPY(kDescricao.Text,t-3,t) = '- EP')    then  rdgGrupo.ItemIndex := 0;


end;

procedure TfrmEmendasNew.btnRefreshClick(Sender: TObject);
begin
  with qry, qry.SQL do begin
    close;
    clear;
    add(SqlPrincipal);
    open;
  end;
end;

procedure TfrmEmendasNew.txtNomeChange(Sender: TObject);
begin
  itsChanged := true;
end;

procedure TfrmEmendasNew.isItChanged;
begin
  if theOperation = '*' then exit;
  if itsChanged then
     if application.messageBox('Voc� iniciou uma edi��o no registro atual. Deseja salvar as altera��es ?','',MB_ICONQUESTION+MB_YESNO) = IDYES then save();
end;


procedure TfrmEmendasNew.save;
Var
  i : integer;
begin
   if (qryProcessado.Value = 'S') and (Status_reg = 'a') then
   begin
      ShowMessage('Aten��o, essa emenda n�o pode ser mais alterada!!!!');
      exit;
   end;


   if application.messageBox('Salvar altera��es ?','Salvar',
      MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   if Status_reg = 'i' then
   Begin
     qry.Insert;
     qryProcessado.Value := 'N';
     qryEmendaG.Value := tEG_.Text;
   End;

   if Status_reg = 'a' then  qry.Edit;

   qryNumEmenda.Value := txtemenda.Text;


   if Status_reg = 'i' then
      dmtData.Auditoria('INSERIR','EMENDAS',qryNumEmenda.Value);

   if Status_reg = 'a' then
      dmtData.Auditoria('ALTERAR','EMENDAS',qryNumEmenda.Value);

   If (copy(cbTipo.text,1,1) = '1') or (copy(cbTipo.text,1,1) = '2') then
   Begin
      qryTexto.Value := MTexto.Text;
   end;

   If (copy(cbTipo.text,1,1) = '3') then
   Begin

     qryrUnorc.Value      := avtxtUnorc.Text;
     qryrFuncao.Value     := avtxtFuncao.Text;
     qryrSubFuncao.Value  := avtxtSubFuncao.Text;
     qryrPrograma.Value   := avtxprograma.Text;
     qryrAcao.Value       := avtxtAcao.Text;
     qryrLocali.Value     := avtxtlocalizacao.Text;
     qryrGrupo.Value      := copy(avcbGrupo.text,1,2);

     if Status_reg = 'i' then qyLocali_.Insert;
     if Status_reg = 'a' then qyLocali_.Edit;

     qyLocali_descricao.Value  := kDescricao.Text;
     qyLocali_Emenda.Value     := txtemenda.Text;
     qyLocali_unorc.Value      := ktunorc.Text;
     qyLocali_funcao.Value     := ktfuncao.Text;
     qyLocali_subFuncao.Value  := ktsubfuncao.Text;
     qyLocali_programa.Value   := ktprograma.Text;
     qyLocali_acao.Value       := ktacao.Text;
     qyLocali_locali.Value     := ktlocalizacao.Text;
     qyLocali_Esfera.Value     := copy(cmbEsfera.Text,1,2);
     qyLocali_regional.Value   := ktRegional.Text;

     // se metafisica for vazia recebe valor zero
     If Trim(ktMetafisica.Text) ='' Then
        qyLocali_metaFisica.Value := 0
     Else
        qyLocali_metaFisica.Value := StrToInt(ktMetafisica.Text);

  End;


  If (copy(cbTipo.text,1,1) = '4') then
  Begin
     qryrUnorc.Value      := rtxtUnorc.Text;
     qryrFuncao.Value     := rtxtFuncao.Text;
     qryrSubFuncao.Value  := rtxtSubFuncao.Text;
     qryrPrograma.Value   := rtxtPrograma.Text;
     qryrAcao.Value       := rtxtAcao.Text;
     qryrLocali.Value     := rtxtLocali.Text;
     qryrGrupo.Value      := copy(rcmbGrupo.text,1,2);

     qryaUnorc.Value      := atxtUnorc.Text;
     qryaFuncao.Value     := atxtFuncao.Text;
     qryaSubFuncao.Value  := atxtSubFuncao.Text;
     qryaPrograma.Value   := atxtPrograma.Text;
     qryaAcao.Value       := atxtAcao.Text;
     qryaLocali.Value     := atxtLocali.Text;
     qryaGrupo.Value      := copy(acmbGrupo.text,1,2);

  End;

  If (copy(cbTipo.text,1,1) = '5') or (copy(cbTipo.text,1,1) = '6') then
  Begin
     qryUnorc.Value      := txtUnorc.Text;
     qryFuncao.Value     := txtFuncao.Text;
     qrySubFuncao.Value  := txtSubFuncao.Text;
     qryPrograma.Value   := txtPrograma.Text;
     qryAcao.Value       := txtAcao.Text;
     qryLocali.Value     := Strtoint(txtLocali.Text);
     //qryEsfera.Value     := copy(cmbEsfera.text,1,2);
     //qryRegional.Value   := txtRegional.Text;

     // se metafisica for vazia recebe valor zero
     If trim(txtMetaFisica.Text) ='' Then
        qryMetaFisica.Value := 0
     Else
        qryMetaFisica.Value := StrToInt(txtMetaFisica.Text);

     qryProduto.Value    := txtProduto.Caption;
  end;

  qryVotacao.Value   := copy(cbVotacao.text,1,1);
  qryStatus.Value    := copy(cbStatus.text,1,1);
  qryTipo.Value      := copy(cbTipo.text,1,1);

  
  If sQry.State in [dsedit, dsinsert] then
     qry.Post;

  if (qryProcessado.Value <> 'S') and ((copy(cbStatus.Text,1,1)='1') or (copy(cbStatus.Text,1,1)='2')) then
      Conversor();

  iF copy(cbStatus.Text,1,1)='2' THEN
     qryProcessado.Value := 'S';
  
  If (copy(cbTipo.text,1,1) = '3') then qyLocali_.Post;

  If cbStatus.Enabled = true then
     cbStatus.Enabled := False;

  Status_reg :='';

  clearControls();

  Botoes;

  btRenovar.OnClick(NIL);

end;

procedure TfrmEmendasNew.DBGridEnter(Sender: TObject);
begin
  isItChanged();
end;

procedure TfrmEmendasNew.btnSaveClick(Sender: TObject);
Var
  Saldo, S_Acre, S_Rec : Currency;
  Calc : Real;
begin
   S_Acre := 0;
   S_Rec  := 0;
{   If PageControl1.ActivePage = tabAditivaValor then
    begin
       avUnidad :=  atxtUnorc.Text;
       avFunc := atxtFuncao.Text;
       avSFunc := atxtSubFuncao.Text;
       avProgr := atxtPrograma.Text;
       avAc := atxtAcao.Text;
       avLc := atxtLocali.Text;

       rcUnidad :=  rtxtUnorc.Text;
       rcFunc := rtxtFuncao.Text;
       rcSFunc := rtxtSubFuncao.Text;
       rcProgr := rtxtPrograma.Text;
       rcAc := rtxtAcao.Text;
       rcLc := rtxtLocali.Text;



   end;


    If PageControl1.ActivePage = TabValor then
    begin
       rcUnidad :=  rtxtUnorc.Text;
       rcFunc := rtxtFuncao.Text;
       rcSFunc := rtxtSubFuncao.Text;
       rcProgr := rtxtPrograma.Text;
       rcAc := rtxtAcao.Text;
       rcLc := rtxtLocali.Text;
    end;}
   If Trim(txtemenda.Text) ='' Then
   Begin
      ShowMessage('Informe o N�mero da Emenda!!!');
      txtemenda.SetFocus;
      Exit;
   End;

   If (copy(cbTipo.text,1,1) = '3') then
   Begin
     ///////////////////////////////////////////////////////////////////////////
     qyEVSoma_Aditiva_.Close;
     qyEVSoma_Aditiva_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
     qyEVSoma_Aditiva_.ExecSQL;
     qyEVSoma_Aditiva_.Open;

     qyEVSoma_Aditiva02_.Close;
     qyEVSoma_Aditiva02_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
     qyEVSoma_Aditiva02_.ExecSQL;
     qyEVSoma_Aditiva02_.Open;

     S_Rec := qyEVSoma_Aditiva_rvalor.Value;
     S_Acre := qyEVSoma_Aditiva02_avalor.Value;

     if qyEVSoma_Aditiva_rvalor.Value <>  qyEVSoma_Aditiva02_avalor.Value Then
     Begin
        ShowMessage('A soma da redu��o est� diferente da de acr�scimo!!!');
        AvcGrid.SetFocus;
        Exit;
     End;
   End;

   If (copy(cbTipo.text,1,1) = '4') then
   Begin
     ///////////////////////////////////////////////////////////////////////////
     qyEVSoma_Aditiva_.Close;
     qyEVSoma_Aditiva_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
     qyEVSoma_Aditiva_.ExecSQL;
     qyEVSoma_Aditiva_.Open;

     qyEVSoma_Aditiva02_.Close;
     qyEVSoma_Aditiva02_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
     qyEVSoma_Aditiva02_.ExecSQL;
     qyEVSoma_Aditiva02_.Open;

     S_Rec := qyEVSoma_Aditiva_rvalor.Value;
     S_Acre := qyEVSoma_Aditiva02_avalor.Value;

     if qyEVSoma_Aditiva_rvalor.Value <>  qyEVSoma_Aditiva02_avalor.Value Then
     Begin
        ShowMessage('A soma da redu��o est� diferente da de acr�scimo!!!');
        dbgElementoAcrescimo.SetFocus;
        Exit;
     End;
   End;

   ////////////////////////////////////////////////////////////////////////////////
   //Saldo, S_Acre, S_Rec : Currency;
   // Calc : Real;

   TotEme_.Close;
   TotEme_.Parameters.ParamByName('Emenda').Value := copy(tEG_.Text,1,3);
   TotEme_.ExecSQL;
   TotEme_.Open;

   If  qyEVSoma_Aditiva_rvalor.Value > 0 then
       S_Rec := qyEVSoma_Aditiva_rvalor.Value
   Else
       S_Rec  := 0;

   If qyEVSoma_Aditiva02_avalor.Value > 0 then
       S_Acre := qyEVSoma_Aditiva02_avalor.Value
   Else
       S_Acre :=0;



   Calc := S_Acre;

   If TotEme_rvalor.Value > ValorEmendaGeral  Then
   Begin
      ShowMessage('A Soma dos Detalhes desta Emenda � Maior que a Emenda Geral!!'+#13+#13+
                  'Valor da Emenda Geral: '+ FormatCurr('###,###,##0.00',ValorEmendaGeral)+#13+
                  'soma das Emendas: '+ FormatCurr('###,###,##0.00',TotEme_rvalor.Value));


      Exit;
   End;

   Saldo := ValorEmendaGeral - Calc;
   edSaldo.Value := Saldo;

   ///////////////////////////////////////////////////////////////////////////////


  If cbTipo.ItemIndex <> 0 then save();
  Apaga_MetaTotal;
  PageControl1.ActivePageIndex := 0;
  PageControl2.ActivePageIndex := 0;

  Apaga_aditivavalor;

  qyEmendasValor_.Close;
  qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor_.ExecSQL;
  qyEmendasValor_.Open;

  qyEmendasValor02_.Close;
  qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor02_.ExecSQL;
  qyEmendasValor02_.Open;
  Status_reg := '';
  Botoes;

end;

procedure TfrmEmendasNew.btnPrintClick(Sender: TObject);
begin
 {
 Application.CreateForm(TfrmAcaoList, frmAcaoList);
  if chbAlfa.checked then
     with frmAcaoList.qry do begin
       close;
       SQL[8] := 'ORDER BY descricao';
       open;
     end;
  frmAcaoList.report.preview;
  frmAcaoList.free;
 }
end;


procedure TfrmEmendasNew.LerCombo;
begin
   // Vota��o
   if qryVotacao.Value = '1' then cbVotacao.ItemIndex := 0;
   if qryVotacao.Value = '2' then cbVotacao.ItemIndex := 1;

   // Status
   if qryStatus.Value = '1' then cbStatus.ItemIndex := 0;
   if qryStatus.Value = '2' then cbStatus.ItemIndex := 1;
   if qryStatus.Value = '3' then cbStatus.ItemIndex := 2;

   // Tipo
   if qryTipo.Value = '1' then cbStatus.ItemIndex := 0;
   if qryTipo.Value = '2' then cbStatus.ItemIndex := 1;
   if qryTipo.Value = '3' then cbStatus.ItemIndex := 2;
   if qryTipo.Value = '4' then cbStatus.ItemIndex := 3;
   if qryTipo.Value = '5' then cbStatus.ItemIndex := 4;
   if qryTipo.Value = '6' then cbStatus.ItemIndex := 5;

end;



procedure TfrmEmendasNew.txtUnorcChange(Sender: TObject);
begin
   itsChanged := true;

end;


procedure TfrmEmendasNew.txtFuncaoChange(Sender: TObject);
begin
   itsChanged := true;

end;

procedure TfrmEmendasNew.txtSubFuncaoChange(Sender: TObject);
begin
   itsChanged := true;


end;

procedure TfrmEmendasNew.txtProgramaChange(Sender: TObject);
begin
   itsChanged := true;

end;

procedure TfrmEmendasNew.txtAcaoChange(Sender: TObject);
begin
   itsChanged := true;

end;

procedure TfrmEmendasNew.cmbUnorcChange(Sender: TObject);
begin
   itsChanged := true;
   txtFuncao.Clear;
   cmbFuncao.Clear;
   loadTable_Funcao('Funcao','Funcaod',cmbFuncao);
end;


procedure TfrmEmendasNew.cmbFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   txtSubFuncao.Clear;
   cmbSubFuncao.Clear;
   loadTable_SubFuncao('SubFuncao','SubFuncaod',cmbSubFuncao);
end;

procedure TfrmEmendasNew.cmbSubFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   txtPrograma.Clear;
   cmbPrograma.Clear;
   loadTable_Programa('Programa','Programad',cmbPrograma);
end;

procedure TfrmEmendasNew.cmbProgramaChange(Sender: TObject);
begin
   itsChanged := true;
   txtAcao.Clear;
   cmbAcao.Clear;
   loadTable_Acao('Acao','AcaoD',cmbAcao);
end;

procedure TfrmEmendasNew.cmbAcaoChange(Sender: TObject);
begin
   itsChanged := true;

end;

procedure TfrmEmendasNew.cmbUnorcClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtUnorc.text := copy(text,1,unoSize);
   end;

end;

procedure TfrmEmendasNew.cmbFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtFuncao.text := copy(text,1,2);
   end;
end;

procedure TfrmEmendasNew.cmbSubFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtsubFuncao.text := copy(text,1,3);
   end;
end;

procedure TfrmEmendasNew.cmbProgramaClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtPrograma.text := copy(text,1,4);
   end;
end;

procedure TfrmEmendasNew.cmbAcaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtAcao.text := copy(text,1,4);
   end;
end;

procedure TfrmEmendasNew.txtUnorcExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbUnorc do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         txtFuncao.Clear;
         cmbFuncao.Clear;
         loadTable_Funcao('Funcao','Funcaod',cmbFuncao);

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    txtFuncao.Clear;
    cmbFuncao.Clear;

    abort;
  end;



end;


procedure TfrmEmendasNew.txtFuncaoExit(Sender: TObject);
var i : integer;
begin
    if trim((sender as tEdit).text) = '' then exit;
  with cmbFuncao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         txtSubFuncao.Clear;
         cmbSubFuncao.Clear;
         loadTable_SubFuncao('SubFuncao','SubFuncaod',cmbSubFuncao);

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    txtSubFuncao.Clear;
    cmbSubFuncao.Clear;

    abort;
  end;
end;

procedure TfrmEmendasNew.txtSubFuncaoExit(Sender: TObject);
var i : integer;
begin
   if trim((sender as tEdit).text) = '' then exit;
  with cmbSubFuncao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         txtPrograma.Clear;
         cmbPrograma.Clear;
         loadTable_Programa('Programa','Programad',cmbPrograma);

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    txtPrograma.Clear;
    cmbPrograma.Clear;

    abort;
  end;
end;

procedure TfrmEmendasNew.txtProgramaExit(Sender: TObject);
var i : integer;
begin
   if trim((sender as tEdit).text) = '' then exit;
  with cmbPrograma do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         txtAcao.Clear;
         cmbAcao.Clear;
         loadTable_Acao('Acao','AcaoD',cmbAcao);

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    txtAcao.Clear;
    cmbAcao.Clear;

    abort;
  end;
end;

procedure TfrmEmendasNew.txtAcaoExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbAcao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;
         if theOperation = 'i' then
            with qryTable, qryTable.SQL do begin
              close;
              clear;
              add('SELECT produto = CASE');
              add('                  WHEN produto > '''' THEN  produto + ''('' + unidade + '')''');
              add('                  ELSE ''''');
              add('                 END');
              add('   FROM acao');
              add('     WHERE codigo = '''+trim((sender as tEdit).text)+'''');
              open;
              txtProduto.caption := qryTable.fieldByName('produto').asString;         //if not eof then
     end;
         Localizacao(); // Encontra a localizac�o
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

procedure TfrmEmendasNew.loadTable(theTable: string; theCombo: tComboBox);
begin
  with qryTable, qryTable.SQL do
  begin
    close;
    clear;
    add('SELECT * FROM '+theTable);
    add('  ORDER BY descricao');
    open;
    theCombo.clear;
    while not eof do
    begin
      theCombo.items.add(fieldByName('codigo').asString + '-'+fieldByName('descricao').asString);
      next;
    end;
  end;
end;


//


procedure TfrmEmendasNew.loadTable_x(TheCamp:String; TheDesc: string; theCombo: tComboBox);
begin
  with qryTable, qryTable.SQL do
  begin
    close;
    clear;
    add('SELECT distinct '+TheCamp+','+TheDesc+' FROM ORCAMENTO');
    add('  ORDER BY '+TheDesc);
    open;
    theCombo.clear;
    while not eof do
    begin
      theCombo.items.add(fieldByName(TheCamp).asString + '-'+fieldByName(TheDesc).asString);
      next;
    end;
  end;
end;

procedure TfrmEmendasNew.loadTable_xacao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
begin
  with qryTable, qryTable.SQL do
  begin
    close;
    clear;
    add('SELECT distinct '+TheCamp+','+TheDesc+' FROM ACAO');
    add('  ORDER BY CODIGO');
    open;
    theCombo.clear;
    while not eof do
    begin
      theCombo.items.add(fieldByName(TheCamp).asString + '-'+fieldByName(TheDesc).asString);
      next;
    end;
  end;
end;

procedure TfrmEmendasNew.loadTable_Unorc(TheCamp:String; TheDesc: string; theCombo: tComboBox);
begin
  with qryTable, qryTable.SQL do
  begin
    close;
    clear;
    add('SELECT distinct '+TheCamp+','+TheDesc+' FROM ORCAMENTO');
    add('  ORDER BY '+TheDesc);
    open;
    theCombo.clear;
    while not eof do
    begin
      theCombo.items.add(fieldByName(TheCamp).asString + '-'+fieldByName(TheDesc).asString);
      next;
    end;
  end;
end;

procedure TfrmEmendasNew.loadTable_Funcao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
begin
  with qryTable, qryTable.SQL do
  begin
    close;
    clear;
    add('SELECT distinct '+TheCamp+','+TheDesc+' FROM ORCAMENTO');

    If (copy(cbTipo.text,1,1) = '3')then
    begin
        add('Where unorc = '+avtxtUnorc.text);
    end;


    If (copy(cbTipo.text,1,1) = '4')then
    begin
        if Statusvalor = 'r' then
        add('Where unorc = '+rTxtUnorc.text);
        if Statusvalor = 'a' then
        add('Where unorc = '+aTxtUnorc.text);
    end;

    If (copy(cbTipo.text,1,1) = '5') or (copy(cbTipo.text,1,1) = '6') then
        add('Where unorc = '+TxtUnorc.text);

    add('  ORDER BY '+TheDesc);
    open;
    theCombo.clear;
    while not eof do
    begin
      theCombo.items.add(fieldByName(TheCamp).asString + '-'+fieldByName(TheDesc).asString);
      next;
    end;
  end;
end;

procedure TfrmEmendasNew.loadTable_SubFuncao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
begin
  with qryTable, qryTable.SQL do
  begin
    close;
    clear;
    add('SELECT distinct '+TheCamp+','+TheDesc+' FROM ORCAMENTO');

    If (copy(cbTipo.text,1,1) = '3')then
    Begin
       add('Where unorc = '+avtxtUnorc.text+' and funcao = '+avtxtfuncao.Text);
    end;


    If (copy(cbTipo.text,1,1) = '4')then
    Begin
       if Statusvalor = 'r' then
       add('Where unorc = '+rTxtUnorc.text+' and funcao = '+rtxtFuncao.Text);

       if Statusvalor = 'a' then
       add('Where unorc = '+aTxtUnorc.text+' and funcao = '+atxtFuncao.Text);
    end;

    If (copy(cbTipo.text,1,1) = '5') or (copy(cbTipo.text,1,1) = '6') then
       add('Where unorc = '+TxtUnorc.text+' and funcao = '+txtFuncao.Text);
    add('  ORDER BY '+TheDesc);
    open;
    theCombo.clear;
    while not eof do
    begin
      theCombo.items.add(fieldByName(TheCamp).asString + '-'+fieldByName(TheDesc).asString);
      next;
    end;
  end;
end;

procedure TfrmEmendasNew.loadTable_Programa(TheCamp:String; TheDesc: string; theCombo: tComboBox);
begin
  with qryTable, qryTable.SQL do
  begin                   
    close;
    clear;
    add('SELECT distinct '+TheCamp+','+TheDesc+' FROM ORCAMENTO');

    If (copy(cbTipo.text,1,1) = '3')then
        add('Where unorc = '+avtxtUnorc.text+' and funcao = '+avtxtfuncao.Text +' and subfuncao = '+avtxtsubfuncao.Text);

    If (copy(cbTipo.text,1,1) = '4')then
    Begin
       if Statusvalor = 'r' then
          add('Where unorc = '+rTxtUnorc.text+' and funcao = '+rtxtFuncao.Text +' and subfuncao = '+rtxtSubFuncao.Text);

       if Statusvalor = 'a' then
          add('Where unorc = '+aTxtUnorc.text+' and funcao = '+atxtFuncao.Text +' and subfuncao = '+atxtSubFuncao.Text);
    end;

    If (copy(cbTipo.text,1,1) = '5') or (copy(cbTipo.text,1,1) = '6') then
    Begin
       add('Where unorc = '+TxtUnorc.text+' and funcao = '+txtFuncao.Text +' and subfuncao = '+txtSubFuncao.Text);
    end;

    add('  ORDER BY '+TheDesc);

    open;
    theCombo.clear;
    while not eof do
    begin
      theCombo.items.add(fieldByName(TheCamp).asString + '-'+fieldByName(TheDesc).asString);
      next;
    end;
  end;
end;

procedure TfrmEmendasNew.loadTable_Acao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
begin
  with qryTable, qryTable.SQL do
  begin
    close;
    clear;
    add('SELECT distinct '+TheCamp+','+TheDesc+' FROM ORCAMENTO');

    If (copy(cbTipo.text,1,1) = '3')then
    begin
       add('Where unorc = '+avTxtUnorc.text+' and funcao = '+avtxtFuncao.Text +' and subfuncao = '+avtxtSubFuncao.Text);
       add('and Programa = '+avtxPrograma.text);
    end;

    If (copy(cbTipo.text,1,1) = '4')then
    begin
       if Statusvalor = 'r' then
       Begin
          add('Where unorc = '+rTxtUnorc.text+' and funcao = '+rtxtFuncao.Text +' and subfuncao = '+rtxtSubFuncao.Text);
          add('and Programa = '+rtxtPrograma.text);
       end;

       if Statusvalor = 'a' then
       Begin
          add('Where unorc = '+aTxtUnorc.text+' and funcao = '+atxtFuncao.Text +' and subfuncao = '+atxtSubFuncao.Text);
          add('and Programa = '+atxtPrograma.text);
       end;
    end;

    If (copy(cbTipo.text,1,1) = '5') or (copy(cbTipo.text,1,1) = '6') then
    begin
       add('Where unorc = '+TxtUnorc.text+' and funcao = '+txtFuncao.Text +' and subfuncao = '+txtSubFuncao.Text);
       add('and Programa = '+txtPrograma.text);
    end;
    add('  ORDER BY '+TheDesc);
    open;
    theCombo.clear;
    while not eof do
    begin
      theCombo.items.add(fieldByName(TheCamp).asString + '-'+fieldByName(TheDesc).asString);
      next;
    end;
  end;
end;

procedure TfrmEmendasNew.loadTable_Localizacao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
begin
  with qryTable, qryTable.SQL do
  begin
    close;
    clear;
    add('SELECT distinct '+TheCamp+','+TheDesc+' FROM ORCAMENTO');

    If (copy(cbTipo.text,1,1) = '3')then
    Begin
           add('Where unorc = '+avTxtUnorc.text+' and funcao = '+avtxtFuncao.Text +' and subfuncao = '+avtxtSubFuncao.Text);
           add('and Programa = '+avtxPrograma.text +' and acao = '+avtxtAcao.text);
    end;


    If (copy(cbTipo.text,1,1) = '4')then
    begin
       if Statusvalor = 'r' then
       Begin
           add('Where unorc = '+rTxtUnorc.text+' and funcao = '+rtxtFuncao.Text +' and subfuncao = '+rtxtSubFuncao.Text);
           add('and Programa = '+rtxtPrograma.text +' and acao = '+rtxtAcao.text);
       end;
       if Statusvalor = 'a' then
       Begin
           add('Where unorc = '+aTxtUnorc.text+' and funcao = '+atxtFuncao.Text +' and subfuncao = '+atxtSubFuncao.Text);
           add('and Programa = '+atxtPrograma.text +' and acao = '+atxtAcao.text);
       end;
    end;
    If (copy(cbTipo.text,1,1) = '5') or (copy(cbTipo.text,1,1) = '6') then
    begin
       add('Where unorc = '+TxtUnorc.text+' and funcao = '+txtFuncao.Text +' and subfuncao = '+txtSubFuncao.Text);
       add('and Programa = '+txtPrograma.text);
    end;
    add('  ORDER BY '+TheDesc);
    open;
    theCombo.clear;
    while not eof do
    begin
      theCombo.items.add(fieldByName(TheCamp).asString + '-'+fieldByName(TheDesc).asString);
      next;
    end;
  end;
end;

procedure TfrmEmendasNew.Localizacao;
begin
   with qryTable, qryTable.SQL do
   begin
      close;
      clear;
      add('SELECT distinct localis FROM ORCAMENTO');
      add('Where unorc = '+TxtUnorc.text);
      add('and   funcao = '+txtFuncao.Text);
      add('and   subfuncao = '+txtSubFuncao.Text);
      add('and   Programa = '+txtPrograma.text);
      add('and   acao = '+txtAcao.Text);
      add('ORDER BY Localis');
      open;
   end;
   txtLocali.Text := qryTable.fieldbyname('Localis').asstring;

end;

procedure TfrmEmendasNew.rLocalizacao;
begin
   with qryTable, qryTable.SQL do
   begin
      close;
      clear;
      add('SELECT distinct localis FROM ORCAMENTO');
      add('Where unorc = '+rtxtUnorc.text);
      add('and   funcao = '+rtxtFuncao.Text);
      add('and   subfuncao = '+rtxtSubFuncao.Text);
      add('and   Programa = '+rtxtPrograma.text);
      add('and   acao = '+rtxtAcao.Text);
      add('ORDER BY Localis');
      open;
   end;
   rtxtLocali.Text := qryTable.fieldbyname('Localis').asstring;
end;

procedure TfrmEmendasNew.aLocalizacao;
begin
   with qryTable, qryTable.SQL do
   begin
      close;
      clear;
      add('SELECT distinct localis FROM ORCAMENTO');
      add('Where unorc = '+atxtUnorc.text);
      add('and   funcao = '+atxtFuncao.Text);
      add('and   subfuncao = '+atxtSubFuncao.Text);
      add('and   Programa = '+atxtPrograma.text);
      add('and   acao = '+atxtAcao.Text);
      add('ORDER BY Localis');
      open;
   end;
   atxtLocali.Text := qryTable.fieldbyname('Localis').asstring;
end;


procedure TfrmEmendasNew.cbTipoExit(Sender: TObject);
begin
  // Ativa_Memo();
  // PageControl1.SetFocus;
end;

procedure TfrmEmendasNew.Ativa_Memo;
begin

   if (Copy(cbTipo.Text,1,1) = '1') or (Copy(cbTipo.Text,1,1) = '2') then
   begin
      PageControl1.ActivePage :=TabTexto;
      gbTexto.Enabled := True;
      gbValor.Enabled := False;
      gbMeta.Enabled  := False;
      gbAditivavalor.Enabled := False;
      MTexto.SetFocus;
   end;

   if (Copy(cbTipo.Text,1,1) = '3') then
   begin
      PageControl1.ActivePage :=tabAditivaValor;
      //btVereadores.SetFocus;
      gbAditivavalor.Enabled := True;
      gbTexto.Enabled := False;
      gbValor.Enabled := True;
      gbMeta.Enabled  := False;

      loadTable_Unorc('unorc','Unorcd',avcmb_Unorc);
      unoSize := length(trim(qryTable.fieldByName('Unorc').asString));


      loadTable_x('unorc','Unorcd',kcunorc);
      unoSize := length(trim(qryTable.fieldByName('Unorc').asString));


      loadTable_x('funcao','funcaod',kcfuncao);
      loadTable_x('subfuncao','subfuncaod',kcsubfuncao);
      loadTable_x('programa','programad',kcprograma);
      //loadTable_x('acao','acaod',kcacao);
      loadTable_xacao('codigo','descricao',kcacao);
      //loadTable_x('localis','Descricao',kclocalizacao);

      qyEmendasValor_.Close;
      qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
      qyEmendasValor_.ExecSQL;
      qyEmendasValor_.Open;

      qyEmendasValor02_.Close;
      qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
      qyEmendasValor02_.ExecSQL;
      qyEmendasValor02_.Open;

   end;

   if (Copy(cbTipo.Text,1,1) = '4') then
   begin
      PageControl1.ActivePage :=TabValor;
     // btVereadores.SetFocus;
      gbTexto.Enabled := False;
      gbValor.Enabled := True;
      gbAditivavalor.Enabled := False;
      gbMeta.Enabled  := False;

      loadTable_Unorc('unorc','Unorcd',rcmbUnorc);
      loadTable_Unorc('unorc','Unorcd',AcmbUnorc);

      unoSize := length(trim(qryTable.fieldByName('Unorc').asString));


   end;


   if (Copy(cbTipo.Text,1,1) = '5') or (Copy(cbTipo.Text,1,1) = '6') then
   begin
      PageControl1.ActivePage :=TabMeta;
      gbTexto.Enabled := False;
      gbValor.Enabled := False;
      gbMeta.Enabled  := True;
      gbAditivavalor.Enabled := False;


      loadTable_Unorc('unorc','Unorcd',cmbUnorc);
      unoSize := length(trim(qryTable.fieldByName('Unorc').asString));

      Apaga_MetaTotal;

      txtUnorc.SetFocus;
   end;
end;


procedure TfrmEmendasNew.Apaga_Txt;
begin
   txtUnorc.Clear;
   txtFuncao.Clear;
   txtSubFuncao.Clear;
   txtPrograma.Clear;
   txtAcao.Clear;
   txtLocali.Clear;
   //txtRegional.Clear;
   txtMetaFisica.Clear;
   txtProduto.Caption := '';


end;

procedure TfrmEmendasNew.Apaga_Combos;
begin

   cmbUnorc.ItemIndex := -1;
   cmbFuncao.ItemIndex := -1;
   cmbSubFuncao.ItemIndex := -1;
   cmbPrograma.ItemIndex := -1;
   cmbAcao.ItemIndex := -1;
   //cmbEsfera.ItemIndex := -1;
end;

procedure TfrmEmendasNew.Apaga_MetaTotal;
begin
   Apaga_Txt;
   Apaga_Combos;
end;

procedure TfrmEmendasNew.rtxtUnorcChange(Sender: TObject);
begin
    itsChanged := true;
end;

procedure TfrmEmendasNew.rtxtFuncaoChange(Sender: TObject);
begin
    itsChanged := true;
end;

procedure TfrmEmendasNew.rtxtSubFuncaoChange(Sender: TObject);
begin
    itsChanged := true;
end;

procedure TfrmEmendasNew.rtxtProgramaChange(Sender: TObject);
begin
    itsChanged := true;
end;

procedure TfrmEmendasNew.rtxtAcaoChange(Sender: TObject);
begin
    itsChanged := true;
end;

procedure TfrmEmendasNew.rcmbUnorcChange(Sender: TObject);
begin
   itsChanged := true;
   rtxtFuncao.Clear;
   rcmbFuncao.Clear;
   loadTable_Funcao('Funcao','Funcaod',rcmbFuncao);
end;

procedure TfrmEmendasNew.rcmbFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   rtxtSubFuncao.Clear;
   rcmbSubFuncao.Clear;
   loadTable_SubFuncao('SubFuncao','SubFuncaod',rcmbSubFuncao);
end;

procedure TfrmEmendasNew.rcmbSubFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   rtxtPrograma.Clear;
   rcmbPrograma.Clear;
   loadTable_Programa('Programa','Programad',rcmbPrograma);
end;

procedure TfrmEmendasNew.rcmbProgramaChange(Sender: TObject);
begin
   itsChanged := true;
   rtxtAcao.Clear;
   rcmbAcao.Clear;
   loadTable_Acao('Acao','AcaoD',rcmbAcao);
end;

procedure TfrmEmendasNew.rcmbAcaoChange(Sender: TObject);
begin
    itsChanged := true;
    rtxtLocali.Clear;
    rcmbLocalizacao.Clear;
    loadTable_Localizacao('Localis','Descricao',rcmbLocalizacao);
end;

procedure TfrmEmendasNew.rcmbLocalizacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;


procedure TfrmEmendasNew.rtxtUnorcExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with rcmbUnorc do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         Statusvalor := 'r';
         rtxtFuncao.Clear;
         rcmbFuncao.Clear;
         loadTable_Funcao('Funcao','Funcaod',rcmbFuncao);
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    rtxtFuncao.Clear;
    rcmbFuncao.Clear;

    abort;
  end;
end;

procedure TfrmEmendasNew.rtxtFuncaoExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with rcmbFuncao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         Statusvalor := 'r';
         rtxtSubFuncao.Clear;
         rcmbSubFuncao.Clear;
         loadTable_SubFuncao('SubFuncao','SubFuncaod',rcmbSubFuncao);
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    rtxtSubFuncao.Clear;
    rcmbSubFuncao.Clear;

    abort;
  end;
end;

procedure TfrmEmendasNew.rtxtSubFuncaoExit(Sender: TObject);
var i : integer;
begin
   if trim((sender as tEdit).text) = '' then exit;
   with rcmbSubFuncao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         Statusvalor := 'r';
         rtxtPrograma.Clear;
         rcmbPrograma.Clear;
         loadTable_Programa('Programa','Programad',rcmbPrograma);
          exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    rtxtPrograma.Clear;
    rcmbPrograma.Clear;

    abort;
  end;
end;

procedure TfrmEmendasNew.rtxtProgramaExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;

  with rcmbPrograma do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         Statusvalor := 'r';
         rtxtAcao.Clear;
         rcmbAcao.Clear;
         loadTable_Acao('Acao','AcaoD',rcmbAcao);

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    rtxtAcao.Clear;
    rcmbAcao.Clear;

    abort;
  end;
end;

procedure TfrmEmendasNew.rtxtAcaoExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with rcmbAcao do
  begin
    for i := 0 to items.count - 1  do
    begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then
      begin
         itemIndex := i;
         if theOperation = 'i' then
            with qryTable, qryTable.SQL do
            begin
              close;
              clear;
              add('SELECT produto = CASE');
              add('                  WHEN produto > '''' THEN  produto + ''('' + unidade + '')''');
              add('                  ELSE ''''');
              add('                 END');
              add('   FROM acao');
              add('     WHERE codigo = '''+trim((sender as tEdit).text)+'''');
              open;
              //txtProduto.caption := qryTable.fieldByName('produto').asString;         //if not eof then
            end;
         //rLocalizacao(); // Encontra a localizac�o

         Statusvalor := 'r';
         rtxtLocali.Clear;
         rcmbLocalizacao.Clear;
         loadTable_Localizacao('localis','Descricao',rcmbLocalizacao);
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmEmendasNew.rtxtLocaliExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with rcmbLocalizacao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;



procedure TfrmEmendasNew.rcmbUnorcClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     rtxtUnorc.text := copy(text,1,unoSize);
     Statusvalor := 'r';
   end;

end;

procedure TfrmEmendasNew.rcmbFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     rtxtFuncao.text := copy(text,1,2);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.rcmbSubFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     rtxtsubFuncao.text := copy(text,1,3);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.rcmbProgramaClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     rtxtPrograma.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.rcmbAcaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     rtxtAcao.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.rcmbLocalizacaoClick(Sender: TObject);
begin
    with (sender as tComboBox) do begin
     rtxtLocali.text := copy(text,1,4);
     Statusvalor := 'r';
    end;
end;

procedure TfrmEmendasNew.dbgElementoReducaoKeyPress(Sender: TObject; var Key: Char);
begin
    If key = #13 then
    Begin
       Perform(WM_NEXTDLGCTL,0,0);
       Key := #0;
    End;
end;

procedure TfrmEmendasNew.atxtUnorcChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.atxtFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.atxtSubFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.atxtProgramaChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.atxtAcaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.atxtLocaliChange(Sender: TObject);
begin
   itsChanged := true;
end;


procedure TfrmEmendasNew.txtemendaExit(Sender: TObject);
begin

   {qry.Close;
   qry.SQL.Clear;
   qry.SQL.Add('SELECT * FROM EMENDAS');
   qry.SQL.Add('where numemenda = :Emenda');
   qry.SQL.Add('ORDER BY NUMEMENDA');
   qry.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
   qry.ExecSQL;
   qry.Open;}


   If Trim(txtemenda.Text) ='' then exit;

   If Status_reg = 'i' Then
   Begin
       qyEmendaCons_.Close;
       qyEmendaCons_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
       qyEmendaCons_.ExecSQL;
       qyEmendaCons_.Open;

       //if application.messageBox('Voc� iniciou uma edi��o no registro atual. Deseja salvar as altera��es ?','',MB_ICONQUESTION+MB_YESNO) = IDYES then save();

       If qyEmendaCons_.RecordCount > 0 Then
       Begin
          ShowMessage('Emenda J� Cadastrada!!!');
          txtemenda.Clear;
          txtemenda.SetFocus;
          {
          seleto := 'S';


          if application.messageBox(pCHAR('EMENDA: '+txtemenda.Text+' J� EST� CADASTRADA!'+#13+#13+
                                    'DESEJA CRIAR OUTRA COM O MESMO N�MERO?'),'CONSULTA',
             MB_ICONQUESTION+MB_YESNO) = IDNO then
          BEGIN
             txtemenda.SetFocus;
             Exit;
          END;
          }
       End;
   End;

end;


procedure TfrmEmendasNew.rtxtLocaliChange(Sender: TObject);
begin
   itsChanged := true;
end;


procedure TfrmEmendasNew.rcmbGrupoExit(Sender: TObject);
begin
   If Trim(rcmbGrupo.Text) = '' then exit;
   //Grupo_reducao;
   qyEmendasValor_.Close;
   qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
   qyEmendasValor_.ExecSQL;
   qyEmendasValor_.Open;
   If (PageControl1.ActivePage = tabAditivaValor) then avGpo := avcbGrupo.Text;
   If (PageControl1.ActivePage = TabValor) then rcGpo := rcmbGrupo.Text;
end;

procedure TfrmEmendasNew.atxtUnorcExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with acmbUnorc do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         Statusvalor := 'a';
         atxtFuncao.Clear;
         acmbFuncao.Clear;
         loadTable_Funcao('Funcao','Funcaod',acmbFuncao);

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    atxtFuncao.Clear;
    acmbFuncao.Clear;

    abort;
  end;
end;

procedure TfrmEmendasNew.atxtFuncaoExit(Sender: TObject);
var i : integer;
begin
    if trim((sender as tEdit).text) = '' then exit;
  with acmbFuncao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         Statusvalor := 'a';
         atxtSubFuncao.Clear;
         acmbSubFuncao.Clear;
         loadTable_SubFuncao('SubFuncao','SubFuncaod',acmbSubFuncao);

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    atxtSubFuncao.Clear;
    acmbSubFuncao.Clear;

    abort;
  end;
end;

procedure TfrmEmendasNew.atxtSubFuncaoExit(Sender: TObject);
var i : integer;
begin
   if trim((sender as tEdit).text) = '' then exit;
  with acmbSubFuncao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         Statusvalor := 'a';
         atxtPrograma.Clear;
         acmbPrograma.Clear;
         loadTable_Programa('Programa','Programad',acmbPrograma);

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    atxtPrograma.Clear;
    acmbPrograma.Clear;

    abort;
  end;
end;

procedure TfrmEmendasNew.atxtProgramaExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with acmbPrograma do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         Statusvalor := 'a';
         atxtAcao.Clear;
         acmbAcao.Clear;
         loadTable_Acao('Acao','AcaoD',acmbAcao);

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    atxtAcao.Clear;
    acmbAcao.Clear;

    abort;
  end;
end;

procedure TfrmEmendasNew.atxtAcaoExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with acmbAcao do
  begin
    for i := 0 to items.count - 1  do
    begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then
      begin
         itemIndex := i;
         if theOperation = 'i' then
            with qryTable, qryTable.SQL do
            begin
              close;
              clear;
              add('SELECT produto = CASE');
              add('                  WHEN produto > '''' THEN  produto + ''('' + unidade + '')''');
              add('                  ELSE ''''');
              add('                 END');
              add('   FROM acao');
              add('     WHERE codigo = '''+trim((sender as tEdit).text)+'''');
              open;
              txtProduto.caption := qryTable.fieldByName('produto').asString;         //if not eof then
            end;
         //rLocalizacao(); // Encontra a localizac�o

         Statusvalor := 'a';
         atxtLocali.Clear;
         acmbLocalizacao.Clear;
         loadTable_Localizacao('localis','Descricao',acmbLocalizacao);
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;


procedure TfrmEmendasNew.atxtLocaliExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with acmbLocalizacao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmEmendasNew.acmbUnorcChange(Sender: TObject);
begin
   itsChanged := true;
   atxtFuncao.Clear;
   acmbFuncao.Clear;
   loadTable_Funcao('Funcao','Funcaod',acmbFuncao);
end;

procedure TfrmEmendasNew.acmbFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   atxtSubFuncao.Clear;
   acmbSubFuncao.Clear;
   loadTable_SubFuncao('SubFuncao','SubFuncaod',acmbSubFuncao);
end;

procedure TfrmEmendasNew.acmbSubFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   atxtPrograma.Clear;
   acmbPrograma.Clear;
   loadTable_Programa('Programa','Programad',acmbPrograma);
end;

procedure TfrmEmendasNew.acmbProgramaChange(Sender: TObject);
begin
   itsChanged := true;
   atxtAcao.Clear;
   acmbAcao.Clear;
   loadTable_Acao('Acao','AcaoD',acmbAcao);
end;

procedure TfrmEmendasNew.acmbAcaoChange(Sender: TObject);
begin
   itsChanged := true;
   atxtLocali.Clear;
   acmbLocalizacao.Clear;
   loadTable_Localizacao('Localis','Descricao',acmbLocalizacao);
end;

procedure TfrmEmendasNew.acmbLocalizacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.acmbUnorcClick(Sender: TObject);
begin
    with (sender as tComboBox) do begin
     atxtUnorc.text := copy(text,1,unoSize);
     Statusvalor := 'a';
   end;

end;

procedure TfrmEmendasNew.acmbFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     atxtFuncao.text := copy(text,1,2);
     Statusvalor := 'a';
   end;
end;

procedure TfrmEmendasNew.acmbSubFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     atxtsubFuncao.text := copy(text,1,3);
     Statusvalor := 'a';
   end;
end;

procedure TfrmEmendasNew.acmbProgramaClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     atxtPrograma.text := copy(text,1,4);
     Statusvalor := 'a';
   end;
end;

procedure TfrmEmendasNew.acmbAcaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     atxtAcao.text := copy(text,1,4);
     Statusvalor := 'a';
   end;
end;

procedure TfrmEmendasNew.acmbLocalizacaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     atxtLocali.text := copy(text,1,4);
     Statusvalor := 'a';
   end;
end;

procedure TfrmEmendasNew.acmbGrupoExit(Sender: TObject);
begin
   If Trim(acmbGrupo.Text) = '' then exit;
   If Trim(rcmbGrupo.Text) = '' then exit;
   //Grupo_reducao;
   qyEmendasValor02_.Close;
   qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
   qyEmendasValor02_.ExecSQL;
   qyEmendasValor02_.Open;
end;

procedure TfrmEmendasNew.Grupo_reducao;
begin
   qyElr_.Close;
   qyElr_.SQL.Clear;
   qyElr_.SQL.Add('SELECT ELDESPESA, INDUSO, FONTE, VALOR FROM ORCAMENTO');
   qyElr_.SQL.Add('WHERE UNORC  = '+rtxtUnorc.Text);
   qyElr_.SQL.Add('AND   FUNCAO = '+rtxtFuncao.Text);
   qyElr_.SQL.Add('AND   SUBFUNCAO = '+rtxtSubFuncao.Text);
   qyElr_.SQL.Add('AND   PROGRAMA = '+rtxtPrograma.Text);
   qyElr_.SQL.Add('AND   ACAO = '+rtxtAcao.Text);
   qyElr_.SQL.Add('AND   LOCALIS = '+rtxtLocali.Text);
   qyElr_.SQL.Add('AND   SUBSTRING(ELDESPESA,1,2)='+Copy(rcmbGrupo.Text,1,2));
   qyElr_.ExecSQL;
   qyElr_.Open;
end;

procedure TfrmEmendasNew.Grupo_acrescimo;
begin
   qyEla_.Close;
   qyEla_.SQL.Clear;
   qyEla_.SQL.Add('SELECT ELDESPESA, INDUSO, FONTE, VALOR FROM ORCAMENTO');
   qyEla_.SQL.Add('WHERE UNORC  = '+atxtUnorc.Text);
   qyEla_.SQL.Add('AND   FUNCAO = '+atxtFuncao.Text);
   qyEla_.SQL.Add('AND   SUBFUNCAO = '+atxtSubFuncao.Text);
   qyEla_.SQL.Add('AND   PROGRAMA = '+atxtPrograma.Text);
   qyEla_.SQL.Add('AND   ACAO = '+atxtAcao.Text);
   qyEla_.SQL.Add('AND   LOCALIS = '+atxtLocali.Text);
   qyEla_.SQL.Add('AND   SUBSTRING(ELDESPESA,1,2)='+Copy(acmbGrupo.Text,1,2));
   qyEla_.ExecSQL;
   qyEla_.Open;
end;

procedure TfrmEmendasNew.dbgElementoReducaoColExit(Sender: TObject);
begin
   if dsEmendasValor.State in [dsbrowse]then qyEmendasValor_.edit;

   if qyEmendasValor_relemento.Value <> '' then
   if (dbgElementoReducao.SelectedField.FieldName = 'relemento') Then
   begin
       qyElr_.Close;
       qyElr_.SQL.Clear;
       qyElr_.SQL.Add('SELECT ELDESPESA, INDUSO, FONTE, VALOR FROM ORCAMENTO');
       qyElr_.SQL.Add('WHERE UNORC  = '+rtxtUnorc.Text);
       qyElr_.SQL.Add('AND   FUNCAO = '+rtxtFuncao.Text);
       qyElr_.SQL.Add('AND   SUBFUNCAO = '+rtxtSubFuncao.Text);
       qyElr_.SQL.Add('AND   PROGRAMA = '+rtxtPrograma.Text);
       qyElr_.SQL.Add('AND   ACAO = '+rtxtAcao.Text);
       qyElr_.SQL.Add('AND   LOCALIS = '+rtxtLocali.Text);
       qyElr_.SQL.Add('AND   ELDESPESA = '+qyEmendasValor_relemento.Value);
       //qyElr_.SQL.Add('AND   INDUSO = '+qyEmendasValor_rIndUso.Value);
       //qyElr_.SQL.Add('AND   FONTE = '+qyEmendasValor_rFonte.Value);
       qyElr_.ExecSQL;
       qyElr_.Open;

       if qyElr_.RecordCount = 0 then
       begin
          ShowMessage('ELEMENTO N�O EXISTE PARA ESTA DOTA��O OR�AMENT�RIA');
          qyEmendasValor_.Cancel;
          EXIT;
       end;
   End;

   if qyEmendasValor_rIndUso.Value <> '' then
   if (dbgElementoReducao.SelectedField.FieldName = 'rIndUso') Then
   begin
       qyElr_.Close;
       qyElr_.SQL.Clear;
       qyElr_.SQL.Add('SELECT ELDESPESA, INDUSO, FONTE, VALOR FROM ORCAMENTO');
       qyElr_.SQL.Add('WHERE UNORC  = '+rtxtUnorc.Text);
       qyElr_.SQL.Add('AND   FUNCAO = '+rtxtFuncao.Text);
       qyElr_.SQL.Add('AND   SUBFUNCAO = '+rtxtSubFuncao.Text);
       qyElr_.SQL.Add('AND   PROGRAMA = '+rtxtPrograma.Text);
       qyElr_.SQL.Add('AND   ACAO = '+rtxtAcao.Text);
       qyElr_.SQL.Add('AND   LOCALIS = '+rtxtLocali.Text);
       qyElr_.SQL.Add('AND   ELDESPESA = '+qyEmendasValor_relemento.Value);
       qyElr_.SQL.Add('AND   INDUSO = '+qyEmendasValor_rIndUso.Value);
       //qyElr_.SQL.Add('AND   FONTE = '+qyEmendasValor_rFonte.Value);
       qyElr_.ExecSQL;
       qyElr_.Open;

       if qyElr_.RecordCount = 0 then
       begin
          ShowMessage('ELEMENTO N�O EXISTE PARA ESTA DOTA��O OR�AMENT�RIA');
          qyEmendasValor_.Cancel;
          EXIT;
       end;
   End;

   if qyEmendasValor_rFonte.Value <> '' then
   if (dbgElementoReducao.SelectedField.FieldName = 'rFonte') Then
   begin
       qyElr_.Close;
       qyElr_.SQL.Clear;
       qyElr_.SQL.Add('SELECT ELDESPESA, INDUSO, FONTE, VALOR FROM ORCAMENTO');
       qyElr_.SQL.Add('WHERE UNORC  = '+rtxtUnorc.Text);
       qyElr_.SQL.Add('AND   FUNCAO = '+rtxtFuncao.Text);
       qyElr_.SQL.Add('AND   SUBFUNCAO = '+rtxtSubFuncao.Text);
       qyElr_.SQL.Add('AND   PROGRAMA = '+rtxtPrograma.Text);
       qyElr_.SQL.Add('AND   ACAO = '+rtxtAcao.Text);
       qyElr_.SQL.Add('AND   LOCALIS = '+rtxtLocali.Text);
       qyElr_.SQL.Add('AND   ELDESPESA = '+qyEmendasValor_relemento.Value);
       qyElr_.SQL.Add('AND   INDUSO = '+qyEmendasValor_rIndUso.Value);
       qyElr_.SQL.Add('AND   FONTE = '+qyEmendasValor_rFonte.Value);
       qyElr_.ExecSQL;
       qyElr_.Open;

       if qyElr_.RecordCount = 0 then
       begin
          ShowMessage('ELEMENTO N�O EXISTE PARA ESTA DOTA��O OR�AMENT�RIA');
          qyEmendasValor_.Cancel;
          EXIT;
       end;
   End;




   qyEmendasValor_Status.Value := 'r';
   qyEmendasValor_Emenda.Value := txtemenda.Text;

{   if dbgElementoReducao.SelectedField.FieldName = 'rValor' then
   Begin
      qyEmendasValor_Status.Value := 'r';
      qyEmendasValor_Emenda.Value := txtemenda.Text;
   end;}

end;


procedure TfrmEmendasNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action     := caFree;
   frmEmendasNew := nil;
end;

procedure TfrmEmendasNew.dbgElementoReducaoExit(Sender: TObject);
begin
   //if dbgElementoReducao.SelectedField.FieldName = 'rValor' then Valor := qyEmendasValor_rValor.Value;
end;

procedure TfrmEmendasNew.qyEmendasValor_BeforePost(DataSet: TDataSet);
begin
  Try
   if qyEmendasValor_.FieldByName('rvalor').AsFloat < 1000 then
      Begin
         ShowMessage('Aten��o o valor n�o pode ser inferior a R$ 1.000');
         Abort;
         exit;
      End;
  except
         ShowMessage('Aten��o o valor n�o pode ser inferior a R$ 1.000');
         Abort;
         exit;
  end;


end;

procedure TfrmEmendasNew.dbgElementoAcrescimoColExit(Sender: TObject);
begin
   if dsEmendasValor02_.State in [dsbrowse]then qyEmendasValor02_.edit;

   if dbgElementoAcrescimo.SelectedField.FieldName = 'afonte' then
   begin
       qyEla_.Close;
       qyEla_.SQL.Clear;
       qyEla_.SQL.Add('SELECT ELDESPESA, INDUSO, FONTE, VALOR FROM ORCAMENTO');
       qyEla_.SQL.Add('WHERE ELDESPESA = '+qyEmendasValor02_aelemento.Value);
       qyEla_.SQL.Add('and  fonte = '+qyEmendasValor02_aFonte.Value);
       qyEla_.ExecSQL;
       qyEla_.Open;

       if qyEla_.RecordCount = 0 then
       begin
          ShowMessage('ELEMENTO N�O EXISTE PARA ESTA DOTA��O OR�AMENT�RIA');
          //qyEmendasValor02_.Cancel;
          EXIT;
       end;
   End;

   if qyEmendasValor02_aelemento.Value <> '' then
   If Trim(atxtAcao.Text) = '2014' Then
   Begin
      if copy(qyEmendasValor02_aelemento.Value,2,1) <> '1' Then
      Begin
         ShowMessage('Grupo de Despesa diferente de [1]');
         qyEmendasValor_.Cancel;
         EXIT;
      End;
   End;

   if qyEmendasValor02_aelemento.Value <> '' then
   If     (Trim(atxtAcao.Text) = '1081')
      and (Trim(atxtAcao.Text) = '1093')
      and (Trim(atxtAcao.Text) = '1094')
      and (Trim(atxtAcao.Text) = '1096')
      and (Trim(atxtAcao.Text) = '1097')
      and (Trim(atxtAcao.Text) = '1098')
      and (Trim(atxtAcao.Text) = '1110')
      and (Trim(atxtAcao.Text) = '1112')
      and (Trim(atxtAcao.Text) = '1116')
      and (Trim(atxtAcao.Text) = '1119')
      and (Trim(atxtAcao.Text) = '1404')
      and (Trim(atxtAcao.Text) = '1406')
      and (Trim(atxtAcao.Text) = '1205')
      and (Trim(atxtAcao.Text) = '1358')
      and (Trim(atxtAcao.Text) = '1374')
      and (Trim(atxtAcao.Text) = '1375')
      and (Trim(atxtAcao.Text) = '1376')

   Then
   Begin
      if (copy(qyEmendasValor02_aelemento.Value,2,1) = '4') or
         (copy(qyEmendasValor02_aelemento.Value,2,1) = '5') Then
      Begin
         ShowMessage('Grupo de Despesa diferente de [4] ou [5]');
         qyEmendasValor_.Cancel;
         EXIT;
      End;
   End;


   qyEmendasValor02_Status.Value := 'a';
   qyEmendasValor02_Emenda.Value := txtemenda.Text;

  
end;

procedure TfrmEmendasNew.qyEmendasValor02_BeforePost(DataSet: TDataSet);
begin
   {
   qyEVSoma_Aditiva_.Close;
   qyEVSoma_Aditiva_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
   qyEVSoma_Aditiva_.ExecSQL;
   qyEVSoma_Aditiva_.Open;

   qyEVSoma_Aditiva02_.Close;
   qyEVSoma_Aditiva02_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
   qyEVSoma_Aditiva02_.ExecSQL;
   qyEVSoma_Aditiva02_.Open;


   If qyEVSoma_Aditiva_.RecordCount > 0 then
   Begin
      if qyEVSoma_Aditiva_rvalor.Value <>  qyEVSoma_Aditiva02_avalor.Value Then
      Begin
         ShowMessage('A soma da redu��o est� diferente da de acr�scimo!!!');
         AvcGrid.SetFocus;
         Exit;
      End;
   End;
   }
   
   Try
   if qyEmendasValor02_.FieldByName('avalor').AsFloat < 1000 then
      Begin
         ShowMessage('Aten��o o valor n�o pode ser inferior a R$ 1.000');
         Abort;
         exit;
      End;
  except
         ShowMessage('Aten��o o valor n�o pode ser inferior a R$ 1.000');
         Abort;
         exit;
  end;

end;

procedure TfrmEmendasNew.dbgElementoAcrescimoKeyPress(Sender: TObject;
  var Key: Char);
begin
   If key = #13 then
   begin
      Perform(WM_NEXTDLGCTL,0,0);
      key := #0;
   end;
end;

procedure TfrmEmendasNew.Apaga_Valor_r;
begin
   rtxtUnorc.Clear;
   rtxtFuncao.Clear;
   rtxtSubFuncao.Clear;
   rtxtPrograma.Clear;
   rtxtAcao.Clear;
   rtxtLocali.Clear;
   rcmbUnorc.ItemIndex := -1;
   rcmbFuncao.ItemIndex := -1;
   rcmbSubFuncao.ItemIndex := -1;
   rcmbPrograma.ItemIndex := -1;
   rcmbAcao.ItemIndex := -1;
   rcmbLocalizacao.ItemIndex := -1;
   rcmbGrupo.ItemIndex := -1;
end;

procedure TfrmEmendasNew.Apaga_Valor_a;
begin
   atxtUnorc.Clear;
   atxtFuncao.Clear;
   atxtSubFuncao.Clear;
   atxtPrograma.Clear;
   atxtAcao.Clear;
   atxtLocali.Clear;
   acmbUnorc.ItemIndex := -1;
   acmbFuncao.ItemIndex := -1;
   acmbSubFuncao.ItemIndex := -1;
   acmbPrograma.ItemIndex := -1;
   acmbAcao.ItemIndex := -1;
   acmbLocalizacao.ItemIndex := -1;
   acmbGrupo.ItemIndex := -1;
end;

procedure TfrmEmendasNew.avtxtUnorcChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.avtxtfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.avtxtsubfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.avtxprogramaChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.avtxtacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.avtxtlocalizacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.avtxtUnorcExit(Sender: TObject);
Var i : integer;
begin

  if trim((sender as tEdit).text) = '' then exit;
   with avcmb_Unorc do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         Statusvalor := 'r';
         avtxtfuncao.Clear;
         avcmb_funcao.Clear;
         loadTable_Funcao('Funcao','Funcaod',avcmb_funcao);
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    avtxtfuncao.Clear;
    avcmb_funcao.Clear;

    abort;
  end;

end;

procedure TfrmEmendasNew.avtxtfuncaoExit(Sender: TObject);
Var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with avcmb_funcao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         Statusvalor := 'r';
         avtxtsubfuncao.Clear;
         avcmb_SubFuncao.Clear;
         loadTable_SubFuncao('SubFuncao','SubFuncaod',avcmb_SubFuncao);

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    avtxtsubfuncao.Clear;
    avcmb_SubFuncao.Clear;
    abort;
  end;
end;

procedure TfrmEmendasNew.avtxtsubfuncaoExit(Sender: TObject);
Var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with avcmb_subfuncao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         Statusvalor := 'r';
         avtxprograma.Clear;
         avcmb_programa.Clear;
         loadTable_Programa('Programa','Programad',avcmb_programa);
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    avtxprograma.Clear;
    avcmb_programa.Clear;

    abort;
  end;
end;

procedure TfrmEmendasNew.avtxprogramaExit(Sender: TObject);
Var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with avcmb_programa do
  begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         Statusvalor := 'r';
         avtxtacao.Clear;
         avcmb_Acao.Clear;
         loadTable_Acao('Acao','AcaoD',avcmb_Acao);

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    avtxtacao.Clear;
    avcmb_Acao.Clear;

    abort;
  end;
end;

procedure TfrmEmendasNew.avtxtacaoExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with avcmb_acao do
  begin
    for i := 0 to items.count - 1  do
    begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then
      begin
         itemIndex := i;
         if theOperation = 'i' then
            with qryTable, qryTable.SQL do
            begin
              close;
              clear;
              add('SELECT produto = CASE');
              add('                  WHEN produto > '''' THEN  produto + ''('' + unidade + '')''');
              add('                  ELSE ''''');
              add('                 END');
              add('   FROM acao');
              add('     WHERE codigo = '''+trim((sender as tEdit).text)+'''');
              open;
              //txtProduto.caption := qryTable.fieldByName('produto').asString;         //if not eof then
            end;
         //rLocalizacao(); // Encontra a localizac�o

         Statusvalor := 'r';
         avtxtlocalizacao.Clear;
         avcmb_localizacao.Clear;
         loadTable_Localizacao('localis','Descricao',avcmb_localizacao);
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;

end;

procedure TfrmEmendasNew.avtxtlocalizacaoExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with avcmb_localizacao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmEmendasNew.avcmb_UnorcChange(Sender: TObject);
begin
   itsChanged := true;
   avtxtfuncao.Clear;
   avcmb_funcao.Clear;
   loadTable_Funcao('Funcao','Funcaod',avcmb_funcao);
end;

procedure TfrmEmendasNew.avcmb_funcaoChange(Sender: TObject);
begin
   itsChanged := true;
   avtxtsubfuncao.Clear;
   avcmb_subfuncao.Clear;
   loadTable_SubFuncao('SubFuncao','SubFuncaod',avcmb_SubFuncao);
end;

procedure TfrmEmendasNew.avcmb_subfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   avtxprograma.Clear;
   avcmb_programa.Clear;
   loadTable_Programa('Programa','Programad',avcmb_programa);
end;

procedure TfrmEmendasNew.avcmb_programaChange(Sender: TObject);
begin
   itsChanged := true;
   avtxtacao.Clear;
   avcmb_Acao.Clear;
   loadTable_Acao('Acao','AcaoD',avcmb_acao);
end;

procedure TfrmEmendasNew.avcmb_acaoChange(Sender: TObject);
begin
   itsChanged := true;
   avtxtlocalizacao.Clear;
   avcmb_localizacao.Clear;
   loadTable_Localizacao('Localis','Descricao',avcmb_localizacao);
end;

procedure TfrmEmendasNew.avcmb_localizacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.avcmb_UnorcClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     avtxtUnorc.text := copy(text,1,unoSize);
     Statusvalor := 'r';
   end;

end;

procedure TfrmEmendasNew.avcmb_funcaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     avtxtfuncao.text := copy(text,1,2);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.avcmb_subfuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     avtxtsubfuncao.text := copy(text,1,3);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.avcmb_programaClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     avtxprograma.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.avcmb_acaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     avtxtacao.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.avcmb_localizacaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     avtxtlocalizacao.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.ktunorcChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.ktfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.ktsubfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.ktprogramaChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.ktacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.ktlocalizacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.ktunorcExit(Sender: TObject);
Var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with kcunorc do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmEmendasNew.ktfuncaoExit(Sender: TObject);
Var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with kcfuncao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;

end;

procedure TfrmEmendasNew.ktsubfuncaoExit(Sender: TObject);
Var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with kcsubfuncao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmEmendasNew.ktprogramaExit(Sender: TObject);
Var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with kcprograma do
  begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;

end;

procedure TfrmEmendasNew.ktacaoExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with kcacao do
  begin
    for i := 0 to items.count - 1  do
    begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then
      begin
         itemIndex := i;
         if theOperation = 'i' then
            with qryTable, qryTable.SQL do
            begin
              close;
              clear;
              add('SELECT produto = CASE');
              add('                  WHEN produto > '''' THEN  produto + ''('' + unidade + '')''');
              add('                  ELSE ''''');
              add('                 END');
              add('   FROM acao ');
              add('     WHERE codigo = '''+trim((sender as tEdit).text)+'''');
              add('order by codigo');
              open;
              txtProd2.caption := qryTable.fieldByName('produto').asString;         //if not eof then
            end;
         //rLocalizacao(); // Encontra a localizac�o
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmEmendasNew.kcunorcChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.kcfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.kcsubfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.kcprogramaChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.kcacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.kclocalizacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendasNew.kcunorcClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     ktunorc.text := copy(text,1,unoSize);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.kcfuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     ktfuncao.text := copy(text,1,2);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.kcsubfuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     ktsubfuncao.text := copy(text,1,3);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.kcprogramaClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     ktprograma.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.kcacaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     ktacao.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.kclocalizacaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     ktlocalizacao.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendasNew.Button1Click(Sender: TObject);
begin
   if trim(ktprograma.Text) = '' then
   Begin
      ShowMessage('Informe o Programa!!!');
      ktprograma.SetFocus;
      exit;
   end;

   Try
       If frmSeaLocali <> nil then
          frmSeaLocali := nil;

       if frmSeaLocali = nil then
          frmSeaLocali := TfrmSeaLocali.Create(self);

       frmSeaLocali.dbGrid.DataSource := frmSeaLocali.sQry;

       frmSeaLocali.qry.Close;
       frmSeaLocali.qry.Parameters.ParamByName('Programa').Value := ktPrograma.Text;
       frmSeaLocali.qry.Parameters.ParamByName('acao').Value     := ktacao.Text;
       frmSeaLocali.qry.ExecSQL;
       frmSeaLocali.qry.Open;
       frmSeaLocali.qry.First;

       If frmSeaLocali.qry.RecordCount = 0 Then
       Begin
          ShowMessage('Dados para Programa e A��o n�o foram encontrados.'+#13+
                      'Informe a��o e Programa corretamente!!!');
          ktlocalizacao.SetFocus;
          Exit;
       End;

       frmSeaLocali.ShowModal;
   Finally
       frmSeaLocali.Free;
   End;

end;

procedure TfrmEmendasNew.AvrGridKeyPress(Sender: TObject; var Key: Char);
begin
   If key = #13 then
    Begin
       Perform(WM_NEXTDLGCTL,0,0);
       Key := #0;
    End;
end;

procedure TfrmEmendasNew.AvrGridColExit(Sender: TObject);
begin
   if dsEmendasValor.State in [dsbrowse] then qyEmendasValor_.Edit;


   if dsEmendasValor.State in [dsedit, dsinsert] then
      qyEmendasValor_Emenda.Value := txtemenda.Text;


   if AvrGrid.SelectedField.FieldName = 'relemento' then
   begin
       qyElr_.Close;
       qyElr_.SQL.Clear;
       qyElr_.SQL.Add('SELECT ELDESPESA, INDUSO, FONTE, VALOR FROM ORCAMENTO');
       qyElr_.SQL.Add('WHERE UNORC  = '+avtxtUnorc.Text);
       qyElr_.SQL.Add('AND   FUNCAO = '+avtxtFuncao.Text);
       qyElr_.SQL.Add('AND   SUBFUNCAO = '+avtxtSubFuncao.Text);
       qyElr_.SQL.Add('AND   PROGRAMA = '+avtxPrograma.Text);
       qyElr_.SQL.Add('AND   ACAO = '+avtxtAcao.Text);
       qyElr_.SQL.Add('AND   LOCALIS = '+avtxtlocalizacao.Text);
       qyElr_.SQL.Add('AND   ELDESPESA = '+qyEmendasValor_relemento.Value);
       qyElr_.ExecSQL;
       qyElr_.Open;

       if qyElr_.RecordCount = 0 then
       begin
          ShowMessage('ELEMENTO N�O EXISTE PARA ESTA DOTA��O OR�AMENT�RIA');
          qyEmendasValor_.Cancel;
          EXIT;
       end;
   End;

   IF avtxtUnorc.Text = '90101' THEN
   BEGIN
       if qyEmendasValor_relemento.Value <> '' then
       if AvrGrid.SelectedField.FieldName = 'relemento' then
       begin
           qyElr_.Close;
           qyElr_.SQL.Clear;
           qyElr_.SQL.Add('SELECT ELDESPESA, INDUSO, FONTE, VALOR FROM ORCAMENTO');
           qyElr_.SQL.Add('WHERE UNORC  = '+avtxtUnorc.Text);
           qyElr_.SQL.Add('AND   FUNCAO = '+avtxtFuncao.Text);
           qyElr_.SQL.Add('AND   SUBFUNCAO = '+avtxtSubFuncao.Text);
           qyElr_.SQL.Add('AND   PROGRAMA = '+avtxPrograma.Text);
           qyElr_.SQL.Add('AND   ACAO = '+avtxtAcao.Text);
           qyElr_.SQL.Add('AND   LOCALIS = '+avtxtlocalizacao.Text);
           qyElr_.SQL.Add('AND   ELDESPESA = '+qyEmendasValor_relemento.Value);
           qyElr_.ExecSQL;
           qyElr_.Open;

           if qyElr_.RecordCount = 0 then
           begin
              ShowMessage('ELEMENTO N�O EXISTE PARA ESTA DOTA��O OR�AMENT�RIA');
              qyEmendasValor_.Cancel;
              EXIT;
           end;
       End;

       if qyEmendasValor_rIndUso.Value <> '' then
       if AvrGrid.SelectedField.FieldName = 'rIndUso' then
       begin
           qyElr_.Close;
           qyElr_.SQL.Clear;
           qyElr_.SQL.Add('SELECT ELDESPESA, INDUSO, FONTE, VALOR FROM ORCAMENTO');
           qyElr_.SQL.Add('WHERE UNORC  = '+avtxtUnorc.Text);
           qyElr_.SQL.Add('AND   FUNCAO = '+avtxtFuncao.Text);
           qyElr_.SQL.Add('AND   SUBFUNCAO = '+avtxtSubFuncao.Text);
           qyElr_.SQL.Add('AND   PROGRAMA = '+avtxPrograma.Text);
           qyElr_.SQL.Add('AND   ACAO = '+avtxtAcao.Text);
           qyElr_.SQL.Add('AND   LOCALIS = '+avtxtlocalizacao.Text);
           qyElr_.SQL.Add('AND   ELDESPESA = '+qyEmendasValor_relemento.Value);
           qyElr_.SQL.Add('AND   INDUSO = '+qyEmendasValor_rIndUso.Value);
           qyElr_.ExecSQL;
           qyElr_.Open;

           if qyElr_.RecordCount = 0 then
           begin
              ShowMessage('ELEMENTO N�O EXISTE PARA ESTA DOTA��O OR�AMENT�RIA');
              qyEmendasValor_.Cancel;
              EXIT;
           end;
       End;

       if qyEmendasValor_rFonte.Value <> '' then
       if AvrGrid.SelectedField.FieldName = 'rFonte' then
       begin
           qyElr_.Close;
           qyElr_.SQL.Clear;
           qyElr_.SQL.Add('SELECT ELDESPESA, INDUSO, FONTE, VALOR FROM ORCAMENTO');
           qyElr_.SQL.Add('WHERE UNORC  = '+avtxtUnorc.Text);
           qyElr_.SQL.Add('AND   FUNCAO = '+avtxtFuncao.Text);
           qyElr_.SQL.Add('AND   SUBFUNCAO = '+avtxtSubFuncao.Text);
           qyElr_.SQL.Add('AND   PROGRAMA = '+avtxPrograma.Text);
           qyElr_.SQL.Add('AND   ACAO = '+avtxtAcao.Text);
           qyElr_.SQL.Add('AND   LOCALIS = '+avtxtlocalizacao.Text);
           qyElr_.SQL.Add('AND   ELDESPESA = '+qyEmendasValor_relemento.Value);
           qyElr_.SQL.Add('AND   INDUSO = '+qyEmendasValor_rIndUso.Value);
           qyElr_.SQL.Add('AND   FONTE = '+qyEmendasValor_rFonte.Value);
           qyElr_.ExecSQL;
           qyElr_.Open;

           if qyElr_.RecordCount = 0 then
           begin
              ShowMessage('ELEMENTO N�O EXISTE PARA ESTA DOTA��O OR�AMENT�RIA');
              qyEmendasValor_.Cancel;
              EXIT;
           end;
       End;


   END;
   qyEmendasValor_Status.Value := 'r';
   qyEmendasValor_Emenda.Value := txtemenda.Text;

end;

procedure TfrmEmendasNew.avcbGrupoExit(Sender: TObject);
begin
   If Trim(avcbGrupo.Text) = '' then exit;
   //Grupo_reducao;
   qyEmendasValor_.Close;
   qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
   qyEmendasValor_.ExecSQL;
   qyEmendasValor_.Open;
end;
                                             
procedure TfrmEmendasNew.AvcGridColExit(Sender: TObject);
begin
   
   if dsEmendasValor02_.State in [dsbrowse] then qyEmendasValor02_.Edit;

   if qyEmendasValor02_aelemento.Value <> '' then
   If Trim(ktacao.Text) = '2014' Then
   Begin
      if AvcGrid.SelectedField.FieldName = 'aelemento' then
      if copy(qyEmendasValor02_aelemento.Value,2,1) <> '1' Then
      Begin
         ShowMessage('Grupo de Despesa diferente de [1]');
         qyEmendasValor02_.Cancel;
         //ktMetafisica.SetFocus;
         EXIT;
      End;
   End;

   if qyEmendasValor02_aelemento.Value <> '' then
   If     (Trim(ktacao.Text) = '1081')
      and (Trim(ktacao.Text) = '1093')
      and (Trim(ktacao.Text) = '1094')
      and (Trim(ktacao.Text) = '1096')
      and (Trim(ktacao.Text) = '1097')
      and (Trim(ktacao.Text) = '1098')
      and (Trim(ktacao.Text) = '1110')
      and (Trim(ktacao.Text) = '1112')
      and (Trim(ktacao.Text) = '1116')
      and (Trim(ktacao.Text) = '1119')
      and (Trim(ktacao.Text) = '1404')
      and (Trim(ktacao.Text) = '1406')
      and (Trim(ktacao.Text) = '1205')
      and (Trim(ktacao.Text) = '1358')
      and (Trim(ktacao.Text) = '1374')
      and (Trim(ktacao.Text) = '1375')
      and (Trim(ktacao.Text) = '1376')

   Then
   Begin
      if (copy(qyEmendasValor02_aelemento.Value,2,1) = '4') or
         (copy(qyEmendasValor02_aelemento.Value,2,1) = '5') Then
      Begin
         ShowMessage('Grupo de Despesa diferente de [4] ou [5]');
         qyEmendasValor02_.Cancel;
         EXIT;
      End;
   End;

   qyEmendasValor02_Status.Value := 'a';
   qyEmendasValor02_Emenda.Value := txtemenda.Text;

end;



procedure TfrmEmendasNew.AvcGridKeyPress(Sender: TObject; var Key: Char);
begin
    If key = #13 then
    Begin
       Perform(WM_NEXTDLGCTL,0,0);
       Key := #0;
    End;
end;

procedure TfrmEmendasNew.Apaga_aditivavalor;
begin
   avtxtUnorc.Text := '';
   avtxtFuncao.Text := '';
   avtxtSubFuncao.Text := '';
   avtxprograma.Text := '';
   avtxtAcao.Text := '';
   avtxtlocalizacao.Text := '';
   avcmb_Unorc.ItemIndex := -1;
   avcmb_Funcao.ItemIndex := -1;
   avcmb_SubFuncao.ItemIndex := -1;
   avcmb_Programa.ItemIndex := -1;
   avcmb_Acao.ItemIndex := -1;
   avcmb_Localizacao.ItemIndex := -1;
   avcbGrupo.ItemIndex := -1;

   kDescricao.Text := '';
   ktunorc.Text := '';
   ktfuncao.Text := '';
   ktsubfuncao.Text := '';
   ktprograma.Text := '';
   ktacao.Text := '';
   ktlocalizacao.Text := '';
   kcUnorc.ItemIndex := -1;
   kcFuncao.ItemIndex := -1;
   kcSubFuncao.ItemIndex := -1;
   kcPrograma.ItemIndex := -1;
   kcAcao.ItemIndex := -1;
   cmbEsfera.ItemIndex := -1;
   ktRegional.Clear;
   ktMetafisica.Clear;
   txtProd2.Caption := '';
   rdgGrupo.ItemIndex := -1;
end;

procedure TfrmEmendasNew.Deleta_Emendas_Valor;
begin

   qyEmendasValor_.Close;
   qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
   qyEmendasValor_.ExecSQL;
   qyEmendasValor_.Open;

   qyEmendasValor_.First;

   if qyEmendasValor_.RecordCount > 0 Then
   begin
       while not qyEmendasValor_.Eof do
       begin
          qyEmendasValor_.Delete;
       end;
   end;

   qyEmendasValor02_.Close;
   qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
   qyEmendasValor02_.ExecSQL;
   qyEmendasValor02_.Open;

   qyEmendasValor02_.First;

   if qyEmendasValor02_.RecordCount > 0 Then
   begin
       while not qyEmendasValor02_.Eof do
       begin
          qyEmendasValor02_.Delete;
       end;
   end;

end;


procedure TfrmEmendasNew.Deleta_Emendas_Locali;
begin
   qyLocali_.Close;
   qyLocali_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
   qyLocali_.ExecSQL;
   qyLocali_.Open;

   qyLocali_.First;

   if qyLocali_.RecordCount > 0 Then
   begin
       while not qyLocali_.Eof do
       begin
          qyLocali_.Delete;
       end;
   end;

end;

procedure TfrmEmendasNew.btVereadoresClick(Sender: TObject);
begin
   //qyVE_.Open;

   If FrmVereadoresEmendas = nil then
      FrmVereadoresEmendas := TFrmVereadoresEmendas.Create(Self);
   FrmVereadoresEmendas.NumEmenda := txtemenda.Text;
   FrmVereadoresEmendas.ShowModal;

   {
   Try
       If FrmVereadoresEmendas = nil then
          FrmVereadoresEmendas := TFrmVereadoresEmendas.Create(Self);

      // FrmVereadoresEmendas.dbVereadores.DataSource := dsVE_;
      // qyVE_.Open;


       If Trim(txtemenda.Text) = '' then
       Begin
          ShowMessage('Informe o n�mero da Emenda!!!');
          txtemenda.SetFocus;
          exit;
       end;

       FrmVereadoresEmendas.NumEmenda := txtemenda.Text;

       //FrmVereadoresEmendas.qyVE_.Close;
       //FrmVereadoresEmendas.qyVE_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
       //FrmVereadoresEmendas.qyVE_.ExecSQL;
       //FrmVereadoresEmendas.qyVE_.Open;

       FrmVereadoresEmendas.ShowModal;
   Finally
       FrmVereadoresEmendas.Free;
   End;
   }
end;

procedure TfrmEmendasNew.FormCreate(Sender: TObject);
begin
   If qyEmendaCons_.Active = False    then qyEmendaCons_.Open;
   If qry.Active = False              then qry.Open;
   If qyVereadores_.Active = false    then qyVereadores_.Open;
   if dsLocali_.State IN [dsinactive] then qyLocali_.Open;
   Botoes;

   SqlPrincipal := qry.SQL.Text;
end;

procedure TfrmEmendasNew.Button2Click(Sender: TObject);
begin
   if trim(ktprograma.Text) = '' then
   Begin
      ShowMessage('Informe o Programa!!!');
      ktprograma.SetFocus;
      exit;
   end;

   if trim(ktacao.Text) = '' then
   Begin
      ShowMessage('Informe a Ac�o!!!');
      ktacao.SetFocus;
      exit;
   end;

   Try
       If frmSeaLocali <> nil then
          frmSeaLocali := nil;

       if frmSeaLocali = nil then
          frmSeaLocali := TfrmSeaLocali.Create(self);

       frmSeaLocali.dbGrid.DataSource := frmSeaLocali.ds_;

       frmSeaLocali.qy_.Close;
       frmSeaLocali.qy_.Parameters.ParamByName('Programa').Value := ktPrograma.Text;
       frmSeaLocali.qy_.Parameters.ParamByName('acao').Value     := ktacao.Text;
       frmSeaLocali.qy_.ExecSQL;
       frmSeaLocali.qy_.Open;
       frmSeaLocali.qy_.First;

       If frmSeaLocali.qy_.RecordCount = 0 Then
       Begin
          ShowMessage('Dados para Programa e A��o n�o foram encontrados.'+#13+
                      'Informe a��o e Programa corretamente !!!');
          ktprograma.SetFocus;
          Exit;
       End;

       frmSeaLocali.ShowModal;
   Finally
       frmSeaLocali.Free;
   End;
end;

procedure TfrmEmendasNew.btAditivaClick(Sender: TObject);
begin
   loadTable_Unorc('unorc','Unorcd',avcmb_Unorc);
   unoSize := length(trim(qryTable.fieldByName('Unorc').asString));

   avtxtUnorc.Text       := '90101';
   avtxtUnorcExit(avtxtUnorc);

   avtxtFuncao.Text      := '99';
   avtxtFuncaoExit(avtxtFuncao);

   avtxtSubFuncao.Text   := '999';
   avtxtSubFuncaoExit(avtxtSubFuncao);

   avtxPrograma.Text    := '9999';
   avtxProgramaExit(avtxPrograma);

   avtxtAcao.Text        := '9999';
   avtxtAcaoExit(avtxtAcao);

   avtxtlocalizacao.Text      := '0001';
   avtxtlocalizacaoExit(avtxtlocalizacao);

   with dmtData do
        begin
           setComboBox('99', avcbGrupo);
           //setComboBox(fieldByName('Status').asString, cbstatus);
           //setComboBox(fieldByName('Tipo').asString, cbTipo);
        end;

   AvrGrid.SetFocus;



end;

procedure TfrmEmendasNew.Conversor;
Var
  Cod_Locali_Lei : Integer;
  Cod_Det_Lei    : Integer;

begin

     Cod_Locali_Lei := 0;
     Cod_Det_Lei    := 0;

     // STATUS
     // 1 - APROVADA
     // 2 - RETIRADA
     // 3 - EM DISCUSS�O

     // TIPO
     // 1 - Aditiva de Texto
     // 2 - Modificativa de Texto
     // 3 - Aditiva de Valor
     // 4 - Modificativa de Valor
     // 5 - Aditiva de Meta
     // 6 - Modificativa de Meta

     qyLocali_Lei_.Close;
     qyLocali_Lei_.SQL.Clear;
     qyLocali_Lei_.SQL.Add('SELECT * FROM LOCALI ');
     qyLocali_Lei_.ExecSQL;
     qyLocali_Lei_.Open;

     qyDet_Lei_.Close;
     qyDet_Lei_.SQL.Clear;
     qyDet_Lei_.SQL.Add('SELECT * FROM DET');
     qyDet_Lei_.ExecSQL;
     qyDet_Lei_.Open;

   // Constru��o de Dados para convers�o de Bancos

   If Copy(cbStatus.Text,1,1) ='1' Then // Inicio de Bloco
   Begin

      IF COPY(cbTipo.Text,1,1) = '3' Then // Aditiva de Valor
      Begin
          // ACRESCIMO
          ShowWarning('Fazendo Pesquisa [ADITIVA DE VALOR] na LEI');
          qyLocali_Lei_.Close;
          qyLocali_Lei_.SQL.Clear;
          qyLocali_Lei_.SQL.Add('SELECT * FROM LOCALI ');
          qyLocali_Lei_.SQL.Add('WHERE UNORC     = :UNORC');
          qyLocali_Lei_.SQL.Add('AND   FUNCAO    = :FUNCAO');
          qyLocali_Lei_.SQL.Add('AND   SUBFUNCAO = :SUBFUNCAO');
          qyLocali_Lei_.SQL.Add('AND   PROGRAMA  = :PROGRAMA');
          qyLocali_Lei_.SQL.Add('AND   ACAO      = :ACAO');
          qyLocali_Lei_.SQL.Add('AND   LOCALI    = :LOCALI');
          qyLocali_Lei_.Parameters.ParamByName('UNORC').Value     := ktunorc.Text;
          qyLocali_Lei_.Parameters.ParamByName('FUNCAO').Value    := ktfuncao.Text;
          qyLocali_Lei_.Parameters.ParamByName('SUBFUNCAO').Value := ktsubfuncao.Text;
          qyLocali_Lei_.Parameters.ParamByName('PROGRAMA').Value  := ktprograma.Text;
          qyLocali_Lei_.Parameters.ParamByName('ACAO').Value      := ktacao.Text;
          qyLocali_Lei_.Parameters.ParamByName('LOCALI').Value    := ktlocalizacao.Text;
          qyLocali_Lei_.ExecSQL;
          qyLocali_Lei_.Open;
          HideWarning;

          IF qyLocali_Lei_.RecordCount > 0 THEN
          BEGIN
             ShowMessage('LOCALIZA��O DE ACRESCIMO J� EXISTE, CONFIRA SE � UMA LOCALIZA��O EXISTE. EMENDA: '+txtemenda.Text);
             iF sQry.State IN [DSINSERT, DSEDIT] THEN qry.Cancel;
             EXIT;
          END;

          // CONSULTA REDUCAO
          ShowWarning('Fazendo Pesquisa  de [REDU��O - ADITIVA DE VALOR] na LEI');
          qyLocali_Lei_.Close;
          qyLocali_Lei_.SQL.Clear;
          qyLocali_Lei_.SQL.Add('SELECT * FROM LOCALI ');
          qyLocali_Lei_.SQL.Add('WHERE UNORC     = :UNORC');
          qyLocali_Lei_.SQL.Add('AND   FUNCAO    = :FUNCAO');
          qyLocali_Lei_.SQL.Add('AND   SUBFUNCAO = :SUBFUNCAO');
          qyLocali_Lei_.SQL.Add('AND   PROGRAMA  = :PROGRAMA');
          qyLocali_Lei_.SQL.Add('AND   ACAO      = :ACAO');
          qyLocali_Lei_.SQL.Add('AND   LOCALI    = :LOCALI');
          qyLocali_Lei_.Parameters.ParamByName('UNORC').Value     := avtxtUnorc.Text;
          qyLocali_Lei_.Parameters.ParamByName('FUNCAO').Value    := avtxtfuncao.Text;
          qyLocali_Lei_.Parameters.ParamByName('SUBFUNCAO').Value := avtxtsubfuncao.Text;
          qyLocali_Lei_.Parameters.ParamByName('PROGRAMA').Value  := avtxprograma.Text;
          qyLocali_Lei_.Parameters.ParamByName('ACAO').Value      := avtxtacao.Text;
          qyLocali_Lei_.Parameters.ParamByName('LOCALI').Value    := avtxtlocalizacao.Text;
          qyLocali_Lei_.ExecSQL;
          qyLocali_Lei_.Open;
          HideWarning;

          IF qyLocali_Lei_.RecordCount = 0 THEN
          BEGIN
             ShowMessage('REDU�AO N�O EXISTE NO OR�AMENTO. EMENDA: '+txtemenda.Text);
             iF sQry.State IN [DSINSERT, DSEDIT] THEN qry.Cancel;
             EXIT;
          END;

          Cod_Locali_Lei := qyLocali_Lei_CODIGO.Value;

          If qyLocali_Lei_.RecordCount > 0 then
          Begin
             // Redu��o
             ShowWarning('Fazendo Pesquisa  de [VALOR - REDU��O - ADITIVA DE VALOR] na LEI');
             qyEvlr_.Close;
             qyEvlr_.SQL.Clear;
             qyEvlr_.SQL.Add('SELECT * FROM EMENDAS_VALOR');
             qyEvlr_.SQL.Add('WHERE STATUS = :STATUS');
             qyEvlr_.SQL.Add('AND EMENDA = :EMENDA');
             qyEvlr_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
             qyEvlr_.Parameters.ParamByName('STATUS').Value := 'R';
             qyEvlr_.ExecSQL;
             qyEvlr_.Open;
             qyEvlr_.First;
             HideWarning;

             if qyEvlr_.RecordCount = 0 then qyEvlr_.last;

             WHILE NOT qyEvlr_.Eof  DO
             Begin
                 // DET LEI

                 Cod_Det_Lei := 0;
                 qyDet_Lei_.Close;
                 qyDet_Lei_.SQL.Clear;
                 qyDet_Lei_.SQL.Add('SELECT * FROM DET');
                 qyDet_Lei_.SQL.Add('WHERE LOCALI  = :locali');
                 qyDet_Lei_.SQL.Add('and eldespesa = :eldespesa');
                 qyDet_Lei_.SQL.Add('and induso    = :induso');
                 qyDet_Lei_.SQL.Add('and fonte     = :fonte');
                 qyDet_Lei_.Parameters.ParamByName('LOCALI').Value    := Cod_Locali_Lei;
                 qyDet_Lei_.Parameters.ParamByName('ELDESPESA').Value := qyEvlr_relemento.Value;;
                 qyDet_Lei_.Parameters.ParamByName('INDUSO').Value    := qyEvlr_rIndUso.Value;
                 qyDet_Lei_.Parameters.ParamByName('FONTE').Value     := qyEvlr_rFonte.Value;
                 qyDet_Lei_.ExecSQL;
                 qyDet_Lei_.Open;


                 ShowWarning('Fazendo Pesquisa  de [REDU��O - ADITIVA DE VALOR] na LEI [CODIGO]: '+qyDet_Lei_Codigo.AsString);
                 Cod_Det_Lei := qyDet_Lei_Codigo.Value;

                 IF qyDet_Lei_.RecordCount = 0 THEN // CONDI�AO 1
                 BEGIN
                    HideWarning;
                    ShowMessage('REDU��O N�O ENCONTRADA NO OR�AMENTO!!!'+ #13+
                                'EMENDA: '+txtemenda.Text);

                    iF sQry.State IN [DSINSERT, DSEDIT] THEN qry.Cancel;

                    EXIT;
                 END;

                 IF qyEvlr_rValor.Value > qyDet_Lei_valor.Value Then // CODI��O 2
                 Begin
                    HideWarning;
                    ShowMessage('SALDO INSUFICIENTE DA REDU��O DE ADITIVA DE VALOR!!!'+#13+
                                'EMENDA: ' +txtemenda.Text);

                    iF sQry.State IN [DSINSERT, DSEDIT] THEN qry.Cancel;
                    EXIT;
                 End; // FIM DE CONDI��O 2

                 qyDet_Lei_.Edit;
                 qyDet_Lei_valor.Value := qyDet_Lei_valor.Value - qyEvlr_rValor.Value;
                 qyDet_Lei_.Post;

                 qyEvlr_.Next;

             END; // FIM DO WHILE
             HideWarning;

             ShowMessage('[ADITIVA DE VALOR] => REDU��O DA EMENDA: '+txtemenda.Text+ '  REALIZADA COM SUCESSO!!!');


             // ACRESCIMO
             ShowWarning('Fazendo Pesquisa  de [ACR�SCIMO - ADITIVA DE VALOR] na LEI');

             Cod_Locali_Lei := 0;

             qyLocali_Lei_.Insert;
             qyLocali_Lei_esfera.Value     := Copy(cmbEsfera.Text,1,2);
             qyLocali_Lei_unorc.Value      := ktunorc.Text;
             qyLocali_Lei_funcao.Value     := ktfuncao.Text;
             qyLocali_Lei_subFuncao.Value  := ktsubfuncao.Text;
             qyLocali_Lei_programa.Value   := ktprograma.Text;
             qyLocali_Lei_acao.Value       := ktacao.Text;
             qyLocali_Lei_locali.Value     := ktlocalizacao.Text;
             qyLocali_Lei_regional.Value   := ktRegional.Text;
             qyLocali_Lei_descricao.Value  := kDescricao.Text;
             qyLocali_Lei_metaFisica.Value := StrToCurr(ktMetafisica.Text);
             qyLocali_Lei_.Post;

             Cod_Locali_Lei := qyLocali_Lei_CODIGO.Value;

             qyLocali_Lei_.Close;
             qyLocali_Lei_.SQL.Clear;
             qyLocali_Lei_.SQL.Add('SELECT * FROM LOCALI ');
             qyLocali_Lei_.SQL.Add('WHERE UNORC     = :UNORC');
             qyLocali_Lei_.SQL.Add('AND   FUNCAO    = :FUNCAO');
             qyLocali_Lei_.SQL.Add('AND   SUBFUNCAO = :SUBFUNCAO');
             qyLocali_Lei_.SQL.Add('AND   PROGRAMA  = :PROGRAMA');
             qyLocali_Lei_.SQL.Add('AND   ACAO      = :ACAO');
             qyLocali_Lei_.SQL.Add('AND   LOCALI    = :LOCALI');
             qyLocali_Lei_.Parameters.ParamByName('UNORC').Value     := ktunorc.Text;
             qyLocali_Lei_.Parameters.ParamByName('FUNCAO').Value    := ktfuncao.Text;
             qyLocali_Lei_.Parameters.ParamByName('SUBFUNCAO').Value := ktsubfuncao.Text;
             qyLocali_Lei_.Parameters.ParamByName('PROGRAMA').Value  := ktprograma.Text;
             qyLocali_Lei_.Parameters.ParamByName('ACAO').Value      := ktacao.Text;
             qyLocali_Lei_.Parameters.ParamByName('LOCALI').Value    := ktlocalizacao.Text;
             qyLocali_Lei_.ExecSQL;
             qyLocali_Lei_.Open;

             HideWarning;

             // ACRESCIMO
             qyEvlr_.Close;
             qyEvlr_.SQL.Clear;
             qyEvlr_.SQL.Add('SELECT * FROM EMENDAS_VALOR');
             qyEvlr_.SQL.Add('WHERE STATUS = :STATUS');
             qyEvlr_.SQL.Add('AND EMENDA = :EMENDA');
             qyEvlr_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
             qyEvlr_.Parameters.ParamByName('STATUS').Value := 'A';
             qyEvlr_.ExecSQL;
             qyEvlr_.Open;
             qyEvlr_.First;

             if qyEvlr_.RecordCount = 0 then qyEvlr_.last;

             WHILE NOT qyEvlr_.Eof  DO
             Begin
                 ShowWarning('INSERINDO... [ACR�SCIMO - ADITIVA DE VALOR] na LEI');
                 qyDet_Lei_.INSERT;
                 qyDet_Lei_locali.Value    := Cod_Locali_Lei;
                 qyDet_Lei_elDespesa.Value := qyEvlr_aelemento.Value;
                 qyDet_Lei_indUso.Value    := qyEvlr_aIndUso.Value;
                 qyDet_Lei_fonte.Value     := qyEvlr_aFonte.Value;
                 qyDet_Lei_valor.Value     := qyEvlr_AValor.Value;
                 qyDet_Lei_.Post;

                 qyEvlr_.Next;

             END; // FIM DO WHILE

             HideWarning;

             ShowMessage('[ADITIVA DE VALOR] => ACRESCIMO DA EMENDA: '+txtemenda.Text+ '  REALIZADA COM SUCESSO!!!');
          END;

      end; // FIM DA OP��O 3



      IF COPY(cbTipo.Text,1,1) = '4' Then // Modificativa de Valor
      Begin
         // REDU��O //////////////////////////////////////////////

         // CONSULTA DE ACRESCIMO
          ShowWarning('PROCESSANDO... [MODIFICATIVA DE VALOR], AGUARDE...');
          qyLocali_Lei_.Close;
          qyLocali_Lei_.SQL.Clear;
          qyLocali_Lei_.SQL.Add('SELECT * FROM LOCALI ');
          qyLocali_Lei_.SQL.Add('WHERE UNORC     = :UNORC');
          qyLocali_Lei_.SQL.Add('AND   FUNCAO    = :FUNCAO');
          qyLocali_Lei_.SQL.Add('AND   SUBFUNCAO = :SUBFUNCAO');
          qyLocali_Lei_.SQL.Add('AND   PROGRAMA  = :PROGRAMA');
          qyLocali_Lei_.SQL.Add('AND   ACAO      = :ACAO');
          qyLocali_Lei_.SQL.Add('AND   LOCALI    = :LOCALI');
          qyLocali_Lei_.Parameters.ParamByName('UNORC').Value     := atxtUnorc.Text;
          qyLocali_Lei_.Parameters.ParamByName('FUNCAO').Value    := atxtFuncao.Text;
          qyLocali_Lei_.Parameters.ParamByName('SUBFUNCAO').Value := atxtSubFuncao.Text;
          qyLocali_Lei_.Parameters.ParamByName('PROGRAMA').Value  := atxtPrograma.Text;
          qyLocali_Lei_.Parameters.ParamByName('ACAO').Value      := atxtAcao.Text;
          qyLocali_Lei_.Parameters.ParamByName('LOCALI').Value    := atxtLocali.Text;
          qyLocali_Lei_.ExecSQL;
          qyLocali_Lei_.Open;

          HideWarning;

          IF qyLocali_Lei_.RecordCount = 0 THEN
          BEGIN
             ShowMessage('LOCALIZA��O DE ACRESCIMO N�O EXISTE, CONFIRA OS DADOS. EMENDA: '+txtemenda.Text);
             EXIT;
          END;


          // CONSULTA REDUCAO
          qyLocali_Lei_.Close;
          qyLocali_Lei_.SQL.Clear;
          qyLocali_Lei_.SQL.Add('SELECT * FROM LOCALI ');
          qyLocali_Lei_.SQL.Add('WHERE UNORC     = :UNORC');
          qyLocali_Lei_.SQL.Add('AND   FUNCAO    = :FUNCAO');
          qyLocali_Lei_.SQL.Add('AND   SUBFUNCAO = :SUBFUNCAO');
          qyLocali_Lei_.SQL.Add('AND   PROGRAMA  = :PROGRAMA');
          qyLocali_Lei_.SQL.Add('AND   ACAO      = :ACAO');
          qyLocali_Lei_.SQL.Add('AND   LOCALI    = :LOCALI');
          qyLocali_Lei_.Parameters.ParamByName('UNORC').Value     := rtxtUnorc.Text;
          qyLocali_Lei_.Parameters.ParamByName('FUNCAO').Value    := rtxtFuncao.Text;
          qyLocali_Lei_.Parameters.ParamByName('SUBFUNCAO').Value := rtxtSubFuncao.Text;
          qyLocali_Lei_.Parameters.ParamByName('PROGRAMA').Value  := rtxtPrograma.Text;
          qyLocali_Lei_.Parameters.ParamByName('ACAO').Value      := rtxtAcao.Text;
          qyLocali_Lei_.Parameters.ParamByName('LOCALI').Value    := rtxtLocali.Text;
          qyLocali_Lei_.ExecSQL;
          qyLocali_Lei_.Open;

          IF qyLocali_Lei_.RecordCount = 0 THEN
          BEGIN
             ShowMessage('REDU�AO N�O EXISTE NO OR�AMENTO. EMENDA: '+txtemenda.Text);
             EXIT;
          END;


          Cod_Locali_Lei := qyLocali_Lei_CODIGO.Value;

          If qyLocali_Lei_.RecordCount > 0 then
          Begin

             // Redu��o
             qyEvlr_.Close;
             qyEvlr_.SQL.Clear;
             qyEvlr_.SQL.Add('SELECT * FROM EMENDAS_VALOR');
             qyEvlr_.SQL.Add('WHERE STATUS = :STATUS');
             qyEvlr_.SQL.Add('AND EMENDA = :EMENDA');
             qyEvlr_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
             qyEvlr_.Parameters.ParamByName('STATUS').Value := 'R';
             qyEvlr_.ExecSQL;
             qyEvlr_.Open;
             qyEvlr_.First;

             if qyEvlr_.RecordCount = 0 then qyEvlr_.last;


             WHILE NOT qyEvlr_.Eof  DO
             Begin
                 // DET LEI
                 Cod_Det_Lei := 0;
                 qyDet_Lei_.Close;
                 qyDet_Lei_.SQL.Clear;
                 qyDet_Lei_.SQL.Add('SELECT * FROM DET');
                 qyDet_Lei_.SQL.Add('WHERE LOCALI  = :locali');
                 qyDet_Lei_.SQL.Add('and eldespesa = :eldespesa');
                 qyDet_Lei_.SQL.Add('and induso    = :induso');
                 qyDet_Lei_.SQL.Add('and fonte     = :fonte');
                 qyDet_Lei_.Parameters.ParamByName('LOCALI').Value    := Cod_Locali_Lei;
                 qyDet_Lei_.Parameters.ParamByName('ELDESPESA').Value := qyEvlr_relemento.Value;;
                 qyDet_Lei_.Parameters.ParamByName('INDUSO').Value    := qyEvlr_rIndUso.Value;
                 qyDet_Lei_.Parameters.ParamByName('FONTE').Value     := qyEvlr_rFonte.Value;
                 qyDet_Lei_.ExecSQL;
                 qyDet_Lei_.Open;

                 Cod_Det_Lei := qyDet_Lei_Codigo.Value;

                 IF qyDet_Lei_.RecordCount = 0 THEN // CONDI�AO 1
                 BEGIN
                    ShowMessage('REDU��O N�O ENCONTRADA NO OR�AMENTO!!!'+ #13+
                                'EMENDA: '+txtemenda.Text);
                    EXIT;
                 END;

                 IF qyEvlr_rValor.Value > qyDet_Lei_valor.Value Then // CODI��O 2
                 Begin
                    ShowMessage('SALDO INSUFICIENTE DA REDU��O DE ADITIVA DE VALOR!!!'+#13+
                                'EMENDA: ' +txtemenda.Text);

                    iF sQry.State IN [DSINSERT, DSEDIT] THEN qry.Cancel;

                    EXIT;
                 End; // FIM DE CONDI��O 2


                 qyDet_Lei_.Edit;
                 qyDet_Lei_valor.Value := qyDet_Lei_valor.Value - qyEvlr_rValor.Value;
                 qyDet_Lei_.Post;

                 qyEvlr_.Next;



             END; // FIM DO WHILE
          END;
          ShowMessage('[MODIFICATIVA DE VALOR] => REDU��O DA EMENDA: '+txtemenda.Text+ '  REALIZADA COM SUCESSO!!!');


         ////////////////////////////////////////////////

         ////// ACRESCIMO ////////////////////////////;///
          Cod_Locali_Lei := 0;
          qyLocali_Lei_.Close;
          qyLocali_Lei_.SQL.Clear;
          qyLocali_Lei_.SQL.Add('SELECT * FROM LOCALI ');
          qyLocali_Lei_.SQL.Add('WHERE UNORC     = :UNORC');
          qyLocali_Lei_.SQL.Add('AND   FUNCAO    = :FUNCAO');
          qyLocali_Lei_.SQL.Add('AND   SUBFUNCAO = :SUBFUNCAO');
          qyLocali_Lei_.SQL.Add('AND   PROGRAMA  = :PROGRAMA');
          qyLocali_Lei_.SQL.Add('AND   ACAO      = :ACAO');
          qyLocali_Lei_.SQL.Add('AND   LOCALI    = :LOCALI');
          qyLocali_Lei_.Parameters.ParamByName('UNORC').Value     := atxtUnorc.Text;
          qyLocali_Lei_.Parameters.ParamByName('FUNCAO').Value    := atxtFuncao.Text;
          qyLocali_Lei_.Parameters.ParamByName('SUBFUNCAO').Value := atxtSubFuncao.Text;
          qyLocali_Lei_.Parameters.ParamByName('PROGRAMA').Value  := atxtPrograma.Text;
          qyLocali_Lei_.Parameters.ParamByName('ACAO').Value      := atxtAcao.Text;
          qyLocali_Lei_.Parameters.ParamByName('LOCALI').Value    := atxtLocali.Text;
          qyLocali_Lei_.ExecSQL;
          qyLocali_Lei_.Open;

          //Cod_Locali_Lei := qyLocali_Lei_
          Cod_Locali_Lei := qyLocali_Lei_CODIGO.Value;

          IF qyLocali_Lei_.RecordCount = 0 THEN
          BEGIN
            SHOWMESSAGE('ACRESCIMO DA MODIFICATIVA DE VALOR N�O EXISTE. EMENDA : '+txtemenda.Text);
            EXIT;
          END;



          // ACRESCIMO
          qyEvlr_.Close;
          qyEvlr_.SQL.Clear;
          qyEvlr_.SQL.Add('SELECT * FROM EMENDAS_VALOR');
          qyEvlr_.SQL.Add('WHERE STATUS = :STATUS');
          qyEvlr_.SQL.Add('AND EMENDA = :EMENDA');
          qyEvlr_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
          qyEvlr_.Parameters.ParamByName('STATUS').Value := 'A';
          qyEvlr_.ExecSQL;
          qyEvlr_.Open;
          qyEvlr_.First;

          if qyEvlr_.RecordCount = 0 then qyEvlr_.last;


          WHILE NOT qyEvlr_.Eof  DO
          Begin

             Cod_Det_Lei := 0;
             qyDet_Lei_.Close;
             qyDet_Lei_.SQL.Clear;
             qyDet_Lei_.SQL.Add('SELECT * FROM DET');
             qyDet_Lei_.SQL.Add('WHERE LOCALI  = :locali');
             qyDet_Lei_.SQL.Add('and eldespesa = :eldespesa');
             qyDet_Lei_.SQL.Add('and induso    = :induso');
             qyDet_Lei_.SQL.Add('and fonte     = :fonte');
             qyDet_Lei_.Parameters.ParamByName('LOCALI').Value    := Cod_Locali_Lei;
             qyDet_Lei_.Parameters.ParamByName('ELDESPESA').Value := qyEvlr_aelemento.Value;;
             qyDet_Lei_.Parameters.ParamByName('INDUSO').Value    := qyEvlr_aIndUso.Value;
             qyDet_Lei_.Parameters.ParamByName('FONTE').Value     := qyEvlr_aFonte.Value;
             qyDet_Lei_.ExecSQL;
             qyDet_Lei_.Open;

             Cod_Det_Lei := qyDet_Lei_Codigo.Value;

             IF qyDet_Lei_.RecordCount = 0 THEN // CONDI�AO 1
             BEGIN
                 qyDet_Lei_.INSERT;
                 qyDet_Lei_locali.Value    := Cod_Locali_Lei;
                 qyDet_Lei_elDespesa.Value := qyEvlr_aelemento.Value;
                 qyDet_Lei_indUso.Value    := qyEvlr_aIndUso.Value;
                 qyDet_Lei_fonte.Value     := qyEvlr_aFonte.Value;
                 qyDet_Lei_valor.Value     := qyEvlr_AValor.Value;
                 qyDet_Lei_.Post;
             END
             else
             begin
                qyDet_Lei_.Edit;
                qyDet_Lei_valor.Value := qyDet_Lei_valor.Value + qyEvlr_aValor.Value;
                qyDet_Lei_.Post;
             end;
             {

             }

             {
             IF qyEvlr_rValor.Value > qyDet_Lei_valor.Value Then // CODI��O 2
             Begin
                ShowMessage('SALDO INSUFICIENTE DA REDU��O DE ADITIVA DE VALOR!!!'+#13+
                            'EMENDA: ' +txtemenda.Text);

                EXIT;
             End; // FIM DE CONDI��O 2
             }


             qyEvlr_.Next;

          END; // FIM DO WHILE

          ShowMessage('[MODIFICATIVA DE VALOR] => ACRESCIMO DA EMENDA: '+txtemenda.Text+ '  REALIZADA COM SUCESSO!!!');

         /////////////////////////////////////////////////


      End;


      {qry.Close;
      qry.SQL.clear;
      qry.SQL.Add('select * from emendas');
      qry.SQL.Add('where numemenda = :emenda');
      qry.Parameters.ParamByName('emenda').Value := txtemenda.Text;
      qry.ExecSQL;
      qry.Open;

      qry.Edit;
      qryProcessado.Value := 'S';
      qry.post;

      qry.Close;
      qry.SQL.clear;
      qry.SQL.Add('select * from emendas');
      qry.SQL.Add('order by numemenda');
      qry.ExecSQL;
      qry.Open;}

      ShowWarning('ATUALIZANDO DADOS, AGUARDE...');
      qyEmendaCons_.Close;
      qyEmendaCons_.Parameters.ParamByName('emenda').Value := txtemenda.Text;
      qyEmendaCons_.ExecSQL;
      qyEmendaCons_.Open;

      qyEmendaCons_.Edit;
      qyEmendaCons_Processado.Value := 'S';
      qyEmendaCons_Status.Value     := '1';
      qyEmendaCons_.post;

      qyEmendaCons_.Close;
      qyEmendaCons_.Parameters.ParamByName('emenda').Value := txtemenda.Text;
      qyEmendaCons_.ExecSQL;
      qyEmendaCons_.Open;

      HideWarning;
   End; // Fim de Bloco

end;

procedure TfrmEmendasNew.dxButton1Click(Sender: TObject);
begin
   Status_reg := 'i';
  isItChanged();
  clearControls();
  cbStatus.ItemIndex := 2;
  theOperation := 'i';
  //txtCodigo.readOnly := false;
  Apaga_MetaTotal;
  Apaga_Valor_r;
  Apaga_Valor_a;
  Apaga_aditivavalor;
  PageControl1.ActivePageIndex := 0;
  txtemenda.setFocus;
end;

procedure TfrmEmendasNew.btnNewClick(Sender: TObject);
begin
  PageControl2.ActivePageIndex := 0;
  Status_reg := 'i';
  isItChanged();
  clearControls();

  qyVE_.Close;
  qyVE_.Parameters.ParamByName('emenda').Value := txtemenda.Text;
  qyVE_.ExecSQL;
  qyVE_.Open;
  If qyVE_.RecordCount = 0 Then
     lbVereador.Caption :='SEM VEREADOR PARA ESTA EMENDA';

  If qyVE_.RecordCount = 1 Then
     lbVereador.Caption := qyVE_Vereador.Value;

  If qyVE_.RecordCount > 1 Then
  Begin
     qyVE_.First;
     lbVereador.Caption :='';
     while not qyVE_.Eof do
     Begin
        lbVereador.Caption := lbVereador.Caption +'  ::> '+qyVE_Vereador.Value;
        qyVE_.Next;
     End;


  End;

  cbStatus.ItemIndex := 2;
  theOperation := 'i';
  //txtCodigo.readOnly := false;
  Apaga_MetaTotal;
  Apaga_Valor_r;
  Apaga_Valor_a;
  Apaga_aditivavalor;

  PageControl1.ActivePageIndex := 0;
  Botoes;
  tEG_.setFocus;

end;

procedure TfrmEmendasNew.btnCancelClick(Sender: TObject);  
begin

  If (Status_reg <> 'a') then
  Begin
      qyEmendaCons_.Close;
      qyEmendaCons_.Parameters.ParamByName('emenda').Value := txtemenda.Text;
      qyEmendaCons_.ExecSQL;
      qyEmendaCons_.Open;

      If qyEmendaCons_.RecordCount = 1 then
         qyEmendaCons_.Delete;


      qyVE_.Close;
      qyVE_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
      qyVE_.ExecSQL;
      qyVE_.Open;

      qyVE_.First;

      If qyVE_.RecordCount > 0 Then Begin
         While not qyVE_.Eof do
         Begin
            qyVE_.Delete;
         End;
      End;

      qyEmendasValor_.Close;
      qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
      qyEmendasValor_.ExecSQL;
      qyEmendasValor_.Open;
      qyEmendasValor_.First;

      While not qyEmendasValor_.Eof do
      Begin
         qyEmendasValor_.Delete;
      End;

      qyEmendasValor02_.Close;
      qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
      qyEmendasValor02_.ExecSQL;
      qyEmendasValor02_.Open;
      qyEmendasValor02_.First;

      While not qyEmendasValor02_.Eof do
      Begin
         qyEmendasValor02_.Delete;
      End;
  End;

  clearControls;
  Apaga_MetaTotal;
  Apaga_Valor_r();
  Apaga_Valor_a();
  Apaga_aditivavalor();
  PageControl1.ActivePageIndex := 0;
  PageControl2.ActivePageIndex := 1;


  Status_reg := '';
  Botoes;
  btRenovar.OnClick(nil);
  
end;

procedure TfrmEmendasNew.btnDeleteClick(Sender: TObject);
begin
   {if Permite <> 's' then
   Begin
      ShowMessage('Registro n�o foi selecionado. Selecione Registro!');
      Exit;
   End;}

   frmMain.Autorizacao;

   If frmMain.Autoriza = 'N' Then
   Begin
      ShowMessage('Autoriza��o Negada!!!');
      btRenovar.OnClick(nil);
      Exit;
   End;


   if application.messageBox('Voc� tem certeza que deseja excluir o registro corrente?','Confirma��o de Exclus�o',
      MB_ICONQUESTION+MB_YESNO) = IDNO then
   Begin
      Permite := 'n';
      clearControls;
      exit;
   end
   else
     begin
        Permite := 'n';

        If Trim(txtemenda.text) = '' then txtemenda.Text := qryNumEmenda.Value;

        qyVE_.Close;
        qyVE_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
        qyVE_.ExecSQL;
        qyVE_.Open;

        qyVE_.First;

        While not qyVE_.Eof do
        Begin
           qyVE_.Delete;
        End;

        ////////////////////////////////////////////////////////////////////////
        qyEmendasValor_.Close;
        qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
        qyEmendasValor_.ExecSQL;
        qyEmendasValor_.Open;
        qyEmendasValor_.First;

        While not qyEmendasValor_.Eof do
        Begin
           qyEmendasValor_.Delete;
           //qyEmendasValor_.Next;
        End;

        qyEmendasValor02_.Close;
        qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
        qyEmendasValor02_.ExecSQL;
        qyEmendasValor02_.Open;
        qyEmendasValor02_.First;

        While not qyEmendasValor02_.Eof do
        Begin
           qyEmendasValor02_.Delete;
           //qyEmendasValor02_.Next;
        End;
        ////////////////////////////////////////////////////////////////////////

        dmtData.Auditoria('EXCLUIR','EMENDAS',qryNumEmenda.Value);

        qyEmendaCons_.close;
        qyEmendaCons_.Parameters.ParamByName('Emenda').Value := qryNumEmenda.Value;
        qyEmendaCons_.ExecSQL;
        qyEmendaCons_.Open;

        If qyEmendaCons_.RecordCount > 0 then
           qyEmendaCons_.Delete;

        Deleta_Emendas_Valor;
        if PageControl1.ActivePage = tabAditivaValor then
           Deleta_Emendas_Locali;

        btnCancelClick(nil);
        Apaga_MetaTotal;
        Apaga_aditivavalor;
        PageControl1.ActivePageIndex := 0;
        PageControl2.ActivePageIndex := 1;
        btRenovar.OnClick(nil);
     end;
end;

procedure TfrmEmendasNew.Botoes;
begin
   If (Status_reg = 'i') or (Status_reg = 'a') then //sQry.State in [dsedit, dsInsert] then
   Begin
      btnNew.Enabled       := False;
      btnSave.Enabled      := True;
      btnCancel.Enabled    := True;
      btnAlterar.Enabled   := False;
      btnDelete.Enabled    := False;
      btClosed.Enabled     := false;
      //btFechar.Enabled   := False;
      PageControl2.ActivePageIndex :=0;
      gbCadastro.Enabled := True;
      txtemenda.SetFocus;
   End;
   If Status_reg = ''  then //If sQry.State in [dsBrowse] then
   Begin
      btnNew.Enabled       := True;
      btnSave.Enabled      := False;
      btnCancel.Enabled    := False;
      btnAlterar.Enabled   := True;
      btnDelete.Enabled    := True;
      btClosed.Enabled     := True;
      //btFechar.Enabled   := True;
      //gbCadastro.Enabled := False;
      PageControl1.ActivePageIndex := 0;
      gbCadastro.Enabled := False;
      PageControl2.ActivePageIndex := 1;

   End;
end;

procedure TfrmEmendasNew.btnAlterarClick(Sender: TObject);
begin
   Status_reg := 'a';
   PageControl2.ActivePageIndex:= 0;
   PageControl1.Enabled := True;

   btnNew.Enabled    := true;
   btnSave.Enabled   := true;
   btnCancel.Enabled := true;
   btnDelete.Enabled := true;


   Status_reg := 'a';
   //isItChanged();
   Apaga_MetaTotal;
   Apaga_Valor_r();
   Apaga_Valor_a();
   Apaga_aditivavalor();

   qyEmendasValor_.Close;
   qyEmendasValor_.Parameters.ParamByName('EMENDA').Value   := '0';
   qyEmendasValor_.ExecSQL;
   qyEmendasValor_.Open;

   qyEmendasValor02_.Close;
   qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := '0';
   qyEmendasValor02_.ExecSQL;
   qyEmendasValor02_.Open;


   If trim(txtemenda.Text) = '' then
      txtemenda.Text := qryNumEmenda.Value;


   qyVE_.Close;
   qyVE_.Parameters.ParamByName('emenda').Value := txtemenda.Text;
   qyVE_.ExecSQL;
   qyVE_.Open;

   If qyVE_.RecordCount = 0 Then
      lbVereador.Caption :='SEM VEREADOR PARA ESTA EMENDA'
   ELSE
      lbVereador.Caption := qyVE_Vereador.Value;


   keyExit();

   qyEmendas_Cons_.Close;
   qyEmendas_Cons_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
   qyEmendas_Cons_.Open;

   cbStatus.Enabled := True;

   Botoes;

end;

procedure TfrmEmendasNew.btPesquisarClick(Sender: TObject);
var
  SqlText : String;
begin
  SqlText :=
  'Select E.*, V.Nome as Vereador, '+
  '     Tipo = '+
  '     Case '+
  '        when E.tipo = 1 then '+ '''1 - Aditiva de Texto''' +
  '        when E.tipo = 2 then '+ '''2 - Modificativa de Texto''' +
  '        when E.tipo = 3 then '+ '''3 - Aditiva de Valor''' +
  '        when E.tipo = 4 then '+ '''4 - Modificativa de Valor''' +
  '        when E.tipo = 5 then '+ '''5 - Aditiva de Meta''' +
  '        when E.tipo = 6 then '+ '''6 - Modificativa de Meta''' +
  '     End, '+
  '     Status = '+
  '     Case '+
  '        When E.Status = 1 Then '+ '''1 - Aprovada''' +
  '        When E.Status = 2 Then '+ '''2 - Retida''' +
  '        When E.Status = 3 Then '+ '''3 - Em Discuss�o''' +
  '     End, '+
  '     EL.Descricao as EL_Descricao, '+
  '     EL.MetaFisica as EL_MetaFisica, Processado '+
  'From Emendas E '+
  'Left outer join Emendas_Locali EL     on EL.Emenda = E.NumEmenda '+
  //'Left outer join Emendas_Valor  EV     on EV.Emenda = E.NumEmenda '+
  'Left outer Join Vereadores_Emendas VE on VE.Emenda = E.NumEmenda '+
  'Left outer Join Vereadores          V on V.Codigo =  VE.Codigo_Vereador '+
  'Where E.codigo is not null';

   If cbPesq.ItemIndex = -1 Then
   Begin
      ShowMessage('Informe o Tipo de Pesquisa');
      cbPesq.SetFocus;
      Exit;
   End;
   If Trim (edPesq.Text) = '' Then
   Begin
      ShowMessage('Informe Dados para a Pesquisa');
      edPesq.SetFocus;
      Exit;
   End;


   qry.close;
   qry.SQL.Clear;
   qry.SQL.Add(SqlText);

   If cbPesq.ItemIndex = 0 Then
   Begin
      qry.SQL.Add('And  substring(E.NumEmenda,1,3) = :NumEmenda');
      qry.Parameters.ParamByName('NumEmenda').Value := edPesq.Text;
   End;

   If cbPesq.ItemIndex = 1 Then
   Begin
      qry.SQL.Add('And V.Nome like :Vereador');
      qry.Parameters.ParamByName('Vereador').Value := '%'+edPesq.Text+'%';
   End;

   If cbPesq.ItemIndex = 2 Then
   Begin
      qry.SQL.Add('And E.Processado = :Processado');
      qry.Parameters.ParamByName('Processado').Value := edPesq.Text;
   End;

   If cbPesq.ItemIndex = 3 Then
   Begin
      qry.SQL.Add('And EL.Descricao like :Descricao');
      qry.Parameters.ParamByName('Descricao').Value := '%'+edPesq.Text+'%';
   End;

   qry.SQL.Add('Order by E.NumEmenda, V.Nome');

   qry.ExecSQL;
   qry.Open;

   If qry.RecordCount = 0 Then
   Begin
      ShowMessage('Nenhum dado foi encontrado para esta pesquisa!!!');
      edPesq.SetFocus;
      Exit;
   End;

end;

procedure TfrmEmendasNew.btRenovarClick(Sender: TObject);
var
  SqlText : String;
begin
  SqlText :=
  'Select E.*, V.Nome as Vereador, '+
  '     Tipo = '+
  '     Case '+
  '        when E.tipo = 1 then '+ '''1 - Aditiva de Texto''' +
  '        when E.tipo = 2 then '+ '''2 - Modificativa de Texto''' +
  '        when E.tipo = 3 then '+ '''3 - Aditiva de Valor''' +
  '        when E.tipo = 4 then '+ '''4 - Modificativa de Valor''' +
  '        when E.tipo = 5 then '+ '''5 - Aditiva de Meta''' +
  '        when E.tipo = 6 then '+ '''6 - Modificativa de Meta''' +
  '     End, '+
  '     Status = '+
  '     Case '+
  '        When E.Status = 1 Then '+ '''1 - Aprovada''' +
  '        When E.Status = 2 Then '+ '''2 - Retida''' +
  '        When E.Status = 3 Then '+ '''3 - Em Discuss�o''' +
  '     End, '+
  '     EL.Descricao as EL_Descricao, '+
  '     EL.MetaFisica as EL_MetaFisica, Processado '+
  'From Emendas E '+
  'Left outer join Emendas_Locali EL     on EL.Emenda = E.NumEmenda '+
  //'Left outer join Emendas_Valor  EV     on EV.Emenda = E.NumEmenda '+
  'Left outer Join Vereadores_Emendas VE on VE.Emenda = E.NumEmenda '+
  'Left outer Join Vereadores          V on V.Codigo =  VE.Codigo_Vereador ';

   qry.close;
   qry.SQL.Clear;
   qry.SQL.Add(SqlText);
   qry.SQL.Add('Order by E.NumEmenda, V.Nome');
   qry.ExecSQL;
   qry.Open;


end;

procedure TfrmEmendasNew.btClosedClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmEmendasNew.btmodificativaClick(Sender: TObject);
begin
   loadTable_Unorc('unorc','Unorcd',rcmbUnorc);
   unoSize := length(trim(qryTable.fieldByName('Unorc').asString));

   rtxtUnorc.Text       := '90101';
   rtxtUnorcExit(rtxtUnorc);

   rtxtFuncao.Text      := '99';
   rtxtFuncaoExit(rtxtFuncao);

   rtxtSubFuncao.Text   := '999';
   rtxtSubFuncaoExit(rtxtSubFuncao);

   rtxtPrograma.Text    := '9999';
   rtxtProgramaExit(rtxtPrograma);

   rtxtAcao.Text        := '9999';
   rtxtAcaoExit(rtxtAcao);

   rtxtLocali.Text      := '0001';
   rtxtLocaliExit(rtxtLocali);



   with dmtData do
        begin
           setComboBox('99', rcmbGrupo);
           //setComboBox(fieldByName('Status').asString, cbstatus);
           //setComboBox(fieldByName('Tipo').asString, cbTipo);
        end;
   rcmbGrupo.OnExit(nil);

   dbgElementoReducao.SetFocus;

end;

procedure TfrmEmendasNew.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF KEY = VK_F2 THEN
      If btnNew.Enabled = true then  btnNew.OnClick(NIL);

   IF KEY = VK_F3 THEN
      If btnSave.Enabled = true then btnSave.OnClick(NIL);

   IF KEY = VK_F4 THEN
      If btnCancel.Enabled = true then btnCancel.OnClick(NIL);

   IF KEY = VK_F5 THEN
      If btnAlterar.Enabled = true then btnAlterar.OnClick(NIL);

   IF KEY = VK_F6 THEN
      If btnDelete.Enabled = true then btnDelete.OnClick(NIL);

   IF KEY = VK_F7 THEN
      If btClosed.Enabled = true then btClosed.OnClick(NIL);

   IF KEY = VK_F1 THEN
   Begin

      If PageControl2.ActivePageIndex = 0 Then
      Begin
          If PageControl1.ActivePage = tabAditivaValor then btAditiva.OnClick(nil);
          If PageControl1.ActivePage = TabValor        then btmodificativa.OnClick(nil);
      End;

      If PageControl2.ActivePageIndex = 1 Then
      Begin
         edPesq.SetFocus;
      End;
   End;
   IF (Key = VK_F10) THEN
   Begin
       If PageControl2.ActivePageIndex = 0 Then
       Begin
          If (PageControl1.ActivePage = tabAditivaValor) and (gbAditivavalor.Enabled = True) then btSeinf1.OnClick(nil);
          If (PageControl1.ActivePage = TabValor )  and (gbValor.Enabled = True)      then btSeinf2.OnClick(nil);
       End;

       If PageControl2.ActivePageIndex = 1 Then
       Begin
           edPesq.SetFocus;
       End;

   End;
{   IF (Key = VK_F11) THEN
   Begin
       If PageControl2.ActivePageIndex = 0 Then
       Begin
          If (PageControl1.ActivePage = tabAditivaValor) and (gbAditivavalor.Enabled = True) then ColarAditiva.OnClick(nil);
          If (PageControl1.ActivePage = TabValor )  and (gbValor.Enabled = True)      then ColarModificativa.OnClick(nil);
       End;

       If PageControl2.ActivePageIndex = 1 Then
       Begin
           edPesq.SetFocus;
       End;

   End; }

   IF KEY = VK_F8 THEN
   Begin

       If btClosed.Enabled = True then Exit;

       If PageControl2.ActivePageIndex = 0 Then
       Begin
          If PageControl1.ActivePage = tabAditivaValor then
             avtxtUnorc.SetFocus;
          If PageControl1.ActivePage = TabValor then
             rtxtUnorc.SetFocus;
       End;
   End;

   IF KEY = VK_F9 THEN
   Begin

       If btClosed.Enabled = True then Exit;

       If PageControl2.ActivePageIndex = 0 Then
       Begin
          If PageControl1.ActivePage = tabAditivaValor then
             kDescricao.SetFocus;
          If PageControl1.ActivePage = TabValor then
             atxtUnorc.SetFocus;
       End;
   End;





end;

procedure TfrmEmendasNew.PageControl2Change(Sender: TObject);
begin

   qyVE_.Close;
   qyVE_.Parameters.ParamByName('emenda').Value := txtemenda.Text;
   qyVE_.ExecSQL;
   qyVE_.Open;
   If qyVE_.RecordCount = 0 Then
     lbVereador.Caption :='SEM VEREADOR PARA ESTA EMENDA';

   If qyVE_.RecordCount = 1 Then
      lbVereador.Caption := qyVE_Vereador.Value;

   If qyVE_.RecordCount > 1 Then
   Begin
      qyVE_.First;
      lbVereador.Caption :='';
      while not qyVE_.Eof do
      Begin
         lbVereador.Caption := lbVereador.Caption +'  ::> '+qyVE_Vereador.Value;
         qyVE_.Next;
      End;
   End;

end;

procedure TfrmEmendasNew.DBGridDblClick(Sender: TObject);
var t : integer;
begin
   t := Length(kDescricao.Text);

  PageControl1.Enabled := True;
  isItChanged();
  Apaga_MetaTotal;
  Apaga_Valor_r();
  Apaga_Valor_a();
  Apaga_aditivavalor();

  qyEmendasValor_.Close;
  qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor_.ExecSQL;
  qyEmendasValor_.Open;

  qyEmendasValor02_.Close;
  qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor02_.ExecSQL;
  qyEmendasValor02_.Open;


  keyExit();


  //Valor da Emendas e Saldo;



  ValoresEmendas;

  PageControl2.ActivePageIndex := 0;
  if (COPY(kDescricao.Text,t-7,t) = '- EP/LOM')then  rdgGrupo.ItemIndex := 1;
  if (COPY(kDescricao.Text,t-5,t) = '- EP/C')  then  rdgGrupo.ItemIndex := 2;
  if (COPY(kDescricao.Text,t-3,t) = '- EP')    then  rdgGrupo.ItemIndex := 0;

end;

procedure TfrmEmendasNew.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

   If (qryProcessado.Value = 'S') AND (qryStatus.Value = '1') then// condi��o
   BEGIN
      Dbgrid.Canvas.Font.Color:= clWhite; // coloque aqui a cor desejada
      Dbgrid.Canvas.Brush.Color:= clGreen;
      Dbgrid.DefaultDrawDataCell(Rect, dbgrid.columns[datacol].field, State);
   END;

   If (qryProcessado.Value = 'S') AND (qryStatus.Value = '2') then// condi��o
   BEGIN
      Dbgrid.Canvas.Font.Color:= clWhite; // coloque aqui a cor desejada
      Dbgrid.Canvas.Brush.Color:= clRed;
      Dbgrid.DefaultDrawDataCell(Rect, dbgrid.columns[datacol].field, State);
   END;
   //Dbgrid.DefaultDrawDataCell(Rect, dbgrid.columns[datacol].field, State);


end;

procedure TfrmEmendasNew.tEG_Exit(Sender: TObject);
Var
  Cod : Integer;
  Sql_Cons  : String;
  Sql_Vereadores : String;
begin
   //If Length(tEG_.Text) < 3 Then
   //   tEG_.Text := FormatFloat('000',StrToFloat(tEG_.Text));

   If Trim(tEG_.Text) = '' then exit;


   If Length(tEG_.Text) < 3 Then
   Begin
      ShowMessage('Emenda Informada Incorretamente!!!');
      Exit;
   End;

   qyEG_.Close;
   qyEG_.SQL.Clear;
   qyEG_.SQL.Add('SELECT * FROM EMENDASGERAL');
   qyEG_.SQL.Add('WHERE substring(EMENDAG,1,3) = :EMENDAG');
   qyEG_.Parameters.ParamByName('EMENDAG').Value := tEG_.Text;
   qyEG_.ExecSQL;
   qyEG_.Open;

   IF qyEG_.RecordCount = 0 then
   Begin
      ShowMessage('Emenda ainda n�o cadastrda nas Gerais.'+#13+
                  'Por favor, cadastre a emenda referida!');
      Exit;
   End;

   tEG_.Text := qyEG_EmendaG.Value;

   // 000.00
   PE1 := copy(tEG_.Text,1,3);
   PE2 := copy(tEG_.Text,5,2);


   with dmtData do
   begin
      setComboBox(qyEG_Votacao.Value, cbVotacao);
      setComboBox(qyEG_Status.Value , cbstatus);
      setComboBox(qyEG_Tipo.Value   , cbTipo);
   end;

   // Valor Total da Emenda
   ValorEmendaGeral := qyEG_ValorTotal.Value;

   If (cbTipo.ItemIndex <> 0) and (cbTipo.ItemIndex <> 1) Then
   Begin
       TotEme_.Close;
       TotEme_.Parameters.ParamByName('Emenda').Value := copy(tEG_.Text,1,3);
       TotEme_.ExecSQL;
       TotEme_.Open;

       If TotEme_rvalor.Value >= ValorEmendaGeral  Then
       Begin
          ShowMessage('A Soma dos Detalhes desta Emenda � igual a Emenda Geral. Portanto, '+#13+
                      'n�o pode ser mais utilizado!'+#13+
                      'Valor da Emenda Geral: '+ FormatCurr('###,###,##0.00',ValorEmendaGeral)+#13+
                      'soma das Emendas: '+ FormatCurr('###,###,##0.00',TotEme_rvalor.Value));

          tEG_.SetFocus;
          Exit;
       End;
   End;

   edValorTotal.Value := ValorEmendaGeral;
   If (cbTipo.ItemIndex <> 0) and (cbTipo.ItemIndex <> 1) Then
       edSaldo.Value      := ValorEmendaGeral - TotEme_rvalor.Value
   Else
       edSaldo.Value      := 0;

   // sql
   Sql_Cons       := qyEmendaCons_.SQL.Text;
   Sql_Vereadores := qyVE_.SQL.Text;

   qyEmendaCons_.Close;
   qyEmendaCons_.SQL.Clear;
   qyEmendaCons_.SQL.Add('SELECT * FROM EMENDAS');
   qyEmendaCons_.SQL.Add('WHERE substring(numEMENDA,1,3) = :Emenda');
   qyEmendaCons_.SQL.Add('ORDER BY numEMENDA');
   qyEmendaCons_.Parameters.ParamByName('Emenda').Value := copy(tEG_.Text,1,3);
   qyEmendaCons_.ExecSQL;
   qyEmendaCons_.Open;

   If qyEmendaCons_.RecordCount > 0 Then
   Begin
      qyEmendaCons_.Last;
      Cod := StrToInt(Copy(qyEmendaCons_NumEmenda.Text,5,2));
      Cod := Cod + 1;

      Emenda := PE1+'.'+FormatFloat('00',cod);
      txtemenda.Text := Emenda;
   End
   else
   Begin
      Cod := 1;
      Emenda := PE1+'.'+FormatFloat('00',cod);
      txtemenda.Text := Emenda;
   End;

   qyVE_.Close;
   qyVE_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
   qyVE_.ExecSQL;
   qyVE_.Open;

   If qyVE_.RecordCount = 0 then
   Begin
       qyVE_.Edit;
       qyVE_Codigo_Vereador.Value := qyEG_Vereador.Value;
       qyVE_Emenda.Value          := txtemenda.Text;
       qyVE_.Post;
   End;

   If qyVE_.RecordCount = 0 Then
     lbVereador.Caption :='SEM VEREADOR PARA ESTA EMENDA';

  If qyVE_.RecordCount = 1 Then
     lbVereador.Caption := qyVE_Vereador.Value;


   qyVE_.Close;
   qyVE_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
   qyVE_.ExecSQL;
   qyVE_.Open;

   qyEmendaCons_.Close;
   qyEmendaCons_.SQL.Clear;
   qyEmendaCons_.SQL.Add(Sql_Cons);
   qyEmendaCons_.ExecSQL;
   qyEmendaCons_.Open;

   //cbTipo.SetFocus;

   Ativa_Memo();
   PageControl1.SetFocus;

end;


procedure TfrmEmendasNew.ValoresEmendas;
Var
  Saldo, S_Acre, S_Rec : Currency;
  Calc : Real;
begin
   S_Acre := 0;
   S_Rec  := 0;

   qyEVSoma_Aditiva_.Close;
   qyEVSoma_Aditiva_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
   qyEVSoma_Aditiva_.ExecSQL;
   qyEVSoma_Aditiva_.Open;
   S_Rec := qyEVSoma_Aditiva_rvalor.Value;

   qyEVSoma_Aditiva02_.Close;
   qyEVSoma_Aditiva02_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
   qyEVSoma_Aditiva02_.ExecSQL;
   qyEVSoma_Aditiva02_.Open;
   S_Acre := qyEVSoma_Aditiva02_avalor.Value;

   Calc := S_Acre;

   Saldo := ValorEmendaGeral - Calc;

   edSaldo.Value := Saldo;

end;

procedure TfrmEmendasNew.btSeinf1Click(Sender: TObject);
begin
//   Unidade,Func,Sfunc,Progr,Ac,Lc,Gpo : string
   loadTable_Unorc('unorc','Unorcd',avcmb_Unorc);
   unoSize := length(trim(qryTable.fieldByName('Unorc').asString));

   avtxtUnorc.Text       := '27101';
   avtxtUnorcExit(avtxtUnorc);

   avtxtFuncao.Text      := '15';
   avtxtFuncaoExit(avtxtFuncao);

   avtxtSubFuncao.Text   := '451';
   avtxtSubFuncaoExit(avtxtSubFuncao);

   avtxPrograma.Text    := '0063';
   avtxProgramaExit(avtxPrograma);

   avtxtAcao.Text        := '2081';
   avtxtAcaoExit(avtxtAcao);

   avtxtlocalizacao.Text      := '0001';
   avtxtlocalizacaoExit(avtxtlocalizacao);


   with dmtData do
        begin
           setComboBox('33', avcbGrupo);
           //setComboBox(fieldByName('Status').asString, cbstatus);
           //setComboBox(fieldByName('Tipo').asString, cbTipo);
        end;

   AvrGrid.SetFocus;

end;

procedure TfrmEmendasNew.btSeinf2Click(Sender: TObject);
begin

   loadTable_Unorc('unorc','Unorcd',avcmb_Unorc);
      loadTable_Unorc('unorc','Unorcd',rcmbUnorc);
   unoSize := length(trim(qryTable.fieldByName('Unorc').asString));

   rtxtUnorc.Text       := '27101';
   rtxtUnorcExit(rtxtUnorc);

   rtxtFuncao.Text      := '15';
   rtxtFuncaoExit(rtxtFuncao);

   rtxtSubFuncao.Text   := '451';
   rtxtSubFuncaoExit(rtxtSubFuncao);

   rtxtPrograma.Text    := '0063';
   rtxtProgramaExit(rtxtPrograma);

   rtxtAcao.Text        := '2081';
   rtxtAcaoExit(rtxtAcao);

   rtxtLocali.Text      := '0001';
   rtxtLocaliExit(rtxtLocali);

   with dmtData do
        begin
           setComboBox('33', rcmbGrupo);
           //setComboBox(fieldByName('Status').asString, cbstatus);
           //setComboBox(fieldByName('Tipo').asString, cbTipo);
        end;
   rcmbGrupo.OnExit(nil);

   dbgElementoReducao.SetFocus;
end;

procedure TfrmEmendasNew.btnSaveNovoClick(Sender: TObject);
Var
  Saldo, S_Acre, S_Rec : Currency;
  Calc : Real;
  emenda : string;
begin
   S_Acre := 0;
   S_Rec  := 0;
   emenda := tEG_.Text;

   If Trim(txtemenda.Text) ='' Then
   Begin
      ShowMessage('Informe o N�mero da Emenda!!!');
      txtemenda.SetFocus;
      Exit;
   End;

   If (copy(cbTipo.text,1,1) = '3') then
   Begin
     ///////////////////////////////////////////////////////////////////////////
     qyEVSoma_Aditiva_.Close;
     qyEVSoma_Aditiva_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
     qyEVSoma_Aditiva_.ExecSQL;
     qyEVSoma_Aditiva_.Open;

     qyEVSoma_Aditiva02_.Close;
     qyEVSoma_Aditiva02_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
     qyEVSoma_Aditiva02_.ExecSQL;
     qyEVSoma_Aditiva02_.Open;

     S_Rec := qyEVSoma_Aditiva_rvalor.Value;
     S_Acre := qyEVSoma_Aditiva02_avalor.Value;

     if qyEVSoma_Aditiva_rvalor.Value <>  qyEVSoma_Aditiva02_avalor.Value Then
     Begin
        ShowMessage('A soma da redu��o est� diferente da de acr�scimo!!!');
        AvcGrid.SetFocus;
        Exit;
     End;
   End;

   If (copy(cbTipo.text,1,1) = '4') then
   Begin
     ///////////////////////////////////////////////////////////////////////////
     qyEVSoma_Aditiva_.Close;
     qyEVSoma_Aditiva_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
     qyEVSoma_Aditiva_.ExecSQL;
     qyEVSoma_Aditiva_.Open;

     qyEVSoma_Aditiva02_.Close;
     qyEVSoma_Aditiva02_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
     qyEVSoma_Aditiva02_.ExecSQL;
     qyEVSoma_Aditiva02_.Open;

     S_Rec := qyEVSoma_Aditiva_rvalor.Value;
     S_Acre := qyEVSoma_Aditiva02_avalor.Value;

     if qyEVSoma_Aditiva_rvalor.Value <>  qyEVSoma_Aditiva02_avalor.Value Then
     Begin
        ShowMessage('A soma da redu��o est� diferente da de acr�scimo!!!');
        dbgElementoAcrescimo.SetFocus;
        Exit;
     End;
   End;

   ////////////////////////////////////////////////////////////////////////////////
   //Saldo, S_Acre, S_Rec : Currency;
   // Calc : Real;

   TotEme_.Close;
   TotEme_.Parameters.ParamByName('Emenda').Value := copy(tEG_.Text,1,3);
   TotEme_.ExecSQL;
   TotEme_.Open;

   If  qyEVSoma_Aditiva_rvalor.Value > 0 then
       S_Rec := qyEVSoma_Aditiva_rvalor.Value
   Else
       S_Rec  := 0;

   If qyEVSoma_Aditiva02_avalor.Value > 0 then
       S_Acre := qyEVSoma_Aditiva02_avalor.Value
   Else
       S_Acre :=0;



   Calc := S_Acre;

   If TotEme_rvalor.Value > ValorEmendaGeral  Then
   Begin
      ShowMessage('A Soma dos Detalhes desta Emenda � Maior que a Emenda Geral!!'+#13+#13+
                  'Valor da Emenda Geral: '+ FormatCurr('###,###,##0.00',ValorEmendaGeral)+#13+
                  'soma das Emendas: '+ FormatCurr('###,###,##0.00',TotEme_rvalor.Value));


      Exit;
   End;

   Saldo := ValorEmendaGeral - Calc;
   edSaldo.Value := Saldo;

   ///////////////////////////////////////////////////////////////////////////////


  If cbTipo.ItemIndex <> 0 then save();
//Apaga_MetaTotal;
//PageControl1.ActivePageIndex := 0;
//PageControl2.ActivePageIndex := 0;

//Apaga_aditivavalor;

  qyEmendasValor_.Close;
  qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor_.ExecSQL;
  qyEmendasValor_.Open;

  qyEmendasValor02_.Close;
  qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor02_.ExecSQL;
  qyEmendasValor02_.Open;
  Status_reg := '';
//Botoes

//----------Nova Emenda
{
  PageControl2.ActivePageIndex := 0;
  Status_reg := 'i';
  isItChanged();
  clearControls();

  qyVE_.Close;
  qyVE_.Parameters.ParamByName('emenda').Value := txtemenda.Text;
  qyVE_.ExecSQL;
  qyVE_.Open;
  If qyVE_.RecordCount = 0 Then
     lbVereador.Caption :='SEM VEREADOR PARA ESTA EMENDA';

  If qyVE_.RecordCount = 1 Then
     lbVereador.Caption := qyVE_Vereador.Value;

  If qyVE_.RecordCount > 1 Then
  Begin
     qyVE_.First;
     lbVereador.Caption :='';
     while not qyVE_.Eof do
     Begin
        lbVereador.Caption := lbVereador.Caption +'  ::> '+qyVE_Vereador.Value;
        qyVE_.Next;
     End;


  End;

  cbStatus.ItemIndex := 2;
  theOperation := 'i';
  //txtCodigo.readOnly := false;
  Apaga_MetaTotal;
  Apaga_Valor_r;
  Apaga_Valor_a;
  Apaga_aditivavalor;

  PageControl1.ActivePageIndex := 0;
  Botoes;
  tEG_.setFocus;
  tEG_.Text := copy(emenda,1,3);
  tEG_Exit(nil);
  }
end;

procedure TfrmEmendasNew.ColarAditivaClick(Sender: TObject);
begin
//   Unidade,Func,Sfunc,Progr,Ac,Lc,Gpo : string
   loadTable_Unorc('unorc','Unorcd',avcmb_Unorc);
   unoSize := length(trim(qryTable.fieldByName('Unorc').asString));


   avtxtUnorc.Text       := avUnidad;
   avtxtUnorcExit(avtxtUnorc);

   avtxtFuncao.Text      := avFunc;//'99';
   avtxtFuncaoExit(avtxtFuncao);

   avtxtSubFuncao.Text   := avSFunc;//'999';
   avtxtSubFuncaoExit(avtxtSubFuncao);

   avtxPrograma.Text    := avProgr;//'9999';
   avtxProgramaExit(avtxPrograma);

   avtxtAcao.Text        := avAc;//'9999';
   avtxtAcaoExit(avtxtAcao);

   avtxtlocalizacao.Text      := avLc;//'0001';
   avtxtlocalizacaoExit(avtxtlocalizacao);
//   avcbGrupo.ItemIndex := Gpo;
   with dmtData do
        begin
           setComboBox(avGpo, avcbGrupo);
           //setComboBox(fieldByName('Status').asString, cbstatus);
           //setComboBox(fieldByName('Tipo').asString, cbTipo);
        end;

   AvrGrid.SetFocus;
end;



procedure TfrmEmendasNew.rdgGrupoClick(Sender: TObject);
var t : integer;
    textep  : string;

begin
   t := Length(kDescricao.Text);
   textep :=  COPY(kDescricao.Text,1,t-8);
   if (COPY(kDescricao.Text,t-7,t) = '- EP/LOM')then
   begin
       if rdgGrupo.ItemIndex = 0 then kDescricao.Text := COPY(kDescricao.Text,1,t-8)+'- EP';
       if rdgGrupo.ItemIndex = 1 then kDescricao.Text := COPY(kDescricao.Text,1,t-8)+'- EP/LOM';
       if rdgGrupo.ItemIndex = 2 then kDescricao.Text := COPY(kDescricao.Text,1,t-8)+'- EP/C';
       exit;
   end;
   if (COPY(kDescricao.Text,t-5,t) = '- EP/C')then
   begin
       if rdgGrupo.ItemIndex = 0 then kDescricao.Text := COPY(kDescricao.Text,1,t-6)+'- EP';
       if rdgGrupo.ItemIndex = 1 then kDescricao.Text := COPY(kDescricao.Text,1,t-6)+'- EP/LOM';
       if rdgGrupo.ItemIndex = 2 then kDescricao.Text := COPY(kDescricao.Text,1,t-6)+'- EP/C';
       exit;
   end;
   if (COPY(kDescricao.Text,t-3,t) = '- EP')then
   begin
       if rdgGrupo.ItemIndex = 0 then kDescricao.Text := COPY(kDescricao.Text,1,t-4)+'- EP';
       if rdgGrupo.ItemIndex = 1 then kDescricao.Text := COPY(kDescricao.Text,1,t-4)+'- EP/LOM';
       if rdgGrupo.ItemIndex = 2 then kDescricao.Text := COPY(kDescricao.Text,1,t-4)+'- EP/C';
       exit;
   end;
   if rdgGrupo.ItemIndex = 0 then kDescricao.Text := kDescricao.Text+' - EP';
   if rdgGrupo.ItemIndex = 1 then kDescricao.Text := kDescricao.Text+' - EP/LOM';
   if rdgGrupo.ItemIndex = 2 then kDescricao.Text := kDescricao.Text+' - EP/C';
end;
//Unidad,Func,Sfunc,Progr,Ac,Lc : string;

procedure TfrmEmendasNew.DBGridColEnter(Sender: TObject);
var t : integer;
begin
   t := Length(kDescricao.Text);

 PageControl1.Enabled := True;
  isItChanged();
  Apaga_MetaTotal;
  Apaga_Valor_r();
  Apaga_Valor_a();
  Apaga_aditivavalor();

  qyEmendasValor_.Close;
  qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor_.ExecSQL;
  qyEmendasValor_.Open;

  qyEmendasValor02_.Close;
  qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor02_.ExecSQL;
  qyEmendasValor02_.Open;


  keyExit();


  //Valor da Emendas e Saldo;


  ValoresEmendas;

//PageControl2.ActivePageIndex := 0;
  if (COPY(kDescricao.Text,t-7,t) = '- EP/LOM')then  rdgGrupo.ItemIndex := 1;
  if (COPY(kDescricao.Text,t-5,t) = '- EP/C')  then  rdgGrupo.ItemIndex := 2;
  if (COPY(kDescricao.Text,t-3,t) = '- EP')    then  rdgGrupo.ItemIndex := 0;


end;

procedure TfrmEmendasNew.DBGridExit(Sender: TObject);
var t : integer;
begin
   t := Length(kDescricao.Text);

  PageControl1.Enabled := True;
  isItChanged();
  Apaga_MetaTotal;
  Apaga_Valor_r();
  Apaga_Valor_a();
  Apaga_aditivavalor();

  qyEmendasValor_.Close;
  qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor_.ExecSQL;
  qyEmendasValor_.Open;

  qyEmendasValor02_.Close;
  qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor02_.ExecSQL;
  qyEmendasValor02_.Open;


  keyExit();


  //Valor da Emendas e Saldo;


  ValoresEmendas;

//PageControl2.ActivePageIndex := 0;
  if (COPY(kDescricao.Text,t-7,t) = '- EP/LOM')then  rdgGrupo.ItemIndex := 1;
  if (COPY(kDescricao.Text,t-5,t) = '- EP/C')  then  rdgGrupo.ItemIndex := 2;
  if (COPY(kDescricao.Text,t-3,t) = '- EP')    then  rdgGrupo.ItemIndex := 0;

end;

procedure TfrmEmendasNew.ColarModificativaClick(Sender: TObject);
begin
//   Unidade,Func,Sfunc,Progr,Ac,Lc,Gpo : string
   loadTable_Unorc('unorc','Unorcd',avcmb_Unorc);
   unoSize := length(trim(qryTable.fieldByName('Unorc').asString));

   rtxtUnorc.Text       := rcUnidad;
   rtxtUnorcExit(rtxtUnorc);

   rtxtFuncao.Text      := rcFunc;//'99';
   rtxtFuncaoExit(rtxtFuncao);

   rtxtSubFuncao.Text   := rcSFunc;//'999';
   rtxtSubFuncaoExit(rtxtSubFuncao);

   rtxtPrograma.Text    := rcProgr;//'9999';
   rtxtProgramaExit(rtxtPrograma);

   rtxtAcao.Text        := rcAc;//'9999';
   rtxtAcaoExit(rtxtAcao);

   rtxtLocali.Text      := rcLc;//'0001';
   rtxtlocaliExit(rtxtlocali);
//   rcmbGrupo.ItemIndex := Gpo;
   with dmtData do
        begin
           setComboBox(rcGpo, rcmbGrupo);
           //setComboBox(fieldByName('Status').asString, cbstatus);
           //setComboBox(fieldByName('Tipo').asString, cbTipo);
        end;

   rcmbGrupo.OnExit(nil);

   dbgElementoReducao.SetFocus;
end;

end.








