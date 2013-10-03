unit ReducaoPesq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, dxCore, dxButton, ExtCtrls;

type
  TfrmReducaoPesq = class(TForm)
    txtUnorc: TEdit;
    cmbUnorc: TComboBox;
    Label13: TLabel;
    qryTable: TADOQuery;
    btImprimir: TdxButton;
    btCancelar: TdxButton;
    qyVereadores_: TADOQuery;
    edVereador: TEdit;
    cmbVereador: TComboBox;
    Label1: TLabel;
    RG: TRadioGroup;
    RG_Status: TRadioGroup;
    procedure txtUnorcChange(Sender: TObject);
    procedure txtUnorcExit(Sender: TObject);
    procedure cmbUnorcChange(Sender: TObject);
    procedure cmbUnorcClick(Sender: TObject);
    procedure edVereadorChange(Sender: TObject);
    procedure edVereadorExit(Sender: TObject);
    procedure cmbVereadorChange(Sender: TObject);
    procedure cmbVereadorClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure loadTable_Unorc(TheCamp:String; TheDesc: string; theCombo: tComboBox);
    procedure loadTable_Vereadores(TheCamp:String; TheDesc: string; theCombo: tComboBox);
  end;

var
  frmReducaoPesq: TfrmReducaoPesq;
  itsChanged   : boolean;
  unoSize : integer;


implementation

uses data, Emendareducao, EmendasAcrescimo;

{$R *.dfm}

procedure TfrmReducaoPesq.loadTable_Unorc(TheCamp:String; TheDesc: string; theCombo: tComboBox);
begin
  with qryTable, qryTable.SQL do
  begin
    close;
    clear;
    add('SELECT distinct '+TheCamp+','+TheDesc+' FROM ORCAMENTO');
    add('  ORDER BY '+TheDesc);
    open;
    theCombo.clear;
    while not eof do
    begin
      theCombo.items.add(fieldByName(TheCamp).asString + '-'+fieldByName(TheDesc).asString);
      next;
    end;
  end;
end;

procedure TfrmReducaoPesq.loadTable_Vereadores(TheCamp, TheDesc: string;
  theCombo: tComboBox);
begin
   with qyVereadores_, qyVereadores_.SQL do
  begin
    close;
    clear;
    add('SELECT distinct '+TheCamp+','+TheDesc+' FROM vereadores');
    add('  ORDER BY '+TheDesc);
    open;
    theCombo.clear;
    while not eof do
    begin
      theCombo.items.add(fieldByName(TheCamp).asString + '-'+fieldByName(TheDesc).asString);
      next;
    end;
  end;
end;


procedure TfrmReducaoPesq.txtUnorcChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmReducaoPesq.txtUnorcExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbUnorc do
  begin
    for i := 0 to items.count - 1  do
    begin
       if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then
       begin
          itemIndex := i;
          exit;
       end;
    end;
    
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmReducaoPesq.cmbUnorcChange(Sender: TObject);
begin
    itsChanged := true;
end;

procedure TfrmReducaoPesq.cmbUnorcClick(Sender: TObject);
begin
    with (sender as tComboBox) do begin
     txtUnorc.text := copy(text,1,unoSize);
   end;
end;


procedure TfrmReducaoPesq.edVereadorChange(Sender: TObject);
begin
 itsChanged := true;
end;

procedure TfrmReducaoPesq.edVereadorExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbVereador do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;
         exit;
      end;
    end;
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmReducaoPesq.cmbVereadorChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmReducaoPesq.cmbVereadorClick(Sender: TObject);
begin
    with (sender as tComboBox) do
    begin
        Try
          StrToInt(copy(text,1,2));
          edVereador.Text := copy(text,1,2);
        Except
          edVereador.Text := copy(text,1,1);
        end;
   end;
end;

procedure TfrmReducaoPesq.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL,0,0);
      Key := #0;
   end;
end;

procedure TfrmReducaoPesq.FormShow(Sender: TObject);
begin
   loadTable_Unorc('unorc','Unorcd',cmbUnorc);
   unoSize := length(trim(qryTable.fieldByName('Unorc').asString));
   loadTable_Vereadores('codigo','nome',cmbVereador);
end;

procedure TfrmReducaoPesq.btCancelarClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmReducaoPesq.btImprimirClick(Sender: TObject);
Var
  Lista : String;
