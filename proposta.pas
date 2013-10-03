unit proposta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids, Mask;

type
  TfrmProposta = class(TForm)
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
    qySomaLim_: TADOQuery;
    qySomaLim_total: TBCDField;
    qySoma_: TADOQuery;
    qySoma_total: TBCDField;
    qrySum: TADOQuery;
    qrySumUnorc: TStringField;
    qrySumprograma: TStringField;
    qrySumacao: TStringField;
    qrySumfonte: TStringField;
    qrySumValor: TBCDField;
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
    procedure dbgElementoStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure dbgElementoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgElementoEnter(Sender: TObject);
    procedure dbgElementoDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dbgElementoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgElementoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgElementoColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure dbgElementoColExit(Sender: TObject);
    procedure dbgElementoColEnter(Sender: TObject);
    procedure dbgElementoCellClick(Column: TColumn);
    procedure qryDetAfterPost(DataSet: TDataSet);
    procedure dbLocaliColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure dbLocaliDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbLocaliDblClick(Sender: TObject);
    procedure dbLocaliEditButtonClick(Sender: TObject);
    procedure dbLocaliEnter(Sender: TObject);
    procedure dbLocaliExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryDetBeforeEdit(DataSet: TDataSet);
    procedure qryDetAfterEdit(DataSet: TDataSet);
    procedure qryDetBeforeInsert(DataSet: TDataSet);
    procedure qryDetAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

    st_habilita : string;
    Function ValorTotal(Codigo: Integer) : String;
    procedure habilita_sn(habilita :string);
  end;

var
  frmProposta: TfrmProposta;
  theOperation : char;
  itsChanged : boolean;
  unoSize : integer;
  cont : integer;
  carregando : string;
  complemento : string;
  valoranterior : real;
  theLocaliCodigo : integer;
  ElValor : Real;
  theCodigo : integer;
  
implementation

uses data, acaoList, seaLocali, UnoQDDProposta, UnoFonteProposta,
  UnoFonteGer, main;

{$R *.dfm}

procedure TfrmProposta.SpeedButton1Click(Sender: TObject);
var key : char;
begin
{  key := #27;
  qryDet.Close;
  qryDet.open;
  QryUnorc.Close;
  QryUnorc.open;
  KeyPress(key);}
//  itsChanged := False;
//  clearControls;
//  theOperation := '*';
//  habilita_sn('n1');
//  habilita_sn('n2');
  close;
end;

procedure TfrmProposta.FormActivate(Sender: TObject);
begin
  btnRefreshClick(nil);
  clearControls();

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
  if dbGrid.Enabled then dbGrid.SetFocus;
end;

procedure TfrmProposta.clearControls;
begin
  theOperation := '*';
  txtCodigoConsulta.text := '';
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

procedure TfrmProposta.keyExit;
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

procedure TfrmProposta.DBGridCellClick(Column: TColumn);
begin
  lbTotal.Caption := ValorTotal(qryCODIGO.Value);
  theCodigo := qryCODIGO.Value;
  isItChanged();
  keyExit();
//  habilita_sn('s2');
end;

procedure TfrmProposta.txtCodigoConsultaExit(Sender: TObject);
begin
  if trim(txtCodigoConsulta.text) = '' then exit;

  if length(trim(txtCodigoConsulta.text)) < unoSize then begin
     showMessage('Consulta inválida');
     exit;
  end;
  if not qryUnorc.Locate('codigo',copy(txtCodigoConsulta.text,1,unoSize),[]) then showMessage('Consulta inválida');
  if length(trim(txtCodigoConsulta.text)) = unoSize then exit;


  if length(trim(txtCodigoConsulta.text)) > 18 then begin
     if not qry.Locate('funcao;subFuncao;programa;acao;locali',varArrayOf([copy(txtCodigoConsulta.text,6,2),copy(txtCodigoConsulta.text,8,3),copy(txtCodigoConsulta.text,11,4),copy(txtCodigoConsulta.text,15,4),copy(txtCodigoConsulta.text,19,4)]),[]) then
        showMessage('Consulta inválida');
     exit;
  end;

  if length(trim(txtCodigoConsulta.text)) > 14 then begin
     if not qry.Locate('funcao;subFuncao;programa;acao',varArrayOf([copy(txtCodigoConsulta.text,6,2),copy(txtCodigoConsulta.text,8,3),copy(txtCodigoConsulta.text,11,4),copy(txtCodigoConsulta.text,15,4)]),[]) then showMessage('Consulta inválida');
     exit;
  end;

  if length(trim(txtCodigoConsulta.text)) > 10 then begin
     if not qry.Locate('funcao;subFuncao;programa',varArrayOf([copy(txtCodigoConsulta.text,6,2),copy(txtCodigoConsulta.text,8,3),copy(txtCodigoConsulta.text,11,4)]),[]) then showMessage('Consulta inválida');
     exit;
  end;

  if length(trim(txtCodigoConsulta.text)) > 7 then begin
     if not qry.Locate('funcao;subFuncao',varArrayOf([copy(txtCodigoConsulta.text,6,2),copy(txtCodigoConsulta.text,8,3)]),[]) then showMessage('Consulta inválida');
     exit;
  end;

  if length(trim(txtCodigoConsulta.text)) > unoSize then begin
     if not qry.Locate('funcao',copy(txtCodigoConsulta.text,6,2),[]) then showMessage('Consulta inválida');
     exit;
  end;

  showMessage('Consulta inválida');
