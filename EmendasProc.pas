unit EmendasProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TfrmEmendasProc = class(TForm)
    gbBotom: TGroupBox;
    btSair: TButton;
    qyEmendas_: TADOQuery;
    qyEmendas_Valor_: TADOQuery;
    qyEmendas_Codigo: TAutoIncField;
    qyEmendas_NumEmenda: TStringField;
    qyEmendas_Votacao: TStringField;
    qyEmendas_Status: TStringField;
    qyEmendas_Tipo: TStringField;
    qyEmendas_Texto: TMemoField;
    qyEmendas_Unorc: TStringField;
    qyEmendas_Funcao: TStringField;
    qyEmendas_SubFuncao: TStringField;
    qyEmendas_Programa: TStringField;
    qyEmendas_Acao: TStringField;
    qyEmendas_Locali: TIntegerField;
    qyEmendas_Esfera: TStringField;
    qyEmendas_Regional: TStringField;
    qyEmendas_MetaFisica: TIntegerField;
    qyEmendas_Produto: TStringField;
    qyEmendas_aUnorc: TStringField;
    qyEmendas_aFuncao: TStringField;
    qyEmendas_aSubFuncao: TStringField;
    qyEmendas_aPrograma: TStringField;
    qyEmendas_aAcao: TStringField;
    qyEmendas_aLocali: TStringField;
    qyEmendas_aGrupo: TStringField;
    qyEmendas_aEsfera: TStringField;
    qyEmendas_aRegional: TStringField;
    qyEmendas_aMetaFisica: TIntegerField;
    qyEmendas_aGrupoDesp: TStringField;
    qyEmendas_rUnorc: TStringField;
    qyEmendas_rFuncao: TStringField;
    qyEmendas_rSubFuncao: TStringField;
    qyEmendas_rPrograma: TStringField;
    qyEmendas_rAcao: TStringField;
    qyEmendas_rLocali: TStringField;
    qyEmendas_rGrupo: TStringField;
    qyEmendas_rEsfera: TStringField;
    qyEmendas_rRegional: TStringField;
    qyEmendas_rMetaFisica: TIntegerField;
    qyEmendas_rGrupoDesp: TStringField;
    qyEmendas_Valor_Codigo: TAutoIncField;
    qyEmendas_Valor_Emenda: TStringField;
    qyEmendas_Valor_relemento: TStringField;
    qyEmendas_Valor_rIndUso: TStringField;
    qyEmendas_Valor_rFonte: TStringField;
    qyEmendas_Valor_rValor: TBCDField;
    qyEmendas_Valor_aelemento: TStringField;
    qyEmendas_Valor_aIndUso: TStringField;
    qyEmendas_Valor_aFonte: TStringField;
    qyEmendas_Valor_aValor: TBCDField;
    qyEmendas_Valor_Status: TStringField;
    qyEmendas_Locali_: TADOQuery;
    btConverte: TButton;
    qyLocali_: TADOQuery;
    qyDet_: TADOQuery;
    qyLocali_CODIGO: TAutoIncField;
    qyLocali_esfera: TStringField;
    qyLocali_unorc: TStringField;
    qyLocali_funcao: TStringField;
    qyLocali_subFuncao: TStringField;
    qyLocali_programa: TStringField;
    qyLocali_acao: TStringField;
    qyLocali_locali: TStringField;
    qyLocali_regional: TStringField;
    qyLocali_descricao: TStringField;
    qyLocali_metaFisica: TBCDField;
    qyDet_Codigo: TAutoIncField;
    qyDet_locali: TIntegerField;
    qyDet_elDespesa: TStringField;
    qyDet_indUso: TStringField;
    qyDet_fonte: TStringField;
    qyDet_valor: TBCDField;
    qyEmendas_Locali_Codigo: TAutoIncField;
    qyEmendas_Locali_Emenda: TStringField;
    qyEmendas_Locali_Esfera: TStringField;
    qyEmendas_Locali_unorc: TStringField;
    qyEmendas_Locali_funcao: TStringField;
    qyEmendas_Locali_subFuncao: TStringField;
    qyEmendas_Locali_programa: TStringField;
    qyEmendas_Locali_acao: TStringField;
    qyEmendas_Locali_locali: TStringField;
    qyEmendas_Locali_regional: TStringField;
    qyEmendas_Locali_descricao: TStringField;
    qyEmendas_Locali_metaFisica: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSairClick(Sender: TObject);
    procedure btConverteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmendasProc: TfrmEmendasProc;

implementation

uses data, HWarning;

{$R *.dfm}

procedure TfrmEmendasProc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmEmendasProc := nil;
end;

procedure TfrmEmendasProc.btSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmEmendasProc.btConverteClick(Sender: TObject);
begin
    //ShowWarning('Començando Processamento, aguarde...');

    qyEmendas_.Open;
    qyEmendas_.First;

    // Emendas

    While not qyEmendas_.Eof do
    Begin
       //ShowWarning('Pesquisando Emendas_Locali, aguarde...');
       qyEmendas_Locali_.Close;
       qyEmendas_Locali_.Parameters.ParamByName('emenda').Value := qyEmendas_NumEmenda.Value;
       qyEmendas_Locali_.ExecSQL;
       qyEmendas_Locali_.Open;
       qyEmendas_Locali_.First;

       If qyEmendas_Locali_.RecordCount > 0 Then
       begin
           qyLocali_.Insert;
           qyLocali_esfera.Value         := qyEmendas_Locali_Esfera.Value;
           qyLocali_Unorc.Value          := qyEmendas_Locali_unorc.Value;
           qyLocali_funcao.Value         := qyEmendas_Locali_funcao.Value;
           qyLocali_subFuncao.Value      := qyEmendas_Locali_subFuncao.Value;
           qyLocali_programa.Value       := qyEmendas_Locali_programa.Value;
           qyLocali_acao.Value           := qyEmendas_Locali_acao.Value;
           qyLocali_locali.Value         := qyEmendas_Locali_locali.Value;
           qyLocali_regional.Value       := qyEmendas_Locali_regional.Value;
           qyLocali_descricao.Value      := qyEmendas_Locali_descricao.Value;
           qyLocali_metaFisica.Value     := qyEmendas_Locali_metaFisica.Value;
           qyLocali_.Post;
       end;

       qyEmendas_.Next;

    End;
    HideWarning;


end;

end.