begin
   If RG.ItemIndex = -1 then
   Begin
      ShowMessage('Escolha o Tipo de Relatório!!!');
      Exit;
   End;

   If RG_Status.ItemIndex = -1 then
   Begin
      ShowMessage('Escolha o Status de Relatório!!!');
      Exit;
   End;

   Lista := '';

   //Acrescimo
   If rg.ItemIndex = 0 then
   Begin
       if frmEmendasAcrescimo <> nil then frmEmendasAcrescimo := nil;
       if frmEmendasAcrescimo = nil then
          frmEmendasAcrescimo := TfrmEmendasAcrescimo.Create(self);

       Lista := frmEmendasAcrescimo.qry.SQL.Text;

       frmEmendasAcrescimo.qry.Close;
       frmEmendasAcrescimo.qry.SQL.Clear;
       frmEmendasAcrescimo.qry.sql.Add(lista);

       if Trim(txtUnorc.Text) <> '' Then
       Begin
          frmEmendasAcrescimo.qry.sql.Add('and eL.unorc = :unorc');
          frmEmendasAcrescimo.qry.Parameters.ParamByName('unorc').Value := txtUnorc.Text;
       end;

       if Trim(edVereador.Text) <> '' Then
       Begin
          frmEmendasAcrescimo.qry.sql.Add('and v.codigo = :codigo');
          frmEmendasAcrescimo.qry.Parameters.ParamByName('codigo').Value := edVereador.Text;
       end;

       frmEmendasAcrescimo.qry.sql.Add('and e.status = :status');
       if RG_Status.ItemIndex = 0 then
          frmEmendasAcrescimo.qry.Parameters.ParamByName('status').Value := '1';
       if RG_Status.ItemIndex = 1 then
          frmEmendasAcrescimo.qry.Parameters.ParamByName('status').Value := '2';
       if RG_Status.ItemIndex = 2 then
          frmEmendasAcrescimo.qry.Parameters.ParamByName('status').Value := '3';

       frmEmendasAcrescimo.qry.sql.Add('Order by el.emenda, el.unorc');
       frmEmendasAcrescimo.qry.ExecSQL;
       frmEmendasAcrescimo.qry.Open;

       If frmEmendasAcrescimo.qry.RecordCount = 0 then
       Begin
          ShowMessage('NÃO EXISTEM DADOS PARA ESTA PESQUISA!!!');
          frmEmendasAcrescimo.Free;
          frmEmendasAcrescimo := NIl;
          EXIT;
       end;

       frmEmendasAcrescimo.lbTit01.Caption := 'LISTAGEM DAS EMENDAS';
       frmEmendasAcrescimo.lbTit02.Caption := 'ORDEM NUMÉRICA DAS EMENDAS';

       frmEmendasAcrescimo.Preview;
       frmEmendasAcrescimo.Free;

   End;


   // Redução
   If rg.ItemIndex = 1 then
   Begin

       if frmEmendasReducao <> nil then frmEmendasReducao := nil;
       if frmEmendasReducao = nil then
          frmEmendasReducao := TfrmEmendasReducao.Create(self);

       Lista := frmEmendasReducao.qry.SQL.Text;

       frmEmendasReducao.qry.Close;
       frmEmendasReducao.qry.SQL.Clear;
       frmEmendasReducao.qry.sql.Add(lista);

       if Trim(txtUnorc.Text) <> '' Then
       Begin
          frmEmendasReducao.qry.sql.Add('and e.runorc = :runorc');
          frmEmendasReducao.qry.Parameters.ParamByName('runorc').Value := txtUnorc.Text;
       end;

       if Trim(edVereador.Text) <> '' Then
       Begin
          frmEmendasReducao.qry.sql.Add('and v.codigo = :codigo');
          frmEmendasReducao.qry.Parameters.ParamByName('codigo').Value := edVereador.Text;
       end;

       frmEmendasReducao.qry.sql.Add('and e.status = :status');
       if RG_Status.ItemIndex = 0 then
          frmEmendasReducao.qry.Parameters.ParamByName('status').Value := '1';
       if RG_Status.ItemIndex = 1 then
          frmEmendasReducao.qry.Parameters.ParamByName('status').Value := '2';
       if RG_Status.ItemIndex = 2 then
          frmEmendasReducao.qry.Parameters.ParamByName('status').Value := '3';

       frmEmendasReducao.qry.sql.Add('Order by e.runorc, e.numemenda');
       frmEmendasReducao.qry.ExecSQL;
       frmEmendasReducao.qry.Open;

       If frmEmendasReducao.qry.RecordCount = 0 then
       Begin
          ShowMessage('NÃO EXISTEM DADOS PARA ESTA PESQUISA!!!');
          frmEmendasReducao.Free;
          frmEmendasReducao := NIl;
          EXIT;
       end;

       frmEmendasReducao.lbTit01.Caption := 'LISTAGEM DAS EMENDAS';
       frmEmendasReducao.lbTit02.Caption := 'ORDEM NUMÉRICA DAS EMENDAS';

       frmEmendasReducao.Preview;   
       frmEmendasReducao.Free;

   End;

end;

procedure TfrmReducaoPesq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmReducaoPesq := Nil; 
end;

end.
