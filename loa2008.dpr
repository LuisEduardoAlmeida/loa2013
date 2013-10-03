program loa2008;



uses
  Forms,
  main in 'main.pas' {frmMain},
  data in 'data.pas' {dmtData: TDataModule},
  fileImport in 'fileImport.pas' {frmFileImport},
  EmendasNew in 'EmendasNew.pas' {frmEmendasNew},
  relModelo in 'relModelo.pas' {frmRelModel},
  acaoList in 'acaoList.pas' {frmAcaoList},
  elDespesa in 'elDespesa.pas' {frmElDespesa},
  elDespesaList in 'elDespesaList.pas' {frmElDespesaList},
  elReceita in 'elReceita.pas' {frmElReceita},
  elReceitaList in 'elReceitaList.pas' {frmElReceitaList},
  funcao in 'funcao.pas' {frmFuncao},
  funcaoList in 'funcaoList.pas' {frmFuncaoList},
  subFuncao in 'subFuncao.pas' {frmSubFuncao},
  fonte in 'fonte.pas' {frmFonte},
  fonteList in 'fonteList.pas' {frmFonteList},
  orgao in 'orgao.pas' {frmOrgao},
  orgaoList in 'orgaoList.pas' {frmOrgaoList},
  unorc in 'unorc.pas' {frmUnorc},
  unorcList in 'unorcList.pas' {frmUnorcList},
  unorcStructure in 'unorcStructure.pas' {frmUnorcStructure},
  programa in 'programa.pas' {frmPrograma},
  programaList in 'programaList.pas' {frmProgramaList},
  recUno in 'recUno.pas' {frmRecUno},
  recUnoList in 'recUnoList.pas' {frmRecUnoList},
  recUnoListAlfa in 'recUnoListAlfa.pas' {frmRecUnoListAlfa},
  proposta in 'proposta.pas' {frmProposta},
  seaLocali in 'seaLocali.pas' {frmSeaLocali},
  consDemProg in 'consDemProg.pas' {frmConsDemProg},
  conProgGov in 'conProgGov.pas' {frmConsProgGov},
  conResRec in 'conResRec.pas' {frmConsResRec},
  ConsFonteGrupoGer in 'ConsFonteGrupoGer.pas' {frmConsFonteGrupoGer},
  evolRec in 'evolRec.pas' {frmEvolRec},
  evolDesp in 'evolDesp.pas' {frmEvolDesp},
  consEvolRec in 'consEvolRec.pas' {frmConsEvolRec},
  consEvolDesp in 'consEvolDesp.pas' {frmConsEvolDesp},
  consDestRec in 'consDestRec.pas' {frmConsDestRec},
  parametro in 'parametro.pas' {frmParametro},
  consDemRecDest in 'consDemRecDest.pas' {frmConsDemRecDest},
  consDemRecCat in 'consDemRecCat.pas' {frmConsDemRecCat},
  consReceita in 'consReceita.pas' {frmConsReceita},
  logIn in 'logIn.pas' {frmLogIn},
  ConsRecDespTot in 'ConsRecDespTot.pas' {frmConsRecDespTot},
  consRecDespFis in 'consRecDespFis.pas' {frmConsRecDespFis},
  consRecDespSeg in 'consRecDespSeg.pas' {frmConsRecDespSeg},
  consRegional in 'consRegional.pas' {frmConsRegional},
  consRecArrec in 'consRecArrec.pas' {frmConsRecArrec},
  ConsDespCat_Indireto in 'ConsDespCat_Indireto.pas' {frmConsDespCat_Indireto},
  consDespFun in 'consDespFun.pas' {frmConsDespFun},
  consDespSFun in 'consDespSFun.pas' {frmConsDespSFun},
  consDespPodOrg in 'consDespPodOrg.pas' {frmConsDespPodOrg},
  consDespOrgao in 'consDespOrgao.pas' {frmConsDespOrgao},
  conDensEns in 'conDensEns.pas' {frmConsDensEns},
  consNatDesp in 'consNatDesp.pas' {frmConsNatDesp},
  consDial in 'consDial.pas' {frmConsDial},
  consRecLiq in 'consRecLiq.pas' {frmConsRecLiq},
  orgaoDial in 'orgaoDial.pas' {frmOrgaoDial},
  orgSintFun in 'orgSintFun.pas' {frmOrgSintFun},
  orgFonte in 'orgFonte.pas' {frmOrgFonte},
  orgSintUnorc in 'orgSintUnorc.pas' {frmOrgSintUnorc},
  orgCatDesp in 'orgCatDesp.pas' {frmOrgCatDesp},
  orgNatDesp in 'orgNatDesp.pas' {frmOrgNatDesp},
  UnoDialGer in 'UnoDialGer.pas' {frmUnoDialGer},
  unoSintFun in 'unoSintFun.pas' {frmUnoSintFun},
  UnoFonteGer in 'UnoFonteGer.pas' {frmUnoFonteGer},
  unoCatDesp in 'unoCatDesp.pas' {frmUnoCatDesp},
  unoNatDesp in 'unoNatDesp.pas' {frmUnoNatDesp},
  unoDet in 'unoDet.pas' {frmUnoDet},
  UnoQDD_Geral in 'UnoQDD_Geral.pas' {frmUnoQDD_Geral},
  backup in 'backup.pas' {frmBackup},
  restore in 'restore.pas' {frmRestore},
  portaria in 'portaria.pas' {frmPortaria},
  portariaList in 'portariaList.pas' {frmPortariaList},
  consFonteGrupo in 'consFonteGrupo.pas' {frmConsFonteGrupo},
  UnoQDD02 in 'UnoQDD02.pas' {frmUnoQDD02: TQuickRep},
  UnoFonteProposta in 'UnoFonteProposta.pas' {frmUnoFonteProposta},
  UnoDialGerRel in 'UnoDialGerRel.pas' {frmUnoDialGerRel},
  ConsRecArrec02 in 'ConsRecArrec02.pas' {FrmConsRecArrec02: TQuickRep},
  UnoQDDTodos in 'UnoQDDTodos.pas' {frmUnoQDDTodos},
  consDespCat in 'consDespCat.pas' {frmConsDespCat},
  ConsDespCat_Direto in 'ConsDespCat_Direto.pas' {frmConsDespCat_Direto},
  UnoIndUsoFonte in 'UnoIndUsoFonte.pas' {frmUnoIndUsoFonte: TQuickRep},
  GraficoFonte in 'GraficoFonte.pas' {frmGraficoFonte},
  GraficoFuncao in 'GraficoFuncao.pas' {frmGraficoFuncao},
  Cortes in 'Cortes.pas' {frmCortes},
  UnoQDDGerRel02 in 'UnoQDDGerRel02.pas' {frmUnoQDDGerRel02},
  CadEmendas in 'CadEmendas.pas' {frmCadEmendas},
  acao in 'acao.pas' {frmAcao},
  Vereadores in 'Vereadores.pas' {frmVereadores},
  VereadoresEmendas in 'VereadoresEmendas.pas' {FrmVereadoresEmendas},
  EmendasAcrescimo in 'EmendasAcrescimo.pas' {frmEmendasAcrescimo: TQuickRep},
  EmendasReducao02 in 'EmendasReducao02.pas' {frmEmendasReducao02: TQuickRep},
  Trocas in 'Trocas.pas' {frmTrocas},
  EmendasProc in 'EmendasProc.pas' {frmEmendasProc},
  HWarning in 'HWarning.pas' {HWarningForm},
  Emendareducao in 'Emendareducao.pas' {frmEmendasReducao: TQuickRep},
  ReducaoPesq in 'ReducaoPesq.pas' {frmReducaoPesq},
  EmendasPorModificativa_00 in 'EmendasPorModificativa_00.pas' {FrmEmendasPorModificativa_00: TQuickRep},
  EmendasPorAcrescimo_00 in 'EmendasPorAcrescimo_00.pas' {FrmEmendasPorAcrescimo_00: TQuickRep},
  OrgImpRelat in 'OrgImpRelat.pas' {frmOrgImpRelat},
  UnoQDDProposta in 'UnoQDDProposta.pas' {frmUnoQDDProposta},
  CorteSequencial in 'CorteSequencial.pas' {FrmCorteSequencial},
  Funcionalidade in 'Funcionalidade.pas' {FrmFuncionalidade},
  ListaOrgaos in 'ListaOrgaos.pas' {FrmListaOrgaos},
  subFuncaoList in 'subFuncaoList.pas' {frmSubFuncaoLIst},
  UnoQDDGerRel in 'UnoQDDGerRel.pas' {frmUnoQDDGerRel},
  FonteCons in 'FonteCons.pas' {FrmFonteCons},
  unoFonte in 'unoFonte.pas' {frmUnoFonte},
  unoQDD in 'unoQDD.pas' {frmUnoQDD},
  FonteConsRel in 'FonteConsRel.pas' {frmFonteConsRel: TQuickRep},
  Teste in 'Teste.pas' {frmTeste: TQuickRep},
  unoDial in 'unoDial.pas' {frmUnoDial},
  PrincipalFolha in 'PrincipalFolha.pas' {frmPrincipalFolha},
  relCapa in 'relCapa.pas' {frmRelCapa},
  relParte in 'relParte.pas' {frmRelParte},
  relSecretario in 'relSecretario.pas' {frmRelSecretario},
  relUnorc in 'relUnorc.pas' {frmrelUnorc},
  relCapaQdd in 'relCapaQdd.pas' {frmRelCapaQdd},
  relEquipe in 'relEquipe.pas' {frmRelEquipe},
  Emendas in 'Emendas.pas' {frmEmendas},
  Autoriza in 'Autoriza.pas' {FrmAutoriza},
  LoginEmendas in 'LoginEmendas.pas' {FrmLoginEmendas},
  EmendasGeral in 'EmendasGeral.pas' {FrmEmendasGeral},
  Auditoria in 'Auditoria.pas' {FrmAuditoria},
  EmendasIncompletasRel in 'EmendasIncompletasRel.pas' {FrmEmendasIncompletasRel: TQuickRep},
  EmendaGeralRel in 'EmendaGeralRel.pas' {frmEmendaGeralRel: TQuickRep},
  EmendaAprovada1 in 'EmendaAprovada1.pas' {frmEmendaAprovada1: TQuickRep},
  TrocaSenha in 'TrocaSenha.pas' {FrmTrocaSenha},
  VereadoresGeral in 'VereadoresGeral.pas' {FrmVereadoresGeral},
  UnoImpRelat in 'UnoImpRelat.pas' {frmUnoImpRelat},
  EmendasApro2Doe in 'EmendasApro2Doe.pas' {frmEmendasApro2Doe: TQuickRep},
  EmendaAprovadaGeral in 'EmendaAprovadaGeral.pas' {frmEmendaAprovadaGeral: TQuickRep},
  EmendasValorReduzido in 'EmendasValorReduzido.pas' {FrmEmendasValorReduzido: TQuickRep},
  EmendasApro1Doe in 'EmendasApro1Doe.pas' {frmEmendasApro1Doe: TQuickRep},
  EmendasPorAcrescimo in 'EmendasPorAcrescimo.pas' {FrmEmendasPorAcrescimo: TQuickRep},
  EmendasPorModificativa in 'EmendasPorModificativa.pas' {FrmEmendasPorModificativa: TQuickRep},
  banco in 'banco.pas' {frmBanco};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmtData, dmtData);
  Application.CreateForm(TfrmLogIn, frmLogIn);
  Application.CreateForm(TfrmRestore, frmRestore);
  Application.CreateForm(TfrmPortaria, frmPortaria);
  Application.CreateForm(TfrmConsDespCat, frmConsDespCat);
  Application.CreateForm(TfrmConsDespCat_Direto, frmConsDespCat_Direto);
  frmLogIn.showModal;
  if not logIn.itsOk then exit;
  Application.CreateForm(TfrmUnoDial, frmUnoDial);
  Application.CreateForm(TfrmFileImport, frmFileImport);
  Application.CreateForm(TfrmAcao, frmAcao);
  Application.CreateForm(TfrmElDespesa, frmElDespesa);
  Application.CreateForm(TfrmElReceita, frmElReceita);
  Application.CreateForm(TfrmFuncao, frmFuncao);
  Application.CreateForm(TfrmSubFuncao, frmSubFuncao);
  Application.CreateForm(TfrmFonte, frmFonte);
  Application.CreateForm(TfrmOrgao, frmOrgao);
  Application.CreateForm(TfrmUnorc, frmUnorc);
  Application.CreateForm(TfrmPrograma, frmPrograma);
  Application.CreateForm(TfrmRecUno, frmRecUno);
  Application.CreateForm(TfrmProposta, frmProposta);
  Application.CreateForm(TfrmSeaLocali, frmSeaLocali);
  Application.CreateForm(TfrmEvolRec, frmEvolRec);
  Application.CreateForm(TfrmEvolDesp, frmEvolDesp);
  Application.CreateForm(TfrmParametro, frmParametro);
  Application.CreateForm(TfrmConsDial, frmConsDial);
  IF frmLogIn.rdgOrcamento.ItemIndex <> 3 then
     Application.CreateForm(TfrmConsRecLiq, frmConsRecLiq);
  Application.CreateForm(TfrmOrgaoDial, frmOrgaoDial);
  IF frmLogIn.rdgOrcamento.ItemIndex <> 3 then
     Application.CreateForm(TfrmOrgNatDesp, frmOrgNatDesp);
  Application.CreateForm(TfrmBackup, frmBackup);
  if logIn.itsOk then begin
     application.run;
  end;
end.
