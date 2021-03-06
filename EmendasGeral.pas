unit EmendasGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls,
  ADODB, dxCore, dxButton, Mask, DBCtrls, ToolEdit, CurrEdit;

type
  TFrmEmendasGeral = class(TForm)
    PageControl1: TPageControl;
    pnBotoes: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    gbCadastro: TGroupBox;
    pnConsulta: TPanel;
    DBGrid1: TDBGrid;
    dsEG_: TDataSource;
    qyEG_: TADOQuery;
    cbPesquisa: TComboBox;
    edPesquisa: TEdit;
    btPesquisa: TdxButton;
    btRenovar: TdxButton;
    btImprimir: TdxButton;
    btNovo: TdxButton;
    btSalvar: TdxButton;
    btCancelar: TdxButton;
    btAlterar: TdxButton;
    btExcluir: TdxButton;
    btFechar: TdxButton;
    Label1: TLabel;
    dbCodigo: TDBEdit;
    qCons_: TADOQuery;
    DataSource1: TDataSource;
    qyVE_: TADOQuery;
    qyVE_Codigo: TAutoIncField;
    qyVE_Codigo_Vereador: TIntegerField;
    qyVE_Emenda: TStringField;
    qyVE_Colocacao: TIntegerField;
    qyVE_Vereador: TStringField;
    dsVE_: TDataSource;
    qyVereadores_: TADOQuery;
    qyVereadores_Codigo: TAutoIncField;
    qyVereadores_Nome: TStringField;
    qyVereadores_Partido_Sigla: TStringField;
    qyVereadores_Condicao: TStringField;
    qyVereadores_Comentario: TStringField;
    qyVereadores_DtCadastro: TDateTimeField;
    qyEG_Codigo: TAutoIncField;
    qyEG_EmendaG: TStringField;
    qyEG_Votacao: TStringField;
    qyEG_Status: TStringField;
    qyEG_Tipo: TStringField;
    qyEG_Vereador: TIntegerField;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label8: TLabel;
    cbVotacao: TComboBox;
    Label2: TLabel;
    cbStatus: TComboBox;
    Label5: TLabel;
    cbTipo: TComboBox;
    txtemenda: TEdit;
    Label7: TLabel;
    Bevel3: TBevel;
    qyCons_: TADOQuery;
    qyCons_Codigo: TAutoIncField;
    qyCons_EmendaG: TStringField;
    qyCons_Votacao: TStringField;
    qyCons_Status: TStringField;
    qyCons_Tipo: TStringField;
    qyCons_Vereador: TIntegerField;
    btVereadores: TButton;
    lbVereador: TLabel;
    qyEG_NOME: TStringField;
    qyEG_ValorTotal: TBCDField;
    edValorTotal: TRxCalcEdit;
    egCons_: TADOQuery;
    egCons_Codigo: TAutoIncField;
    egCons_EmendaG: TStringField;
    egCons_Votacao: TStringField;
    egCons_Status: TStringField;
    egCons_Tipo: TStringField;
    egCons_Vereador: TIntegerField;
    egCons_ValorTotal: TBCDField;
    dxButton1: TdxButton;
    qCons_Codigo: TAutoIncField;
    qCons_EmendaG: TStringField;
    qCons_NumEmenda: TStringField;
    qCons_Votacao: TStringField;
    qCons_Status: TStringField;
    qCons_Tipo: TStringField;
    qCons_Texto: TMemoField;
    qCons_Unorc: TStringField;
    qCons_Funcao: TStringField;
    qCons_SubFuncao: TStringField;
    qCons_Programa: TStringField;
    qCons_Acao: TStringField;
    qCons_Locali: TIntegerField;
    qCons_Esfera: TStringField;
    qCons_Regional: TStringField;
    qCons_MetaFisica: TIntegerField;
    qCons_Produto: TStringField;
    qCons_aUnorc: TStringField;
    qCons_aFuncao: TStringField;
    qCons_aSubFuncao: TStringField;
    qCons_aPrograma: TStringField;
    qCons_aAcao: TStringField;
    qCons_aLocali: TStringField;
    qCons_aGrupo: TStringField;
    qCons_aEsfera: TStringField;
    qCons_aRegional: TStringField;
    qCons_aMetaFisica: TIntegerField;
    qCons_aGrupoDesp: TStringField;
    qCons_rUnorc: TStringField;
    qCons_rFuncao: TStringField;
    qCons_rSubFuncao: TStringField;
    qCons_rPrograma: TStringField;
    qCons_rAcao: TStringField;
    qCons_rLocali: TStringField;
    qCons_rGrupo: TStringField;
    qCons_rEsfera: TStringField;
    qCons_rRegional: TStringField;
    qCons_rMetaFisica: TIntegerField;
    qCons_rGrupoDesp: TStringField;
    qCons_Processado: TStringField;
    DBGrid2: TDBGrid;
    qryVl_ver: TADOQuery;
    dsVl_ver: TDataSource;
    qryVl_verNOME: TStringField;
    qryVl_verTotalVer: TBCDField;
    DBGrid3: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery1Reserva: TBCDField;
    ADOQuery1Outros: TBCDField;
    edValorReserva: TRxCalcEdit;
    Label3: TLabel;
    Label4: TLabel;
    edValorOutros: TRxCalcEdit;
    qyEG_Reserva: TBCDField;
    qyEG_Outros: TBCDField;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure qyEG_AfterPost(DataSet: TDataSet);
    procedure btAlterarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPesquisaClick(Sender: TObject);
    procedure btRenovarClick(Sender: TObject);
    procedure txtemendaExit(Sender: TObject);
    procedure btVereadoresClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure edValorTotalExit(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodVereador  : Integer;
    SQL_Original : String;
    Procedure Botoes();
    Procedure KeyPress();
    Procedure ClearControls();
  end;

var
  FrmEmendasGeral: TFrmEmendasGeral;

implementation

uses HWarning, data, main, EmendasNew, VereadoresEmendas, LoginEmendas,
  EmendasPVerRel, EmandasDetRel ;

{$R *.dfm}

procedure TFrmEmendasGeral.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      Perform(WM_NEXTDLGCTL,0,0);
      key := #0;
   end;
end;

procedure TFrmEmendasGeral.FormActivate(Sender: TObject);
begin
   HideWarning;
end;

procedure TFrmEmendasGeral.Botoes;
begin
   If dsEG_.State in [dsedit, dsInsert] then
   Begin
      btNovo.Enabled     := False;
      btSalvar.Enabled   := True;
      btCancelar.Enabled := True;
      btAlterar.Enabled  := False;
      btExcluir.Enabled  := False;
      btFechar.Enabled   := False;
      PageControl1.ActivePageIndex :=0;
      gbCadastro.Enabled := True;
      //dbNome.SetFocus;
   End;
   If dsEG_.State in [dsBrowse] then
   Begin
      btNovo.Enabled     := True;
      btSalvar.Enabled   := False;
      btCancelar.Enabled := False;
      btAlterar.Enabled  := True;
      btExcluir.Enabled  := True;
      btFechar.Enabled   := True;
      gbCadastro.Enabled := False;
      PageControl1.ActivePageIndex :=1;
   End;
end;

procedure TFrmEmendasGeral.FormShow(Sender: TObject);
begin
   Botoes;
end;

procedure TFrmEmendasGeral.FormCreate(Sender: TObject);
begin
   ShowWarning('ABRINDO TABELAS DE [EMENDAS GERAL], AGUARDE...');
   if dsEG_.State in [dsinactive] then qyEG_.Open;
   if qyVereadores_.Active = false then qyVereadores_.Open;

   SQL_Original := qyEG_.SQL.Text;

   HideWarning;
   //WindowState := wsMaximized;
end;

procedure TFrmEmendasGeral.btFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmEmendasGeral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action          := caFree;
   FrmEmendasGeral := nil;
end;

procedure TFrmEmendasGeral.btNovoClick(Sender: TObject);
begin
    ADOQuery1.Active :=False;
    ADOQuery1.Active :=True;

    qryVl_ver.Active :=False;
    qryVl_ver.Active :=True;

   qyEG_.Insert;
   ClearControls;
   cbStatus.ItemIndex := 2;
   txtemenda.SetFocus;
   Botoes;
//   PageControl1.ActivePageIndex :=0;
   PageControl1.ActivePageIndex :=0;
   PageControl1.Pages[1].TabVisible := false;
end;

procedure TFrmEmendasGeral.btSalvarClick(Sender: TObject);
Var
  Estado : string;
begin

    If Trim(txtemenda.Text) = '' then
    Begin
       ShowMessage('Por Favor, informe o n�mero da emenda!!!');
       txtemenda.SetFocus;
       exit;
    End;

    If Trim(cbVotacao.Text) = '' then
    Begin
       ShowMessage('Por Favor, informe a Vota��o!!!');
       cbVotacao.SetFocus;
       exit;
    End;

    If Trim(cbStatus.Text) = '' then
    Begin
       ShowMessage('Por Favor, informe a Status!!!');
       cbStatus.SetFocus;
       exit;
    End;

    If Trim(cbTipo.Text) = '' then
    Begin
       ShowMessage('Por Favor, informe o Tipo!!!');
       cbTipo.SetFocus;
       exit;
    End;

    If dsEG_.State in [dsinsert] then Estado := 'i';
    If dsEG_.State in [dsedit]   then Estado := 'a';

    If MessageBox (Application.Handle, Pchar ('CONFIRMA OS DADOS ?'), 'SALVAR',
       MB_YESNO+MB_ICONEXCLAMATION+MB_DEFBUTTON1) = idNo Then Exit;
    ShowWarning('SALVANDO DADOS, AGUARDE...');
    qyEG_EmendaG.Value    := txtemenda.Text;
    qyEG_Votacao.Value    := copy(cbVotacao.text,1,1);
    qyEG_Status.Value     := copy(cbStatus.text,1,1);
    qyEG_Tipo.Value       := copy(cbTipo.text,1,1);
    qyEG_ValorTotal.Value := edValorTotal.Value;
    qyEG_Reserva.Value    := edValorReserva.Value;
    qyEG_Outros.Value     := edValorOutros.Value;
    qyEG_Vereador.Value   := CodVereador;
    qyEG_.Post;
    HideWarning;

    if Estado = 'i' then dmtData.Auditoria('INSERIR','EMENDA GERAL',qyEG_EmendaG.Value);
    if Estado = 'a' then dmtData.Auditoria('ALTERAR','EMENDA GERAL',qyEG_EmendaG.Value);



    btRenovar.OnClick(NIL);
    ADOQuery1.Active :=False;
    ADOQuery1.Active :=True;

    qryVl_ver.Active :=False;
    qryVl_ver.Active :=True;
    PageControl1.Pages[1].TabVisible := True;
    //Botoes;
end;

procedure TFrmEmendasGeral.btCancelarClick(Sender: TObject);
begin
    If MessageBox (Application.Handle, Pchar ('CONFIRMA O CANCELAMENTO DE DADOS ?'), 'CANCELAMENTO',
       MB_YESNO+MB_ICONEXCLAMATION+MB_DEFBUTTON1) = idNo Then Exit;
    ShowWarning('CANCELANDO DADOS, AGUADE...');

    qyVE_.Close;
    qyVE_.Parameters.ParamByName('Emenda').Value := txtemenda.Text;
    qyVE_.ExecSQL;
    qyVE_.Open;
    if (qyVE_.RecordCount > 0) and (dsEG_.State in [dsInsert]) then
       qyVE_.Delete;

    egCons_.Close;
    egCons_.Parameters.ParamByName('EmendaG').Value := txtemenda.Text;
    egCons_.ExecSQL;
    egCons_.Open;
    If (egCons_.RecordCount > 0) and (dsEG_.State in [dsInsert]) then
       egCons_.Delete;


    qyEG_.Cancel;
    HideWarning;
    ADOQuery1.Active :=False;
    ADOQuery1.Active :=True;

    qryVl_ver.Active :=False;
    qryVl_ver.Active :=True;
    qyEG_.Active :=False;
    qyEG_.Active :=True;
    
    PageControl1.Pages[1].TabVisible := True;
    //Botoes;
end;

procedure TFrmEmendasGeral.qyEG_AfterPost(DataSet: TDataSet);
begin
   //ClearControls;
   Botoes;
end;

procedure TFrmEmendasGeral.btAlterarClick(Sender: TObject);
begin
   KeyPress;
   CodVereador := qyEG_Vereador.Value;
   qyEG_.Edit;
   qryVl_ver.Active :=False;
   qryVl_ver.Active :=True;
end;

procedure TFrmEmendasGeral.btExcluirClick(Sender: TObject);
Var
  Lista_Emendas : String;
  Cont : integer;
begin
   frmMain.Autorizacao;

   If frmMain.Autoriza = 'N' Then
   Begin
      ShowMessage('Autoriza��o Negada!!!');
      btRenovar.OnClick(nil);
      Exit;
   End;

   Lista_Emendas := '';
   Cont := 1;
   qCons_.Close;
   qCons_.Parameters.ParamByName('EmendaG').Value := qyEG_EmendaG.Value;
   qCons_.ExecSQL;
   qCons_.Open;

   If qCons_.RecordCount > 0 Then
   Begin
      qCons_.First;
      while not qCons_.Eof do
      Begin
         If cont = 1 then
            Lista_Emendas:= Trim(qCons_NumEmenda.Value) +'; '
         else
            Lista_Emendas:= Lista_Emendas + Trim(qCons_NumEmenda.Value) +'; ';
         Cont := Cont + 1;
         qCons_.Next;
      End;

      ShowMessage('Aten��o!!!'+#13+
                  'Esta emenda n�o pode ser apagada pois existe detalhamentos para a mesma.'+#13+
                  'Lista de Detalhes da Emenda '+qyEG_EmendaG.Value+' : '+#13+
                  'Lista:   '+Lista_Emendas);
      Exit;
   End;



   If MessageBox (Application.Handle, Pchar ('CONFIRMA A EXCLUS�O DE DADOS ?'), 'EXCLUS�O',
       MB_YESNO+MB_ICONEXCLAMATION+MB_DEFBUTTON1) = idNo Then Exit;
    ShowWarning('EXCLUINDO DADOS, AGUADE...');

    dmtData.Auditoria('EXCLUIR','EMENDA GERAL',qyEG_EmendaG.Value);

    qyVE_.Close;
    qyVE_.Parameters.ParamByName('Emenda').Value := qyEG_EmendaG.Value;
    qyVE_.ExecSQL;
    qyVE_.Open;
    if qyVE_.RecordCount > 0 then
       qyVE_.Delete;

    egCons_.Close;
    egCons_.Parameters.ParamByName('EmendaG').Value := qyEG_EmendaG.Value;
    egCons_.ExecSQL;
    egCons_.Open;
    If egCons_.RecordCount > 0 then
       egCons_.Delete;


    btRenovar.OnClick(nil);
    HideWarning;

    ADOQuery1.Active :=False;
    ADOQuery1.Active :=True;

    qryVl_ver.Active :=False;
    qryVl_ver.Active :=True;

end;

procedure TFrmEmendasGeral.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2  then
      if btNovo.Enabled = true then btNovo.OnClick(nil);

   if key = vk_f3 then
      if btSalvar.Enabled = true  then btSalvar.OnClick(nil);

   if key = vk_f4  then
      if btCancelar.Enabled = true then btCancelar.OnClick(nil);

   if key = vk_f5 then
      if btAlterar.Enabled = true  then btAlterar.OnClick(nil);

   if key = vk_f6  then
      if btExcluir.Enabled = true then btExcluir.OnClick(nil);

   if key = vk_f7 then
      if btFechar.Enabled = true  then btFechar.OnClick(nil);

   if key = vk_f8   then
      if PageControl1.ActivePageIndex = 1 then btPesquisa.OnClick(nil);

   if key = vk_f9   then
      if PageControl1.ActivePageIndex = 1 then btRenovar. OnClick(nil);

   if key = vk_f11  then
      if PageControl1.ActivePageIndex = 1 then btImprimir.OnClick(nil);
end;

procedure TFrmEmendasGeral.btPesquisaClick(Sender: TObject);
Var
  Lista, pesq : String;
begin
   Lista :=
   'SELECT EG.*,  V.NOME '+
   'FROM EMENDASGERAL EG '+
   'LEFT OUTER JOIN VEREADORES V ON V.CODIGO = EG.VEREADOR ';

   qyEG_.Close;
   qyEG_.SQL.Clear;
   qyEG_.SQL.Add(Lista);

   if Trim(edPesquisa.Text)<>'' then
   begin

   end;

   qyEG_.SQL.Add('ORDER BY EG.EMENDAG');
   qyEG_.ExecSQL;
   qyEG_.Open;

   if qyEG_.RecordCount = 0 then
   begin
      HideWarning;
      ShowMessage('NENHUMA INFORMA��O FOI ENCONTRADA COM OS DADOS FORNECIDOS.');
      EXIT;
   end;

   HideWarning;



end;

procedure TFrmEmendasGeral.btRenovarClick(Sender: TObject);
Var
  Lista : String;
begin
   Lista := SQL_Original;
   ShowWarning('ORGANIZANDO DADOS, AGUARDE...');
   qyEG_.Close;
   qyEG_.SQL.Clear;
   qyEG_.SQL.Add(Lista);
   qyEG_.ExecSQL;
   qyEG_.Open;
   HideWarning;
   ADOQuery1.Active :=False;
   ADOQuery1.Active :=True;

    qryVl_ver.Active :=False;
    qryVl_ver.Active :=True;

end;

procedure TFrmEmendasGeral.txtemendaExit(Sender: TObject);
begin
   if (txtemenda.Text) = '' then exit;

   txtemenda.Text := dmtData.RetZero(txtemenda.Text);
   If dsEG_.state in [dsinsert] then
   Begin
       qyCons_.Close;
       qyCons_.Parameters.ParamByName('EmendaG').Value := txtemenda.Text;
       qyCons_.ExecSQL;
       qyCons_.Open;

       If qyCons_.RecordCount > 0 Then
       Begin
          ShowMessage('Emenda J� Cadastrada');
          Exit;
       End;
   End;

end;

procedure TFrmEmendasGeral.KeyPress;
begin
   With qyEG_ do
   Begin
      with dmtData do
      begin
        setComboBox(fieldByName('Votacao').asString, cbVotacao);
        setComboBox(fieldByName('Status').asString, cbstatus);
        setComboBox(fieldByName('Tipo').asString, cbTipo);
      end;
      edValorTotal.Value := fieldByName('ValorTotal').AsCurrency;
      edValorReserva.Value := fieldByName('Reserva').AsCurrency;
      edValorOutros.Value := fieldByName('Outros').AsCurrency;
      qyVE_.Close;
      qyVE_.Parameters.ParamByName('Emenda').Value := fieldByName('EmendaG').asString;
      qyVE_.ExecSQL;
      qyVE_.Open;
      lbVereador.Caption := qyVE_Vereador.Value;
      txtemenda.Text := fieldByName('EmendaG').asString;
   End;
   
end;

procedure TFrmEmendasGeral.btVereadoresClick(Sender: TObject);
begin
   If FrmVereadoresEmendas = nil then
      FrmVereadoresEmendas := TFrmVereadoresEmendas.Create(Self);
   FrmVereadoresEmendas.NumEmenda := txtemenda.Text;
   FrmVereadoresEmendas.ShowModal;
   btSalvar.SetFocus;
end;

procedure TFrmEmendasGeral.DBGrid1DblClick(Sender: TObject);
begin
   KeyPress;
end;

procedure TFrmEmendasGeral.PageControl1Change(Sender: TObject);
begin
   KeyPress;
end;

procedure TFrmEmendasGeral.ClearControls;
begin
   txtemenda.Text := '';
   cbVotacao.text := '';
   cbVotacao.itemIndex := -1;

   cbStatus.text := '';
   cbStatus.itemIndex := -1;

   cbTipo.text := '';
   cbTipo.itemIndex := -1;

   edValorTotal.Value := 0;
   edValorReserva.Value := 0;
   edValorOutros.Value := 0;
   lbVereador.Caption := 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'; 
   txtemenda.SetFocus;

end;

procedure TFrmEmendasGeral.dxButton1Click(Sender: TObject);
begin
  Try
     If FrmLoginEmendas = nil then
        FrmLoginEmendas := TFrmLoginEmendas.Create(self);
     FrmLoginEmendas.ShowModal;
   Finally
     FrmLoginEmendas.Free;
   End;

   If frmMain.PermLogon = 'S' Then
   Begin
      If frmEmendasNew = nil Then
         frmEmendasNew := TfrmEmendasNew.Create(Self);
      frmEmendasNew.ShowModal;
   End;
end;

procedure TFrmEmendasGeral.edValorTotalExit(Sender: TObject);
begin

    edValorReserva.Value := edValorTotal.Value;
//    edValorOutros.Value  := edValorTotal.Value;
end;

procedure TFrmEmendasGeral.dxButton3Click(Sender: TObject);
begin
    Application.CreateForm(TfrmEmandaDetRel, frmEmandaDetRel);
    frmEmandaDetRel.QuickRep1.preview;
    frmEmandaDetRel.free;

end;

procedure TFrmEmendasGeral.dxButton2Click(Sender: TObject);
begin
    Application.CreateForm(TfrmEmendaspVerRel, frmEmendaspVerRel);
    frmEmendaspVerRel.QuickRep1.preview;
    frmEmendaspVerRel.free;
end;

end.


