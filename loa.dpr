program loa;

uses
  Forms,
  main in 'main.pas' {frmMain},
  data in 'data.pas' {dmtData: TDataModule},
  fileImport in 'fileImport.pas' {frmFileImport},
  acao in 'acao.pas' {frmAcao},
  relModelo in 'relModelo.pas' {frmRelModel},
  acaoList in 'acaoList.pas' {frmAcaoList},
  elDespesa in 'elDespesa.pas' {frmElDespesa},
  elDespesaList in 'elDespesaList.pas' {frmElDespesaList},
  elReceita in 'elReceita.pas' {frmElReceita},
  elReceitaList in 'elReceitaList.pas' {frmElReceitaList},
  funcao in 'funcao.pas' {frmFuncao},
  funcaoList in 'funcaoList.pas' {frmFuncaoList},
  subFuncao in 'subFuncao.pas' {frmSubFuncao},
  subFuncaoList in 'subFuncaoList.pas' {frmSubFuncaoLIst},
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
  unoFonte in 'unoFonte.pas' {frmUnoFonte},
  unoDial in 'unoDial.pas' {frmUnoDial},
  ConsRecArrec02 in 'ConsRecArrec02.pas' {FrmConsRecArrec02: TQuickRep},
  unoQDD in 'unoQDD.pas' {frmUnoQDD},
  consDespCat in 'consDespCat.pas' {frmConsDespCat},
  ConsDespCat_Direto in 'ConsDespCat_Direto.pas' {frmConsDespCat_Direto};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmtData, dmtData);
  Application.CreateForm(TfrmLogIn, frmLogIn);
  Application.CreateForm(TfrmRestore, frmRestore);
  Application.CreateForm(TfrmPortaria, frmPortaria);
  Application.CreateForm(TfrmUnoQDD, frmUnoQDD);
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
