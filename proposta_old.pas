unit proposta_old;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids, Mask;

type
  TfrmProposta_old = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Shape3: TShape;
    SpeedButton1: TSpeedButton;
    Shape4: TShape;
    txtConsulta: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    txtFuncao: TEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    cmbEsfera: TComboBox;
    Shape5: TShape;
    btnSave: TSpeedButton;
    btnDelete: TSpeedButton;
    btnCancel: TSpeedButton;
    Bevel2: TBevel;
    DBGrid: TDBGrid;
    qryUnorc: TADOQuery;
    sQryUnorc: TDataSource;
    chbAll: TCheckBox;
    btnRefresh: TSpeedButton;
    Label8: TLabel;
    stp: TADOStoredProc;
    Bevel3: TBevel;
    qry: TADOQuery;
    sQry: TDataSource;
    dbLocali: TDBGrid;
    dbgElemento: TDBGrid;
    qryDet: TADOQuery;
    sQryDet: TDataSource;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    qryDetlocali: TIntegerField;
    qryDetelDespesa: TStringField;
    qryDetindUso: TStringField;
    qryDetfonte: TStringField;
    qryDetvalor: TBCDField;
    cmbFuncao: TComboBox;
    Label5: TLabel;
    txtSubFuncao: TEdit;
    cmbSubFuncao: TComboBox;
    Label6: TLabel;
    txtPrograma: TEdit;
    cmbPrograma: TComboBox;
    Label7: TLabel;
    txtAcao: TEdit;
    cmbAcao: TComboBox;
    Label9: TLabel;
    txtLocali: TEdit;
    Label10: TLabel;
    txtDescricao: TEdit;
    Label11: TLabel;
    txtRegional: TEdit;
    Button1: TButton;
    Label12: TLabel;
    txtMetaFisica: TEdit;
    Bevel4: TBevel;
    txtProduto: TLabel;
    txtCodigoConsulta: TMaskEdit;
    Label13: TLabel;
    txtUnorc: TEdit;
    cmbUnorc: TComboBox;
    qryTable: TADOQuery;
    qryElDespesa: TADOQuery;
    qryFonte: TADOQuery;
    qyDetTot_: TADOQuery;
    qyDetTot_ValorTotal: TBCDField;
    lbTotal: TLabel;
    qryCODIGO: TAutoIncField;
    qryesfera: TStringField;
    qryunorc2: TStringField;
    qryfuncao: TStringField;
    qrysubFuncao: TStringField;
    qryprograma: TStringField;
    qryacao: TStringField;
    qrylocali: TStringField;
    qryregional: TStringField;
    qrydescricao: TStringField;
    qrymetaFisica: TBCDField;
    qryproduto: TStringField;
    btQDD: TButton;
    qyOrgaos_: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    dsOrgaos_: TDataSource;
    qryUnorccodigo: TStringField;
    qryUnorcdescricao: TStringField;
    Button2: TButton;
    Button3: TButton;
    cbOP: TCheckBox;
    qryop: TWideStringField;
    ADOQuery1: TADOQuery;
    cbEmenda: TCheckBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure clearControls();
    procedure keyExit();
    procedure DBGridCellClick(Column: TColumn);
    procedure txtCodigoConsultaExit(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure txtConsultaExit(Sender: TObject);
    procedure txtFuncaoChange(Sender: TObject);
    procedure isItChanged();
    procedure save();
    procedure DBGridEnter(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure loadTable(theTable: string; theCombo: tComboBox);
    procedure cmbUnorcClick(Sender: TObject);
    procedure txtUnorcExit(Sender: TObject);
    procedure cmbFuncaoClick(Sender: TObject);
    procedure cmbSubFuncaoClick(Sender: TObject);
    procedure cmbProgramaClick(Sender: TObject);
    procedure cmbAcaoClick(Sender: TObject);
    procedure txtFuncaoExit(Sender: TObject);
    procedure txtSubFuncaoExit(Sender: TObject);
    procedure txtProgramaExit(Sender: TObject);
    procedure txtAcaoExit(Sender: TObject);
    procedure txtLocaliExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure txtRegionalExit(Sender: TObject);
    procedure qryDetBeforePost(DataSet: TDataSet);
    procedure qryDetelDespesaValidate(Sender: TField);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure qryDetindUsoValidate(Sender: TField);
    procedure qryDetfonteValidate(Sender: TField);
    procedure qryDetvalorValidate(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgElementoKeyPress(Sender: TObject; var Key: Char);
    procedure txtConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure btQDDClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cbOPClick(Sender: TObject);
    procedure cbEmendaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtDescricaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    st_habilita : string;
    Function ValorTotal(Codigo: Integer) : String;
    procedure habilita_sn(habilita :string);
  end;

var
  frmProposta_old: TfrmProposta_old;
  theOperation : char;
  itsChanged : boolean;
  unoSize : integer;
  cont : integer;
  carregando : string;
   complemento : string;
implementation

uses data, acaoList, seaLocali, UnoQDDProposta, UnoFonteProposta,
  UnoFonteGer;

{$R *.dfm}

procedure TfrmProposta_old.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmProposta_old.FormActivate(Sender: TObject);
begin
  btnRefreshClick(nil);
  clearControls();
  dbGrid.setFocus;
  loadTable('unorc',cmbUnorc);

  qryTable.first;
  unoSize := length(trim(qryTable.fieldByName('codigo').asString));
  loadTable('funcao',cmbFuncao);
  loadTable('subFuncao',cmbsubFuncao);
  loadTable('programa',cmbPrograma);
  loadTable('acao',cmbAcao);
  with qryElDespesa do
  begin
    first;
    dbgElemento.columns [0].pickList.clear;
    while not eof do
    begin
      dbgElemento.columns [0].pickList.add(fieldByName('codigo').asString + '-' + fieldByName('descricao').asString);
      next;
    end;
  end;
  with qryFonte do
  begin
    first;
    dbgElemento.columns [2].pickList.clear;
    while not eof do
    begin
      dbgElemento.columns [2].pickList.add(fieldByName('codigo').asString + '-' + fieldByName('descricao').asString);
      next;
    end;
  end;

end;

procedure TfrmProposta_old.clearControls;
begin
  theOperation := '*';
  txtCodigoConsulta.text := 'unorcffsbfprogacaolocal';
  txtConsulta.text := '';
  txtDescricao.text := '';
  txtUnorc.text := '';
  txtFuncao.text := '';
  txtSubFuncao.text := '';
  txtPrograma.text := '';
  txtAcao.text := '';
  txtLocali.text := '';
  txtRegional.text := '';
  txtMetaFisica.text := '';
  txtProduto.caption := '';
  cbOP.Checked := False;
  cbEmenda.Checked := False;

  with cmbEsfera do begin
     text := '';
     itemIndex := -1;
  end;

  with cmbUnorc do begin
     text := '';
     itemIndex := -1;
  end;

  with cmbFuncao do begin
     text := '';
     itemIndex := -1;
  end;

  with cmbSubFuncao do begin
     text := '';
     itemIndex := -1;
  end;

  with cmbPrograma do begin
     text := '';
     itemIndex := -1;
  end;

  with cmbAcao do begin
     text := '';
     itemIndex := -1;
  end;

  qryDet.close;
end;

procedure TfrmProposta_old.keyExit;
begin
  clearControls();
  theOperation := 'a';
  with qry do begin
    carregando := 'N';
    txtDescricao.text := fieldByName('descricao').asString;
    txtProduto.caption := fieldByName('produto').asString;
    txtUnorc.text := fieldByName('unorc').asString;
    txtFuncao.text := fieldByName('funcao').asString;
    txtsubFuncao.text := fieldByName('subFuncao').asString;
    txtPrograma.text := fieldByName('programa').asString;
    txtAcao.text := fieldByName('acao').asString;
    txtLocali.text := fieldByName('locali').asString;
    txtMetaFisica.text := fieldByName('metaFisica').asString;
    txtRegional.text := fieldByName('regional').asString;
    if fieldByName('op').Value = 'S' then cbOP.Checked := True;
    if fieldByName('op').Value = 'N' then cbOP.Checked := False;
//    if fieldByName('emenda').Value = 'S' then cbEmenda.Checked := True;
//    if fieldByName('emenda').Value = 'N' then cbEmenda.Checked := False;

    txtUnorcExit(txtUnorc);
    txtFuncaoExit(txtFuncao);
    txtSubFuncaoExit(txtSubFuncao);
    txtProgramaExit(txtPrograma);
    txtAcaoExit(txtAcao);

    with dmtData do begin
      setComboBox(fieldByName('esfera').asString, cmbEsfera);
    end;
    qryDet.open;

  end;
  itsChanged := false;
  carregando := 'S';
end;

procedure TfrmProposta_old.DBGridCellClick(Column: TColumn);
begin
  lbTotal.Caption := ValorTotal(qryCODIGO.Value);
  isItChanged();
  keyExit();
  habilita_sn('s2');
end;

procedure TfrmProposta_old.txtCodigoConsultaExit(Sender: TObject);
begin
  if trim(txtCodigoConsulta.text) = '' then exit;

  if length(trim(txtCodigoConsulta.text)) < unoSize then begin
     showMessage('Consulta inv�lida');
     exit;
  end;
  if not qryUnorc.Locate('codigo',copy(txtCodigoConsulta.text,1,unoSize),[]) then showMessage('Consulta inv�lida');
  if length(trim(txtCodigoConsulta.text)) = unoSize then exit;


  if length(trim(txtCodigoConsulta.text)) > 18 then begin
     if not qry.Locate('funcao;subFuncao;programa;acao;locali',varArrayOf([copy(txtCodigoConsulta.text,6,2),copy(txtCodigoConsulta.text,8,3),copy(txtCodigoConsulta.text,11,4),copy(txtCodigoConsulta.text,15,4),copy(txtCodigoConsulta.text,19,4)]),[]) then
        showMessage('Consulta inv�lida');
     exit;
  end;

  if length(trim(txtCodigoConsulta.text)) > 14 then begin
     if not qry.Locate('funcao;subFuncao;programa;acao',varArrayOf([copy(txtCodigoConsulta.text,6,2),copy(txtCodigoConsulta.text,8,3),copy(txtCodigoConsulta.text,11,4),copy(txtCodigoConsulta.text,15,4)]),[]) then showMessage('Consulta inv�lida');
     exit;
  end;

  if length(trim(txtCodigoConsulta.text)) > 10 then begin
     if not qry.Locate('funcao;subFuncao;programa',varArrayOf([copy(txtCodigoConsulta.text,6,2),copy(txtCodigoConsulta.text,8,3),copy(txtCodigoConsulta.text,11,4)]),[]) then showMessage('Consulta inv�lida');
     exit;
  end;

  if length(trim(txtCodigoConsulta.text)) > 7 then begin
     if not qry.Locate('funcao;subFuncao',varArrayOf([copy(txtCodigoConsulta.text,6,2),copy(txtCodigoConsulta.text,8,3)]),[]) then showMessage('Consulta inv�lida');
     exit;
  end;

  if length(trim(txtCodigoConsulta.text)) > unoSize then begin
     if not qry.Locate('funcao',copy(txtCodigoConsulta.text,6,2),[]) then showMessage('Consulta inv�lida');
     exit;
  end;

  showMessage('Consulta inv�lida');
end;

procedure TfrmProposta_old.btnRefreshClick(Sender: TObject);
begin
  with qryUnorc, qryUnorc.SQL do begin
    close;
    clear;
    add('SELECT * FROM unorc ORDER BY descricao');
    open;
  end;

  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT l.*,');
    add('   produto = CASE');
    add('               WHEN a.produto > '''' THEN  a.produto + ''('' + a.unidade + '')''');
    add('               ELSE ''''');
    add('             END');
    add('   FROM locali l');
    add('    INNER JOIN acao a ON l.acao = a.codigo');
    add('WHERE unorc = :codigo ORDER BY l.descricao');
    open;
  end;
  cbOP.Checked := False;
  cbEmenda.Checked := False;
end;

procedure TfrmProposta_old.txtConsultaExit(Sender: TObject);
begin
  if trim(txtConsulta.text) = '' then exit;
  with qryUnorc, qryUnorc.SQL do begin
    close;
    clear;
    add('SELECT DISTINCT u.codigo, u.descricao FROM locali l');
    add('    INNER JOIN unorc u ON l.unorc = u.codigo');
    if chbAll.checked then
       add('   WHERE l.descricao LIKE(''%'+txtConsulta.text+'%'')')
    else add(' WHERE l.descricao LIKE('''+txtConsulta.text+'%'')');
    add('    ORDER BY u.descricao');
    open;
    if eof then begin
       showMessage('Consulta Inv�lida');
       exit;
    end;
  end;
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT l.*,');
    add('   produto = CASE');
    add('               WHEN a.produto > '''' THEN  a.produto + ''('' + a.unidade + '')''');
    add('               ELSE ''''');
    add('             END');
    add('   FROM locali l');
    add('    INNER JOIN acao a ON l.acao = a.codigo');
    if chbAll.checked then
       add('   WHERE unorc = :codigo AND l.descricao LIKE(''%'+txtConsulta.text+'%'')')
    else add(' WHERE unorc = :codigo AND l.descricao LIKE('''+txtConsulta.text+'%'')');
    add('    ORDER BY l.descricao');
    open;
    if eof then begin
       showMessage('Consulta Inv�lida');
       exit;
    end;
  end;
  keyExit();
end;

procedure TfrmProposta_old.txtFuncaoChange(Sender: TObject);
begin
  itsChanged := true;
  cont := cont+1;
  habilita_sn('n1');

  if carregando = 'S' then
  begin
      habilita_sn('s1');
      habilita_sn('s2');
  end;
end;

procedure TfrmProposta_old.isItChanged;
begin

  if theOperation = '*' then exit;
  if itsChanged then
     if application.messageBox('Voc� iniciou uma edi��o no registro atual. Deseja salvar as altera��es ?','',MB_ICONQUESTION+MB_YESNO) = IDYES then save();
end;


procedure TfrmProposta_old.save;
var theCodigo : integer;
    op,emenda : string;
begin

  if cbOP.Checked = true then
              op := 'S'
  else        op := 'N';
  if cbEmenda.Checked = true then
              emenda := 'S'
  else        emenda := 'N';

  with stp, stp.parameters do begin
    carregando := 'N';
    paramByName('@p_operation').value := theOperation;
    if theOperation = 'i' then theCodigo := 0
    else theCodigo := qry.fieldByName('codigo').asInteger;
    paramByName('@p_codigo').value := theCodigo;
    paramByName('@p_esfera').value := copy(cmbEsfera.text,1,2);
    paramByName('@p_unorc').value := copy(cmbUnorc.text,1,unoSize);
    paramByName('@p_funcao').value := copy(cmbFuncao.text,1,2);
    paramByName('@p_subFuncao').value := copy(cmbSubFuncao.text,1,3);
    paramByName('@p_programa').value := copy(cmbPrograma.text,1,4);
    paramByName('@p_acao').value := copy(cmbAcao.text,1,4);
    paramByName('@p_locali').value := txtLocali.text;
    paramByName('@p_metaFisica').value := txtMetaFisica.text;
    paramByName('@p_descricao').value := txtDescricao.text;
    paramByName('@p_regional').value := txtRegional.text;
    paramByName('@p_op').value := op;
//    paramByName('@p_emenda').value := emenda;

    execProc;
    if paramByName('@return_value').value = 0 then begin
       showMessage('Altera��o Rejeitada');
       exit;
       end
    else theCodigo := paramByName('@return_value').value;
  end;

  if theOperation = 'e' then clearControls;
  with qry do begin
     close;
     open;
     if theOperation <> 'e' then locate('codigo',theCodigo,[]);

  end;
  carregando := 'S';
  habilita_sn('n1');
//  habilita_sn('s2');

end;

procedure TfrmProposta_old.DBGridEnter(Sender: TObject);
begin
  isItChanged();
end;

procedure TfrmProposta_old.btnNewClick(Sender: TObject);
begin
  habilita_sn('s1');
  habilita_sn('n2');
  isItChanged();
  clearControls();
  theOperation := 'i';
  qryDet.close;
  txtDescricao.setFocus;
  txtUnorc.text := qryUnorc.fieldByName('codigo').asString;
  txtUnorcExit(txtUnorc);
  cbOP.Enabled := True;
  cbEmenda.Enabled := True;
end;

procedure TfrmProposta_old.loadTable(theTable: string; theCombo: tComboBox);
begin
  with qryTable, qryTable.SQL do begin
    close;
    clear;
    add('SELECT * FROM '+theTable);
    add('  ORDER BY descricao');
    open;
    theCombo.clear;
    while not eof do begin
      theCombo.items.add(fieldByName('codigo').asString + '-'+fieldByName('descricao').asString);
      next;
    end;
  end;
end;

procedure TfrmProposta_old.cmbUnorcClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtUnorc.text := copy(text,1,unoSize);
   end;
end;

procedure TfrmProposta_old.txtUnorcExit(Sender: TObject);
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

procedure TfrmProposta_old.cmbFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtFuncao.text := copy(text,1,2);
   end;
end;

procedure TfrmProposta_old.cmbSubFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtsubFuncao.text := copy(text,1,3);
   end;
end;

procedure TfrmProposta_old.cmbProgramaClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtPrograma.text := copy(text,1,4);
   end;
end;

procedure TfrmProposta_old.cmbAcaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtAcao.text := copy(text,1,4);
   end;
end;

procedure TfrmProposta_old.txtFuncaoExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbFuncao do begin
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

procedure TfrmProposta_old.txtSubFuncaoExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbSubFuncao do begin
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

procedure TfrmProposta_old.txtProgramaExit(Sender: TObject);
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

procedure TfrmProposta_old.txtAcaoExit(Sender: TObject);
var i : integer;
begin
  if trim((sender as tEdit).text) = '' then exit;
  with cmbAcao do begin
    for i := 0 to items.count - 1  do begin
      if trim((sender as tEdit).text) = copy(items[i],1,length((sender as tEdit).text)) then begin
         itemIndex := i;
         if theOperation = 'i' then
            with qryTable, qryTable.SQL do begin
              close;
              clear;
              add('SELECT produto = CASE');
              add('                  WHEN produto > '''' THEN  produto + ''('' + unidade + '')''');
              add('                  ELSE ''''');
              add('                 END');
              add('   FROM acao');
              add('     WHERE codigo = '''+trim((sender as tEdit).text)+'''');
              open;
              if not eof then txtProduto.caption := qryTable.fieldByName('produto').asString;
     end;
         exit;
      end;
    end;
    showMessage('Entrada Inv�lida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmProposta_old.txtLocaliExit(Sender: TObject);
begin
  if length(trim(txtLocali.text)) = 0 then exit;
  if length(trim(txtLocali.text)) <> 4 then begin
     showMessage('C�digo da Localiza��o deve ter 4 d�gitos');
     txtLocali.setFocus;
     abort;
  end;
end;

procedure TfrmProposta_old.Button1Click(Sender: TObject);
begin
  frmSeaLocali.ShowModal;
  visible := true;
  txtLocali.setFocus;
end;

procedure TfrmProposta_old.txtRegionalExit(Sender: TObject);
begin
  with (sender as tEdit) do begin
    if trim(text) = '' then exit;
    if (text < '0') OR (text > '7') then begin
       showMessage('C�digo da Regional Inv�lido - Digite um valor entre 0 e 8');
       setFocus;
       abort;
    end;
  end;
end;

procedure TfrmProposta_old.qryDetBeforePost(DataSet: TDataSet);
begin
  with qryDet do begin
    fieldByName('locali').asInteger := qry.fieldByName('codigo').asInteger;
  end;

  if not qryElDespesa.Locate('codigo',qryDet.fieldByName('elDespesa').asString,[]) then begin
     showMessage('C�digo da Despesa Inv�lido');
     abort;
     exit;
  end;

  with qryDet.fieldByName('indUso') do
     if (asString = '') OR (asString < '0') OR (asString > '6') then begin
       showMessage('Indicador de Uso Inv�lido');
       abort;
       exit;
     end;

  if not qryFonte.Locate('codigo',qryDet.fieldByName('fonte').asString,[]) then begin
     showMessage('C�digo da Fonte Inv�lido');
     abort;
     exit;
  end;

  try
    if qryDet.fieldByName('valor').asFloat < 1 then begin
       showMessage('Valor da Receita Inv�lido');
       abort;
       exit;
    end;
  except
     showMessage('Valor da Receita Inv�lido');
     abort;
     exit;
  end;
end;

procedure TfrmProposta_old.qryDetelDespesaValidate(Sender: TField);
begin
  with qryTable, qryTable.SQL do begin
    close;
    clear;
    add('SELECT * FROM elDespesa WHERE codigo = '''+sender.asString+'''');
    open;
    if eof then begin
       showMessage('Elemento de Despesa n�o cadastrado');
       abort;
    end;
  end;
end;

procedure TfrmProposta_old.SpeedButton4Click(Sender: TObject);
begin
  clearControls;
  habilita_sn('n1');
  habilita_sn('n2');
  itsChanged := False;
end;

procedure TfrmProposta_old.btnCancelClick(Sender: TObject);
begin

  qryDet.cancel;
  cbOP.Checked := False;
  cbEmenda.Checked := False;
end;

procedure TfrmProposta_old.SpeedButton3Click(Sender: TObject);
begin
  if trim(txtDescricao.text) = '' then begin
     showMessage('Falta preencher o campo Descri��o da Localiza��o');
     exit;
  end;

  with txtUnorc do
    if text = '' then begin
       showMessage('Falta preencher o campo Unidade Or�ament�ria');
       exit;
    end;

  with txtFuncao do
    if text = '' then begin
       showMessage('Falta preencher o campo Fun��o');
       exit;
    end;

  with txtSubFuncao do
    if text = '' then begin
       showMessage('Falta preencher o campo SubFun��o');
       exit;
    end;

  with txtPrograma do
    if text = '' then begin
       showMessage('Falta preencher o campo Programa');
       exit;
    end;

  with txtAcao do
    if text = '' then begin
       showMessage('Falta preencher o campo A��o');
       exit;
    end;

  with txtLocali do
    if text = '' then begin
       showMessage('Falta preencher o campo localiza��o');
       exit;
    end;

  with cmbEsfera do
    if text = '' then begin
       showMessage('Falta preencher o campo Esfera');
       exit;
    end;

  with txtRegional do
    if text = '' then begin
       showMessage('Falta preencher o campo Regional');
       exit;
    end;

  txtUnorcExit(txtUnorc);
  txtFuncaoExit(txtFuncao);
  txtSubFuncaoExit(txtSubFuncao);
  txtProgramaExit(txtPrograma);
  txtAcaoExit(txtAcao);
  txtLocaliExit(txtLocali);
  txtRegionalExit(txtRegional);
  habilita_sn('n1');
  habilita_sn('s2');
  save();
  itsChanged := false;
  keyExit();
  if theOperation = 'i' then qryDet.open;
end;

procedure TfrmProposta_old.btnSaveClick(Sender: TObject);
begin
   habilita_sn('n1');
   habilita_sn('s2');
  if qryDet.state in [dsInsert, dsEdit] then qryDet.post;
  cbOP.Checked := False;
  cbEmenda.Checked := False;
end;

procedure TfrmProposta_old.SpeedButton5Click(Sender: TObject);
begin
  if theOperation = 'a' then
     if application.messageBox('Voc� tem certeza que deseja excluir o registro corrente?','Confirma��o de Exclus�o',MB_ICONQUESTION+MB_YESNO) = IDNO then exit
     else begin
          theOperation := 'e';
          save();
          exit;
     end;
  btnCancelClick(nil);
end;

procedure TfrmProposta_old.btnDeleteClick(Sender: TObject);
begin
  if application.messageBox('Voc� tem certeza que deseja excluir o registro corrente?','Confirma��o de Exclus�o',MB_ICONQUESTION+MB_YESNO) = IDNO then exit
  else qryDet.delete;
end;

procedure TfrmProposta_old.qryDetindUsoValidate(Sender: TField);
begin
  if (sender.asString < '0') OR (sender.asString > '6') then begin
      showMessage('Indicador de Uso Inv�lido');
      abort;
  end;
end;

procedure TfrmProposta_old.qryDetfonteValidate(Sender: TField);
begin
  with qryTable, qryTable.SQL do begin
    close;
    clear;
    add('SELECT * FROM fonte WHERE codigo = '''+sender.asString+'''');
    open;
    if eof then begin
       showMessage('Fonte de Recursos n�o cadastrada');
       abort;
    end;
  end;
end;

procedure TfrmProposta_old.qryDetvalorValidate(Sender: TField);
begin
  if sender.asFloat < 1 then begin
     showMessage('Valor Inv�lido');
     abort;
  end;
end;

procedure TfrmProposta_old.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

//Cria��o dos atalhos para os bot�es de inserir, excluir, cancelar e atualizar
begin
   If key = vk_F1 then
      SpeedButton2.OnClick(NIL);
   If key = vk_F2 then
      SpeedButton3.OnClick(NIL);
   If key = vk_F3 then
      SpeedButton4.OnClick(NIL);
   If key = vk_F4 then
      SpeedButton5.OnClick(NIL);
   If key = vk_F5 then
      btnSave.OnClick(NIL);
   If key = vk_F6 then
      btnCancel.OnClick(NIL);
   If key = vk_F7 then
      btnDelete.OnClick(NIL);
   If key = vk_F8 then
      btnRefresh.OnClick(NIL);

end;

procedure TfrmProposta_old.dbgElementoKeyPress(Sender: TObject; var Key: Char);
begin
   //Usar o enter para passar de campo no dbgrig
   If key = #13 then
      Begin
           Perform(WM_NEXTDLGCTL,0,0);
           Key := #0;
      End;

end;

procedure TfrmProposta_old.txtConsultaKeyPress(Sender: TObject; var Key: Char);
begin
   //Usar o "CTRL + L" para ir para o campo de consulta
//   If key = Key_Control then
  //    txtConsulta.SetFocus;
end;

function TfrmProposta_old.ValorTotal(Codigo: Integer): String;
begin
   qyDetTot_.Close;
   qyDetTot_.Parameters.ParamByName('Codigo').Value := Codigo;
   qyDetTot_.ExecSQL;
   qyDetTot_.Open;

   result :='Total:   ' + FormatCurr('#,###,###,###',qyDetTot_ValorTotal.Value);

end;

procedure TfrmProposta_old.btQDDClick(Sender: TObject);
begin
   frmUnoQDDProposta := nil;
   If frmUnoQDDProposta = nil then
      frmUnoQDDProposta := TfrmUnoQDDProposta.Create(self);

   frmUnoQDDProposta.qryEsfera.Close;
   frmUnoQDDProposta.qryEsfera.Parameters.ParamByName('Codigo').Value := qryUnorccodigo.Value;
   frmUnoQDDProposta.qryEsfera.ExecSQL;
   frmUnoQDDProposta.qryEsfera.Open;

   frmUnoQDDProposta.report.Preview;
   frmUnoQDDProposta.report.Free;

end;

procedure TfrmProposta_old.Button2Click(Sender: TObject);
begin
   frmUnoFonteProposta := nil;
   If frmUnoFonteProposta = nil then
      frmUnoFonteProposta := TfrmUnoFonteProposta.Create(self);
   frmUnoFonteProposta.qryTot.Close;
   frmUnoFonteProposta.qryTot.Parameters.ParamByName('Codigo').Value := qryUnorccodigo.Value;
   frmUnoFonteProposta.qryTot.ExecSQL;
   frmUnoFonteProposta.qryTot.Open;
   frmUnoFonteProposta.report.Preview;
   frmUnoFonteProposta.report.Free;
end;

procedure TfrmProposta_old.Button3Click(Sender: TObject);
begin
   frmUnoFonteGer := nil;
   If frmUnoFonteGer = nil then
      frmUnoFonteGer := TfrmUnoFonteGer.Create(self);
   frmUnoFonteGer.qryTot.Close;
   frmUnoFonteGer.qryTot.Parameters.ParamByName('Codigo').Value := qryUnorccodigo.Value;
   frmUnoFonteGer.qryTot.ExecSQL;
   frmUnoFonteGer.qryTot.Open;
   frmUnoFonteGer.report.Preview;
   frmUnoFonteGer.report.Free;
end;

procedure TfrmProposta_old.cbOPClick(Sender: TObject);
var t : integer;
    textOP  : string;
    textOPEP  : string;

begin
{   itsChanged := true;
   t := Length(qry.fieldByName('descricao').asString);

   textOP   := copy(qry.fieldByName('descricao').asString,t-4,t);
   textOPEP := copy(qry.fieldByName('descricao').asString,t-8,t);
   if (textOP <> ' - OP') and (textOP <> ' - EP') and (textOPEP <> ' - OP - EP') then

   if (textOP = ' - OP') and  (cbOP.Checked = true) and (cbEmenda.Checked = true) then
         txtDescricao.Text := qry.fieldByName('descricao').asString+' - EP';
   if (textOP = ' - OP') and  (cbOP.Checked = true) and (cbEmenda.Checked = false) then
         txtDescricao.Text := qry.fieldByName('descricao').asString;
   if (textOP = ' - OP') and  (cbOP.Checked = false) and (cbEmenda.Checked = true) then
         txtDescricao.Text := qry.fieldByName('descricao').asString+' - EP';
   if (textOP = ' - OP') and  (cbOP.Checked = false) and (cbEmenda.Checked = false) then
          txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-4);


   begin
        if (cbOP.Checked = true) and (cbEmenda.Checked = true) then
            txtDescricao.Text := qry.fieldByName('descricao').asString+' - OP - EP';

        if (cbOP.Checked = true) and (cbEmenda.Checked = False) then
            txtDescricao.Text := qry.fieldByName('descricao').asString+' - OP';

        if (cbOP.Checked = false) and (cbEmenda.Checked = True) then
            txtDescricao.Text := qry.fieldByName('descricao').asString+' - EP';

        if (cbOP.Checked = false) and (cbEmenda.Checked = False) then
            txtDescricao.Text :=  copy(qry.fieldByName('descricao').asString,1,t);

   end;

   if (textOPEP = ' - OP - EP')then
   begin
        if (cbEmenda.Checked = true) and (cbop.Checked = true) then
            txtDescricao.Text :=  qry.fieldByName('descricao').asString;

        if (cbEmenda.Checked = true) and (cbop.Checked = False) then
            txtDescricao.Text :=  copy(qry.fieldByName('descricao').asString,1,t-10)+' - EP';

        if (cbEmenda.Checked = false) and (cbop.Checked = True) then
            txtDescricao.Text :=  copy(qry.fieldByName('descricao').asString,1,t-10)+' - OP';

        if (cbEmenda.Checked = false) and (cbop.Checked = False) then
            txtDescricao.Text :=  copy(qry.fieldByName('descricao').asString,1,t-10);

   end;
   if  (textOPEP = ' - EP - OP') then
   begin
        if (cbEmenda.Checked = true) and (cbop.Checked = true) then
            txtDescricao.Text :=  copy(qry.fieldByName('descricao').asString,1,t-10)+' - OP - EP';

        if (cbEmenda.Checked = true) and (cbop.Checked = False) then
            txtDescricao.Text :=  copy(qry.fieldByName('descricao').asString,1,t-10)+' - EP';

        if (cbEmenda.Checked = false) and (cbop.Checked = True) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10)+' - OP';

        if (cbEmenda.Checked = false) and (cbop.Checked = False) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10);

   end;

   if  (textOPEP <> ' - OP - EP') and ((copy(textOPEP,5,9) = ' - OP') OR (copy(textOPEP,5,9) = ' - EP')) then
   begin
        if (cbEmenda.Checked = true) and (cbop.Checked = true) then
            txtDescricao.Text :=  qry.fieldByName('descricao').asString+' - EP';

        if (cbEmenda.Checked = true) and (cbop.Checked = False) then
            txtDescricao.Text :=  copy(qry.fieldByName('descricao').asString,1,t-4)+' - EP';

        if (cbEmenda.Checked = false) and (cbop.Checked = True) then
            txtDescricao.Text :=  copy(qry.fieldByName('descricao').asString,1,t-4)+' - OP';

        if (cbEmenda.Checked = false) and (cbop.Checked = False) then
            txtDescricao.Text :=  copy(qry.fieldByName('descricao').asString,1,t-5);

   end;
   if (textOPEP <> ' - EP - OP') and ((copy(textOPEP,5,9) = ' - EP') OR (copy(textOPEP,5,9) = ' - EP'))then
   begin
        if (cbEmenda.Checked = true) and (cbop.Checked = true) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10)+' - OP - EP';

        if (cbEmenda.Checked = true) and (cbop.Checked = False) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10)+' - EP';

        if (cbEmenda.Checked = false) and (cbop.Checked = True) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10)+' - OP';

        if (cbEmenda.Checked = false) and (cbop.Checked = False) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10);

   end;
 }
end;

procedure TfrmProposta_old.cbEmendaClick(Sender: TObject);
var m,t : integer;
    textEP  : string;
    textOPEP  : string;

begin
   itsChanged := true;
   t := Length(qry.fieldByName('descricao').asString);
   m := t -4;
   textEP := copy(qry.fieldByName('descricao').asString,m,t);
   textOPEP := copy(qry.fieldByName('descricao').asString,t-8,t);

{   if (textEP = ' - EP') and (cbEmenda.Checked = true) then txtDescricao.Text := qry.fieldByName('descricao').asString;
   if (textEP = ' - EP') and (cbEmenda.Checked = false) then
          txtDescricao.Text :=  copy(qry.fieldByName('descricao').asString,t,t-4);
 }
{   if (textEP <> ' - EP') and ()then textEP := copy(qry.fieldByName('descricao').asString,t-4,t);
      if copy(qry.fieldByName('descricao').asString,t-8,m)<>' - OP - EP' then
         if copy(qry.fieldByName('descricao').asString,m,t)<>' - EP' then
             textOPEP := copy(qry.fieldByName('descricao').asString,t-8,t);
 }

{   if (textEP <> ' - OP') and (textEP <> ' - EP') and ((textOPEP <> ' - OP - EP')or(textOPEP <> ' - EP - OP')) then
   begin
        if (cbOP.Checked = true) and (cbEmenda.Checked = true) then
            txtDescricao.Text := qry.fieldByName('descricao').asString+' - OP - EP';

        if (cbOP.Checked = true) and (cbEmenda.Checked = False) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t)+' - OP';

        if (cbOP.Checked = false) and (cbEmenda.Checked = True) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t)+' - EP';

        if (cbOP.Checked = false) and (cbEmenda.Checked = False) then
            txtDescricao.Text :=  copy(qry.fieldByName('descricao').asString,1,t);

   end;

   if  (textOPEP = ' - OP - EP')then
   begin
        if (cbEmenda.Checked = true) and (cbop.Checked = true) then
            txtDescricao.Text := qry.fieldByName('descricao').asString;

        if (cbEmenda.Checked = true) and (cbop.Checked = False) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10)+' - EP';

        if (cbEmenda.Checked = false) and (cbop.Checked = True) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10)+' - OP';

        if (cbEmenda.Checked = false) and (cbop.Checked = False) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10)

   end;
   if  (textOPEP = ' - EP - OP') then
   begin
        if (cbEmenda.Checked = true) and (cbop.Checked = true) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10)+' - OP - EP';

        if (cbEmenda.Checked = true) and (cbop.Checked = False) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10)+' - EP';

        if (cbEmenda.Checked = false) and (cbop.Checked = True) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10)+' - OP';

        if (cbEmenda.Checked = false) and (cbop.Checked = False) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10);

   end;
   if  (textOPEP <> ' - EP - OP') and ((copy(textOPEP,5,9) = ' - OP') OR (copy(textOPEP,5,9) = ' - EP'))then
   begin
        if (cbEmenda.Checked = true) and (cbop.Checked = true) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10)+' - OP - EP';

        if (cbEmenda.Checked = true) and (cbop.Checked = False) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10)+' - EP';

        if (cbEmenda.Checked = false) and (cbop.Checked = True) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-10)+' - OP';

        if (cbEmenda.Checked = false) and (cbop.Checked = False) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-9);
   end;


   if  (textOPEP <> ' - OP - EP') and ((copy(textOPEP,5,9) = ' - OP') OR (copy(textOPEP,5,9) = ' - OP'))then
   begin
        if (cbEmenda.Checked = true) and (cbop.Checked = true) then
            txtDescricao.Text := qry.fieldByName('descricao').asString+' - EP';

        if (cbEmenda.Checked = true) and (cbop.Checked = False) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-4)+' - EP';

        if (cbEmenda.Checked = false) and (cbop.Checked = True) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-4)+' - OP';

        if (cbEmenda.Checked = false) and (cbop.Checked = False) then
            txtDescricao.Text := copy(qry.fieldByName('descricao').asString,1,t-4);



   end;
 }
end;

procedure TfrmProposta_old.habilita_sn(habilita: string);
begin
   if habilita = 'n1' then
   begin
      st_habilita := 'n1';

      DBGrid.Enabled := True;
      dbLocali.Enabled := True;
      dbgElemento.Enabled := true;
      SpeedButton2 .Enabled := True;
      SpeedButton3.Enabled := False;
      SpeedButton4 .Enabled := False;
      SpeedButton5.Enabled := True;
      btnSave.Enabled := False;
      btnCancel.Enabled := False;
      btnDelete.Enabled := False;
      btnRefresh.Enabled := False;
   end;

   if habilita = 's1' then
   begin
      st_habilita := 's1';

      DBGrid.Enabled := False;
      dbLocali.Enabled := False;
      dbgElemento.Enabled := False;
      SpeedButton2 .Enabled := False;
      SpeedButton3.Enabled := True;
      SpeedButton4 .Enabled := True;
      SpeedButton5.Enabled := False;
      btnSave.Enabled := False;
      btnCancel.Enabled := False;
      btnDelete.Enabled := False;
      btnRefresh.Enabled := False;

   end;
   if habilita = 'n2' then
   begin
      st_habilita := 'n2';

      btnSave.Enabled := False;
      btnCancel.Enabled := False;
      btnDelete.Enabled := False;
      btnRefresh.Enabled := False;
   end;

   if habilita = 's2' then
   begin
      st_habilita := 's2';

      btnSave.Enabled := True;
      btnCancel.Enabled := True;
      btnDelete.Enabled := True;
      btnRefresh.Enabled := True;
   end;
end;

procedure TfrmProposta_old.FormCreate(Sender: TObject);
begin
    habilita_sn('n1');
    cont := 0;
end;

procedure TfrmProposta_old.txtDescricaoExit(Sender: TObject);
begin
//    habilita_sn('s1');
end;

end.

