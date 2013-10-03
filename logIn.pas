unit logIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, ADODB;

type
  TfrmLogIn = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Shape1: TShape;
    Label1: TLabel;
    rdgOrcamento: TRadioGroup;
    Shape2: TShape;
    qry: TADOQuery;
    qryUpdate: TADOQuery;
    Shape3: TShape;
    CbPeriodo: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    qryprefeitura: TStringField;
    qrybanco: TStringField;
    qryexercicio: TIntegerField;
    qryevolRec: TStringField;
    qryevolDesp: TStringField;
    qryAcesso: TStringField;
    qryMenssagem: TMemoField;
    qryVersao: TStringField;
    qryempresa: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CbPeriodoChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogIn: TfrmLogIn;
  itsOk : boolean;

implementation

uses data, main;

{$R *.dfm}

procedure TfrmLogIn.BitBtn1Click(Sender: TObject);
begin
  If CbPeriodo.ItemIndex = 0 then
  Begin
      if rdgorcamento.itemIndex < 0 then begin
         itsOk := false;
         exit;
      end;
      if rdgOrcamento.items[0] = 'Proposta' then                    
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do begin
               paramByName('banco').value := 'proposta2006';

               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
               dmtData.adoCon.Connected := False;
               dmtData.adoCon.Mode := cmRead;
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do begin
               paramByName('banco').value := 'projeto2006';

               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
               dmtData.adoCon.Connected := False;
               dmtData.adoCon.Mode := cmRead;
               qryUpdate.execSQL;
              end;
           2: with qryUpdate.parameters do begin
               paramByName('banco').value := 'lei2006';

               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
               dmtData.adoCon.Connected := False;
               dmtData.adoCon.Mode := cmRead;
               qryUpdate.execSQL;
              end;
           3: with qryUpdate.parameters do begin
               paramByName('banco').value := 'Investimento2006';

               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
               dmtData.adoCon.Connected := False;
               dmtData.adoCon.Mode := cmRead;
               qryUpdate.execSQL;
              end;
          end
      else
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do begin
               paramByName('banco').value := 'aquiraz';
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do begin
               paramByName('banco').value := 'tiangua';
               qryUpdate.execSQL;
              end;
          end;
      //dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
      //itsOK := true;
  End;

  If CbPeriodo.ItemIndex = 1 then
  Begin
      if rdgorcamento.itemIndex < 0 then begin
         itsOk := false;
         exit;
      end;
      if rdgOrcamento.items[0] = 'Proposta' then
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Pproposta2007';
               // ALTERADO DE PROPOSTA2007 PARA PPROPOSTA2007
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
               dmtData.adoCon.Connected := False;
               dmtData.adoCon.Mode := cmRead;
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'projeto2007';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           2: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'lei2007';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           3: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Investimento2007';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           4: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Execucao2007';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
          end
      else
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'aquiraz';
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do begin
               paramByName('banco').value := 'tiangua';
               qryUpdate.execSQL;

              end;
          end;
      //dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
      //dmtData.adoCon.Mode := cmRead;

      itsOK := true;

  End;

  If CbPeriodo.ItemIndex = 2 then
  Begin
      if rdgorcamento.itemIndex < 0 then begin
         itsOk := false;
         exit;
      end;
      if rdgOrcamento.items[0] = 'Proposta' then
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Pproposta2008';
               // ALTERADO DE PROPOSTA2007 PARA PPROPOSTA2008
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
               dmtData.adoCon.Connected := False;
               dmtData.adoCon.Mode := cmRead;
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'projeto2008';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           2: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'lei2008';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           3: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Investimento2008';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
            4: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Execucao2008';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
          end
      else
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'aquiraz';
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do begin
               paramByName('banco').value := 'tiangua';
               qryUpdate.execSQL;

              end;
          end;
      //dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
      //dmtData.adoCon.Mode := cmRead;

      itsOK := true;

  End;

  If (CbPeriodo.ItemIndex = 3) then
  Begin
      if rdgorcamento.itemIndex < 0 then begin
         itsOk := false;
         exit;
      end;
      if rdgOrcamento.items[0] = 'Proposta' then
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Pproposta2009';
               // ALTERADO DE PROPOSTA2007 PARA PPROPOSTA2009
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
               dmtData.adoCon.Connected := False;
               dmtData.adoCon.Mode := cmRead;
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'projeto2009';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           2: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'lei2009';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           3: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Investimento2009';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           4: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Execucao2009';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
          end
      else
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'aquiraz';
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do begin
               paramByName('banco').value := 'tiangua';
               qryUpdate.execSQL;

              end;
          end;
      //dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
      //dmtData.adoCon.Mode := cmRead;

      itsOK := true;

  End;
    If (CbPeriodo.ItemIndex = 4) then
  Begin
      if rdgorcamento.itemIndex < 0 then begin
         itsOk := false;
         exit;
      end;
      if rdgOrcamento.items[0] = 'Proposta' then
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Pproposta2010';
               // ALTERADO DE PROPOSTA2007 PARA PPROPOSTA2009
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
               dmtData.adoCon.Connected := False;
               dmtData.adoCon.Mode := cmRead;
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'projeto2010';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           2: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'lei2010';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           3: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Investimento2010';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           4: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Execucao2010';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
          end
      else
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'aquiraz';
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do begin
               paramByName('banco').value := 'tiangua';
               qryUpdate.execSQL;

              end;
          end;
      //dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
      //dmtData.adoCon.Mode := cmRead;

      itsOK := true;

  End;

  If (CbPeriodo.ItemIndex = 5) then
  Begin
      if rdgorcamento.itemIndex < 0 then begin
         itsOk := false;
         exit;
      end;
      if rdgOrcamento.items[0] = 'Proposta' then
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Pproposta2011';
               // ALTERADO DE PROPOSTA2007 PARA PPROPOSTA2011
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
               dmtData.adoCon.Connected := False;
               dmtData.adoCon.Mode := cmRead;
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'projeto2011';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           2: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'lei2011';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           3: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Investimento2011';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           4: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Execucao2011';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
          end
      else
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'aquiraz';
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do begin
               paramByName('banco').value := 'tiangua';
               qryUpdate.execSQL;

              end;
          end;
      //dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
      //dmtData.adoCon.Mode := cmRead;

      itsOK := true;

  End;

  If (CbPeriodo.ItemIndex = 6) then
  Begin
      if rdgorcamento.itemIndex < 0 then begin
         itsOk := false;
         exit;
      end;
      if rdgOrcamento.items[0] = 'Proposta' then
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'PProposta2012';
               // ALTERADO DE PROPOSTA2007 PARA PPROPOSTA2012
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
               dmtData.adoCon.Connected := False;
               dmtData.adoCon.Mode := cmRead;
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'PProposta2012';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           2: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'lei2012';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           3: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Investimento2012';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           4: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Execucao2012';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
          end
      else
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'aquiraz';
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do begin
               paramByName('banco').value := 'tiangua';
               qryUpdate.execSQL;

              end;
          end;
      //dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
      //dmtData.adoCon.Mode := cmRead;

      itsOK := true;

  End;
  If (CbPeriodo.ItemIndex = 7)or (CbPeriodo.ItemIndex = -1) then
  Begin
      if rdgorcamento.itemIndex < 0 then begin
         itsOk := false;
         exit;
      end;
      if rdgOrcamento.items[0] = 'Proposta' then
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'PProposta2013';
               // ALTERADO DE PROPOSTA2007 PARA PPROPOSTA2013
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
               dmtData.adoCon.Connected := False;
               dmtData.adoCon.Mode := cmRead;
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'PProposta2013';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           2: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'lei2013';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           3: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Investimento2013';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
           4: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'Lei2013reforma';
               qryUpdate.execSQL;
               dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
              end;
          end
      else
         case rdgOrcamento.itemIndex of
           0: with qryUpdate.parameters do
              begin
               paramByName('banco').value := 'aquiraz';
               qryUpdate.execSQL;
              end;
           1: with qryUpdate.parameters do begin
               paramByName('banco').value := 'tiangua';
               qryUpdate.execSQL;

              end;
          end;
      //dmtData.adoCon.defaultDataBase := qryUpdate.parameters.paramByName('banco').value;
      //dmtData.adoCon.Mode := cmRead;

      itsOK := true;

  End;


  frmMain.Banco         :=  qryUpdate.parameters.paramByName('banco').value;
  frmMain.Ano_Exercicio := CbPeriodo.Text;

  itsOK := true;
  frmMain.StatusBar1.Panels[1].Text := 'Banco '+frmMain.Banco;