end;

procedure TfrmProposta.btnRefreshClick(Sender: TObject);
begin
{  with qryUnorc, qryUnorc.SQL do begin
    close;
    clear;
    add('SELECT * FROM unorc ORDER BY descricao');
    open;
  end;
 }
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

procedure TfrmProposta.txtConsultaExit(Sender: TObject);
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
       showMessage('Consulta Inválida');
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
       showMessage('Consulta Inválida');
       exit;
    end;
  end;
  keyExit();
end;

procedure TfrmProposta.txtFuncaoChange(Sender: TObject);
begin
  itsChanged := true;
  cont := cont+1;
//  habilita_sn('n1');

{  if carregando = 'S' then
  begin
      habilita_sn('s1');
      habilita_sn('s2');
  end;}
end;

procedure TfrmProposta.isItChanged;
begin

  if theOperation = '*' then exit;
  if itsChanged then
     if application.messageBox('Você iniciou uma edição no registro atual. Deseja salvar as alterações ?','',MB_ICONQUESTION+MB_YESNO) = IDYES then save();
end;


procedure TfrmProposta.save;
var    op,emenda : string;
begin
  if trim(txtDescricao.text) = '' then begin
     showMessage('Falta preencher o campo Descrição da Localização');
     Abort;
  end;

  with txtUnorc do
    if text = '' then begin
       showMessage('Falta preencher o campo Unidade Orçamentária');
       Abort;
    end;

  with txtFuncao do
    if text = '' then begin
       showMessage('Falta preencher o campo Função');
       Abort;
    end;

  with txtSubFuncao do
    if text = '' then begin
       showMessage('Falta preencher o campo SubFunção');
       Abort;
    end;

  with txtPrograma do
    if text = '' then begin
       showMessage('Falta preencher o campo Programa');
       Abort;
    end;

  with txtAcao do
    if text = '' then begin
       showMessage('Falta preencher o campo Ação');
       Abort;
    end;

  with txtLocali do
    if text = '' then begin
       showMessage('Falta preencher o campo localização');
       Abort;
    end;

  with cmbEsfera do
    if text = '' then begin
       showMessage('Falta preencher o campo Esfera');
       Abort;
    end;

  with txtRegional do
    if text = '' then begin
       showMessage('Falta preencher o campo Regional');
       Abort;
    end;
 if theOperation = 'i' then
 begin
     with stp, stp.parameters do begin
        carregando := 'N';
        paramByName('@p_operation').value := theOperation;
        if theOperation = 'i' then theCodigo := 0;
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
//        paramByName('@p_emenda').value := emenda;

        execProc;
        if paramByName('@return_value').value = 0 then begin
           showMessage('Alteração Rejeitada');
           exit;
        end
        else theCodigo := paramByName('@return_value').value;
      end;
  end;
 if (theOperation = 'a') then
 begin
     try
       with stp, stp.parameters do begin
          carregando := 'N';
          paramByName('@p_operation').value := theOperation;
          theCodigo := qry.fieldByName('codigo').asInteger;
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
//          paramByName('@p_emenda').value := emenda;

          execProc;
          if paramByName('@return_value').value = 0 then begin
             showMessage('Alteração Rejeitada');
             exit;
          end
          else theCodigo := paramByName('@return_value').value;
        end;
        Finally
            carregando := 'S';
            habilita_sn('s1');
        end;
  end;
  if theOperation = 'e' then
  begin
      try
       with stp, stp.parameters do begin
          paramByName('@p_operation').value := theOperation;
          paramByName('@p_codigo').value := theCodigo;
          execProc;
          if paramByName('@return_value').value = 0 then begin
             showMessage('Alteração Rejeitada');
             exit;
          end
          else theCodigo := paramByName('@return_value').value;
        end;
        Finally
            carregando := 'S';
            habilita_sn('s1');
        end;
     clearControls;
     with qry do begin
       close;
       open;
       if theOperation <> 'e' then locate('codigo',theCodigo,[]);

     end;
  end;   
  carregando := 'S';
  habilita_sn('n1');
