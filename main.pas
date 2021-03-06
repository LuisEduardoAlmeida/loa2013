unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, ToolWin, ComCtrls, ImgList, Menus, StdCtrls,
  RXCtrls ;

type
  TfrmMain = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Image2: TImage;
    Image3: TImage;
    Label3: TLabel;
    tBarMain: TToolBar;
    btnClose: TToolButton;
    treeMenu: TTreeView;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    ImportarDados1: TMenuItem;
    trocas1: TMenuItem;
    Relatrios1: TMenuItem;
    Acrescimo1: TMenuItem;
    Modificativa1: TMenuItem;
    Auditoria1: TMenuItem;
    EmendasporAcrscimo1: TMenuItem;
    EmendasporModificativa1: TMenuItem;
    BancodeDados1: TMenuItem;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    lbAnoExercicio: TRxLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure treeMenuClick(Sender: TObject);
    procedure ImportarDados1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure trocas1Click(Sender: TObject);
    procedure Acrescimo1Click(Sender: TObject);
    procedure Modificativa1Click(Sender: TObject);
    procedure CorteporSequencial1Click(Sender: TObject);
    procedure EmendasporAcrscimo1Click(Sender: TObject);
    procedure EmendasporModificativa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Codigo_Usuario : Integer;
    Usuario : String;
    PermLogon : String;
    Banco, Ano_Exercicio : String;
    IndUso : String;
    Autoriza : String;
    Procedure Autorizacao();
  end;

var
  frmMain: TfrmMain;
  consObjeto,consObjetoNew : TForm;

implementation

uses fileImport, acao, elDespesa, elReceita, funcao, subFuncao, fonte,
  orgao, unorc, programa, recUno, proposta, consDemProg, conProgGov,
  conResRec, consFonteGrupo, evolRec, evolDesp, consEvolRec, consEvolDesp,
  consDestRec, parametro, consDemRecDest, consDemRecCat, consReceita,
  ConsRecDespTot, consRecDespFis, consRecDespSeg, consRegional,
  consRecArrec, consDespCat, consDespFun, consDespSFun, consDespPodOrg,
  consDespOrgao, conDensEns, consNatDesp, consDial, consRecLiq, orgaoDial,
  unoDial, backup, restore, portaria, ConsFonteGrupoGer, UnoDialGer,
  ConsRecArrec02, ConsDespCat_Direto, ConsDespCat_Indireto, GraficoFonte,
  GraficoFuncao, Cortes, Vereadores, Trocas,
  Emendas, Emendareducao, EmendasAcrescimo, ReducaoPesq, EmendasPorAcrescimo,
  EmendasPorModificativa, UnoDialGerRel, CorteSequencial, Funcionalidade,
  FonteCons, UnoImpRelat, PrincipalFolha, EmendasNew, Autoriza,
  LoginEmendas, EmendasGeral, Auditoria, EmendasIncompletasRel,
  EmendaAprovadaGeral, EmendaAprovada1, TrocaSenha, OrgImpRelat,
  EmendasApro1Doe, EmendaGeralRel, EmendasPorAcrescimo_00,
  EmendasPorModificativa_00, ProjcNextYear, PesquisaAnalitica,
  PesquisaAnaliticaReceita, PesquisaAnaliticaDespesa, UnoImpRelat2;

