unit consDial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids;

type
  TfrmConsDial = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Shape4: TShape;
    Shape5: TShape;
    btnPrint: TSpeedButton;
    chkRelato: TCheckListBox;
    Shape3: TShape;
    Bevel1: TBevel;
    Shape6: TShape;
    RichEdit1: TRichEdit;
    chkVisualizar: TCheckBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsDial: TfrmConsDial;

implementation

uses data, acaoList, elDespesaList, consDemProg, conProgGov, conResRec,
  consFonteGrupo, consEvolRec, consEvolDesp, consDestRec, consDemRecDest,
  consDemRecCat, consReceita, ConsRecDespTot, consRecDespFis,
  consRecDespSeg, consRegional, consRecArrec, consDespCat, consDespFun,
  consDespSFun, consDespPodOrg, consDespOrgao, conDensEns, consNatDesp,
  consRecLiq, ConsRecArrec02;

{$R *.dfm}

procedure TfrmConsDial.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmConsDial.btnPrintClick(Sender: TObject);
var i : integer;

begin

  with chkRelato do
     for i := 0 to (count - 1) do begin
        if (checked[i]) AND (items[i] = 'Demonstrativo da Despesa por Programa') then begin
           Application.CreateForm(TfrmConsDemProg, frmConsDemProg);
           if chkVisualizar.Checked = true then  frmConsDemProg.report.preview
           else frmConsDemProg.report.Print;
           frmConsDemProg.free;
        end;
        if (checked[i]) AND (items[i] = 'Programa de Governo') then begin
           Application.CreateForm(TfrmConsProgGov, frmConsProgGov);
           if chkVisualizar.Checked = true then  frmConsProgGov.report.preview
           else frmConsProgGov.report.Print;
           frmConsProgGov.free;

        end;
        if (checked[i]) AND (items[i] = 'Demonstrativo das Fontes de Recursos por Grupo de Despesa') then begin
           Application.CreateForm(TfrmConsFonteGrupo, frmConsFonteGrupo);
           if chkVisualizar.Checked = true then  frmConsFonteGrupo.report.preview
           else frmConsFonteGrupo.report.Print;
           frmConsFonteGrupo.free;
        end;

        if (checked[i]) AND (items[i] = 'Quadro da Evolução da Receita') then begin
           Application.CreateForm(TfrmConsEvolRec, frmConsEvolRec);
           if chkVisualizar.Checked = true then  frmConsEvolRec.report.preview
           else frmConsEvolRec.report.Print;
           frmConsEvolRec.free;
        end;

        if (checked[i]) AND (items[i] = 'Demonstrativo da Receita por Categoria Econômica') then begin
           Application.CreateForm(TfrmConsDemRecCat, frmConsDemRecCat);
           if chkVisualizar.Checked = true then  frmConsDemRecCat.report.preview
           else frmConsDemRecCat.report.Print;
           frmConsDemRecCat.free;
        end;

        if (checked[i]) AND (items[i] = 'Resumo Geral da Receita') then begin
           Application.CreateForm(TfrmConsResRec, frmConsResRec);
           if chkVisualizar.Checked = true then  frmConsResRec.report.preview
           else frmConsResRec.report.Print;
           frmConsResRec.free;
        end;
        if (checked[i]) AND (items[i] = 'Receita Total') then begin
           Application.CreateForm(TfrmConsReceita, frmConsReceita);
           if chkVisualizar.Checked = true then  frmConsReceita.report.preview
           else frmConsReceita.report.Print;
           frmConsReceita.free;
        end;

        if (checked[i]) AND (items[i] = 'Receita Fiscal') then begin
           Application.CreateForm(TfrmConsReceita, frmConsReceita);
           frmConsReceita.lblEsfera.caption := 'RECEITA - ORÇAMENTO FISCAL';
           with frmConsReceita.qryCat do begin
             close;
             SQL[8] := SQL[8] + ' WHERE esfera = ''10''';
             open;
           end;
           with frmConsReceita.qryGrupo do begin
             close;
             SQL[6] := SQL[6] + ' AND esfera = ''10''';
             open;
           end;
           with frmConsReceita.qrySubGrupo do begin
             close;
             SQL[6] := SQL[6] + ' AND esfera = ''10''';
             open;
           end;
           with frmConsReceita.qryRubrica do begin
             close;
             SQL[6] := SQL[6] + ' AND esfera = ''10''';
             open;
           end;
           with frmConsReceita.qryAlinea do begin
             close;
             SQL[6] := SQL[6] + ' AND esfera = ''10''';
             open;
           end;
           with frmConsReceita.qry do begin
             close;
             SQL[5] := SQL[5] + ' AND esfera = ''10''';
             open;
           end;
           if chkVisualizar.Checked = true then  frmConsReceita.report.preview
           else frmConsReceita.report.Print;
           frmConsReceita.free;
        end;

        if (checked[i]) AND (items[i] = 'Receita da Seguridade Social') then begin
           Application.CreateForm(TfrmConsReceita, frmConsReceita);
           frmConsReceita.lblEsfera.caption := 'RECEITA - ORÇAMENTO SEGURIDADE SOCIAL';
           with frmConsReceita.qryCat do begin
             close;
             SQL[8] := SQL[8] + ' WHERE esfera = ''20''';
             open;
           end;
           with frmConsReceita.qryGrupo do begin
             close;
             SQL[6] := SQL[6] + ' AND esfera = ''20''';
             open;
           end;
           with frmConsReceita.qrySubGrupo do begin
             close;
             SQL[6] := SQL[6] + ' AND esfera = ''20''';
             open;
           end;
           with frmConsReceita.qryRubrica do begin
             close;
             SQL[6] := SQL[6] + ' AND esfera = ''20''';
             open;
           end;
           with frmConsReceita.qryAlinea do begin
             close;
             SQL[6] := SQL[6] + ' AND esfera = ''20''';
             open;
           end;
           with frmConsReceita.qry do begin
             close;
             SQL[5] := SQL[5] + ' AND esfera = ''20''';
             open;
           end;

           if chkVisualizar.Checked = true then  frmConsReceita.report.preview
           else frmConsReceita.report.Print;
           frmConsReceita.free;

        end;

        if (checked[i]) AND (items[i] = 'Demonstrativo das Receitas Diretamente Arrecadadas por Órgão/Unidade') then begin
           Application.CreateForm(TfrmConsRecArrec02, frmConsRecArrec02);
           if chkVisualizar.Checked = true then  FrmConsRecArrec02.preview
           else frmConsRecArrec02.Print;
           frmConsRecArrec02.free;
        end;
        if (checked[i]) AND (items[i] = 'Demonstrativo das Receitas Diretamente Arrecadadas por Órgão/Unidade - Gerencial') then begin
           Application.CreateForm(TfrmConsRecArrec, frmConsRecArrec);
           if chkVisualizar.Checked = true then  frmConsRecArrec.report.preview
           else frmConsRecArrec.report.Print;
           frmConsRecArrec.free;
        end;


        if (checked[i]) AND (items[i] = 'Demonstrativo da Destinação da Receita') then begin
           Application.CreateForm(TfrmConsDestRec, frmConsDestRec);
           if chkVisualizar.Checked = true then  frmConsDestRec.report.preview
           else frmConsDestRec.report.Print;
           frmConsDestRec.free;

        end;
        if (checked[i]) AND (items[i] = 'Demonstrativo da Receita Segundo sua Destinação') then begin
           Application.CreateForm(TfrmConsDemRecDest, frmConsDemRecDest);
           if chkVisualizar.Checked = true then  frmConsDemRecDest.report.preview
           else frmConsDemRecDest.report.Print;
           frmConsDemRecDest.free;
        end;

        if (checked[i]) AND (items[i] = 'Demonstrativo da Despesa por Categoria Econômica e Grupo de Despesa') then begin
           Application.CreateForm(TfrmConsDespCat, frmConsDespCat);
           if chkVisualizar.Checked = true then  frmConsDespCat.report.preview
           else frmConsDespCat.report.Print;
           frmConsDespCat.free;
        end;

        if (checked[i]) AND (items[i] = 'Demonstrativo da Receita e Despesa - Fiscal') then begin
           Application.CreateForm(TfrmConsRecDespFis, frmConsRecDespFis);
           if chkVisualizar.Checked = true then  frmConsRecDespFis.report.preview
           else frmConsRecDespFis.report.Print;
           frmConsRecDespFis.free;

        end;

        if (checked[i]) AND (items[i] = 'Demonstrativo da Receita e Despesa - Total') then begin
           Application.CreateForm(TfrmConsRecDespTot, frmConsRecDespTot);
           if chkVisualizar.Checked = true then  frmConsRecDespTot.report.preview
           else frmConsRecDespTot.report.Print;
           frmConsRecDespTot.free;
        end;

        if (checked[i]) AND (items[i] = 'Demonstrativo da Receita e Despesa - Seguridade') then begin
           Application.CreateForm(TfrmConsRecDespSeg, frmConsRecDespSeg);
           if chkVisualizar.Checked = true then  frmConsRecDespSeg.report.preview
           else frmConsRecDespSeg.report.Print;
           frmConsRecDespSeg.free;

        end;

        if (checked[i]) AND (items[i] = 'Quadro da Evolução da Despesa') then begin
           Application.CreateForm(TfrmConsEvolDesp, frmConsEvolDesp);
           if chkVisualizar.Checked = true then  frmConsEvolDesp.report.preview
           else frmConsEvolDesp.report.Print;
           frmConsEvolDesp.free;

        end;
        if (checked[i]) AND (items[i] = 'Demonstrativo da Despesa por Função') then begin
           Application.CreateForm(TfrmConsDespFun, frmConsDespFun);
           if chkVisualizar.Checked = true then  frmConsDespFun.report.preview
           else frmConsDespFun.report.Print;
           frmConsDespFun.free;
        end;

        if (checked[i]) AND (items[i] = 'Demonstrativo da Despesa por SubFunção') then begin
           Application.CreateForm(TfrmConsDespSFun, frmConsDespSFun);
           if chkVisualizar.Checked = true then  frmConsDespSFun.report.preview
           else frmConsDespSFun.report.Print;
           frmConsDespSFun.free;
        end;

        if (checked[i]) AND (items[i] = 'Demonstrativo da Despesa por Poder e Órgão') then begin
           Application.CreateForm(TfrmConsDespPodOrg, frmConsDespPodOrg);
           if chkVisualizar.Checked = true then  frmConsDespPodOrg.report.preview
           else frmConsDespPodOrg.report.Print;
           frmConsDespPodOrg.free;
        end;

        if (checked[i]) AND (items[i] = 'Demonstrativo da Despesa por Órgão') then begin
           Application.CreateForm(TfrmConsDespOrgao, frmConsDespOrgao);
           if chkVisualizar.Checked = true then  frmConsDespOrgao.report.preview
           else frmConsDespOrgao.report.Print;
           frmConsDespOrgao.free;
        end;

        if (checked[i]) AND (items[i] = 'Demonstrativo da Despesa com Pessoal em Relação à Receita Corrente Líquida') then begin
           Application.CreateForm(TfrmConsRecLiq, frmConsRecLiq);
           if chkVisualizar.Checked = true then  frmConsRecLiq.report.preview
           else frmConsRecLiq.report.Print;
           frmConsRecLiq.free;

        end;

        if (checked[i]) AND (items[i] = 'Regionalização das Aplicações') then begin
           Application.CreateForm(TfrmConsRegional, frmConsRegional);
           if chkVisualizar.Checked = true then  frmConsRegional.report.preview
           else frmConsRegional.report.Print;
           frmConsRegional.free;
        end;

        if (checked[i]) AND (items[i] = 'Manutenção e Desenvolvimento do Ensino') then begin
           Application.CreateForm(TfrmConsDensEns, frmConsDensEns);
           with frmConsDensEns do begin
             with qryColUm do begin
               close;
               SQL[1] := SQL[1] + ' WHERE funcao = ''12'' AND fonte IN (''101'',''104'')';
               open;
             end;
             with qryColDois do begin
               close;
               SQL[1] := SQL[1] + ' WHERE funcao = ''12'' AND fonte IN (''101'',''104'')';
               open;
             end;
             with qryColTres do begin
               close;
               SQL[1] := SQL[1] + ' WHERE funcao = ''12'' AND fonte IN (''101'',''104'')';
               open;
             end;
           end;
           if chkVisualizar.Checked = true then  frmConsDensEns.report.Preview
           else frmConsDensEns.report.Print;
           frmConsDensEns.free;


        end;

        if (checked[i]) AND (items[i] = 'Ações e Serviços de Saúde') then begin
           Application.CreateForm(TfrmConsDensEns, frmConsDensEns);
           with frmConsDensEns do begin
             lblTitulo.caption := 'AÇÕES E SERVIÇOS DE SAÚDE';
             with qryColUm do begin
               close;
               SQL[1] := SQL[1] + ' WHERE funcao IN (''10'',''28'') AND fonte = ''102''';
               open;
             end;
             with qryColDois do begin
               close;
               SQL[1] := SQL[1] + ' WHERE funcao IN (''10'',''28'') AND fonte = ''102''';
               open;
             end;
             with qryColTres do begin
               close;
               SQL[1] := SQL[1] + ' WHERE funcao IN (''10'',''28'') AND fonte = ''102''';
               open;
             end;
           end;
           if chkVisualizar.Checked = true then  frmConsDensEns.report.preview
           else frmConsDensEns.report.Print;
           frmConsDensEns.free;

        end;

        if (checked[i]) AND (items[i] = 'Ações e Serviços de Assistência Social') then begin
           Application.CreateForm(TfrmConsDensEns, frmConsDensEns);
           with frmConsDensEns do begin
             lblTitulo.caption := 'AÇÕES E SERVIÇOS DE ASSISTÊNCIA SOCIAL';
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
           if chkVisualizar.Checked = true then  frmConsDensEns.report.preview
           else frmConsDensEns.report.Print;
           frmConsDensEns.free;

        end;

        if (checked[i]) AND (items[i] = 'Natureza da Despesa') then begin
           Application.CreateForm(TfrmConsNatDesp, frmConsNatDesp);
           if chkVisualizar.Checked = true then  frmConsNatDesp.report.preview
           else frmConsNatDesp.report.Print;
           frmConsNatDesp.free;

        end;

     end;
end;

end.