end;

procedure TfrmLogIn.FormCreate(Sender: TObject);
begin
  itsOk := false;
   with qry, qry.SQL do
   begin
       Close;
       Clear;
       Add(' SELECT  *,');
       Add(' empresa = CASE  ');
       Add('            WHEN banco IN (''projeto2013'', ''lei2013'', ''pproposta2013'', ''investimento2013'', ''orcamento'') THEN ''Fortaleza'' ');
       Add('            ELSE ''Fortaleza''           END  ');
       Add('    FROM parametro ');
       ExecSQL;
       Open;
   end;
  {if qry.fieldByName('empresa').asString <> 'Fortaleza' then
  Begin
     qry.Edit;
     qryempresa.Value := 'Fortaleza';
     qry.Post;
  End;}

  if qry.fieldByName('empresa').asString = 'Fortaleza' then
     with rdgOrcamento.items do begin
       clear;
       add('Proposta');
       add('Projeto de Lei');
       add('Lei');
       add('Investimento das Empresas');
       add('Lei - Reforma Administrativa');

     end
  else with rdgOrcamento.items do begin
         clear;
         add('Aquiráz');
         add('Tinaguá');
       end;
  with qry.fieldByName('banco') do begin
    if asString = 'proposta' then rdgOrcamento.itemIndex := 0;
    if asString = 'aquiraz' then rdgOrcamento.itemIndex := 0;
    if asString = 'projeto' then rdgOrcamento.itemIndex := 1;
    if asString = 'tiangua' then rdgOrcamento.itemIndex := 1;
    if asString = 'lei' then rdgOrcamento.itemIndex := 2;
    if asString = 'investimento' then rdgOrcamento.itemIndex := 3;
    if asString = 'leireforma' then rdgOrcamento.itemIndex := 4;


  end;
  rdgOrcamento.ItemIndex := 4;