{$R *.dfm}

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.treeMenuClick(Sender: TObject);
begin
  if treeMenu.selected = nil then exit;
  if treeMenu.selected.text = 'Importa��o de Arquivos' then begin
     frmFileImport.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmFileImport.showModal;
  end;
  if treeMenu.selected.text = 'A��es' then begin
     frmAcao.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmAcao.showModal;
  end;
  if treeMenu.selected.text = 'Elementos de Despesa' then begin
     frmElDespesa.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmElDespesa.showModal;
  end;
  if treeMenu.selected.text = 'Elementos de Receita' then begin
     frmElReceita.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmElReceita.showModal;
  end;
  if treeMenu.selected.text = 'Fun��es' then begin
     frmFuncao.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmFuncao.showModal;
  end;
  if treeMenu.selected.text = 'Subfun��es' then begin
     frmSubFuncao.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmSubFuncao.showModal;
  end;
  if treeMenu.selected.text = 'Fontes de Recursos' then begin
     frmFonte.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmFonte.showModal;
  end;
  if treeMenu.selected.text = '�rg�os' then begin
     frmOrgao.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmOrgao.showModal;
  end;
  if treeMenu.selected.text = 'Unidades Or�ament�rias' then begin
     frmUnorc.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmUnorc.showModal;
  end;
  if treeMenu.selected.text = 'Programas' then begin
     frmPrograma.setBounds(frmMain.left + 240, frmMain.top + 167,1148,562);
     frmPrograma.showModal;
  end;
  if treeMenu.selected.text = 'Receita' then begin
     frmRecUno.setBounds(frmMain.left + 240, frmMain.top + 167,1148,562);
     frmRecUno.showModal;
  end;
  if treeMenu.selected.text = 'Proposta' then begin
     frmProposta.setBounds(frmMain.left + 240, frmMain.top + 167,1148,562);
     frmProposta.showModal;

  end;
  if treeMenu.selected.text = 'Evolu��o da Receita' then begin
     frmEvolRec.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmEvolRec.showModal;
  end;
  if treeMenu.selected.text = 'Evolu��o da Despesa' then begin
     frmEvolDesp.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmEvolDesp.showModal;
  end;
  if treeMenu.selected.text = 'Demonstrativo dos Efeitos Financeiros' then begin
     frmEvolRec.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmEvolRec.showModal;
  end;

  if treeMenu.selected.text = 'Configura��o de Par�metros' then begin
     frmParametro.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmParametro.showModal;
  end;
                                           
  if treeMenu.selected.text = 'Consolidados Geral' then begin
     frmConsDial.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmConsDial.showModal;
  end;

  if treeMenu.selected.text = 'Consolidados do �rg�o' then begin
     frmOrgaoDial.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmOrgaoDial.showModal;
  end;

  if treeMenu.selected.text = 'Consolidados da Unidade Or�ament�ria' then begin
     frmUnoDial.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     IndUso := 'N';
     frmUnoDial.showModal;
  end;

  if treeMenu.selected.text = 'Consolidados da Unidade Or�ament�ria - INDUSO' then begin
     frmUnoDial.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     IndUso := 'S';
     frmUnoDial.showModal;
  end;

  if treeMenu.selected.text = 'Consolidados da Unidade Or�ament�ria - Gerencial' then
  begin
      if frmUnoDialGer = nil then
         frmUnoDialGer := TfrmUnoDialGer.Create(Self);
     frmUnoDialGer.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);

     frmUnoDialGer.showModal;
  end;

  if treeMenu.selected.text = 'Gera��o' then
  begin
     frmBackup.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmBackup.showModal;
  end;

  if treeMenu.selected.text = 'Restaura��o' then
  begin
     frmRestore.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmRestore.showModal;
  end;

  if treeMenu.selected.text = 'Portarias' then
  begin
     frmPortaria.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmPortaria.showModal;
  end;

  if treeMenu.selected.text = 'Por Fonte' then
  begin
     if frmGraficoFonte = nil then
        frmGraficoFonte := TfrmGraficoFonte.Create(Self);
     frmGraficoFonte.ShowModal;
  end;

  if treeMenu.selected.text = 'Por Fun��o' then
  begin
     if frmGraficoFuncao = nil then
        frmGraficoFuncao := TfrmGraficoFuncao.Create(Self);
     frmGraficoFuncao.ShowModal;
  end;

  if treeMenu.selected.text = 'QDD Gerencial' then
  begin
     If frmUnoDialGerRel = nil then
        frmUnoDialGerRel := TfrmUnoDialGerRel.Create(self);
     frmUnoDialGerRel.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     IndUso := 'N';
     frmUnoDialGerRel.showModal;
  end;