//  habilita_sn('s2');
   btnRefreshClick(nil);
end;

procedure TfrmProposta.DBGridEnter(Sender: TObject);
begin
  isItChanged();
end;

procedure TfrmProposta.btnNewClick(Sender: TObject);
begin
//   if txtDescricao <>'' then theOperation := 'a'
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

procedure TfrmProposta.loadTable(theTable: string; theCombo: tComboBox);
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

procedure TfrmProposta.cmbUnorcClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtUnorc.text := copy(text,1,unoSize);
   end;
end;

procedure TfrmProposta.txtUnorcExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmProposta.cmbFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtFuncao.text := copy(text,1,2);
   end;
end;

procedure TfrmProposta.cmbSubFuncaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtsubFuncao.text := copy(text,1,3);
   end;
end;

procedure TfrmProposta.cmbProgramaClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtPrograma.text := copy(text,1,4);
   end;
end;

procedure TfrmProposta.cmbAcaoClick(Sender: TObject);
begin
   with (sender as tComboBox) do begin
     txtAcao.text := copy(text,1,4);
   end;
end;

procedure TfrmProposta.txtFuncaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;

end;

procedure TfrmProposta.txtSubFuncaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;

end;

procedure TfrmProposta.txtProgramaExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmProposta.txtAcaoExit(Sender: TObject);
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
    showMessage('Entrada Inválida');
    (sender as tEdit).setFocus;
    abort;
  end;
end;

procedure TfrmProposta.txtLocaliExit(Sender: TObject);
begin
  if length(trim(txtLocali.text)) = 0 then exit;
  if length(trim(txtLocali.text)) <> 4 then begin
     showMessage('Código da Localização deve ter 4 dígitos');
     txtLocali.setFocus;
     abort;
  end;
end;

procedure TfrmProposta.Button1Click(Sender: TObject);
begin
  frmSeaLocali.ShowModal;
  visible := true;
  txtLocali.setFocus;
end;

procedure TfrmProposta.txtRegionalExit(Sender: TObject);
begin
  with (sender as tEdit) do begin
    if trim(text) = '' then exit;
    if (text < '0') OR (text > '7') then begin
       showMessage('Código da Regional Inválido - Digite um valor entre 0 e 8');
       setFocus;
       abort;
    end;
  end;
end;

