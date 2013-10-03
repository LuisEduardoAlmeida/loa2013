program loaMIX2012;

uses
  Forms,
  main in '..\..\LOAMIX\code\main.pas' {frmMain},
  data in '..\..\LOAMIX\code\data.pas' {dmtData: TDataModule},
  parametro in '..\..\LOAMIX\code\parametro.pas' {frmParametro},
  LoginOrgao in '..\..\LOAMIX\code\LoginOrgao.pas' {FrmLoginOrgao},
  Menssagem in '..\..\LOAMIX\code\Menssagem.pas' {FrmMensagem},
  GerenciarOP in '..\..\LOAMIX\code\GerenciarOP.pas' {frmGerenciarOP},
  proposta in '..\..\LOAMIX\code\proposta.pas' {frmProposta},
  unoQDD in '..\..\LOAMIX\code\unoQDD.pas' {frmUnoQDD},
  unoFonte in '..\..\LOAMIX\code\unoFonte.pas' {frmUnoFonte},
  U_RelConsol in '..\..\LOAMIX\code\U_RelConsol.pas' {FrmRelConsul},
  U_Divergencia in '..\..\LOAMIX\code\U_Divergencia.pas' {FrmDivergencia},
  changePass in '..\..\LOAMIX\code\changePass.pas' {frmChangePass};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmtData, dmtData);
  application.run;
  {IF frmLogIn.rdgOrcamento.ItemIndex <> 3 then
     Application.CreateForm(TfrmConsRecLiq, frmConsRecLiq);
  Application.CreateForm(TfrmOrgaoDial, frmOrgaoDial);
  IF frmLogIn.rdgOrcamento.ItemIndex <> 3 then
     Application.CreateForm(TfrmOrgNatDesp, frmOrgNatDesp);
  Application.CreateForm(TfrmBackup, frmBackup);
  if logIn.itsOk then begin
     application.run;
  end;}
end.
