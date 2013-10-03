unit Cortes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, DB, ADODB, Grids, DBGrids,
  ExtCtrls;

type
  TfrmCortes = class(TForm)
    edElemento: TEdit;
    edPercent: TRxCalcEdit;
    btConfirmar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    btFechar: TButton;
    DBGrid1: TDBGrid;
    dsExecOrc_: TDataSource;
    qyExecOrc_: TADOQuery;
    qyLocalizacao_: TADOQuery;
    edFonte: TEdit;
    edIndUso: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    qyExecOrc_Eldespesa: TStringField;
    qyExecOrc_Fonte: TStringField;
    qyExecOrc_IndUso: TStringField;
    qyExecOrc_Unorc: TStringField;
    qyExecOrc_Unorcd: TStringField;
    qyExecOrc_Programa: TStringField;
    qyExecOrc_Acao: TStringField;
    qyExecOrc_Localis: TStringField;
    qyExecOrc_Valor: TBCDField;
    qyExecOrc_locali: TIntegerField;
    btLeitura: TButton;
    btLimpar: TButton;
    qy_: TADOQuery;
    qy_TOTAL_ELEMENTO: TBCDField;
    lbValorElemento: TLabel;
    edUnorc: TEdit;
    Label5: TLabel;
    qyLocalizacao_Codigo: TAutoIncField;
    qyLocalizacao_locali: TIntegerField;
    qyLocalizacao_elDespesa: TStringField;
    qyLocalizacao_indUso: TStringField;
    qyLocalizacao_fonte: TStringField;
    qyLocalizacao_valor: TBCDField;
    qyExecOrc_descricao: TStringField;
    edprograma: TEdit;
    edacao: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    qyExcl_: TADOQuery;
    dsExcl_: TDataSource;
    qyExcl_Eldespesa: TStringField;
    qyExcl_Fonte: TStringField;
    qyExcl_IndUso: TStringField;
    qyExcl_Unorc: TStringField;
    qyExcl_Unorcd: TStringField;
    qyExcl_Programa: TStringField;
    qyExcl_Acao: TStringField;
    qyExcl_Localis: TStringField;
    qyExcl_locali: TIntegerField;
    qyExcl_descricao: TStringField;
    qyExcl_Valor: TBCDField;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    edvaldes: TRxCalcEdit;
    Label8: TLabel;
    rg_: TRadioGroup;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure btLeituraClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Status : String;
    Pesq : String;
    Procedure TotaisElemento();
    Procedure Revona();
  end;

var
  frmCortes: TfrmCortes;

implementation

uses data;

{$R *.dfm}


procedure TfrmCortes.FormCreate(Sender: TObject);
begin
   if dsExecOrc_.State in [dsinactive] then qyExecOrc_.Open;
   Pesq   := 'n';
   Status := 'n';
end;

procedure TfrmCortes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action    := caFree;
   frmCortes := nil;
end;

procedure TfrmCortes.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL,0,0);
      key :=#0;
   end;
end;

procedure TfrmCortes.btFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCortes.btConfirmarClick(Sender: TObject);
Var
  Calc : Real;
  valdesc : Real;