procedure TfrmProposta.qryDetBeforePost(DataSet: TDataSet);
var valor,total,soma,celold,lim : Real;
begin
  with qryDet do begin
    fieldByName('locali').asInteger := qry.fieldByName('codigo').asInteger;
  end;

  if not qryElDespesa.Locate('codigo',qryDet.fieldByName('elDespesa').asString,[]) then begin
     showMessage('Código da Despesa Inválido');
     abort;
     exit;
  end;

  with qryDet.fieldByName('indUso') do
     if (asString = '') OR (asString < '0') OR (asString > '6') then begin
       showMessage('Indicador de Uso Inválido');
       abort;
       exit;
     end;

  if not qryFonte.Locate('codigo',qryDet.fieldByName('fonte').asString,[]) then begin
     showMessage('Código da Fonte Inválido');
     abort;
     exit;
  end;

  try
    if qryDet.fieldByName('valor').asFloat < 1 then begin
       showMessage('Valor da Receita Inválido');
       abort;
       exit;
    end;
  except
     showMessage('Valor da Receita Inválido');
     abort;
     exit;
  end;
{   if qryDet.State  in [dsInsert] then
  begin
     with qryTable, qryTable.SQL do
     begin
        close;
        clear;
        add(' SELECT d.* FROM locali l left join det d on l.codigo = d.locali ');
        add(' where l.funcao = '''+txtFuncao.Text+'''');
        add(' and l.subfuncao = '''+txtSubFuncao.Text+'''');
        add(' and l.unorc = '''+txtUnorc.Text+'''');
        add(' and l.programa = '''+txtPrograma.Text+'''');
        add(' and l.acao = '''+txtAcao.Text+'''');
        add(' and d.elDespesa = '''+dbgElemento.DataSource.DataSet.FieldByName('eldespesa').AsString+'''');
        add(' and d.indUso = '''+dbgElemento.DataSource.DataSet.FieldByName('induso').AsString+'''');
        add(' and d.Fonte = '''+dbgElemento.DataSource.DataSet.FieldByName('fonte').AsString+'''');

        add(' and d.locali = '''+inttostr(qySoma_.Parameters.ParamByName('Codigo').Value)+'''');
        ExecSQL;
        open;
        First;
        if RecordCount <> 0 then
        begin
           showMessage('Elemento de Despesa já existe na lista');
           abort;
        end;
     end;
  end;
  with qryDet do begin
    fieldByName('locali').asInteger := qry.fieldByName('codigo').asInteger;
  end;

  if not qryElDespesa.Locate('codigo',qryDet.fieldByName('elDespesa').asString,[]) then begin
     showMessage('Código da Despesa Inválido');
     abort;
     exit;
  end;

  with qryDet.fieldByName('indUso') do
     if (asString = '') OR (asString < '0') OR (asString > '5') then begin
       showMessage('Indicador de Uso Inválido');
       abort;
       exit;
     end;

  if not qryFonte.Locate('codigo',qryDet.fieldByName('fonte').asString,[]) then begin
     showMessage('Código da Fonte Inválido');
     abort;
     exit;
  end;

  try
    if qryDet.fieldByName('valor').asFloat < 1 then begin
       showMessage('Valor da Receita Inválido');
       abort;
       exit;
    end;
  except
     showMessage('Valor da Receita Inválido');
     abort;
     exit;
  end;
  with qrySum, qrySum.SQL do
  begin
      Close;
      Clear;
      Add(' SELECT Unorc,programa,acao,fonte,sum(valor) as Valor FROM AnoSeguinte');
         Add(' where unorc = :unorc and programa = :programa and acao = :acao and fonte = :fonte ');
         Parameters.ParamByName('unorc').Value          := txtUnorc.Text;
         Parameters.ParamByName('programa').Value       := txtPrograma.Text;
         Parameters.ParamByName('acao').Value           := txtAcao.Text;
         Parameters.ParamByName('fonte').Value          := dbgElemento.DataSource.DataSet.FieldByName('fonte').Value;
      Add(' group by Unorc,programa,acao,fonte ');
      Add(' Order by Unorc,Programa,Acao ');
      ExecSQL;
      Open;
//      total := qrySumValor;
     with qySomaLim_, qySomaLim_.SQL do
     begin
         Close;
         Clear;
         Add(' select unorc,programa,acao,fonte,sum(valor) as total FROM det d inner join locali l on l.codigo = d.locali  ');
         Add(' where unorc = :unorc and programa = :programa and acao = :acao and fonte = :fonte ');
         Parameters.ParamByName('unorc').Value          := txtUnorc.Text;
         Parameters.ParamByName('programa').Value       := txtPrograma.Text;
         Parameters.ParamByName('acao').Value           := txtAcao.Text;
         Parameters.ParamByName('fonte').Value          := dbgElemento.DataSource.DataSet.FieldByName('fonte').Value;
         Add(' group by Unorc,programa,acao,fonte ');
         Add(' order by Unorc,programa,acao,fonte ');
         ExecSQL;
         open;
         First;
    end;

        lim := qrySumValor.Value-(qySomaLim_total.value-valoranterior);
         if ElValor <> dbgElemento.DataSource.DataSet.FieldByName('valor').AsInteger then
         begin
//              if valoranterior < dbgElemento.DataSource.DataSet.FieldByName('valor').AsInteger then
                 ElValor := (qySomaLim_total.AsInteger - valoranterior);
//              else
//               ElValor := qySomaLim_total.AsInteger -valoranterior+(dbgElemento.DataSource.DataSet.FieldByName('valor').Value-ElValor);
                 valor:=  (qySomaLim_total.value-valoranterior+dbgElemento.DataSource.DataSet.FieldByName('valor').Value);
         end;
         if qrySumValor.Value < valor  then
         begin
            ShowMessage(' Limite ultrapassado da Fonte por Programa e Ação.'+#13+' O limite total é de: R$ '+(FormatCurr('###,###,###',((qrySumValor.Value-(qySomaLim_total.value-valoranterior))))));
            qryDet.fieldByName('valor').asInteger := 0;
            abort;
           exit;
         end;
      END;

  qySoma_.Close;
  qySoma_.Parameters.ParamByName('Codigo').Value := qryTable.fieldByName('codigo').asString;
  qySoma_.ExecSQL;
  qySoma_.Open;

  lbTotal.Caption := FormatCurr('###,###,###',qySoma_total.Value)}
end;

procedure TfrmProposta.qryDetelDespesaValidate(Sender: TField);
begin
  with qryTable, qryTable.SQL do begin
    close;
    clear;
    add('SELECT * FROM elDespesa WHERE codigo = '''+sender.asString+'''');
    open;
    if eof then begin
       showMessage('Elemento de Despesa não cadastrado');
       abort;
    end;
  end;
end;

procedure TfrmProposta.SpeedButton4Click(Sender: TObject);
begin
  clearControls;
  habilita_sn('n1');
  habilita_sn('n2');
  itsChanged := False;
end;

procedure TfrmProposta.btnCancelClick(Sender: TObject);
begin
  qryDet.cancel;
  cbOP.Checked := False;
  cbEmenda.Checked := False;
end;

procedure TfrmProposta.SpeedButton3Click(Sender: TObject);
begin
{  if trim(txtDescricao.text) = '' then begin
     showMessage('Falta preencher o campo Descrição da Localização');
     exit;
  end;

  with txtUnorc do
    if text = '' then begin
       showMessage('Falta preencher o campo Unidade Orçamentária');
       exit;
    end;

  with txtFuncao do
    if text = '' then begin
       showMessage('Falta preencher o campo Função');
       exit;
    end;

  with txtSubFuncao do
    if text = '' then begin
       showMessage('Falta preencher o campo SubFunção');
       exit;
    end;

  with txtPrograma do
    if text = '' then begin
       showMessage('Falta preencher o campo Programa');
       exit;
    end;

  with txtAcao do
    if text = '' then begin
       showMessage('Falta preencher o campo Ação');
       exit;
    end;

  with txtLocali do
    if text = '' then begin
       showMessage('Falta preencher o campo localização');
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
   }
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

procedure TfrmProposta.btnSaveClick(Sender: TObject);
begin
  If itsChanged = True then
  Begin
      theOperation := 'a';
      Save();
      theOperation := '*';
     {qry.Edit;
     qrymetaFisica.Value := StrtoInt(txtMetaFisica.Text);
     qry.Post;
     exit;}
  end;

  if qryDet.state in [dsInsert, dsEdit] then qryDet.post;
  cbOP.Checked := False;
  cbEmenda.Checked := False;
end;

procedure TfrmProposta.SpeedButton5Click(Sender: TObject);
begin
  if theOperation = 'a' then
     if application.messageBox('Você tem certeza que deseja excluir o registro corrente?','Confirmação de Exclusão',MB_ICONQUESTION+MB_YESNO) = IDNO then exit
     else begin
          theOperation := 'e';
          save();
          exit;
     end;
  btnCancelClick(nil);
end;

procedure TfrmProposta.btnDeleteClick(Sender: TObject);
begin
  if application.messageBox('Você tem certeza que deseja excluir o registro corrente?','Confirmação de Exclusão',MB_ICONQUESTION+MB_YESNO) = IDNO then exit
  else qryDet.delete;
end;

procedure TfrmProposta.qryDetindUsoValidate(Sender: TField);
begin
  if (sender.asString < '0') OR (sender.asString > '6') then begin
      showMessage('Indicador de Uso Inválido');
      abort;
  end;
end;

procedure TfrmProposta.qryDetfonteValidate(Sender: TField);
begin
  with qryTable, qryTable.SQL do begin
    close;
    clear;
    add('SELECT * FROM fonte WHERE codigo = '''+sender.asString+'''');
    open;
    if eof then begin
       showMessage('Fonte de Recursos não cadastrada');
       abort;
    end;
  end;
end;

procedure TfrmProposta.qryDetvalorValidate(Sender: TField);
begin
  if sender.asFloat < 0 then begin
     showMessage('Valor Inválido');
     abort;
  end;
end;

procedure TfrmProposta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

//Criação dos atalhos para os botões de inserir, excluir, cancelar e atualizar
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

procedure TfrmProposta.dbgElementoKeyPress(Sender: TObject; var Key: Char);
begin
   //Usar o enter para passar de campo no dbgrig
  If key = #13 then
      Begin
           if not qrydet.eof then qryDet.Next;
      End;


end;

procedure TfrmProposta.txtConsultaKeyPress(Sender: TObject; var Key: Char);
begin
   //Usar o "CTRL + L" para ir para o campo de consulta
//   If key = Key_Control then
  //    txtConsulta.SetFocus;
end;

function TfrmProposta.ValorTotal(Codigo: Integer): String;
begin
   qyDetTot_.Close;
   qyDetTot_.Parameters.ParamByName('Codigo').Value := Codigo;
   qyDetTot_.ExecSQL;
   qyDetTot_.Open;

   result :='Total:   ' + FormatCurr('#,###,###,###',qyDetTot_ValorTotal.Value);

end;

procedure TfrmProposta.btQDDClick(Sender: TObject);
var org : string;
begin
   btQDD.Enabled := False;
   org := qryUnorccodigo.Value;
   frmUnoQDDProposta := nil;
   If frmUnoQDDProposta = nil then
      frmUnoQDDProposta := TfrmUnoQDDProposta.Create(self);

   frmUnoQDDProposta.qryEsfera.Close;
   frmUnoQDDProposta.qryEsfera.Parameters.ParamByName('Codigo').Value := org;
   frmUnoQDDProposta.qryEsfera.ExecSQL;
   frmUnoQDDProposta.qryEsfera.Open;

   frmUnoQDDProposta.report.PreviewModal;
   frmUnoQDDProposta.report.Free;
   btQDD.Enabled := True;
   SpeedButton4Click(nil);
   btqdd.SetFocus;
end;

procedure TfrmProposta.Button2Click(Sender: TObject);
var org : string;
begin
    org := qryUnorccodigo.Value;
   frmUnoFonteProposta := nil;
   If frmUnoFonteProposta = nil then
      frmUnoFonteProposta := TfrmUnoFonteProposta.Create(self);
   frmUnoFonteProposta.qryTot.Close;
   frmUnoFonteProposta.qryTot.Parameters.ParamByName('Codigo').Value := org;
   frmUnoFonteProposta.qryTot.ExecSQL;
   frmUnoFonteProposta.qryTot.Open;
   frmUnoFonteProposta.report.PreviewModal;
   frmUnoFonteProposta.report.Free;
   SpeedButton4Click(nil);
   Button2.SetFocus;
end;

procedure TfrmProposta.Button3Click(Sender: TObject);
var org : string;
begin
   org := qryUnorccodigo.Value;
   frmUnoFonteGer := nil;
   If frmUnoFonteGer = nil then
      frmUnoFonteGer := TfrmUnoFonteGer.Create(self);
   frmUnoFonteGer.qryTot.Close;
   frmUnoFonteGer.qryTot.Parameters.ParamByName('Codigo').Value := org;
   frmUnoFonteGer.qryTot.ExecSQL;
   frmUnoFonteGer.qryTot.Open;
   frmUnoFonteGer.report.Preview;
   frmUnoFonteGer.report.Free;
   SpeedButton4Click(nil);
   Button3.SetFocus;
end;


procedure TfrmProposta.cbOPClick(Sender: TObject);
var t : integer;
    textOP  : string;
    textOPEP  : string;

begin
   itsChanged := true;
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
 
end;

procedure TfrmProposta.cbEmendaClick(Sender: TObject);
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

   if (textEP <> ' - OP') and (textEP <> ' - EP') and ((textOPEP <> ' - OP - EP')or(textOPEP <> ' - EP - OP')) then
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

end;

procedure TfrmProposta.habilita_sn(habilita: string);
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
      btnRefresh.Enabled := true;

      txtDescricao.Enabled := False;
      txtUnorc.Enabled := False;
      cmbUnorc.Enabled := False;
      txtFuncao.Enabled := False;
      cmbFuncao.Enabled := False;
      txtSubFuncao.Enabled := False;
      cmbSubFuncao.Enabled := False;
      txtAcao.Enabled := False;
      cmbAcao.Enabled := False;
      txtPrograma.Enabled := False;
      cmbPrograma.Enabled := False;
      txtLocali.Enabled := False;
      cmbEsfera.Enabled := False;
      txtRegional.Enabled := False;
      txtMetaFisica.Enabled := False;
      Button1.Enabled := False;

      txtDescricao.ReadOnly := True;
      txtUnorc.ReadOnly := True;
      txtFuncao.ReadOnly := True;
      txtSubFuncao.ReadOnly := True;
      txtAcao.ReadOnly := True;
      txtPrograma.ReadOnly := True;
      txtLocali.ReadOnly := True;
      txtRegional.ReadOnly := True;
      txtMetaFisica.ReadOnly := True;


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
      btnRefresh.Enabled := false;


      txtDescricao.Enabled := True;
      txtUnorc.Enabled := True;
      cmbUnorc.Enabled := True;
      txtFuncao.Enabled := True;
      cmbFuncao.Enabled := True;
      txtSubFuncao.Enabled := True;
      cmbSubFuncao.Enabled := True;
      txtAcao.Enabled := True;
      cmbAcao.Enabled := True;
      txtPrograma.Enabled := True;
      cmbPrograma.Enabled := True;
      txtLocali.Enabled := True;
      cmbEsfera.Enabled := True;
      txtRegional.Enabled := True;
      txtMetaFisica.Enabled := True;
      Button1.Enabled := True;

      txtDescricao.ReadOnly := False;
      txtUnorc.ReadOnly := False;
      txtFuncao.ReadOnly := False;
      txtSubFuncao.ReadOnly := False;
      txtAcao.ReadOnly := False;
      txtPrograma.ReadOnly := False;
      txtLocali.ReadOnly := False;
      txtRegional.ReadOnly := False;
      txtMetaFisica.ReadOnly := False;

   end;
   if habilita = 'n2' then
   begin
      st_habilita := 'n2';

      btnSave.Enabled := False;
      btnCancel.Enabled := False;
      btnDelete.Enabled := True;
//      btnRefresh.Enabled := False;
   end;

   if habilita = 's2' then
   begin
      st_habilita := 's2';

      btnSave.Enabled := True;
      btnCancel.Enabled := True;
      btnDelete.Enabled := False;
      btnRefresh.Enabled := True;
   end;
end;

procedure TfrmProposta.FormCreate(Sender: TObject);
begin
    qryUnorc.Open;
    qry.Open;
    qyOrgaos_.Open;
    qryDet.Open;
    qryElDespesa.Open;
    qryFonte.Open;
    

    habilita_sn('n1');
    cont := 0;
end;

procedure TfrmProposta.txtDescricaoExit(Sender: TObject);
begin
//    habilita_sn('s1');
end;

procedure TfrmProposta.dbgElementoStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
   if trim(dbgElemento.DataSource.DataSet.FieldByName('valor').AsString) <> '' then
   begin
      ElValor := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
      valoranterior := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
   end;
   theLocaliCodigo := qryDetlocali.Value;
end;

procedure TfrmProposta.dbgElementoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if trim(dbgElemento.DataSource.DataSet.FieldByName('valor').AsString) <> '' then
   begin
      ElValor := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
      valoranterior := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
   end;
   theLocaliCodigo := qryDetlocali.Value;
end;

procedure TfrmProposta.dbgElementoEnter(Sender: TObject);
begin
   if trim(dbgElemento.DataSource.DataSet.FieldByName('valor').AsString) <> '' then
   begin
      ElValor := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
      valoranterior := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
   end;
   theLocaliCodigo := qryDetlocali.Value;
   habilita_sn('n2');
end;

procedure TfrmProposta.dbgElementoDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   if trim(dbgElemento.DataSource.DataSet.FieldByName('valor').AsString) <> '' then
   begin
      ElValor := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
      valoranterior := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
   end;
   theLocaliCodigo := qryDetlocali.Value;


end;

procedure TfrmProposta.dbgElementoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if trim(dbgElemento.DataSource.DataSet.FieldByName('valor').AsString) <> '' then
   begin
      ElValor := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
      valoranterior := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
   end;
   theLocaliCodigo := qryDetlocali.Value;


end;

procedure TfrmProposta.dbgElementoDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
   if trim(dbgElemento.DataSource.DataSet.FieldByName('valor').AsString) <> '' then
   begin
      ElValor := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
      valoranterior := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
   end;
   theLocaliCodigo := qryDetlocali.Value;
   habilita_sn('n2');

end;

procedure TfrmProposta.dbgElementoColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
   if trim(dbgElemento.DataSource.DataSet.FieldByName('valor').AsString) <> '' then
   begin
      ElValor := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
      valoranterior := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
   end;
   theLocaliCodigo := qryDetlocali.Value;


end;

procedure TfrmProposta.dbgElementoColExit(Sender: TObject);
begin
   if trim(dbgElemento.DataSource.DataSet.FieldByName('valor').AsString) <> '' then
   begin
      ElValor := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
      valoranterior := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
   end;
  theLocaliCodigo := qryDetlocali.Value;
  
end;

procedure TfrmProposta.dbgElementoColEnter(Sender: TObject);
begin
   if trim(dbgElemento.DataSource.DataSet.FieldByName('valor').AsString) <> '' then
   begin
      ElValor := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
      valoranterior := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
   end;
   theLocaliCodigo := qryDetlocali.Value;
   habilita_sn('n2');

end;

procedure TfrmProposta.dbgElementoCellClick(Column: TColumn);
begin
{isItChanged();

  keyExit();

  with qryTable, qryTable.SQL do
  begin
      Close;
      Clear;
      Add(' SELECT l.codigo FROM locali l     INNER JOIN acao a ON l.acao = a.codigo ');
      Add(' WHERE unorc = '''+txtUnorc.Text+'''');
      Add(' and funcao = '''+txtFuncao.Text+'''');
      Add(' and subfuncao = '''+txtSubFuncao.Text+'''');
      Add(' and programa = '''+txtPrograma.Text+'''');
      Add(' and acao = '''+txtAcao.Text+'''');
      Add(' and locali = '''+txtLocali.Text+'''');
      ExecSQL;
      Open;
  end;

  qySoma_.Close;
  qySoma_.Parameters.ParamByName('Codigo').Value := qryTable.fieldByName('codigo').asString;
  qySoma_.ExecSQL;
  qySoma_.Open;

  lbTotal.Caption := FormatCurr('###,###,###',qySoma_total.Value)

  }
   if trim(dbgElemento.DataSource.DataSet.FieldByName('valor').AsString) <> '' then
   begin
      ElValor := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
      valoranterior := dbgElemento.DataSource.DataSet.FieldByName('valor').Value;
   end;
   theLocaliCodigo := qryDetlocali.Value;
   habilita_sn('n2');
end;

procedure TfrmProposta.qryDetAfterPost(DataSet: TDataSet);
begin
  lbTotal.Caption := ValorTotal(qryCODIGO.Value);
  theCodigo := qryCODIGO.Value;
  habilita_sn('n2');
end;

procedure TfrmProposta.dbLocaliColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
   theCodigo := qryCODIGO.Value;
end;

procedure TfrmProposta.dbLocaliDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
      theCodigo := qryCODIGO.Value;
end;

procedure TfrmProposta.dbLocaliDblClick(Sender: TObject);
begin
    theCodigo := qryCODIGO.Value;
      itsChanged := true;
  cont := cont+1;
  if carregando = 'S' then
  begin
      habilita_sn('s1');
      habilita_sn('s2');
  end;
end;

procedure TfrmProposta.dbLocaliEditButtonClick(Sender: TObject);
begin
theCodigo := qryCODIGO.Value;
end;

procedure TfrmProposta.dbLocaliEnter(Sender: TObject);
begin
    theCodigo := qryCODIGO.Value;
end;

procedure TfrmProposta.dbLocaliExit(Sender: TObject);
begin
theCodigo := qryCODIGO.Value;
end;

procedure TfrmProposta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if itsChanged then
  if application.messageBox('Você iniciou uma edição no registro atual. Deseja salvar as alterações ?','',MB_ICONQUESTION+MB_YESNO) = IDYES then
  begin
      Action := caNone;
      save();
      exit;
  end else
  begin
     clearControls;
     habilita_sn('n1');
     habilita_sn('n2');
     itsChanged := False;
  end;


end;

procedure TfrmProposta.qryDetBeforeEdit(DataSet: TDataSet);
begin
   habilita_sn('n2');
end;

procedure TfrmProposta.qryDetAfterEdit(DataSet: TDataSet);
begin
   habilita_sn('s2');
end;

procedure TfrmProposta.qryDetBeforeInsert(DataSet: TDataSet);
begin
   habilita_sn('s2');
end;

procedure TfrmProposta.qryDetAfterCancel(DataSet: TDataSet);
begin
   habilita_sn('n2');
end;

end.

