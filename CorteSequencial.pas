unit CorteSequencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids, Mask, ToolEdit,
  CurrEdit, ComCtrls, dxCore, dxButton;

type
  TFrmCorteSequencial = class(TForm)
    pnBotton: TPanel;
    btFechar: TButton;
    qyDet_: TADOQuery;
    dsExecOrc_: TDataSource;
    qyDet_Codigo: TAutoIncField;
    qyDet_locali: TIntegerField;
    qyDet_elDespesa: TStringField;
    qyDet_indUso: TStringField;
    qyDet_fonte: TStringField;
    qyDet_valor: TBCDField;
    edSeq: TEdit;
    btLimpar: TButton;
    Label1: TLabel;
    edValor: TRxCalcEdit;
    Label2: TLabel;
    btSalvar: TButton;
    qyOrc_: TADOQuery;
    dsOrc_: TDataSource;
    qyOrc_codigo: TIntegerField;
    qyOrc_locali: TIntegerField;
    qyOrc_elDespesa: TStringField;
    qyOrc_indUso: TStringField;
    qyOrc_fonte: TStringField;
    qyOrc_valor: TBCDField;
    qyOrc_esfera: TStringField;
    qyOrc_unorc: TStringField;
    qyOrc_funcao: TStringField;
    qyOrc_subFuncao: TStringField;
    qyOrc_programa: TStringField;
    qyOrc_acao: TStringField;
    qyOrc_regional: TStringField;
    qyOrc_descricao: TStringField;
    qyOrc_metafisica: TBCDField;
    qyOrc_localiS: TStringField;
    qyOrc_funcaoD: TStringField;
    qyOrc_subFuncaoD: TStringField;
    qyOrc_fonteD: TStringField;
    qyOrc_cat: TStringField;
    qyOrc_catD: TStringField;
    qyOrc_grupo: TStringField;
    qyOrc_grupoD: TStringField;
    qyOrc_mod: TStringField;
    qyOrc_modD: TStringField;
    qyOrc_elem: TStringField;
    qyOrc_orgao: TStringField;
    qyOrc_orgaoS: TStringField;
    qyOrc_orgaoD: TStringField;
    qyOrc_acaoD: TStringField;
    qyOrc_programaD: TStringField;
    qyOrc_unorcD: TStringField;
    qyOrc_recurso: TStringField;
    qyOrc_esferaD: TStringField;
    qyOrc_tipoLocalD: TStringField;
    qyOrc_Poder: TStringField;
    qyOrc_PoderD: TStringField;
    qyOrc_recursoD: TStringField;
    qyOrc_produto: TStringField;
    qyOrc_meta: TStringField;
    qyOrc_fiscal: TBCDField;
    qyOrc_seguridade: TBCDField;
    qyOrc_tesouro: TBCDField;
    qyOrc_outrasF: TBCDField;
    qyOrc_fisTesouro: TBCDField;
    qyOrc_fisOutras: TBCDField;
    qyOrc_segTesouro: TBCDField;
    qyOrc_segOutras: TBCDField;
    qyOrc_pessoal: TBCDField;
    qyOrc_juros: TBCDField;
    qyOrc_outras: TBCDField;
    qyOrc_invest: TBCDField;
    qyOrc_invFin: TBCDField;
    qyOrc_amortiza: TBCDField;
    edValorAnt: TRxCalcEdit;
    edunorc: TLabel;
    edUnorcD: TLabel;
    edPrograma: TLabel;
    edProgramad: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edAcao: TLabel;
    edAcaoD: TLabel;
    Label12: TLabel;
    edLocali: TLabel;
    edDescricao: TLabel;
    edEldespesa: TLabel;
    edIndUso: TLabel;
    edFonte: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Label3: TLabel;
    btImprimir: TdxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFecharClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edSeqExit(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure edSeqChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure AtivaAnima();
    Procedure desativaAnima();

    Procedure Pesq();
    Procedure Limpar();
  end;

var
  FrmCorteSequencial: TFrmCorteSequencial;

implementation

uses data, HWarning, ListaOrgaos;

{$R *.dfm}

procedure TFrmCorteSequencial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action             := caFree;
   FrmCorteSequencial := nil;

end;

procedure TFrmCorteSequencial.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If key = #13 Then
   Begin
      Perform(WM_NEXTDLGCTL,0,0);
      key := #0;
   End;
end;

procedure TFrmCorteSequencial.btFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmCorteSequencial.btLimparClick(Sender: TObject);
begin
   ShowWarning('REORGANIZANDO DADOS, AGUARDE...');
   edSeq.Clear;
   qyDet_.Close;
   qyDet_.SQL.Clear;
   qyDet_.SQL.Add('SELECT * FROM DET');
   qyDet_.SQL.Add('ORDER BY codigo');
   qyDet_.ExecSQL;
   qyDet_.Open;

   HideWarning;

   Limpar();

   edSeq.SetFocus;


   //edSeq.Clear;
   //edSeq.

end;

procedure TFrmCorteSequencial.btSalvarClick(Sender: TObject);
begin
   If Trim(edValor.Text) ='' Then
   Begin
      ShowMessage('O valor deve ser informado!!!');
      Exit;
   End;

   if application.messageBox('CONFIRMA O CORTE DO SEQUENCIAL?' ,'CORTE DE SEQUENCIAL',MB_ICONQUESTION+MB_YESNO)
              = IDNO then exit;
   ShowWarning('EDITANDO DADOS, AGUARDE...');
   AtivaAnima;

       qyDet_.Edit;
       qyDet_valor.Value := edValor.Value;
       qyDet_.Post;

   HideWarning;
   btLimpar.OnClick(NIL);
end;

procedure TFrmCorteSequencial.AtivaAnima;
begin

end;

procedure TFrmCorteSequencial.desativaAnima;
begin

end;

procedure TFrmCorteSequencial.Pesq;
begin

   If trim(edSeq.Text) = '' then
   begin
      Exit;
   end;

   ShowWarning('FAZENDO LEITURA DE DADOS, AGUARDE...');

   qyDet_.Close;
   qyDet_.SQL.Clear;
   qyDet_.SQL.Add('SELECT * FROM DET');
   qyDet_.SQL.Add('WHERE CODIGO = :CODIGO');
   qyDet_.Parameters.ParamByName('CODIGO').Value := StrToInt(edSeq.Text);
   qyDet_.SQL.Add('ORDER BY codigo');
   qyDet_.ExecSQL;
   qyDet_.Open;

   qyOrc_.Close;
   qyOrc_.Parameters.ParamByName('Codigo').Value :=  qyDet_Codigo.Value;
   qyOrc_.ExecSQL;
   qyOrc_.Open;

   edValorAnt.Value    := qyDet_valor.Value;

   edunorc.Caption     := qyOrc_unorc.Value;
   edunorcd.Caption    := qyOrc_unorcD.Value;

   edPrograma.Caption  := qyOrc_programa.Value;
   edProgramad.Caption := qyOrc_programaD.Value;

   edAcao.Caption      := qyOrc_acao.Value;
   edAcaoD.Caption     := qyOrc_acaoD.Value;

   edLocali.Caption    := qyOrc_localis.AsString;
   edDescricao.Caption := qyOrc_descricao.Value;

   edEldespesa.Caption := qyOrc_elDespesa.Value;
   edIndUso.Caption    := qyOrc_indUso.Value;
   edFonte.Caption     := qyOrc_fonte.Value;
                           
   HideWarning;
end;

procedure TFrmCorteSequencial.edSeqExit(Sender: TObject);
begin
   Pesq;
end;

procedure TFrmCorteSequencial.btImprimirClick(Sender: TObject);
begin
   If FrmListaOrgaos = nil then
      FrmListaOrgaos := TFrmListaOrgaos.Create(self);
   FrmListaOrgaos.ShowModal;
end;

procedure TFrmCorteSequencial.edSeqChange(Sender: TObject);
begin
   If Trim(edSeq.Text)<> '' Then
   Begin
      btSalvar.Enabled := True
   End
   Else
   Begin
      Limpar;
      btSalvar.Enabled := False;
   End;
end;

procedure TFrmCorteSequencial.Limpar;
begin
   edValorAnt.Value    := 0;
   edValor.Value       := 0;

   edunorc.Caption     := '';
   edunorcd.Caption    := '';

   edPrograma.Caption  := '';
   edProgramad.Caption := '';

   edAcao.Caption      := '';
   edAcaoD.Caption     := '';

   edLocali.Caption    := '';
   edDescricao.Caption := '';

   edEldespesa.Caption := '';
   edIndUso.Caption    := '';
   edFonte.Caption     := '';

   edSeq.SetFocus;

end;

end.
