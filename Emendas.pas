unit Emendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids, DBCtrls;

type
  TfrmEmendas = class(TForm)
    Shape2: TShape;
    Label1: TLabel;
    Shape3: TShape;
    SpeedButton1: TSpeedButton;
    txtConsulta: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    txtCodigoConsulta: TEdit;
    Bevel1: TBevel;
    Shape5: TShape;
    btnNew: TSpeedButton;
    btnSave: TSpeedButton;
    btnDelete: TSpeedButton;
    btnCancel: TSpeedButton;
    btnPrint: TSpeedButton;
    Bevel2: TBevel;
    DBGrid: TDBGrid;
    qry: TADOQuery;
    sQry: TDataSource;
    chbAll: TCheckBox;
    btnRefresh: TSpeedButton;
    stp: TADOStoredProc;
    chbAlfa: TCheckBox;
    Bevel3: TBevel;
    txtemenda: TEdit;
    Label7: TLabel;
    cbVotacao: TComboBox;
    Label8: TLabel;
    cbStatus: TComboBox;
    Label2: TLabel;
    cbTipo: TComboBox;
    Label5: TLabel;
    PageControl1: TPageControl;
    TabTexto: TTabSheet;
    TabValor: TTabSheet;
    TabMeta: TTabSheet;
    gbTexto: TGroupBox;
    lbtexto: TLabel;
    MTexto: TMemo;
    gbValor: TGroupBox;
    gbMeta: TGroupBox;
    Label13: TLabel;
    txtUnorc: TEdit;
    cmbUnorc: TComboBox;
    txtFuncao: TEdit;
    Label6: TLabel;
    cmbFuncao: TComboBox;
    Label9: TLabel;
    txtSubFuncao: TEdit;
    cmbSubFuncao: TComboBox;
    Label10: TLabel;
    txtPrograma: TEdit;
    cmbPrograma: TComboBox;
    Label11: TLabel;
    txtAcao: TEdit;
    cmbAcao: TComboBox;
    Label12: TLabel;
    txtLocali: TEdit;
    Label14: TLabel;
    txtMetaFisica: TEdit;
    qryTable: TADOQuery;
    txtProduto: TLabel;
    Bevel4: TBevel;
    qy_meta_: TADOQuery;
    Label15: TLabel;
    rtxtUnorc: TEdit;
    rcmbUnorc: TComboBox;
    Label16: TLabel;
    rtxtFuncao: TEdit;
    rcmbFuncao: TComboBox;
    Label17: TLabel;
    rtxtSubFuncao: TEdit;
    rcmbSubFuncao: TComboBox;
    Label18: TLabel;
    rtxtPrograma: TEdit;
    rcmbPrograma: TComboBox;
    Label19: TLabel;
    rtxtAcao: TEdit;
    rcmbAcao: TComboBox;
    Label20: TLabel;
    rtxtLocali: TEdit;
    dbgElementoReducao: TDBGrid;
    Label21: TLabel;
    Bevel5: TBevel;
    Label22: TLabel;
    qyEmendasValor_: TADOQuery;
    dsEmendasValor: TDataSource;
    Label23: TLabel;
    atxtUnorc: TEdit;
    acmbUnorc: TComboBox;
    Label24: TLabel;
    atxtFuncao: TEdit;
    acmbFuncao: TComboBox;
    Label25: TLabel;
    atxtSubFuncao: TEdit;
    acmbSubFuncao: TComboBox;
    Label26: TLabel;
    atxtPrograma: TEdit;
    Label27: TLabel;
    atxtAcao: TEdit;
    acmbAcao: TComboBox;
    acmbPrograma: TComboBox;
    labels: TLabel;
    rcmbGrupo: TComboBox;
    Bevel6: TBevel;
    qyEmendaCons_: TADOQuery;
    rcmbLocalizacao: TComboBox;
    Label28: TLabel;
    atxtLocali: TEdit;
    acmbLocalizacao: TComboBox;
    Label29: TLabel;
    acmbGrupo: TComboBox;
    dbgElementoAcrescimo: TDBGrid;
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
    Label45: TLabel;
    Label46: TLabel;
    cmbEsfera: TComboBox;
    Label47: TLabel;
    ktRegional: TEdit;
    Label48: TLabel;
    ktMetafisica: TEdit;
    Button1: TButton;
    qyLocali_: TADOQuery;
    dsqyLocali_: TDataSource;
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
    Bevel9: TBevel;
    txtProd2: TLabel;
    btVereadores: TButton;
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
    qyEmendaCons_Codigo: TAutoIncField;
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
    Button2: TButton;
    Button3: TButton;
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
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure clearControls();
    procedure keyExit();
    procedure DBGridCellClick(Column: TColumn);
    procedure txtCodigoConsultaExit(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure txtConsultaExit(Sender: TObject);
    procedure txtNomeChange(Sender: TObject);
    procedure isItChanged();
    procedure save();
    procedure DBGridEnter(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
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
    procedure Button3Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
    seleto : string;
    Valor : Currency;
    Status_reg : String;
    Permite    : String;
    Statusvalor : String;
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

  end;

var
  frmEmendas   : TfrmEmendas;
  theOperation : char;
  itsChanged   : boolean; 
  unoSize : integer;


implementation

uses data, acaoList, seaLocali, VereadoresEmendas, HWarning;

{$R *.dfm}


procedure TfrmEmendas.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmEmendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If key = #13 then
    Begin
       Perform(WM_NEXTDLGCTL,0,0);
       Key := #0;
    End; 
end;


procedure TfrmEmendas.FormActivate(Sender: TObject);
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
end;

procedure TfrmEmendas.clearControls;
begin
  theOperation := '*';
  //txtCodigo.text := '';
  txtCodigoConsulta.text := '';
  txtConsulta.text := '';
  txtemenda.Clear;
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

procedure TfrmEmendas.keyExit;
begin
  clearControls();
  theOperation := 'a';
  Permite := 's';
  with qry do
  begin
      txtemenda.text := fieldByName('numemenda').asString;
      //txtPartido.text := fieldByName('Partido_Sigla').asString;
      //txtCodigo.text := fieldByName('codigo').asString;
      //txtComentario.Lines.Add(fieldByName('comentario').asString);

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
        qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
        qyEmendasValor_.ExecSQL;
        qyEmendasValor_.Open;


        //////////////////////////////////////////////

        qyLocali_.Close;
        qyLocali_.Parameters.ParamByName('emenda').Value := txtemenda.Text;
        qyLocali_.ExecSQL;
        qyLocali_.Open;


        loadTable_x('unorc','Unorcd',kcunorc);
        unoSize := length(trim(qryTable.fieldByName('Unorc').asString));


        loadTable_x('funcao','funcaod',kcfuncao);
        loadTable_x('subfuncao','subfuncaod',kcsubfuncao);
        loadTable_x('programa','programad',kcprograma);
        loadTable_xacao('codigo','descricao',kcacao);

        kDescricao.Text       := qyLocali_descricao.Value;

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
        qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
        qyEmendasValor02_.ExecSQL;
        qyEmendasValor02_.Open;

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
        qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
        qyEmendasValor_.ExecSQL;
        qyEmendasValor_.Open;

        qyEmendasValor02_.Close;
        qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
        qyEmendasValor02_.ExecSQL;
        qyEmendasValor02_.Open;

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

procedure TfrmEmendas.DBGridCellClick(Column: TColumn);
begin
  PageControl1.Enabled := True;

  btnNew.Enabled    := true;
  btnSave.Enabled   := true;
  btnCancel.Enabled := true;
  btnDelete.Enabled := true;

  Status_reg := 'a';
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

  qyEmendas_Cons_.Close;
  qyEmendas_Cons_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
  qyEmendas_Cons_.Open;

  IF qyEmendas_Cons_Processado.Value = 'S' THEN
  BEGIN
     PageControl1.Enabled := False;
     btnNew.Enabled    := False;
     btnSave.Enabled   := False;
     btnCancel.Enabled := False;
     btnDelete.Enabled := False;

  END;




end;

procedure TfrmEmendas.txtCodigoConsultaExit(Sender: TObject);
begin
  if trim(txtCodigoConsulta.text) = '' then exit;
  if not qry.Locate('codigo',txtCodigoConsulta.text,[]) then begin
     showMessage('Código da Ação Inválido');
     txtCodigoConsulta.setFocus;
     exit;
  end;
  keyExit();
end;

procedure TfrmEmendas.btnRefreshClick(Sender: TObject);
begin
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM emendas ORDER BY numemenda');
    open;
  end;
end;

procedure TfrmEmendas.txtConsultaExit(Sender: TObject);
begin
  if trim(txtConsulta.text) = '' then exit;
  with qry, qry.SQL do begin
    close;
    clear;
    if chbAll.checked then
       add('SELECT * FROM emendas WHERE numemenda LIKE(''%'+txtConsulta.text+'%'')')
    else add('SELECT * FROM emendas WHERE numemenda LIKE('''+txtConsulta.text+'%'')');
    open;
    if qry.eof then begin
       showMessage('Consulta Inválida');
       exit;
    end;
  end;
  keyExit();
end;

procedure TfrmEmendas.txtNomeChange(Sender: TObject);
begin
  itsChanged := true;
end;

procedure TfrmEmendas.isItChanged;
begin
  if theOperation = '*' then exit;
  if itsChanged then
     if application.messageBox('Você iniciou uma edição no registro atual. Deseja salvar as alterações ?','',MB_ICONQUESTION+MB_YESNO) = IDYES then save();
  end;


procedure TfrmEmendas.save;
Var
  i : integer;
begin
   if (qryProcessado.Value = 'S') and (Status_reg = 'a') then
   begin
      ShowMessage('Atenção, essa emenda não pode ser mais alterada!!!!');
      exit;
   end;

   if application.messageBox('Salvar alterações ?','Salvar',
      MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   if Status_reg = 'i' then qry.Insert;
   if Status_reg = 'a' then qry.Edit;

 {  qryNome.Value          := txtNome.Text;
   qryPartido_Sigla.Value := txtPartido.Text;
   qryCondicao.Value      := copy(cmbTipo.text,1,1);
   qryComentario.Value    := txtComentario.Lines.Text;
   qryDtCadastro.Value    := Date;
   qry.Post;
  }
  qryNumEmenda.Value := txtemenda.Text;
  {
  qryVotacao.Value   := copy(cbVotacao.text,1,1);
  qryStatus.Value    := copy(cbStatus.text,1,1);
  qryTipo.Value      := copy(cbTipo.text,1,1);
  }
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
     qyLocali_metaFisica.Value := StrToInt(ktMetafisica.Text);


     {
     qryaUnorc.Value      := atxtUnorc.Text;
     qryaFuncao.Value     := atxtFuncao.Text;
     qryaSubFuncao.Value  := atxtSubFuncao.Text;
     qryaPrograma.Value   := atxtPrograma.Text;
     qryaAcao.Value       := atxtAcao.Text;
     qryaLocali.Value     := atxtLocali.Text;
     qryaGrupo.Value      := copy(acmbGrupo.text,1,2);
     }
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
     qryMetaFisica.Value := StrToInt(txtMetaFisica.Text);
     qryProduto.Value    := txtProduto.Caption;
  end;

  qryVotacao.Value   := copy(cbVotacao.text,1,1);
  qryStatus.Value    := copy(cbStatus.text,1,1);
  qryTipo.Value      := copy(cbTipo.text,1,1);

  if (qryProcessado.Value <> 'S') and ((copy(cbStatus.Text,1,1)='1') or (copy(cbStatus.Text,1,1)='2')) then
      Conversor();

  qry.Post;


  If (copy(cbTipo.text,1,1) = '3') then qyLocali_.Post;


  Status_reg :='';
  clearControls();

  {
  if (copy(txtCodigo.text,1,1) = '0') OR
     (copy(txtCodigo.text,1,1) = '1') OR
     (copy(txtCodigo.text,1,1) = '2') OR
     (copy(txtCodigo.text,1,1) = '9') then
  else begin
     showMessage('Código da Ação Inválido');
     exit;
  end;

  if trim(txtNome.text) = '' then begin
     showMessage('Falta preencher campo descrição');
     exit;
  end;

  if (copy(txtCodigo.text,1,1) = '1') then
     if (copy(cmbTipo.text,1,1) = 'P') then
     else begin
        showMessage('Código da Ação Inválido para Projetos');
        exit;
     end;

  if (copy(txtCodigo.text,1,1) = '2') then
     if (copy(cmbTipo.text,1,1) = 'A') then
     else begin
        showMessage('Código da Ação Inválido para Atividade');
        exit;
     end;


  if (copy(cmbTipo.text,1,1) = 'P') OR
     (copy(cmbTipo.text,1,1) = 'A') OR
     (copy(cmbTipo.text,1,1) = 'E') OR
     (copy(cmbTipo.text,1,1) = 'O') then
  else begin
     showMessage('Tipo da Ação Inválido');
     exit;
  end;

  if trim(txtProduto.text) = '' then
     if trim(txtUnidade.text) = '' then
     else begin
       showMessage('Falta Preencher Campo Produto da Ação');
       exit;
     end
  else
     if trim(txtUnidade.text) = '' then begin
       showMessage('Falta Preencher Campo Unidade de Medida do Produto da Ação');
       exit;
     end;

  with stp, stp.parameters do begin
    paramByName('@p_operation').value := theOperation;
    paramByName('@p_codigo').value := txtCodigo.text;
    paramByName('@p_descricao').value := txtDescricao.text;
    paramByName('@p_tipo').value := copy(cmbTipo.text,1,1);
    paramByName('@p_produto').value := txtProduto.text;
    paramByName('@p_unidade').value := txtUnidade.text;
    execProc;
    if paramByName('@return_value').value = 0 then showMessage('Alteração Rejeitada');

  end;
  with qry do begin
    close;
    open;
    if theOperation <> 'e' then Locate('codigo',txtCodigo.text,[]);
  end;

  clearControls();
  }
end;

procedure TfrmEmendas.DBGridEnter(Sender: TObject);
begin
  isItChanged();
end;

procedure TfrmEmendas.btnNewClick(Sender: TObject);
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

procedure TfrmEmendas.btnSaveClick(Sender: TObject);
begin
  save();
  Apaga_MetaTotal;
  PageControl1.ActivePageIndex := 0;
  Apaga_aditivavalor;

  qyEmendasValor_.Close;
  qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor_.ExecSQL;
  qyEmendasValor_.Open;

  qyEmendasValor02_.Close;
  qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor02_.ExecSQL;
  qyEmendasValor02_.Open;

end;

procedure TfrmEmendas.btnCancelClick(Sender: TObject);
begin
  {
   If PageControl1.ActivePage = tabAditivaValor then
   begin
      if application.messageBox('Apaga os Elementos do Acrescimo da Aditiva de Valor?','Confirmação de Exclusão',
      MB_ICONQUESTION+MB_YESNO) = IDyes then
      begin
         Deleta_Emendas_Valor;
         Deleta_Emendas_Locali;
      end;
   end;
  }

  clearControls;
  Apaga_MetaTotal;
  Apaga_Valor_r();
  Apaga_Valor_a();
  Apaga_aditivavalor();
  PageControl1.ActivePageIndex := 0;

  qyEmendasValor_.Close;
  qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor_.ExecSQL;
  qyEmendasValor_.Open;

  qyEmendasValor02_.Close;
  qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := '0';
  qyEmendasValor02_.ExecSQL;
  qyEmendasValor02_.Open;
end;

procedure TfrmEmendas.btnDeleteClick(Sender: TObject);
begin
   if Permite <> 's' then
   Begin
      ShowMessage('Registro não foi selecionado. Selecione Registro!');
      Exit;
   End;


   
   if application.messageBox('Você tem certeza que deseja excluir o registro corrente?','Confirmação de Exclusão',
      MB_ICONQUESTION+MB_YESNO) = IDNO then
   Begin
      Permite := 'n';
      clearControls;
      exit;
   end
   else
     begin
        Permite := 'n';
        qry.Delete;

        Deleta_Emendas_Valor;
        if PageControl1.ActivePage = tabAditivaValor then
           Deleta_Emendas_Locali;

        qyVE_.Close;
        qyVE_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
        qyVE_.ExecSQL;
        qyVE_.Open;
        qyVE_.delete;


           
        btnCancelClick(nil);
        Apaga_MetaTotal;
        Apaga_aditivavalor;
        PageControl1.ActivePageIndex := 0;
     end;

end;

procedure TfrmEmendas.btnPrintClick(Sender: TObject);
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


procedure TfrmEmendas.LerCombo;
begin
   // Votação
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



procedure TfrmEmendas.txtUnorcChange(Sender: TObject);
begin
   itsChanged := true;

end;


procedure TfrmEmendas.txtFuncaoChange(Sender: TObject);
begin
   itsChanged := true;

end;

procedure TfrmEmendas.txtSubFuncaoChange(Sender: TObject);
begin
   itsChanged := true;


end;

procedure TfrmEmendas.txtProgramaChange(Sender: TObject);
begin
   itsChanged := true;

end;

procedure TfrmEmendas.txtAcaoChange(Sender: TObject);
begin
   itsChanged := true;

end;

procedure TfrmEmendas.cmbUnorcChange(Sender: TObject);
begin
   itsChanged := true;
   txtFuncao.Clear;
   cmbFuncao.Clear;
   loadTable_Funcao('Funcao','Funcaod',cmbFuncao);
end;


procedure TfrmEmendas.cmbFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   txtSubFuncao.Clear;
   cmbSubFuncao.Clear;
   loadTable_SubFuncao('SubFuncao','SubFuncaod',cmbSubFuncao);
end;

procedure TfrmEmendas.cmbSubFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   txtPrograma.Clear;
   cmbPrograma.Clear;
   loadTable_Programa('Programa','Programad',cmbPrograma);
end;

procedure TfrmEmendas.cmbProgramaChange(Sender: TObject);
begin
   itsChanged := true;
   txtAcao.Clear;
   cmbAcao.Clear;
   loadTable_Acao('Acao','AcaoD',cmbAcao);
end;

procedure TfrmEmendas.cmbAcaoChange(Sender: TObject);
begin
   itsChanged := true;

end;

procedure TfrmEmendas.cmbUnorcClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtUnorc.text := copy(text,1,unoSize);
   end;

end;

procedure TfrmEmendas.cmbFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtFuncao.text := copy(text,1,2);
   end;
end;

procedure TfrmEmendas.cmbSubFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtsubFuncao.text := copy(text,1,3);
   end;
end;

procedure TfrmEmendas.cmbProgramaClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtPrograma.text := copy(text,1,4);
   end;
end;

procedure TfrmEmendas.cmbAcaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtAcao.text := copy(text,1,4);
   end;
end;

procedure TfrmEmendas.txtUnorcExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    txtFuncao.Clear;
    cmbFuncao.Clear;

    abort;
  end;



end;


procedure TfrmEmendas.txtFuncaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    txtSubFuncao.Clear;
    cmbSubFuncao.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.txtSubFuncaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    txtPrograma.Clear;
    cmbPrograma.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.txtProgramaExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    txtAcao.Clear;
    cmbAcao.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.txtAcaoExit(Sender: TObject);
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
         Localizacao(); // Encontra a localizacão
         exit;
      end;
    end;
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

procedure TfrmEmendas.loadTable(theTable: string; theCombo: tComboBox);
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


procedure TfrmEmendas.loadTable_x(TheCamp:String; TheDesc: string; theCombo: tComboBox);
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

procedure TfrmEmendas.loadTable_xacao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
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

procedure TfrmEmendas.loadTable_Unorc(TheCamp:String; TheDesc: string; theCombo: tComboBox);
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

procedure TfrmEmendas.loadTable_Funcao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
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

procedure TfrmEmendas.loadTable_SubFuncao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
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

procedure TfrmEmendas.loadTable_Programa(TheCamp:String; TheDesc: string; theCombo: tComboBox);
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

procedure TfrmEmendas.loadTable_Acao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
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

procedure TfrmEmendas.loadTable_Localizacao(TheCamp:String; TheDesc: string; theCombo: tComboBox);
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




procedure TfrmEmendas.Localizacao;
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

procedure TfrmEmendas.rLocalizacao;
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

procedure TfrmEmendas.aLocalizacao;
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


procedure TfrmEmendas.cbTipoExit(Sender: TObject);
begin
   Ativa_Memo();
end;

procedure TfrmEmendas.Ativa_Memo;
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
      gbTexto.Enabled := False;
      gbValor.Enabled := True;
      gbAditivavalor.Enabled := False;
      gbMeta.Enabled  := False;

      loadTable_Unorc('unorc','Unorcd',rcmbUnorc);
      loadTable_Unorc('unorc','Unorcd',AcmbUnorc);

      unoSize := length(trim(qryTable.fieldByName('Unorc').asString));

      rtxtUnorc.SetFocus;
      {
      qyEmendasValor_.Close;
      qyEmendasValor_.sql.Clear;
      qyEmendasValor_.sql.Add('select * from emendas_valor WHERE EMENDA = :EMENDA');
      qyEmendasValor_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
      qyEmendasValor_.ExecSQL;
      qyEmendasValor_.Open;
      }

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
      // loadTable('unorc',cmbUnorc);
      {loadTable('funcao',cmbFuncao);
      loadTable('subFuncao',cmbsubFuncao);
      loadTable('programa',cmbPrograma);
      loadTable('acao',cmbAcao);}

      Apaga_MetaTotal;

      txtUnorc.SetFocus;
   end;
end;


procedure TfrmEmendas.Apaga_Txt;
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
   txtConsulta.Clear;
   txtCodigoConsulta.Clear;
end;

procedure TfrmEmendas.Apaga_Combos;
begin
   {
   cmbUnorc.Text       := '';
   cmbFuncao.Text      := '';
   cmbSubFuncao.Text   := '';
   cmbPrograma.Text    := '';
   cmbAcao.Text        := '';
   cmbEsfera.Text      := '';
   }

   cmbUnorc.ItemIndex := -1;
   cmbFuncao.ItemIndex := -1;
   cmbSubFuncao.ItemIndex := -1;
   cmbPrograma.ItemIndex := -1;
   cmbAcao.ItemIndex := -1;
   //cmbEsfera.ItemIndex := -1;
end;

procedure TfrmEmendas.Apaga_MetaTotal;
begin
   Apaga_Txt;
   Apaga_Combos;
end;

procedure TfrmEmendas.rtxtUnorcChange(Sender: TObject);
begin
    itsChanged := true;
end;

procedure TfrmEmendas.rtxtFuncaoChange(Sender: TObject);
begin
    itsChanged := true;
end;

procedure TfrmEmendas.rtxtSubFuncaoChange(Sender: TObject);
begin
    itsChanged := true;
end;

procedure TfrmEmendas.rtxtProgramaChange(Sender: TObject);
begin
    itsChanged := true;
end;

procedure TfrmEmendas.rtxtAcaoChange(Sender: TObject);
begin
    itsChanged := true;
end;

procedure TfrmEmendas.rcmbUnorcChange(Sender: TObject);
begin
   itsChanged := true;
   rtxtFuncao.Clear;
   rcmbFuncao.Clear;
   loadTable_Funcao('Funcao','Funcaod',rcmbFuncao);
end;

procedure TfrmEmendas.rcmbFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   rtxtSubFuncao.Clear;
   rcmbSubFuncao.Clear;
   loadTable_SubFuncao('SubFuncao','SubFuncaod',rcmbSubFuncao);
end;

procedure TfrmEmendas.rcmbSubFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   rtxtPrograma.Clear;
   rcmbPrograma.Clear;
   loadTable_Programa('Programa','Programad',rcmbPrograma);
end;

procedure TfrmEmendas.rcmbProgramaChange(Sender: TObject);
begin
   itsChanged := true;
   rtxtAcao.Clear;
   rcmbAcao.Clear;
   loadTable_Acao('Acao','AcaoD',rcmbAcao);
end;

procedure TfrmEmendas.rcmbAcaoChange(Sender: TObject);
begin
    itsChanged := true;
    rtxtLocali.Clear;
    rcmbLocalizacao.Clear;
    loadTable_Localizacao('Localis','Descricao',rcmbLocalizacao);
end;

procedure TfrmEmendas.rcmbLocalizacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;


procedure TfrmEmendas.rtxtUnorcExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    rtxtFuncao.Clear;
    rcmbFuncao.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.rtxtFuncaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    rtxtSubFuncao.Clear;
    rcmbSubFuncao.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.rtxtSubFuncaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    rtxtPrograma.Clear;
    rcmbPrograma.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.rtxtProgramaExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    rtxtAcao.Clear;
    rcmbAcao.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.rtxtAcaoExit(Sender: TObject);
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
         //rLocalizacao(); // Encontra a localizacão

         Statusvalor := 'r';
         rtxtLocali.Clear;
         rcmbLocalizacao.Clear;
         loadTable_Localizacao('localis','Descricao',rcmbLocalizacao);
         exit;
      end;
    end;
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmEmendas.rtxtLocaliExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;



procedure TfrmEmendas.rcmbUnorcClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     rtxtUnorc.text := copy(text,1,unoSize);
     Statusvalor := 'r';
   end;

end;

procedure TfrmEmendas.rcmbFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     rtxtFuncao.text := copy(text,1,2);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.rcmbSubFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     rtxtsubFuncao.text := copy(text,1,3);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.rcmbProgramaClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     rtxtPrograma.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.rcmbAcaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     rtxtAcao.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.rcmbLocalizacaoClick(Sender: TObject);
begin
    with (sender as tComboBox) do begin
     rtxtLocali.text := copy(text,1,4);
     Statusvalor := 'r';
    end;
end;

procedure TfrmEmendas.dbgElementoReducaoKeyPress(Sender: TObject; var Key: Char);
begin
    If key = #13 then
    Begin
       Perform(WM_NEXTDLGCTL,0,0);
       Key := #0;
    End;
end;

procedure TfrmEmendas.atxtUnorcChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.atxtFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.atxtSubFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.atxtProgramaChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.atxtAcaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.atxtLocaliChange(Sender: TObject);
begin
   itsChanged := true;
end;


procedure TfrmEmendas.txtemendaExit(Sender: TObject);
begin

   If Trim(txtemenda.Text) ='' then exit;

   {qry.Close;
   qry.SQL.Clear;
   qry.SQL.Add('SELECT * FROM EMENDAS');
   qry.SQL.Add('where numemenda = :Emenda');
   qry.SQL.Add('ORDER BY NUMEMENDA');
   qry.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
   qry.ExecSQL;
   qry.Open;}



   qyEmendaCons_.Close;
   qyEmendaCons_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
   qyEmendaCons_.ExecSQL;
   qyEmendaCons_.Open;

   //if application.messageBox('Você iniciou uma edição no registro atual. Deseja salvar as alterações ?','',MB_ICONQUESTION+MB_YESNO) = IDYES then save();

   If qyEmendaCons_.RecordCount > 0 Then
   Begin
      seleto := 'S';


      if application.messageBox(pCHAR('EMENDA: '+txtemenda.Text+' JÁ ESTÁ CADASTRADA!'+#13+#13+
                                'DESEJA CRIAR OUTRA COM O MESMO NÚMERO?'),'CONSULTA',
         MB_ICONQUESTION+MB_YESNO) = IDNO then
      BEGIN
         txtemenda.SetFocus;
         Exit;
      END;
   End;

end;


procedure TfrmEmendas.rtxtLocaliChange(Sender: TObject);
begin
   itsChanged := true;
end;






procedure TfrmEmendas.rcmbGrupoExit(Sender: TObject);
begin
   If Trim(rcmbGrupo.Text) = '' then exit;
   //Grupo_reducao;
   qyEmendasValor_.Close;
   qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
   qyEmendasValor_.ExecSQL;
   qyEmendasValor_.Open;
end;

procedure TfrmEmendas.atxtUnorcExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    atxtFuncao.Clear;
    acmbFuncao.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.atxtFuncaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    atxtSubFuncao.Clear;
    acmbSubFuncao.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.atxtSubFuncaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    atxtPrograma.Clear;
    acmbPrograma.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.atxtProgramaExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    atxtAcao.Clear;
    acmbAcao.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.atxtAcaoExit(Sender: TObject);
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
         //rLocalizacao(); // Encontra a localizacão

         Statusvalor := 'a';
         atxtLocali.Clear;
         acmbLocalizacao.Clear;
         loadTable_Localizacao('localis','Descricao',acmbLocalizacao);
         exit;
      end;
    end;
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;


procedure TfrmEmendas.atxtLocaliExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmEmendas.acmbUnorcChange(Sender: TObject);
begin
   itsChanged := true;
   atxtFuncao.Clear;
   acmbFuncao.Clear;
   loadTable_Funcao('Funcao','Funcaod',acmbFuncao);
end;

procedure TfrmEmendas.acmbFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   atxtSubFuncao.Clear;
   acmbSubFuncao.Clear;
   loadTable_SubFuncao('SubFuncao','SubFuncaod',acmbSubFuncao);
end;

procedure TfrmEmendas.acmbSubFuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   atxtPrograma.Clear;
   acmbPrograma.Clear;
   loadTable_Programa('Programa','Programad',acmbPrograma);
end;

procedure TfrmEmendas.acmbProgramaChange(Sender: TObject);
begin
   itsChanged := true;
   atxtAcao.Clear;
   acmbAcao.Clear;
   loadTable_Acao('Acao','AcaoD',acmbAcao);
end;

procedure TfrmEmendas.acmbAcaoChange(Sender: TObject);
begin
   itsChanged := true;
   atxtLocali.Clear;
   acmbLocalizacao.Clear;
   loadTable_Localizacao('Localis','Descricao',acmbLocalizacao);
end;

procedure TfrmEmendas.acmbLocalizacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.acmbUnorcClick(Sender: TObject);
begin
    with (sender as tComboBox) do begin
     atxtUnorc.text := copy(text,1,unoSize);
     Statusvalor := 'a';
   end;

end;

procedure TfrmEmendas.acmbFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     atxtFuncao.text := copy(text,1,2);
     Statusvalor := 'a';
   end;
end;

procedure TfrmEmendas.acmbSubFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     atxtsubFuncao.text := copy(text,1,3);
     Statusvalor := 'a';
   end;
end;

procedure TfrmEmendas.acmbProgramaClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     atxtPrograma.text := copy(text,1,4);
     Statusvalor := 'a';
   end;
end;

procedure TfrmEmendas.acmbAcaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     atxtAcao.text := copy(text,1,4);
     Statusvalor := 'a';
   end;
end;

procedure TfrmEmendas.acmbLocalizacaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     atxtLocali.text := copy(text,1,4);
     Statusvalor := 'a';
   end;
end;

procedure TfrmEmendas.acmbGrupoExit(Sender: TObject);
begin
   If Trim(acmbGrupo.Text) = '' then exit;
   If Trim(rcmbGrupo.Text) = '' then exit;
   //Grupo_reducao;
   qyEmendasValor02_.Close;
   qyEmendasValor02_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
   qyEmendasValor02_.ExecSQL;
   qyEmendasValor02_.Open;
end;

procedure TfrmEmendas.Grupo_reducao;
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

procedure TfrmEmendas.Grupo_acrescimo;
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

procedure TfrmEmendas.dbgElementoReducaoColExit(Sender: TObject);

begin
   if dsEmendasValor.State in [dsbrowse]then qyEmendasValor_.edit;

   if dbgElementoReducao.SelectedField.FieldName = 'relemento' then
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
       qyElr_.ExecSQL;
       qyElr_.Open;                                      

       if qyElr_.RecordCount = 0 then
       begin
          ShowMessage('ELEMENTO NÃO EXISTE PARA ESTA DOTAÇÃO ORÇAMENTÁRIA');
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


procedure TfrmEmendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action     := caFree;
   frmEmendas := nil;
end;

procedure TfrmEmendas.dbgElementoReducaoExit(Sender: TObject);
begin
   //if dbgElementoReducao.SelectedField.FieldName = 'rValor' then Valor := qyEmendasValor_rValor.Value;
end;

procedure TfrmEmendas.qyEmendasValor_BeforePost(DataSet: TDataSet);
begin
  Try
   if qyEmendasValor_.FieldByName('rvalor').AsFloat < 1000 then
      Begin
         ShowMessage('Atenção o valor não pode ser inferior a R$ 1.000');
         Abort;
         exit;
      End;
  except
         ShowMessage('Atenção o valor não pode ser inferior a R$ 1.000');
         Abort;
         exit;
  end;


end;

procedure TfrmEmendas.dbgElementoAcrescimoColExit(Sender: TObject);
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
          ShowMessage('ELEMENTO NÃO EXISTE PARA ESTA DOTAÇÃO ORÇAMENTÁRIA');
          //qyEmendasValor02_.Cancel;
          EXIT;
       end;
   End;

   {
   if dbgElementoAcrescimo.SelectedField.FieldName = 'aelemento' then
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
       qyEla_.SQL.Add('AND   ELDESPESA = '+qyEmendasValor02_aelemento.Value);
       qyEla_.ExecSQL;
       qyEla_.Open;

       if qyEla_.RecordCount = 0 then
       begin
          ShowMessage('ELEMENTO NÃO EXISTE PARA ESTA DOTAÇÃO ORÇAMENTÁRIA');
          //qyEmendasValor02_.Cancel;
          EXIT;
       end;
   End;
   }
   qyEmendasValor02_Status.Value := 'a';
   qyEmendasValor02_Emenda.Value := txtemenda.Text;

   {
   if dbgElementoAcrescimo.SelectedField.FieldName = 'aValor' then
   Begin


   end;
   }
end;

procedure TfrmEmendas.qyEmendasValor02_BeforePost(DataSet: TDataSet);
begin
   Try
   if qyEmendasValor02_.FieldByName('avalor').AsFloat < 1000 then
      Begin
         ShowMessage('Atenção o valor não pode ser inferior a R$ 1.000');
         Abort;
         exit;
      End;
  except
         ShowMessage('Atenção o valor não pode ser inferior a R$ 1.000');
         Abort;
         exit;
  end;

end;

procedure TfrmEmendas.dbgElementoAcrescimoKeyPress(Sender: TObject;
  var Key: Char);
begin
   If key = #13 then
   begin
      Perform(WM_NEXTDLGCTL,0,0);
      key := #0;
   end;
end;

procedure TfrmEmendas.Apaga_Valor_r;
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

procedure TfrmEmendas.Apaga_Valor_a;
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

procedure TfrmEmendas.avtxtUnorcChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.avtxtfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.avtxtsubfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.avtxprogramaChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.avtxtacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.avtxtlocalizacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.avtxtUnorcExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    avtxtfuncao.Clear;
    avcmb_funcao.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.avtxtfuncaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    avtxtsubfuncao.Clear;
    avcmb_SubFuncao.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.avtxtsubfuncaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    avtxprograma.Clear;
    avcmb_programa.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.avtxprogramaExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;

    avtxtacao.Clear;
    avcmb_Acao.Clear;

    abort;
  end;
end;

procedure TfrmEmendas.avtxtacaoExit(Sender: TObject);
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
         //rLocalizacao(); // Encontra a localizacão

         Statusvalor := 'r';
         avtxtlocalizacao.Clear;
         avcmb_localizacao.Clear;
         loadTable_Localizacao('localis','Descricao',avcmb_localizacao);
         exit;
      end;
    end;
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;

end;

procedure TfrmEmendas.avtxtlocalizacaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmEmendas.avcmb_UnorcChange(Sender: TObject);
begin
   itsChanged := true;
   avtxtfuncao.Clear;
   avcmb_funcao.Clear;
   loadTable_Funcao('Funcao','Funcaod',avcmb_funcao);
end;

procedure TfrmEmendas.avcmb_funcaoChange(Sender: TObject);
begin
   itsChanged := true;
   avtxtsubfuncao.Clear;
   avcmb_subfuncao.Clear;
   loadTable_SubFuncao('SubFuncao','SubFuncaod',avcmb_SubFuncao);
end;

procedure TfrmEmendas.avcmb_subfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
   avtxprograma.Clear;
   avcmb_programa.Clear;
   loadTable_Programa('Programa','Programad',avcmb_programa);
end;

procedure TfrmEmendas.avcmb_programaChange(Sender: TObject);
begin
   itsChanged := true;
   avtxtacao.Clear;
   avcmb_Acao.Clear;
   loadTable_Acao('Acao','AcaoD',avcmb_acao);
end;

procedure TfrmEmendas.avcmb_acaoChange(Sender: TObject);
begin
   itsChanged := true;
   avtxtlocalizacao.Clear;
   avcmb_localizacao.Clear;
   loadTable_Localizacao('Localis','Descricao',avcmb_localizacao);
end;

procedure TfrmEmendas.avcmb_localizacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.avcmb_UnorcClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     avtxtUnorc.text := copy(text,1,unoSize);
     Statusvalor := 'r';
   end;

end;

procedure TfrmEmendas.avcmb_funcaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     avtxtfuncao.text := copy(text,1,2);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.avcmb_subfuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     avtxtsubfuncao.text := copy(text,1,3);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.avcmb_programaClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     avtxprograma.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.avcmb_acaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     avtxtacao.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.avcmb_localizacaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     avtxtlocalizacao.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.ktunorcChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.ktfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.ktsubfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.ktprogramaChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.ktacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.ktlocalizacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.ktunorcExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmEmendas.ktfuncaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;

end;

procedure TfrmEmendas.ktsubfuncaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmEmendas.ktprogramaExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;

end;

procedure TfrmEmendas.ktacaoExit(Sender: TObject);
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
         //rLocalizacao(); // Encontra a localizacão
         exit;
      end;
    end;
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmEmendas.kcunorcChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.kcfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.kcsubfuncaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.kcprogramaChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.kcacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.kclocalizacaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmEmendas.kcunorcClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     ktunorc.text := copy(text,1,unoSize);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.kcfuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     ktfuncao.text := copy(text,1,2);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.kcsubfuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     ktsubfuncao.text := copy(text,1,3);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.kcprogramaClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     ktprograma.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.kcacaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     ktacao.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.kclocalizacaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     ktlocalizacao.text := copy(text,1,4);
     Statusvalor := 'r';
   end;
end;

procedure TfrmEmendas.Button1Click(Sender: TObject);
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
          ShowMessage('Dados para Programa e Ação não foram encontrados.'+#13+
                      'Informe ação e Programa corretamente!!!');
          Exit;
       End;

       frmSeaLocali.ShowModal;
   Finally
       frmSeaLocali.Free;
   End;

end;

procedure TfrmEmendas.AvrGridKeyPress(Sender: TObject; var Key: Char);
begin
   If key = #13 then
    Begin
       Perform(WM_NEXTDLGCTL,0,0);
       Key := #0;
    End;
end;

procedure TfrmEmendas.AvrGridColExit(Sender: TObject);
begin
   if dsEmendasValor.State in [dsbrowse] then qyEmendasValor_.Edit;

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
          ShowMessage('ELEMENTO NÃO EXISTE PARA ESTA DOTAÇÃO ORÇAMENTÁRIA');
          qyEmendasValor_.Cancel;
          EXIT;
       end;
   End;

   qyEmendasValor_Status.Value := 'r';
   qyEmendasValor_Emenda.Value := txtemenda.Text;

   if AvrGrid.SelectedField.FieldName = 'rValor' then
   Begin

     // qyEmendasValor_.Post;
   end;
end;

procedure TfrmEmendas.avcbGrupoExit(Sender: TObject);
begin
   If Trim(avcbGrupo.Text) = '' then exit;
   //Grupo_reducao;
   qyEmendasValor_.Close;
   qyEmendasValor_.Parameters.ParamByName('EMENDA').Value := txtemenda.Text;
   qyEmendasValor_.ExecSQL;
   qyEmendasValor_.Open;
end;

procedure TfrmEmendas.AvcGridColExit(Sender: TObject);
begin
   if dsEmendasValor02_.State in [dsbrowse] then qyEmendasValor02_.Edit;

   qyEmendasValor02_Status.Value := 'a';
   qyEmendasValor02_Emenda.Value := txtemenda.Text;

end;



procedure TfrmEmendas.AvcGridKeyPress(Sender: TObject; var Key: Char);
begin
   If key = #13 then
    Begin
       Perform(WM_NEXTDLGCTL,0,0);
       Key := #0;
    End;
end;

procedure TfrmEmendas.Apaga_aditivavalor;
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
end;

procedure TfrmEmendas.Deleta_Emendas_Valor;
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


procedure TfrmEmendas.Deleta_Emendas_Locali;
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

procedure TfrmEmendas.btVereadoresClick(Sender: TObject);
begin
   Try
       If FrmVereadoresEmendas = nil then
          FrmVereadoresEmendas := TFrmVereadoresEmendas.Create(Self);

       If Trim(txtemenda.Text) = '' then
       Begin
          ShowMessage('Informe o número da Emenda!!!');
          txtemenda.SetFocus;
          exit;
       end;

       FrmVereadoresEmendas.NumEmenda := txtemenda.Text;

       qyVE_.Close;
       qyVE_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
       qyVE_.ExecSQL;
       qyVE_.Open;

       FrmVereadoresEmendas.ShowModal;
   Finally
       FrmVereadoresEmendas.Free;
   End;
end;

procedure TfrmEmendas.FormCreate(Sender: TObject);
begin
   If qyEmendaCons_.Active = False then qyEmendaCons_.Open;
   If qry.Active = False           then qry.Open;
end;

procedure TfrmEmendas.Button2Click(Sender: TObject);
begin
   if trim(ktprograma.Text) = '' then
   Begin
      ShowMessage('Informe o Programa!!!');
      ktprograma.SetFocus;
      exit;
   end;

   if trim(ktacao.Text) = '' then
   Begin
      ShowMessage('Informe a Acão!!!');
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
          ShowMessage('Dados para Programa e Ação não foram encontrados.'+#13+
                      'Informe ação e Programa corretamente !!!');
          Exit;
       End;

       frmSeaLocali.ShowModal;
   Finally
       frmSeaLocali.Free;
   End;
end;

procedure TfrmEmendas.Button3Click(Sender: TObject);
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

procedure TfrmEmendas.Conversor;
Var
  Cod_Locali_Lei : Integer;
  Cod_Det_Lei    : Integer;

begin

     Cod_Locali_Lei := 0;
     Cod_Det_Lei    := 0;

     // STATUS
     // 1 - APROVADA
     // 2 - RETIRADA
     // 3 - EM DISCUSSÃO

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

   // Construção de Dados para conversão de Bancos

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
             ShowMessage('LOCALIZAÇÃO DE ACRESCIMO JÁ EXISTE, CONFIRA SE É UMA LOCALIZAÇÃO EXISTE. EMENDA: '+txtemenda.Text);
             EXIT;
          END;

          // CONSULTA REDUCAO
          ShowWarning('Fazendo Pesquisa  de [REDUÇÃO - ADITIVA DE VALOR] na LEI');
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
             ShowMessage('REDUÇAO NÃO EXISTE NO ORÇAMENTO. EMENDA: '+txtemenda.Text);
             EXIT;
          END;

          Cod_Locali_Lei := qyLocali_Lei_CODIGO.Value;

          If qyLocali_Lei_.RecordCount > 0 then
          Begin
             // Redução
             ShowWarning('Fazendo Pesquisa  de [VALOR - REDUÇÃO - ADITIVA DE VALOR] na LEI');
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


                 ShowWarning('Fazendo Pesquisa  de [REDUÇÃO - ADITIVA DE VALOR] na LEI [CODIGO]: '+qyDet_Lei_Codigo.AsString);
                 Cod_Det_Lei := qyDet_Lei_Codigo.Value;

                 IF qyDet_Lei_.RecordCount = 0 THEN // CONDIÇAO 1
                 BEGIN
                    HideWarning;
                    ShowMessage('REDUÇÃO NÃO ENCONTRADA NO ORÇAMENTO!!!'+ #13+
                                'EMENDA: '+txtemenda.Text);
                    EXIT;
                 END;

                 IF qyEvlr_rValor.Value > qyDet_Lei_valor.Value Then // CODIÇÃO 2
                 Begin
                    HideWarning;
                    ShowMessage('SALDO INSUFICIENTE DA REDUÇÃO DE ADITIVA DE VALOR!!!'+#13+
                                'EMENDA: ' +txtemenda.Text);
                    EXIT;
                 End; // FIM DE CONDIÇÃO 2

                 qyDet_Lei_.Edit;
                 qyDet_Lei_valor.Value := qyDet_Lei_valor.Value - qyEvlr_rValor.Value;
                 qyDet_Lei_.Post;

                 qyEvlr_.Next;

             END; // FIM DO WHILE
             HideWarning;

             ShowMessage('[ADITIVA DE VALOR] => REDUÇÃO DA EMENDA: '+txtemenda.Text+ '  REALIZADA COM SUCESSO!!!');


             // ACRESCIMO
             ShowWarning('Fazendo Pesquisa  de [ACRÉSCIMO - ADITIVA DE VALOR] na LEI');

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
                 ShowWarning('INSERINDO... [ACRÉSCIMO - ADITIVA DE VALOR] na LEI');
                 qyDet_Lei_.INSERT;
                 qyDet_Lei_locali.Value := Cod_Locali_Lei;
                 qyDet_Lei_elDespesa.Value := qyEvlr_aelemento.Value;
                 qyDet_Lei_indUso.Value    := qyEvlr_aIndUso.Value;
                 qyDet_Lei_fonte.Value    := qyEvlr_aFonte.Value;
                 qyDet_Lei_valor.Value  := qyEvlr_AValor.Value;
                 qyDet_Lei_.Post;

                 qyEvlr_.Next;

             END; // FIM DO WHILE

             HideWarning;

             ShowMessage('[ADITIVA DE VALOR] => ACRESCIMO DA EMENDA: '+txtemenda.Text+ '  REALIZADA COM SUCESSO!!!');
          END;

      end; // FIM DA OPÇÃO 3



      IF COPY(cbTipo.Text,1,1) = '4' Then // Modificativa de Valor
      Begin
         // REDUÇÃO //////////////////////////////////////////////

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
             ShowMessage('LOCALIZAÇÃO DE ACRESCIMO NÃO EXISTE, CONFIRA OS DADOS. EMENDA: '+txtemenda.Text);
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
             ShowMessage('REDUÇAO NÃO EXISTE NO ORÇAMENTO. EMENDA: '+txtemenda.Text);
             EXIT;
          END;


          Cod_Locali_Lei := qyLocali_Lei_CODIGO.Value;

          If qyLocali_Lei_.RecordCount > 0 then
          Begin

             // Redução
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

                 IF qyDet_Lei_.RecordCount = 0 THEN // CONDIÇAO 1
                 BEGIN
                    ShowMessage('REDUÇÃO NÃO ENCONTRADA NO ORÇAMENTO!!!'+ #13+
                                'EMENDA: '+txtemenda.Text);
                    EXIT;
                 END;

                 IF qyEvlr_rValor.Value > qyDet_Lei_valor.Value Then // CODIÇÃO 2
                 Begin
                    ShowMessage('SALDO INSUFICIENTE DA REDUÇÃO DE ADITIVA DE VALOR!!!'+#13+
                                'EMENDA: ' +txtemenda.Text);

                    EXIT;
                 End; // FIM DE CONDIÇÃO 2


                 qyDet_Lei_.Edit;
                 qyDet_Lei_valor.Value := qyDet_Lei_valor.Value - qyEvlr_rValor.Value;
                 qyDet_Lei_.Post;

                 qyEvlr_.Next;



             END; // FIM DO WHILE
          END;
          ShowMessage('[MODIFICATIVA DE VALOR] => REDUÇÃO DA EMENDA: '+txtemenda.Text+ '  REALIZADA COM SUCESSO!!!');


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
            SHOWMESSAGE('ACRESCIMO DA MODIFICATIVA DE VALOR NÃO EXISTE. EMENDA : '+txtemenda.Text);
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

             IF qyDet_Lei_.RecordCount = 0 THEN // CONDIÇAO 1
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
             IF qyEvlr_rValor.Value > qyDet_Lei_valor.Value Then // CODIÇÃO 2
             Begin
                ShowMessage('SALDO INSUFICIENTE DA REDUÇÃO DE ADITIVA DE VALOR!!!'+#13+
                            'EMENDA: ' +txtemenda.Text);

                EXIT;
             End; // FIM DE CONDIÇÃO 2
             }


             qyEvlr_.Next;

          END; // FIM DO WHILE

          ShowMessage('[MODIFICATIVA DE VALOR] => ACRESCIMO DA EMENDA: '+txtemenda.Text+ '  REALIZADA COM SUCESSO!!!');

         /////////////////////////////////////////////////


      End;

      ShowWarning('ATUALIZANDO DADOS, AGUARDE...');
      qry.Close;
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
      qry.Open;
      HideWarning;


   End; // Fim de Bloco

end;

end.