{ -- Relat�rios -- }
  // Por Fun��o
  //Por Fonte

  if treeMenu.selected.text = 'Demonstrativo da Despesa por Programa' then
  begin
     Application.CreateForm(TfrmConsDemProg, frmConsDemProg);
     frmConsDemProg.report.preview;
     frmConsDemProg.free;
  end;

  if treeMenu.selected.text = 'Programa de Governo' then
  begin
     Application.CreateForm(TfrmConsProgGov, frmConsProgGov);
     frmConsProgGov.report.preview;
     frmConsProgGov.free;
  end;

  if treeMenu.selected.text = 'Resumo Geral da Receita' then
  begin
     Application.CreateForm(TfrmConsResRec, frmConsResRec);
     frmConsResRec.report.preview;
     frmConsResRec.free;
  end;

  if treeMenu.selected.text = 'Demonstrativo das Fontes de Recursos por Grupo de Despesa' then
  begin
     Application.CreateForm(TfrmConsFonteGrupo, frmConsFonteGrupo);
     frmConsFonteGrupo.report.preview;
     frmConsFonteGrupo.free;
  end;

  if treeMenu.selected.text = 'Quadro da Evolu��o da Receita' then
  begin
     Application.CreateForm(TfrmConsEvolRec, frmConsEvolRec);
     frmConsEvolRec.report.preview;
     frmConsEvolRec.free;
  end;

  if treeMenu.selected.text = 'Quadro da Evolu��o da Despesa' then begin
     Application.CreateForm(TfrmConsEvolDesp, frmConsEvolDesp);
     frmConsEvolDesp.report.preview;
     frmConsEvolDesp.free;
  end;

  if treeMenu.selected.text = 'Demonstrativo da Destina��o da Receita' then
  begin
     Application.CreateForm(TfrmConsDestRec, frmConsDestRec);
     frmConsDestRec.report.preview;
     frmConsDestRec.free;
  end;

  if treeMenu.selected.text = 'Demonstrativo da Receita Segundo sua Destina��o' then
  begin
     Application.CreateForm(TfrmConsDemRecDest, frmConsDemRecDest);
     frmConsDemRecDest.report.preview;
     frmConsDemRecDest.free;
  end;

  if treeMenu.selected.text = 'Demonstrativo da Receita por Categoria Econ�mica' then
  begin
     Application.CreateForm(TfrmConsDemRecCat, frmConsDemRecCat);
     frmConsDemRecCat.report.preview;
     frmConsDemRecCat.free;
  end;

  if treeMenu.selected.text = 'Receita Total' then
  begin
     Application.CreateForm(TfrmConsReceita, frmConsReceita);
     frmConsReceita.report.preview;
     frmConsReceita.free;
  end;

  if treeMenu.selected.text = 'Receita Fiscal' then
  begin
     Application.CreateForm(TfrmConsReceita, frmConsReceita);
     frmConsReceita.lblEsfera.caption := 'RECEITA - OR�AMENTO FISCAL';
     with frmConsReceita.qryCat do
     begin
       close;
       SQL[8] := SQL[8] + ' WHERE esfera = ''10''';
       open;
     end;
     with frmConsReceita.qryGrupo do
     begin
       close;
       SQL[6] := SQL[6] + ' AND esfera = ''10''';
       open;
     end;
     with frmConsReceita.qrySubGrupo do
     begin
       close;
       SQL[6] := SQL[6] + ' AND esfera = ''10''';
       open;
     end;
     with frmConsReceita.qryRubrica do
     begin
       close;
       SQL[6] := SQL[6] + ' AND esfera = ''10''';
       open;
     end;
     with frmConsReceita.qryAlinea do
     begin
       close;
       SQL[6] := SQL[6] + ' AND esfera = ''10''';
       open;
     end;
     with frmConsReceita.qry do
     begin
       close;
       SQL[5] := SQL[5] + ' AND esfera = ''10''';
       open;
     end;
     frmConsReceita.report.preview;
     frmConsReceita.free;
  end;


  if treeMenu.selected.text = 'Demonstrativo das Fontes de Recursos por Grupo de Despesa - Gerencial' then
  begin
     Application.CreateForm(TfrmConsFonteGrupoGer, frmConsFonteGrupoGer);
     frmConsFonteGrupoGer.report.preview;
     frmConsFonteGrupoGer.free;
  end;




  if treeMenu.selected.text = 'Receita da Seguridade Social' then
  begin
     Application.CreateForm(TfrmConsReceita, frmConsReceita);
     frmConsReceita.lblEsfera.caption := 'RECEITA - OR�AMENTO SEGURIDADE SOCIAL';
     with frmConsReceita.qryCat do
     begin
       close;
       SQL[8] := SQL[8] + ' WHERE esfera = ''20''';
       open;
     end;
     with frmConsReceita.qryGrupo do
     begin
       close;
       SQL[6] := SQL[6] + ' AND esfera = ''20''';
       open;
     end;
     with frmConsReceita.qrySubGrupo do
     begin
       close;
       SQL[6] := SQL[6] + ' AND esfera = ''20''';
       open;
     end;
     with frmConsReceita.qryRubrica do
     begin
       close;
       SQL[6] := SQL[6] + ' AND esfera = ''20''';
       open;
     end;
     with frmConsReceita.qryAlinea do
     begin
       close;
       SQL[6] := SQL[6] + ' AND esfera = ''20''';
       open;
     end;
     with frmConsReceita.qry do
     begin
       close;
       SQL[5] := SQL[5] + ' AND esfera = ''20''';
       open;
     end;
     frmConsReceita.report.preview;
     frmConsReceita.free;
  end;

  if treeMenu.selected.text = 'Receita e Despesa Total' then begin
     Application.CreateForm(TfrmConsRecDespTot, frmConsRecDespTot);
     frmConsRecDespTot.report.preview;
     frmConsRecDespTot.free;
  end;

  if treeMenu.selected.text = 'Receita e Despesa Fiscal' then begin
     Application.CreateForm(TfrmConsRecDespFis, frmConsRecDespFis);
     frmConsRecDespFis.report.preview;
     frmConsRecDespFis.free;
  end;

  if treeMenu.selected.text = 'Receita e Despesa Seguridade' then begin
     Application.CreateForm(TfrmConsRecDespSeg, frmConsRecDespSeg);
     frmConsRecDespSeg.report.preview;
     frmConsRecDespSeg.free;
  end;

  if treeMenu.selected.text = 'Regionaliza��o das Aplica��es' then begin
     Application.CreateForm(TfrmConsRegional, frmConsRegional);
     frmConsRegional.report.preview;
     frmConsRegional.free;
  end;

  if treeMenu.selected.text = 'Demonstrativo das Receitas Diretamente Arrecadadas por �rg�o/Unidade' then begin
     Application.CreateForm(TfrmConsRecArrec02, frmConsRecArrec02);
     frmConsRecArrec02.preview;
     frmConsRecArrec02.free;
  end;

  if treeMenu.selected.text = 'Demonstrativo das Receitas Diretamente Arrecadadas por �rg�o/Unidade - Gerencial' then begin
     Application.CreateForm(TfrmConsRecArrec, frmConsRecArrec);
     frmConsRecArrec.report.preview;
     frmConsRecArrec.free;
  end;


  if treeMenu.selected.text = 'Demonstrativo da Despesa por Categoria Econ�mica e Grupo de Despesa' then begin
     Application.CreateForm(TfrmConsDespCat, frmConsDespCat);
     frmConsDespCat.report.preview;
     frmConsDespCat.free;
  end;

  if treeMenu.selected.text = 'Demonstrativo da Despesa por Categoria Econ�mica e Grupo de Despesa - Diretas' then begin
     Application.CreateForm(TfrmConsDespCat_Direto, frmConsDespCat_Direto);
     frmConsDespCat_Direto.report.preview;
     frmConsDespCat_Direto.free;
  end;

  if treeMenu.selected.text = 'Demonstrativo da Despesa por Categoria Econ�mica e Grupo de Despesa - Indiretas' then begin
     Application.CreateForm(TfrmConsDespCat_Indireto, frmConsDespCat_Indireto);
     frmConsDespCat_Indireto.report.preview;
     frmConsDespCat_Indireto.free;
  end;

  if treeMenu.selected.text = 'Demonstrativo da Despesa por Fun��o' then begin
     Application.CreateForm(TfrmConsDespFun, frmConsDespFun);
     frmConsDespFun.report.preview;
     frmConsDespFun.free;
  end;

  if treeMenu.selected.text = 'Demonstrativo da Despesa por SubFun��o' then begin
     Application.CreateForm(TfrmConsDespSFun, frmConsDespSFun);
     frmConsDespSFun.report.preview;
     frmConsDespSFun.free;
  end;

  if treeMenu.selected.text = 'Demonstrativo da Despesa por Poder e �rg�o' then begin
     Application.CreateForm(TfrmConsDespPodOrg, frmConsDespPodOrg);
     frmConsDespPodOrg.report.preview;
     frmConsDespPodOrg.free;
  end;

  if treeMenu.selected.text = 'Demonstrativo da Despesa por �rg�o' then begin
     Application.CreateForm(TfrmConsDespOrgao, frmConsDespOrgao);
     frmConsDespOrgao.report.preview;
     frmConsDespOrgao.free;
  end;

  if treeMenu.selected.text = 'Manuten��o e Desenvolvimento do Ensino' then
  begin
     Application.CreateForm(TfrmConsDensEns, frmConsDensEns);
     with frmConsDensEns do
     begin
         with qryColUm do
         begin
             close;
             SQL[1] := SQL[1] + ' WHERE funcao = ''12'' AND fonte IN (''101'',''104'')';
             open;
         end;
         with qryColDois do
         begin
             close;
             SQL[1] := SQL[1] + ' WHERE funcao = ''12'' AND fonte IN (''101'',''104'')';
             open;
         end;
         with qryColTres do
         begin
             close;
             SQL[1] := SQL[1] + ' WHERE funcao = ''12'' AND fonte IN (''101'',''104'')';
             open;
         end;
     end;
     frmConsDensEns.report.preview;
     frmConsDensEns.free;
  end;

  if treeMenu.selected.text = 'A��es e Servi�os de Sa�de' then
  begin
     Application.CreateForm(TfrmConsDensEns, frmConsDensEns);
     with frmConsDensEns do
     begin
       lblTitulo.caption := 'A��ES E SERVI�OS DE SA�DE';
       with qryColUm do
       begin
         close;
         SQL[1] := SQL[1] + ' WHERE funcao IN (''10'',''28'') AND fonte = ''102''';
         open;
       end;
       with qryColDois do
       begin
         close;
         SQL[1] := SQL[1] + ' WHERE funcao IN (''10'',''28'') AND fonte = ''102''';
         open;
       end;
       with qryColTres do
       begin
         close;
         SQL[1] := SQL[1] + ' WHERE funcao IN (''10'',''28'') AND fonte = ''102''';
         open;
       end;
     end;
     frmConsDensEns.report.preview;
     frmConsDensEns.free;
  end;

  if treeMenu.selected.text = 'A��es e Servi�os de Assist�ncia Social' then begin
     Application.CreateForm(TfrmConsDensEns, frmConsDensEns);
     with frmConsDensEns do begin
       lblTitulo.caption := 'A��ES E SERVI�OS DE ASSIST�NCIA SOCIAL';
       with qryColUm do begin
         close;
         SQL[1] := SQL[1] + ' WHERE funcao = ''08''';
         open;
       end;
       with qryColDois do begin
         close;
         SQL[1] := SQL[1] + ' WHERE funcao = ''08''';
         open;
       end;
       with qryColTres do begin
         close;
         SQL[1] := SQL[1] + ' WHERE funcao = ''08''';
         open;
       end;
     end;
     frmConsDensEns.report.preview;
     frmConsDensEns.free;
  end;

  if treeMenu.selected.text = 'Natureza da Despesa' then begin
     Application.CreateForm(TfrmConsNatDesp, frmConsNatDesp);
     frmConsNatDesp.report.preview;
     frmConsNatDesp.free;
  end;

  if treeMenu.selected.text = 'Demonstrativo da Despesa com Pessoal em Rela��o � Receita Corrente L�quida' then begin
     Application.CreateForm(TfrmConsRecLiq, frmConsRecLiq);
     frmConsRecLiq.report.preview;
     frmConsRecLiq.free;
  end;


  //Emendas
  if treeMenu.selected.text = 'Emendas' then
  begin
       Try
         If FrmLoginEmendas = nil then
            FrmLoginEmendas := TFrmLoginEmendas.Create(self);
         FrmLoginEmendas.ShowModal;
       Finally
         FrmLoginEmendas.Free;
       End;
       If PermLogon = 'S' Then
       Begin
           FrmEmendas := nil;
           if FrmEmendas = nil then
           FrmEmendas := TFrmEmendas.Create(self);
           FrmEmendas.setBounds(frmMain.left + 240, frmMain.top + 167,1015,700);
           FrmEmendas.showModal;
       end;    
  end;
  if treeMenu.selected.text = 'Geral' then
  begin
       Try
         If FrmLoginEmendas = nil then
            FrmLoginEmendas := TFrmLoginEmendas.Create(self);
         FrmLoginEmendas.ShowModal;
       Finally
         FrmLoginEmendas.Free;
       End;

       If PermLogon = 'S' Then
       Begin
         If FrmEmendasGeral = nil then
            FrmEmendasGeral := TFrmEmendasGeral.Create(self);
         FrmEmendasGeral.showModal;
       End;
  end;

  if treeMenu.selected.text = 'Detalhamento' then
  begin
       Try
         If FrmLoginEmendas = nil then
            FrmLoginEmendas := TFrmLoginEmendas.Create(self);
         FrmLoginEmendas.ShowModal;
       Finally
         FrmLoginEmendas.Free;
       End;

       If PermLogon = 'S' Then
       Begin
          If frmEmendasNew = nil Then
             frmEmendasNew := TfrmEmendasNew.Create(Self);
          frmEmendasNew.ShowModal;
       End;
  end;


  if treeMenu.selected.text = 'Troca Senhas' then
  begin
     if FrmTrocaSenha = nil then
        FrmTrocaSenha := TFrmTrocaSenha.Create(self);
     //FrmTrocaSenha.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     FrmTrocaSenha.showModal;
  end;

  if treeMenu.selected.text = 'Vereadores' then
  begin
     if frmVereadores = nil then
        frmVereadores := TfrmVereadores.Create(self);
     frmVereadores.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmVereadores.showModal;
  end;

  if treeMenu.selected.text = 'Auditoria' then
  begin
       Try
         If FrmLoginEmendas = nil then
            FrmLoginEmendas := TFrmLoginEmendas.Create(self);
         FrmLoginEmendas.ShowModal;
       Finally
         FrmLoginEmendas.Free;
       End;
       If PermLogon = 'S' Then
       Begin
           If FrmAuditoria = nil then
             FrmAuditoria := TFrmAuditoria.Create(self);
           FrmAuditoria.ShowModal;
       End;
  End;

  if treeMenu.selected.text = 'Emendas com diferen�a entre Geral e Detalhamento' then
  begin
     FrmEmendasIncompletasRel := nil;
     If FrmEmendasIncompletasRel = nil then
        FrmEmendasIncompletasRel := TFrmEmendasIncompletasRel.Create(self);
     FrmEmendasIncompletasRel.Preview;
     FrmEmendasIncompletasRel.Free;
  end;

  if treeMenu.selected.text = 'Emendas Geral' then
  begin
     frmEmendaAprovadaGeral := nil;
     If frmEmendaAprovadaGeral = nil then
        frmEmendaAprovadaGeral := TfrmEmendaAprovadaGeral.Create(self);
     frmEmendaAprovadaGeral.Preview;
     frmEmendaAprovadaGeral.Free;
  end;

  if treeMenu.selected.text = 'Emendas Aprovadas' then
  begin
     frmEmendaAprovada1 := nil;
     If frmEmendaAprovada1 = nil then
        frmEmendaAprovada1 := TfrmEmendaAprovada1.Create(self);
     frmEmendaAprovada1.Preview;
     frmEmendaAprovada1.Free;
  end;


  if treeMenu.selected.text = 'Redu��o e Acr�scimo' then
  begin

     Try
        If frmReducaoPesq = Nil then
           frmReducaoPesq := TfrmReducaoPesq.Create(self);
        frmReducaoPesq.ShowModal;
     Finally
        frmReducaoPesq.Free;
     End;

     exit;

     {if frmEmendasReducao <> nil then frmEmendasReducao := nil;
     if frmEmendasReducao = nil then
        frmEmendasReducao := TfrmEmendasReducao.Create(self);
     //frmEmendas.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     frmEmendasReducao.Preview;
     }
  end;
  if treeMenu.selected.text = 'Proje��o do Ano Seguinte' then begin
     If FrmProjNextYear = nil then
        FrmProjNextYear := TFrmProjNextYear.Create(self);
        FrmProjNextYear.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     FrmProjNextYear.ShowModal;
  end;


  if treeMenu.selected.text = 'Conform Rec/Desp Intra Or�ament�ria' then begin
      FrmFuncionalidade := nil;
     If FrmFuncionalidade = nil then
        FrmFuncionalidade := TFrmFuncionalidade.Create(self);
    // FrmFuncionalidade.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     FrmFuncionalidade.ShowModal;
  end;


  If treeMenu.selected.text = 'Consulta Gerencial por Fonte' then
  Begin
     Try
       If FrmFonteCons = nil then
          FrmFonteCons := TFrmFonteCons.Create(Self);
       FrmFonteCons.ShowModal;
     Finally
       FrmFonteCons.Free;
     End;
  End;

  If treeMenu.selected.text = 'Elemento de Despesa' then
  Begin
     Try
       If frmCortes = nil then
          frmCortes := TfrmCortes.Create(Self);
       frmCortes.ShowModal;
     Finally
       frmCortes.Free;
     End;
  End;

  If treeMenu.selected.text = 'Sequencial' then
  Begin
     Try
       if FrmCorteSequencial = nil then
          FrmCorteSequencial := TFrmCorteSequencial.Create(self);
       FrmCorteSequencial.ShowModal;
     Finally
       FrmCorteSequencial.Free;        
     End;
  End;

  //Impress�o de Relat�rios


  if treeMenu.selected.text = 'Folha de Rosto' then begin
     if frmPrincipalFolha = nil then
          frmPrincipalFolha := TfrmPrincipalFolha.Create(self);
     frmPrincipalFolha.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     //IndUso := 'N';
     frmPrincipalFolha.showModal;
  end;



  // Impress�o de Relat�rios
  if treeMenu.selected.text = 'EMENDAS APROVADAS EM 1� DISCUSS�O - ORDERM DE EMENDAS' then begin
     frmEmendasApro1Doe := nil;
     if frmEmendasApro1Doe = nil then
          frmEmendasApro1Doe := TfrmEmendasApro1Doe.Create(self);
     frmEmendasApro1Doe.Preview;
     frmEmendasApro1Doe.Free;;
  end;
                                                               
  if treeMenu.selected.text = 'EMENDAS APROVADAS EM 1� DISCUSS�O - [GERAL] POR VEREADOR' then begin
     frmEmendaGeralRel := nil;
     if frmEmendaGeralRel = nil then
          frmEmendaGeralRel := TfrmEmendaGeralRel.Create(self);
     frmEmendaGeralRel.Preview;
     frmEmendaGeralRel.Free;;
  end;



  if treeMenu.selected.text = 'Impress�o de Rel. das Unid. Or�ament�ria' then begin
     if frmUnoImpRelat = nil then
          frmUnoImpRelat := TfrmUnoImpRelat.Create(self);
     frmUnoImpRelat.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     IndUso := 'N';
     frmUnoImpRelat.showModal;
  end;

  if treeMenu.selected.text = 'Impress�o de Rel. Geral' then begin
     if frmUnoImpRelat2 = nil then
          frmUnoImpRelat2 := TfrmUnoImpRelat2.Create(self);
     frmUnoImpRelat2.setBounds(frmMain.left + 240, frmMain.top + 167,803,662);
     IndUso := 'N';
     frmUnoImpRelat2.showModal;
  end;


  // Impress�o de Relat�rios dos �rg�os
  if treeMenu.selected.text = 'Impress�o de Rel. dos �rg�os' then begin
     if frmOrgImpRelat = nil then
          frmOrgImpRelat := TfrmOrgImpRelat.Create(self);
     frmOrgImpRelat.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     IndUso := 'N';
     frmOrgImpRelat.showModal;
  end;

  if treeMenu.selected.text = 'Pesquisa Anal�tica Despesa' then begin
     frmPesqAnaliticaDespesa := nil;
     if frmPesqAnaliticaDespesa = nil then frmPesqAnaliticaDespesa := TfrmPesqAnaliticaDespesa.Create(self);
     frmPesqAnaliticaDespesa.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     IndUso := 'N';
     frmPesqAnaliticaDespesa.showModal;
  end;
    if treeMenu.selected.text = 'Pesquisa Anal�tica Receita' then begin
       frmPesqAnaliticaReceita := nil;
     if frmPesqAnaliticaReceita = nil then
          frmPesqAnaliticaReceita := TfrmPesqAnaliticaReceita.Create(self);
     frmPesqAnaliticaReceita.setBounds(frmMain.left + 240, frmMain.top + 167,803,562);
     IndUso := 'N';
     frmPesqAnaliticaReceita.showModal;

  end;
  treeMenu.selected := nil;

