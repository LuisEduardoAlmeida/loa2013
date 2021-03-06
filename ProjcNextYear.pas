unit ProjcNextYear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls, Buttons, Mask,
  dxCore, dxButton, DBCtrls;

type
  TfrmProjNextYear = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Shape3: TShape;
    SpeedButton1: TSpeedButton;
    Bevel2: TBevel;
    Label13: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btnPrint: TSpeedButton;
    Bevel1: TBevel;
    Label3: TLabel;
    txtUnorc: TEdit;
    txtPrograma: TEdit;
    cmbPrograma: TComboBox;
    txtAcao: TEdit;
    cmbAcao: TComboBox;
    txtFonte: TEdit;
    cmbFonte: TComboBox;
    dbgAnoSeguinte: TDBGrid;
    btInsert: TdxButton;
    btSave: TdxButton;
    btCancel: TdxButton;
    btDelete: TdxButton;
    cmbUnorc: TComboBox;
    txtValor: TMaskEdit;
    btRefresh: TdxButton;
    edSequencial: TEdit;
    ADOQuery1: TADOQuery;
    ADOQuery1codigo: TAutoIncField;
    ADOQuery1Unorc: TStringField;
    ADOQuery1Programa: TStringField;
    ADOQuery1Acao: TStringField;
    ADOQuery1Fonte: TStringField;
    ADOQuery1Valor: TBCDField;
    DataSource1: TDataSource;
    qryTable: TADOQuery;
    qryTable2: TADOQuery;
    qryTable2codigo: TStringField;
    qryTable2descricao: TStringField;
    qrySequencial: TADOQuery;
    qrySequencialcodigo: TAutoIncField;
    qrySequencialUnorc: TStringField;
    qrySequencialPrograma: TStringField;
    qrySequencialAcao: TStringField;
    qrySequencialFonte: TStringField;
    qrySequencialValor: TBCDField;
    DBNavigator1: TDBNavigator;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edUnorcExit(Sender: TObject);
    procedure edProgramaExit(Sender: TObject);
    procedure edAcaoExit(Sender: TObject);
    procedure edFonteEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure txtProgramaExit(Sender: TObject);
    procedure txtUnorcExit(Sender: TObject);
    procedure txtAcaoExit(Sender: TObject);
    procedure txtFonteExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure loadTable_x(TheCamp:String; TheDesc: string; theCombo: tComboBox);
    procedure cmbUnorcClick(Sender: TObject);
    procedure txtUnorcChange(Sender: TObject);
    procedure txtProgramaChange(Sender: TObject);
    procedure txtAcaoChange(Sender: TObject);
    procedure txtFonteChange(Sender: TObject);
    procedure edSequencialChange(Sender: TObject);
    procedure edSequencialExit(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    st_habilita : string;
    Procedure Busca(Txt: String);
    procedure habilita_sn(habilita :string);
    procedure clearControls;
  end;

var
  frmProjNextYear: TfrmProjNextYear;
  itsChanged   : boolean;
  unoSize : integer;
  theOperation : char;
implementation

uses data, AnoSeguinteSelRel;

{$R *.dfm}

procedure TfrmProjNextYear.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{    IF (KEY = VK_F1) and (Status_ano <> 'S') THEN btInserir.OnClick(NIL);
    IF (KEY = VK_F2) and (Status_ano <> 'S') THEN btSalvar.OnClick(NIL);
    IF (KEY = VK_F3) and (Status_ano <> 'S') THEN btCancelar.OnClick(NIL);
    IF (KEY = VK_F4) and (Status_ano <> 'S') THEN btDelete.OnClick(NIL);
    IF (KEY = VK_F5) THEN btRenovar.OnClick(NIL);
    IF (KEY = VK_F6) THEN btImprimir.OnClick(NIL);}
end;

procedure TfrmProjNextYear.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmProjNextYear.edUnorcExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbUnorc do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmProjNextYear.edProgramaExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbPrograma do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmProjNextYear.edAcaoExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbAcao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmProjNextYear.edFonteEnter(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbFonte do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmProjNextYear.FormActivate(Sender: TObject);
begin
{  Status_reg := '';
  Permite := '';
  btnRefreshClick(nil);
  clearControls();
  Apaga_MetaTotal;
  Apaga_Valor_r();
  Apaga_Valor_a();
  cbStatus.ItemIndex := 2;
  PageControl1.ActivePageIndex := 0;
  dbGrid.setFocus; }
end;

procedure TfrmProjNextYear.btnPrintClick(Sender: TObject);
begin
    If FrmAnoSeguinteSelRel = nil then
        FrmAnoSeguinteSelRel := TFrmAnoSeguinteSelRel.Create(self);
    // FrmFuncionalidade.setBounds(frmMain.left + 214, frmMain.top + 167,803,562);
     FrmAnoSeguinteSelRel.ShowModal;
end;

procedure TfrmProjNextYear.txtProgramaExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbPrograma do
  begin
    for i := 0 to items.count - 1  do
    begin
       if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then
       begin
          itemIndex := i;
          exit;
       end;
    end;

    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmProjNextYear.txtUnorcExit(Sender: TObject);
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

    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;

  if txtPrograma.Text <> '' then loadTable_x('programa','descricao',cmbPrograma);
  if txtAcao.Text <> '' then  loadTable_x('acao','descricao',cmbAcao);
  if txtFonte.Text <> '' then  loadTable_x('fonte','descricao',cmbFonte);
end;

procedure TfrmProjNextYear.txtAcaoExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbAcao do
  begin
    for i := 0 to items.count - 1  do
    begin
       if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then
       begin
          itemIndex := i;
          exit;
       end;
    end;

    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
  if txtUnorc.Text <> '' then  loadTable_x('unorc','descricao',cmbUnorc);
  if txtPrograma.Text <> '' then loadTable_x('programa','descricao',cmbPrograma);
  if txtFonte.Text <> '' then  loadTable_x('fonte','descricao',cmbFonte);

end;

procedure TfrmProjNextYear.txtFonteExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbFonte do
  begin
    for i := 0 to items.count - 1  do
    begin
       if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then
       begin
          itemIndex := i;
          exit;
       end;
    end;
    
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;

  if txtUnorc.Text <> '' then  loadTable_x('unorc','descricao',cmbUnorc);
  if txtPrograma.Text <> '' then loadTable_x('programa','descricao',cmbPrograma);
  if txtAcao.Text <> '' then  loadTable_x('acao','descricao',cmbAcao);

end;

procedure TfrmProjNextYear.Busca(Txt: String);
Var i : integer;
begin
{  if trim((sender as tEdit).text) = '' then exit;
  with cmbUnorc do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;

         Statusvalor := 'r';
         txtPrograma.Clear;
         cmbPrograma.Clear;
         loadTable_Programa('Unorc','UnorcD',cmbUnorc);

         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;

    txtPrograma.Clear;
    cmbPrograma.Clear;
    abort;
  end;
 }
end;

procedure TfrmProjNextYear.FormCreate(Sender: TObject);
begin
   loadTable_x('unorc','descricao',cmbUnorc);
   loadTable_x('programa','descricao',cmbPrograma);
   loadTable_x('acao','descricao',cmbAcao);
   loadTable_x('fonte','descricao',cmbFonte);
   habilita_sn('n');
end;

procedure TfrmProjNextYear.loadTable_x(TheCamp, TheDesc: string;
  theCombo: tComboBox);
begin
  with qryTable, qryTable.SQL do
  begin
    close;
    clear;
    add(' SELECT distinct an.'+TheCamp+','+(copy(TheCamp,1,1))+'.'+TheDesc+' FROM anoseguinte an ');
    add(' left join unorc u on u.codigo = an.unorc ');
    add(' left join programa p on p.codigo = an.programa ');
    add(' left join acao a on a.codigo = an.acao ');
    add(' left join fonte f on f.codigo = an.fonte ');
    add('  ORDER BY '+TheCamp);
    open;
    theCombo.clear;
    while not eof do
    begin
      theCombo.items.add(fieldByName(TheCamp).asString + '-'+fieldByName(TheDesc).asString);
      next;
    end;
  end;
end;

procedure TfrmProjNextYear.cmbUnorcClick(Sender: TObject);
begin
 with (sender as tComboBox) do begin
     cmbUnorc.text := copy(text,1,unoSize);
//     Statusvalor := 'r';
   end;
end;

procedure TfrmProjNextYear.txtUnorcChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmProjNextYear.txtProgramaChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmProjNextYear.txtAcaoChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmProjNextYear.txtFonteChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmProjNextYear.edSequencialChange(Sender: TObject);
begin
   itsChanged := true;
end;

procedure TfrmProjNextYear.edSequencialExit(Sender: TObject);
var i : integer;
    codigo,unorc,programa,acao,fonte : string;
    valor :                   real;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with qryTable, qryTable.SQL do
  begin
    close;
    clear;
    add(' SELECT distinct * FROM anoseguinte ');
    add(' where codigo = '+edSequencial.text);
    open;
    ExecSQL;
    Open;
  end;
  if qryTable.RecordCount = 0 then
  begin
      ShowMessage('Codigo de sequencial invalido ou inexistente!');
      exit;
  end;
  if qryTable.RecordCount = 1 then
  begin
      codigo   := qryTable.fieldByName('codigo').asString;
      unorc    := qryTable.fieldByName('unorc').asString;
      programa := qryTable.fieldByName('programa').asString;
      acao     := qryTable.fieldByName('acao').asString;
      fonte    := qryTable.fieldByName('fonte').asString;
      valor    := qryTable.fieldByName('valor').Value;
      txtUnorc.Text := qryTable.fieldByName('unorc').asString;
      txtPrograma.Text := qryTable.fieldByName('programa').asString;
      txtAcao.Text     := qryTable.fieldByName('acao').asString;
      txtFonte.Text    := qryTable.fieldByName('fonte').asString;
      loadTable_x('unorc','descricao',cmbUnorc);
      loadTable_x('programa','descricao',cmbPrograma);
      loadTable_x('acao','descricao',cmbAcao);
      loadTable_x('fonte','descricao',cmbFonte);
      txtValor.Text    := FormatCurr('###,###,##0.00',Valor);
      txtValor.SetFocus;
  end;
end;

procedure TfrmProjNextYear.btInsertClick(Sender: TObject);
var valor : real;
begin
  if (theOperation <> 'i') or (theOperation <> 'a') then theOperation := '*';
  if (trim(edSequencial.Text)) = '' then
  begin
      theOperation := 'i';
      clearControls;
      edSequencial.Enabled := False;
      txtUnorc.SetFocus;
      habilita_sn('s');
      exit;
  end;
  if (trim(edSequencial.Text)) <> '' then theOperation := 'a';
  begin
  //txtCodigo.setFocus;
     habilita_sn('s');
     txtValor.SetFocus;
     valor    := StrToFloat(StringReplace(txtValor.Text, '.', '', [rfReplaceAll]));
     txtValor.text := FloatToStr(valor);
  end;
end;

procedure TfrmProjNextYear.habilita_sn(habilita: string);
begin
   if habilita = 's' then
   begin
      st_habilita := 's';
      btInsert.Enabled          := False;
      btSave.Enabled             := True;
      btDelete.Enabled           := False;
      btCancel.Enabled           := False;
      btRefresh.Enabled          := False;
      btnPrint.Enabled         := False;

   end;
   if habilita = 'n' then
   begin
       st_habilita := 'n';
       btInsert.Enabled          := True;
       btSave.Enabled             := False;
       btDelete.Enabled           := True;
       btCancel.Enabled           := True;
       btRefresh.Enabled          := True;
       btnPrint.Enabled           := True;

   end;
end;

procedure TfrmProjNextYear.clearControls;
begin
  edSequencial.text := '';
  txtUnorc.text := '';
  cmbUnorc.ItemIndex := -1;
  txtPrograma.Text := '';
  cmbPrograma.ItemIndex := -1;
  txtAcao.Text := '';
  cmbAcao.ItemIndex := -1;
  txtFonte.Text := '';
  cmbFonte.ItemIndex := -1;
  txtValor.Text := '';
end;

procedure TfrmProjNextYear.btDeleteClick(Sender: TObject);
begin
    if edSequencial.Text <> '' then
    begin
       if application.messageBox('Tem certeza que deseja excluir o usu�rio?','',
             MB_ICONQUESTION+MB_YESNO) = IDYES then
             begin
                with ADOQuery1, ADOQuery1.SQL do
                begin
                close;
                Clear;
                add(' delete FROM AnoSeguinte ');
                add(' where codigo ='+edSequencial.text );
                ExecSQL;
             end;
             end else    exit;
    end else ShowMessage(' Informe o sequencal que vo�� deseja excluir' );
    edSequencial.SetFocus;
  //dbgAnoSeguinte.iselected.Delete;
  habilita_sn('n');
  clearControls;
end;

procedure TfrmProjNextYear.btSaveClick(Sender: TObject);
var i : integer;
    codigo,unorc,programa,acao,fonte : string;
    valor :                   real;
begin
    codigo   := edSequencial.Text;
    unorc    := txtUnorc.Text;
    programa := txtPrograma.Text;
    acao     := txtAcao.Text;
    fonte    := txtFonte.Text;
    valor    := StrToFloat(StringReplace(txtValor.Text, '.', '', [rfReplaceAll]));

    with qryTable, qryTable.SQL do
    begin
        close;
        Clear;
        Add(' select * from anoseguinte ');
        add(' where unorc ='+unorc);
        add(' and programa='+programa);
        add(' and acao='+acao);
        add(' and fonte='+fonte);
        ExecSQL;
        Open;
   end;
   if qryTable.RecordCount <> 0 then
   begin
      ShowMessage(' Limite j� exites!');
      exit
   end;
  if theOperation = 'i' then begin
    with qryTable, qryTable.SQL do
    begin
        close;
        Clear;
        Add(' insert into anoseguinte ');
        add(' (unorc,programa,acao,fonte,valor) ');
        add('  values('+unorc+','+programa+','+acao+','+fonte+','+FloatToStr(valor)+')');
        ExecSQL
    end;
  end;
  if theOperation = 'a' then begin
    with qryTable, qryTable.SQL do
    begin
        close;
        Clear;
        Add(' update anoseguinte ');
        add(' set unorc ='+unorc);
        add('  ,programa='+programa);
        add(' ,acao='+acao);
        add(' ,fonte='+fonte);
        add(' ,valor='+FloatToStr(valor));
        add(' where codigo ='+codigo);
        ExecSQL
    end;
  end;

  theOperation := '*';
  habilita_sn('n1');
  btRefreshClick(nil);
  clearControls;
end;

procedure TfrmProjNextYear.btRefreshClick(Sender: TObject);
begin
   with ADOQuery1, ADOQuery1.SQL do
   begin
       close;
       Clear;
       add(' SELECT *   FROM AnoSeguinte ');
       add(' Order by Unorc,Programa,Acao ');
       ExecSQL;
       Open;
   end;
end;
procedure TfrmProjNextYear.btCancelClick(Sender: TObject);
begin
   theOperation := '*';
   habilita_sn('n1');
   btRefreshClick(nil);
   clearControls;
end;

end.
