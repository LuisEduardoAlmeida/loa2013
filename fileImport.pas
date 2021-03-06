unit fileImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables;

type
  TfrmFileImport = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Shape3: TShape;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    chkTable: TCheckListBox;
    Shape4: TShape;
    Shape5: TShape;
    RichEdit1: TRichEdit;
    stpAcoesCreate: TADOStoredProc;
    stpAcoesUpdate: TADOStoredProc;
    qry: TQuery;
    stpElDespesaCreate: TADOStoredProc;
    qryAdo: TADOQuery;
    stpElReceitaCreate: TADOStoredProc;
    stpFuncaoCreate: TADOStoredProc;
    stpSubFuncaoCreate: TADOStoredProc;
    stpFonteCreate: TADOStoredProc;
    stpOrgaoCreate: TADOStoredProc;
    stpUnorcCreate: TADOStoredProc;
    stpProgramaCreate: TADOStoredProc;
    stpProgramaUpdate: TADOStoredProc;
    stpRecUnoCreate: TADOStoredProc;
    stpLocaliCreate: TADOStoredProc;
    stpDetCreate: TADOStoredProc;
    stpLocaliUpdate: TADOStoredProc;
    sQry: TDataSource;
    qryDet: TQuery;
    stpDetUpdate: TADOStoredProc;
    stpRecUnoUpdate: TADOStoredProc;
    stpEvolRecCreate: TADOStoredProc;
    stpEvolDespCreate: TADOStoredProc;
    stpParametroCreate: TADOStoredProc;
    stpPortDetCreate: TADOStoredProc;
    stpPortariaCreate: TADOStoredProc;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure acoesImport();
    procedure programaImport();
    procedure localizacaoImport();
    procedure recUnoImport();
    procedure tableImport(theTable: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFileImport: TfrmFileImport;

implementation

uses data;

{$R *.dfm}

procedure TfrmFileImport.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmFileImport.BitBtn1Click(Sender: TObject);
var i : integer;
begin
  with chkTable do begin
     for i:= 0 to (count - 1) do begin
       if (checked[i]) and (items[i]= 'Tabela de A��es') then begin
          stpAcoesCreate.execProc;
          acoesImport;
       end;
       if (checked[i]) and (items[i]= 'Tabela de Elementos de Despesa') then begin
          stpElDespesaCreate.execProc;
          tableImport('elDespesa');
       end;
       if (checked[i]) and (items[i]= 'Tabela de Elementos de Receita') then begin
          stpElReceitaCreate.execProc;
          tableImport('elReceita');
       end;
       if (checked[i]) and (items[i]= 'Tabela de Fun��es') then begin
          stpFuncaoCreate.execProc;
          tableImport('funcao');
       end;
       if (checked[i]) and (items[i]= 'Tabela de SubFun��es') then begin
          stpSubFuncaoCreate.execProc;
          tableImport('subFuncao');
       end;
       if (checked[i]) and (items[i]= 'Tabela de Fontes de Recursos') then begin
          stpFonteCreate.execProc;
          tableImport('fonte');
       end;
       if (checked[i]) and (items[i]= 'Tabela de �rg�os') then begin
          stpOrgaoCreate.execProc;
          tableImport('orgao');
       end;
       if (checked[i]) and (items[i]= 'Tabela de Unidades Or�ament�rias') then begin
          stpUnorcCreate.execProc;
          tableImport('unorc');
       end;
       if (checked[i]) and (items[i]= 'Tabela de Programas') then begin
          stpProgramaCreate.execProc;
          programaImport;
       end;
       if (checked[i]) and (items[i]= 'Tabela de Receitas Or�ament�rias') then begin
          stpRecUnoCreate.execProc;
          recUnoImport;
       end;
       if (checked[i]) and (items[i]= 'Tabela de Localiza��es') then begin
          stpLocaliCreate.execProc;
          stpDetCreate.execProc;
          localizacaoImport;
       end;
       if (checked[i]) and (items[i]= 'Tabela de Evolu��o da Receita') then begin
          stpEvolRecCreate.execProc;
       end;
       if (checked[i]) and (items[i]= 'Tabela de Evolu��o da Despesa') then begin
          stpEvolDespCreate.execProc;
       end;
       if (checked[i]) and (items[i]= 'Tabela de Par�metros') then begin
          stpParametroCreate.execProc;
       end;
       if (checked[i]) and (items[i]= 'Tabela de Portarias') then begin
          stpPortariaCreate.execProc;
          stpPortDetCreate.execProc;
       end;
     end;
  end;
  showMessage('Arquivo(s) importado(s) com sucesso!');
end;

procedure TfrmFileImport.acoesImport;
begin
  SpeedButton1.Enabled := False;
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM acao');
    open;
  end;
  while not qry.eof do begin
    with stpAcoesUpdate.parameters do begin
      paramByName('@p_operation').value := 'i';
      paramByName('@p_codigo').value := qry.fieldByName('codigo').asString;
      paramByName('@p_descricao').value := qry.fieldByName('descricao').asString;
      paramByName('@p_tipo').value := qry.fieldByName('tipo').asString;
      paramByName('@p_produto').value := qry.fieldByName('produto').asString;
      paramByName('@p_unidade').value := qry.fieldByName('unidade').asString;

      stpAcoesUpdate.execProc;
      if paramByName('@RETURN_VALUE').value < 1 then begin
         application.messageBOX('Erro na transa��o','Erro',MB_ICONSTOP);
         close;
      end;
    end;

    qry.next;
  end;
  SpeedButton1.Enabled := true;
end;

procedure TfrmFileImport.tableImport(theTable: string);
begin
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM '+theTable);
    open;
  end;
  with qryAdo, qryAdo.SQL do begin
    close;
    clear;
    add('INSERT INTO '+ theTable+' (codigo, descricao) VALUES (:codigo, :descricao)');
  end;

  while not qry.eof do begin
    with qryAdo.parameters do begin
      paramByName('codigo').value := qry.fieldByName('codigo').asString;
      paramByName('descricao').value := qry.fieldByName('descricao').asString;
      qryAdo.execSQL;
    end;
    qry.next;
  end;
end;

procedure TfrmFileImport.programaImport;
begin
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM programa');
    open;
  end;
  while not qry.eof do begin
    with stpProgramaUpdate.parameters do begin
      paramByName('@p_operation').value := 'i';
      paramByName('@p_codigo').value := qry.fieldByName('codigo').asString;
      paramByName('@p_descricao').value := qry.fieldByName('descricao').asString;
      paramByName('@p_tipo').value := qry.fieldByName('tipo').asString;
      paramByName('@p_objetivo').value := qry.fieldByName('objetivo').asString;

      stpProgramaUpdate.execProc;
      if paramByName('@RETURN_VALUE').value < 1 then begin
         application.messageBOX('Erro na transa��o','Erro',MB_ICONSTOP);
         close;
      end;
    end;

    qry.next;
  end;
end;

procedure TfrmFileImport.localizacaoImport;
var theCodigo : integer;
begin
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM local');
    open;
  end;
  qryDet.open;
  while not qry.eof do begin
    with stpLocaliUpdate.parameters do begin
      paramByName('@p_operation').value := 'i';
      paramByName('@p_esfera').value := qry.fieldByName('esfera').asString;
      paramByName('@p_unorc').value := qry.fieldByName('unorc').asString;
      paramByName('@p_funcao').value := qry.fieldByName('funcao').asString;
      paramByName('@p_subFuncao').value := qry.fieldByName('subFuncao').asString;
      paramByName('@p_programa').value := qry.fieldByName('programa').asString;
      paramByName('@p_acao').value := qry.fieldByName('acao').asString;
      paramByName('@p_locali').value := qry.fieldByName('local').asString;
      paramByName('@p_regional').value := qry.fieldByName('regional').asString;
      paramByName('@p_descricao').value := qry.fieldByName('subTitulo').asString;
      paramByName('@p_metaFisica').value := qry.fieldByName('metaOrcamento').asFloat;

      stpLocaliUpdate.execProc;
      if paramByName('@RETURN_VALUE').value < 1 then begin
         application.messageBOX('Erro na transa��o','Erro',MB_ICONSTOP);
         close;
      end;
      theCodigo := paramByName('@RETURN_VALUE').value;
    end;

    while not qryDet.eof do begin
       with stpDetUpdate.parameters do begin
         paramByName('@p_operation').value := 'i';
         paramByName('@p_locali').value := theCodigo;
         paramByName('@p_elDespesa').value := qryDet.fieldByName('elemento').asString;
         paramByName('@p_indUso').value := qryDet.fieldByName('indUso').asString;
         paramByName('@p_fonte').value := qryDet.fieldByName('fonte').asString;
         paramByName('@p_valor').value := qryDet.fieldByName('valor').asCurrency;

         stpDetUpdate.execProc;
         if paramByName('@RETURN_VALUE').value < 1 then begin
            application.messageBOX('Erro na transa��o','Erro',MB_ICONSTOP);
            close;
         end;
       end;
       qryDet.next;
    end;

    qry.next;
  end;

end;

procedure TfrmFileImport.recUnoImport;
begin
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM recUno');
    open;
  end;
  while not qry.eof do begin
    with stpRecUnoUpdate.parameters do begin
      paramByName('@p_operation').value := 'i';
      paramByName('@p_codigo').value := 0;
      paramByName('@p_unorc').value := qry.fieldByName('unorc').asString;
      paramByName('@p_esfera').value := qry.fieldByName('esfera').asString;
      paramByName('@p_elReceita').value := qry.fieldByName('codigo').asString;
      paramByName('@p_indUso').value := '0';
      paramByName('@p_fonte').value := qry.fieldByName('fonte').asString;
      paramByName('@p_valor').value := qry.fieldByName('valor').asFloat;

      stpRecUnoUpdate.execProc;
      if paramByName('@RETURN_VALUE').value < 1 then begin
         application.messageBOX('Erro na transa��o','Erro',MB_ICONSTOP);
         close;
      end;
    end;

    qry.next;
  end;

end;

end.