end;

procedure TfrmMain.ImportarDados1Click(Sender: TObject);
begin
  {Try
    if frmImportar = nil then
       frmImportar := TfrmImportar.Create(Self);
       frmImportar.ShowModal;
  Finally
       frmImportar.Free;
  End;}

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
   StatusBar1.Panels[0].Text := 'Banco: '+Banco;
   StatusBar1.Panels[0].Text := 'Ano de Exerc�cio: '+Ano_Exercicio;
   lbAnoExercicio.Caption    := 'LOA - LEI OR�AMENT�RIA ANUAL - '+Ano_Exercicio;
   PermLogon := 'N';
   Autoriza := 'N';
end;

procedure TfrmMain.trocas1Click(Sender: TObject);
begin
  try
   if frmTrocas = nil then
      frmTrocas := TfrmTrocas.Create(Self);
   frmTrocas.ShowModal;
  finally
   frmTrocas.Free;
  end;
end;

procedure TfrmMain.Acrescimo1Click(Sender: TObject);
begin
   if FrmEmendasPorAcrescimo<> nil then FrmEmendasPorAcrescimo := nil;

   if FrmEmendasPorAcrescimo = nil then
      FrmEmendasPorAcrescimo := TFrmEmendasPorAcrescimo.Create(Self);

   FrmEmendasPorAcrescimo.Preview;
   FrmEmendasPorAcrescimo.Free;