begin
   Calc    := 0;
   valdesc := 0;
   {
   If (edPercent.Value = 0) or (Trim(edPercent.Text) = '') then
   begin
      ShowMessage('Informe o valor percentual (%) , vefirique!!!');
      edPercent.SetFocus;
      exit;
   end;
   }
   If Pesq = 'n' then
   begin
      ShowMessage('Não existem dados para que sejam alterados, vefirique!!!');
      edElemento.SetFocus;
      exit;
   end;

   if Pesq = 's' Then
   begin
      if application.messageBox('Confirma o Corte?' ,'Cortes de Despesa',MB_ICONQUESTION+MB_YESNO)
              = IDNO then exit;

      qyExecOrc_.Close;
      qyExecOrc_.SQL.Clear;
      qyExecOrc_.SQL.Add('SELECT Eldespesa, Fonte, IndUso, Unorc, Unorcd,');
      qyExecOrc_.SQL.Add('Programa, Acao, Localis,locali, descricao, Valor');
      qyExecOrc_.SQL.Add('FROM ORCAMENTO');
      qyExecOrc_.SQL.Add('where codigo is not null');

       if Trim(edElemento.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and ELDESPESA = :ELDESPESA');   // Elemento de Despesa
          qyExecOrc_.Parameters.ParamByName('ELDESPESA').Value := edElemento.Text;
       End;


       if Trim(edUnorc.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and unorc = :unorc');          // Unorc
          qyExecOrc_.Parameters.ParamByName('unorc').Value := edUnorc.Text;

       End;


       if Trim(edFonte.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and FONTE = :FONTE');          // Fonte
          qyExecOrc_.Parameters.ParamByName('FONTE').Value := edFonte.Text;

       End;

       if Trim(edIndUso.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and IndUso = :IndUso');                // Indicador de Uso
          qyExecOrc_.Parameters.ParamByName('IndUso').Value := edIndUso.Text;
       End;

       if Trim(edprograma.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and Programa = :Programa');                // Indicador de Uso
          qyExecOrc_.Parameters.ParamByName('Programa').Value := edprograma.Text;
       End;

       if Trim(edacao.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and Acao = :Acao');                // Indicador de Uso
          qyExecOrc_.Parameters.ParamByName('Acao').Value := edacao.Text;
       End;

      qyExecOrc_.ExecSQL;
      qyExecOrc_.Open;
      qyExecOrc_.First;

      while not qyExecOrc_.Eof do
      Begin
         qyLocalizacao_.Close;
         qyLocalizacao_.Parameters.ParamByName('ELDESPESA').Value := qyExecOrc_Eldespesa.Value;
         qyLocalizacao_.Parameters.ParamByName('LOCALI').Value    := qyExecOrc_locali.Value;
         qyLocalizacao_.Parameters.ParamByName('FONTE').Value     := qyExecOrc_Fonte.Value;
         qyLocalizacao_.Parameters.ParamByName('INDUSO').Value    := qyExecOrc_IndUso.Value;
         qyLocalizacao_.ExecSQL;
         qyLocalizacao_.Open;

         iF qyLocalizacao_valor.Value > 0 THEN
         BEGIN
            if rg_.ItemIndex = 0 then
            Begin
               valdesc := (qyLocalizacao_valor.Value*edPercent.Value)/100
            End
            else
            Begin
               Valdesc := edvaldes.Value;
            End;

            Calc    :=  qyLocalizacao_valor.Value - Round(valdesc);
            qyLocalizacao_.Edit;
            qyLocalizacao_valor.Value := Calc;
            qyLocalizacao_.Post;
         END;
         qyExecOrc_.Next;
      End;

   end;

   Pesq := 'n';

      qyExecOrc_.Close;
      qyExecOrc_.SQL.Clear;
      qyExecOrc_.SQL.Add('SELECT Eldespesa, Fonte, IndUso, Unorc, Unorcd,');
      qyExecOrc_.SQL.Add('Programa, Acao, Localis,locali, descricao, Valor');
      qyExecOrc_.SQL.Add('FROM ORCAMENTO');
      qyExecOrc_.SQL.Add('where codigo is not null');

       if Trim(edElemento.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and ELDESPESA = :ELDESPESA');   // Elemento de Despesa
          qyExecOrc_.Parameters.ParamByName('ELDESPESA').Value := edElemento.Text;
       End;


       if Trim(edUnorc.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and unorc = :unorc');          // Unorc
          qyExecOrc_.Parameters.ParamByName('unorc').Value := edUnorc.Text;

       End;


       if Trim(edFonte.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and FONTE = :FONTE');          // Fonte
          qyExecOrc_.Parameters.ParamByName('FONTE').Value := edFonte.Text;

       End;

       if Trim(edIndUso.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and IndUso = :IndUso');                // Indicador de Uso
          qyExecOrc_.Parameters.ParamByName('IndUso').Value := edIndUso.Text;
       End;

       if Trim(edprograma.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and Programa = :Programa');                // Indicador de Uso
          qyExecOrc_.Parameters.ParamByName('Programa').Value := edprograma.Text;
       End;

       if Trim(edacao.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and Acao = :Acao');                // Indicador de Uso
          qyExecOrc_.Parameters.ParamByName('Acao').Value := edacao.Text;
       End;

      qyExecOrc_.ExecSQL;
      qyExecOrc_.Open;

      qyExecOrc_.First;

      While not qyExecOrc_.Eof do
      Begin
         If qyExecOrc_Valor.Value = 0 Then
            qyExecOrc_.Delete
         else
            qyExecOrc_.Next;
      End;

      qyExecOrc_.First;

   
      TotaisElemento;

end;

procedure TfrmCortes.btLeituraClick(Sender: TObject);
begin

  { If Trim(edElemento.Text) = '' Then
   Begin
      qyExecOrc_.Close;
      qyExecOrc_.SQL.Clear;
      qyExecOrc_.SQL.Add('SELECT Eldespesa, Fonte, IndUso, Unorc, Unorcd,');
      qyExecOrc_.SQL.Add('Programa, Acao, Localis,locali,descricao, Valor');
      qyExecOrc_.SQL.Add('FROM ORCAMENTO');
      qyExecOrc_.SQL.Add('where codigo is not null');
      qyExecOrc_.ExecSQL;
      qyExecOrc_.Open;
      Exit;
   end;
   }
   qyExecOrc_.Close;
   qyExecOrc_.SQL.Clear;
   qyExecOrc_.SQL.Add('SELECT Eldespesa, Fonte, IndUso, Unorc, Unorcd,');
   qyExecOrc_.SQL.Add('Programa, Acao, Localis,locali,descricao, Valor');
   qyExecOrc_.SQL.Add('FROM ORCAMENTO');
   qyExecOrc_.SQL.Add('where codigo is not null');

   if Trim(edElemento.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and ELDESPESA = :ELDESPESA');   // Elemento de Despesa
      qyExecOrc_.Parameters.ParamByName('ELDESPESA').Value := edElemento.Text;
   End;


   if Trim(edUnorc.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and unorc = :unorc');          // Unorc
      qyExecOrc_.Parameters.ParamByName('unorc').Value := edUnorc.Text;

   End;


   if Trim(edFonte.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and FONTE = :FONTE');          // Fonte
      qyExecOrc_.Parameters.ParamByName('FONTE').Value := edFonte.Text;

   End;

   if Trim(edIndUso.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and IndUso = :IndUso');                // Indicador de Uso
      qyExecOrc_.Parameters.ParamByName('IndUso').Value := edIndUso.Text;
   End;

   if Trim(edprograma.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and Programa = :Programa');                // Indicador de Uso
      qyExecOrc_.Parameters.ParamByName('Programa').Value := edprograma.Text;
   End;

   if Trim(edacao.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and Acao = :Acao');                // Indicador de Uso
      qyExecOrc_.Parameters.ParamByName('Acao').Value := edacao.Text;
   End;



   qyExecOrc_.ExecSQL;
   qyExecOrc_.Open;

   If qyExecOrc_.RecordCount > 0 Then
   Begin
      Pesq   := 's';
      Status := 's';
      TotaisElemento;
   End;

   If qyExecOrc_.RecordCount = 0 Then
   Begin
      Pesq   := 'n';
      Status := 'n';
      //TotaisElemento
   End;

end;

procedure TfrmCortes.btLimparClick(Sender: TObject);
begin
   qyExecOrc_.Close;
   qyExecOrc_.SQL.Clear;
   qyExecOrc_.SQL.Add('SELECT Eldespesa, Fonte, IndUso, Unorc, Unorcd,');
   qyExecOrc_.SQL.Add('Programa, Acao, Localis,locali,descricao,Valor');
   qyExecOrc_.SQL.Add('FROM ORCAMENTO');
   qyExecOrc_.ExecSQL;
   qyExecOrc_.Open;
   Pesq   := 'n';
   Status := 'n';
   edElemento.Clear;
   edUnorc.Clear;
   edFonte.Clear;
   edIndUso.Clear;
   edPercent.Clear;
   edprograma.Clear;
   edacao.Clear;

   lbValorElemento.Caption := 'R$ 0,00';
   edElemento.SetFocus;
end;

procedure TfrmCortes.TotaisElemento;
begin
   qy_.Close;
   qy_.SQL.Clear;
   qy_.SQL.Add('SELECT SUM(VALOR) AS TOTAL_ELEMENTO FROM ORCAMENTO where codigo is not null');

   if Trim(edElemento.Text) <> '' Then
   Begin
      qy_.SQL.Add('and ELDESPESA = :ELDESPESA');
      qy_.Parameters.ParamByName('eldespesa').Value := edElemento.Text;
   End;

   if Trim(edUnorc.Text) <> '' Then
   Begin
      qy_.SQL.Add('and unorc = :unorc');
      qy_.Parameters.ParamByName('unorc').Value := edUnorc.Text;
   End;


   if Trim(edFonte.Text) <> '' Then
   Begin
      qy_.SQL.Add('and FONTE = :FONTE');
      qy_.Parameters.ParamByName('FONTE').Value := edFonte.Text;
   End;

   if Trim(edIndUso.Text) <> '' Then
   Begin
      qy_.SQL.Add('and IndUso = :IndUso');
      qy_.Parameters.ParamByName('IndUso').Value := edIndUso.Text;
   End;

   if Trim(edprograma.Text) <> '' Then
   Begin
      qy_.SQL.Add('and programa = :programa');
      qy_.Parameters.ParamByName('programa').Value := edprograma.Text;
   End;

   if Trim(edacao.Text) <> '' Then
   Begin
      qy_.SQL.Add('and acao = :acao');
      qy_.Parameters.ParamByName('acao').Value := edacao.Text;
   End;

   qy_.ExecSQL;
   qy_.Open;

   lbValorElemento.Font.Color := clBlack;
   lbValorElemento.Caption := 'VALOR REAL =>  '+FormatCurr('###,###,###',qy_TOTAL_ELEMENTO.Value);

end;

procedure TfrmCortes.Revona;
begin
   qyExecOrc_.Close;
   qyExecOrc_.SQL.Clear;
   qyExecOrc_.SQL.Add('SELECT Eldespesa, Fonte, IndUso, Unorc, Unorcd,');
   qyExecOrc_.SQL.Add('Programa, Acao, Localis,locali, Valor');
   qyExecOrc_.SQL.Add('FROM ORCAMENTO');
   qyExecOrc_.ExecSQL;
   qyExecOrc_.Open;
end;

procedure TfrmCortes.DBGrid1CellClick(Column: TColumn);
begin
   DBGrid1.Hint := Column.FieldName;
end;

procedure TfrmCortes.Button1Click(Sender: TObject);
Var
  Calc : Real;
  valdesc : Real;
begin
   qy_.Close;
   qy_.SQL.Clear;
   qy_.SQL.Add('SELECT SUM(VALOR) AS TOTAL_ELEMENTO FROM ORCAMENTO where codigo is not null');

   if Trim(edElemento.Text) <> '' Then
   Begin
      qy_.SQL.Add('and ELDESPESA = :ELDESPESA');
      qy_.Parameters.ParamByName('eldespesa').Value := edElemento.Text;
   End;

   if Trim(edUnorc.Text) <> '' Then
   Begin
      qy_.SQL.Add('and unorc = :unorc');
      qy_.Parameters.ParamByName('unorc').Value := edUnorc.Text;
   End;


   if Trim(edFonte.Text) <> '' Then
   Begin
      qy_.SQL.Add('and FONTE = :FONTE');
      qy_.Parameters.ParamByName('FONTE').Value := edFonte.Text;
   End;

   if Trim(edIndUso.Text) <> '' Then
   Begin
      qy_.SQL.Add('and IndUso = :IndUso');
      qy_.Parameters.ParamByName('IndUso').Value := edIndUso.Text;
   End;

   if Trim(edprograma.Text) <> '' Then
   Begin
      qy_.SQL.Add('and programa = :programa');
      qy_.Parameters.ParamByName('programa').Value := edprograma.Text;
   End;

   if Trim(edacao.Text) <> '' Then
   Begin
      qy_.SQL.Add('and acao = :acao');
      qy_.Parameters.ParamByName('acao').Value := edacao.Text;
   End;

   qy_.ExecSQL;
   qy_.Open;

   If rg_.ItemIndex = 0 then
      valdesc := (qy_TOTAL_ELEMENTO.Value*edPercent.Value)/100
   Else
      valdesc := edvaldes.Value;

   Calc    :=  qy_TOTAL_ELEMENTO.Value - Round(valdesc);

   lbValorElemento.Font.Color := clRed;
   lbValorElemento.Caption := 'VALOR SIMULADO =>  '+FormatCurr('###,###,###',Calc);

end;

end.