end;

procedure TfrmLogIn.CbPeriodoChange(Sender: TObject);
begin
  {
   if cbperiodo.ItemIndex = 0 then
   begin
      dmtData.adoCon.Connected := False;
      dmtData.adoCon.Mode      := cmRead;

   end;
   if cbperiodo.ItemIndex = 1 then
   begin
      dmtData.adoCon.Connected := False;
      dmtData.adoCon.Mode := cmUnknown;
   end;

   if Trim(cbperiodo.Text) = '' Then
   Begin
      ShowMessage('Informe o ano de exercício corretamente...');
      exit;
   End;
   ShowWarning('SELECIONANDO BANCO, AGUARDE...');
   if cbperiodo.ItemIndex = 0 then
      qyUpdate.parameters.paramByName('banco').value := 'Proposta2006';
   if cbperiodo.ItemIndex = 1 then
      qyUpdate.parameters.paramByName('banco').value := 'Proposta2007';

   ShowWarning('ACESSANDO BANCO, AGUARDE...');
   dmtData.adoCon.defaultDataBase := qyUpDate.parameters.paramByName('banco').value;
   dmtData.adoCon.Connected       := True;
   HideWarning;
   }
end;

procedure TfrmLogIn.BitBtn2Click(Sender: TObject);
begin
    Application.Terminate;
    Close;
end;

end.