end;

procedure TfrmMain.Modificativa1Click(Sender: TObject);
begin
   if FrmEmendasPorModificativa<> nil then FrmEmendasPorModificativa := nil;

   if FrmEmendasPorModificativa = nil then
      FrmEmendasPorModificativa := TFrmEmendasPorModificativa.Create(Self);

   FrmEmendasPorModificativa.Preview;
   FrmEmendasPorModificativa.Free;

end;

procedure TfrmMain.CorteporSequencial1Click(Sender: TObject);
begin
   if FrmCorteSequencial = nil then
      FrmCorteSequencial := TFrmCorteSequencial.Create(self);
   FrmCorteSequencial.ShowModal;
end;

procedure TfrmMain.Autorizacao;
begin
   Try
     if FrmAutoriza = nil then
        FrmAutoriza := TFrmAutoriza.Create(self);
     FrmAutoriza.ShowModal;
   Finally
     FrmAutoriza.Free;
   End;
end;

procedure TfrmMain.EmendasporAcrscimo1Click(Sender: TObject);
begin
   FrmEmendasPorAcrescimo_00 := nil;
   if FrmEmendasPorAcrescimo_00 = nil then
      FrmEmendasPorAcrescimo_00 := TFrmEmendasPorAcrescimo_00.Create(self);
   FrmEmendasPorAcrescimo_00.Preview;
   FrmEmendasPorAcrescimo_00.Free;
end;

procedure TfrmMain.EmendasporModificativa1Click(Sender: TObject);
begin
   FrmEmendasPorModificativa_00 := nil;
   if FrmEmendasPorModificativa_00 = nil then
      FrmEmendasPorModificativa_00 := TFrmEmendasPorModificativa_00.Create(self);
   FrmEmendasPorModificativa_00.Preview;
   FrmEmendasPorModificativa_00.Free;
end;

end.
