unit Vereadores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids;

type
  TfrmVereadores = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Shape3: TShape;
    SpeedButton1: TSpeedButton;
    Shape4: TShape;
    txtConsulta: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    txtCodigoConsulta: TEdit;
    txtNome: TEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    cmbTipo: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Shape5: TShape;
    btnNew: TSpeedButton;
    btnSave: TSpeedButton;
    btnDelete: TSpeedButton;
    btnCancel: TSpeedButton;
    btnPrint: TSpeedButton;
    Bevel2: TBevel;
    Shape6: TShape;
    DBGrid: TDBGrid;
    qry: TADOQuery;
    sQry: TDataSource;
    chbAll: TCheckBox;
    btnRefresh: TSpeedButton;
    Label8: TLabel;
    txtCodigo: TEdit;
    stp: TADOStoredProc;
    chbAlfa: TCheckBox;
    Bevel3: TBevel;
    txtPartido: TEdit;
    Label9: TLabel;
    txtComentario: TMemo;
    qryCodigo: TAutoIncField;
    qryNome: TStringField;
    qryPartido_Sigla: TStringField;
    qryCondicao: TStringField;
    qryComentario: TStringField;
    qryDtCadastro: TDateTimeField;
    txtLogin: TEdit;
    Label7: TLabel;
    qrylogin: TStringField;
    qrysenha: TStringField;
    qrystatus: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure clearControls();
    procedure keyExit();
    procedure DBGridCellClick(Column: TColumn);
    procedure txtCodigoConsultaExit(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure txtConsultaExit(Sender: TObject);
    procedure txtNomeChange(Sender: TObject);
    procedure isItChanged();
    procedure save();
    procedure DBGridEnter(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Status_reg : String;
    Permite : String; 
  end;

var
  frmVereadores: TfrmVereadores;
  theOperation : char;
  itsChanged : boolean;

implementation

uses data, acaoList;

{$R *.dfm}

procedure TfrmVereadores.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmVereadores.FormActivate(Sender: TObject);
begin
  Status_reg := '';
  Permite := '';
  btnRefreshClick(nil);
  clearControls();
  dbGrid.setFocus;
end;

procedure TfrmVereadores.clearControls;
begin
  theOperation := '*';
  txtCodigo.text := '';
{  txtLogin.text := '';
  txtSenha.text := '';
  cmbStatus.text := '';
  cmbStatus.itemIndex := -1;}
  txtCodigoConsulta.text := '';
  txtConsulta.text := '';
  txtNome.text := '';
  txtPartido.text := '';
  cmbTipo.text := '';
  cmbTipo.itemIndex := -1;
  txtComentario.Clear;

  txtCodigo.readOnly := true;
end;

procedure TfrmVereadores.keyExit;
begin
  clearControls();
  theOperation := 'a';
  Permite := 's';
  with qry do begin
    txtNome.text := fieldByName('nome').asString;
    txtPartido.text := fieldByName('Partido_Sigla').asString;
    txtCodigo.text := fieldByName('codigo').asString;
    txtComentario.Lines.Add(fieldByName('comentario').asString);
{    txtSenha.Text  := fieldByName('senha').asString;;
    txtLogin.Text := fieldByName('login').asString;
   if qrystatus.Value  ='D' then cmbStatus.ItemIndex := 0;
   if qrystatus.Value  = 'A' then cmbStatus.ItemIndex := 1;}
    with dmtData do begin
      setComboBox(fieldByName('condicao').asString, cmbTipo);
    end;
  end;
  itsChanged := false;
end;

procedure TfrmVereadores.DBGridCellClick(Column: TColumn);
begin
  Status_reg := 'a';

  isItChanged();
  keyExit();

end;

procedure TfrmVereadores.txtCodigoConsultaExit(Sender: TObject);
begin
  if trim(txtCodigoConsulta.text) = '' then exit;
  if not qry.Locate('codigo',txtCodigoConsulta.text,[]) then begin
     showMessage('Código da Ação Inválido');
     txtCodigoConsulta.setFocus;
     exit;
  end;
  keyExit();
end;

procedure TfrmVereadores.btnRefreshClick(Sender: TObject);
begin
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM VEREADORES ORDER BY NOME');
    open;
  end;
end;

procedure TfrmVereadores.txtConsultaExit(Sender: TObject);
begin
  if trim(txtConsulta.text) = '' then exit;
  with qry, qry.SQL do begin
    close;
    clear;
    if chbAll.checked then
       add('SELECT * FROM vereadores WHERE nome LIKE(''%'+txtConsulta.text+'%'')')
    else add('SELECT * FROM vereadores WHERE nome LIKE('''+txtConsulta.text+'%'')');
    open;
    if qry.eof then begin
       showMessage('Consulta Inválida');
       exit;
    end;
  end;
  keyExit();
end;

procedure TfrmVereadores.txtNomeChange(Sender: TObject);
begin
  itsChanged := true;
end;

procedure TfrmVereadores.isItChanged;
begin
  if theOperation = '*' then exit;
  if itsChanged then
     if application.messageBox('Você iniciou uma edição no registro atual. Deseja salvar as alterações ?','',MB_ICONQUESTION+MB_YESNO) = IDYES then save();
  end;


procedure TfrmVereadores.save;
begin
   if application.messageBox('Salvar alterações ?','Salvar',
      MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   if Status_reg = 'i' then qry.Insert;
   if Status_reg = 'a' then qry.Edit;
   qryNome.Value          := txtNome.Text;
   qrylogin.Value         := txtLogin.Text;
{   qrysenha.Value         := txtSenha.Text;
   if (cmbStatus.ItemIndex = 0) or (cmbStatus.ItemIndex = -1) then qrystatus.Value    := 'D';
   if (cmbStatus.ItemIndex = 1) then qrystatus.Value    := 'A';}
   qryPartido_Sigla.Value := txtPartido.Text;
   qryCondicao.Value      := copy(cmbTipo.text,1,1);
   qryComentario.Value    := txtComentario.Lines.Text;
   qryDtCadastro.Value    := Date;
   qry.Post;

   Status_reg :='';
   clearControls();
  {
  if (copy(txtCodigo.text,1,1) = '0') OR
     (copy(txtCodigo.text,1,1) = '1') OR
     (copy(txtCodigo.text,1,1) = '2') OR
     (copy(txtCodigo.text,1,1) = '9') then
  else begin
     showMessage('Código da Ação Inválido');
     exit;
  end;

  if trim(txtNome.text) = '' then begin
     showMessage('Falta preencher campo descrição');
     exit;
  end;

  if (copy(txtCodigo.text,1,1) = '1') then
     if (copy(cmbTipo.text,1,1) = 'P') then
     else begin
        showMessage('Código da Ação Inválido para Projetos');
        exit;
     end;

  if (copy(txtCodigo.text,1,1) = '2') then
     if (copy(cmbTipo.text,1,1) = 'A') then
     else begin
        showMessage('Código da Ação Inválido para Atividade');
        exit;
     end;


  if (copy(cmbTipo.text,1,1) = 'P') OR
     (copy(cmbTipo.text,1,1) = 'A') OR
     (copy(cmbTipo.text,1,1) = 'E') OR
     (copy(cmbTipo.text,1,1) = 'O') then
  else begin
     showMessage('Tipo da Ação Inválido');
     exit;
  end;

  if trim(txtProduto.text) = '' then
     if trim(txtUnidade.text) = '' then
     else begin
       showMessage('Falta Preencher Campo Produto da Ação');
       exit;
     end
  else
     if trim(txtUnidade.text) = '' then begin
       showMessage('Falta Preencher Campo Unidade de Medida do Produto da Ação');
       exit;
     end;

  with stp, stp.parameters do begin
    paramByName('@p_operation').value := theOperation;
    paramByName('@p_codigo').value := txtCodigo.text;
    paramByName('@p_descricao').value := txtDescricao.text;
    paramByName('@p_tipo').value := copy(cmbTipo.text,1,1);
    paramByName('@p_produto').value := txtProduto.text;
    paramByName('@p_unidade').value := txtUnidade.text;
    execProc;
    if paramByName('@return_value').value = 0 then showMessage('Alteração Rejeitada');

  end;
  with qry do begin
    close;
    open;
    if theOperation <> 'e' then Locate('codigo',txtCodigo.text,[]);
  end;

  clearControls();
  }
end;

procedure TfrmVereadores.DBGridEnter(Sender: TObject);
begin
  isItChanged();
end;

procedure TfrmVereadores.btnNewClick(Sender: TObject);
begin
  Status_reg := 'i';
  isItChanged();
  clearControls();
  theOperation := 'i';
  txtCodigo.readOnly := false;
  txtNome.setFocus;
{  IF txtCodigo.Text ='' then
  begin
      Status_reg := 'i';
      clearControls();
      theOperation := 'i';
  end else
  begin
      Status_reg := 'a';
      theOperation := 'a';
  end;
  isItChanged();

  txtLogin.readOnly := False;
  txtSenha.readOnly := False;
  cmbStatus.Enabled := True;
  txtNome.Enabled := True;
  txtPartido.Enabled := True;
  cmbTipo.Enabled := True;
  txtComentario.Enabled := True;


  txtLogin.setFocus;*/}
end;

procedure TfrmVereadores.btnSaveClick(Sender: TObject);
begin
  save();
  txtLogin.readOnly := True;
{  txtSenha.readOnly := True;
  cmbStatus.Enabled := false;}
end;

procedure TfrmVereadores.btnCancelClick(Sender: TObject);
begin
  clearControls;
  txtLogin.readOnly := True;
{  txtSenha.readOnly := True;
  cmbStatus.Enabled := false;}
end;

procedure TfrmVereadores.btnDeleteClick(Sender: TObject);
begin
   if Permite <> 's' then
   Begin
      ShowMessage('Registro não foi selecionado. Selecione Registro!');
      Exit;
   End;


   if application.messageBox('Você tem certeza que deseja excluir o registro corrente?','Confirmação de Exclusão',
      MB_ICONQUESTION+MB_YESNO) = IDNO then
   Begin
      Permite := 'n';
      clearControls;
      exit;
   end
   else
     begin
        Permite := 'n';
        qry.Delete;
        btnCancelClick(nil);
     end;

end;

procedure TfrmVereadores.btnPrintClick(Sender: TObject);
begin
 {
 Application.CreateForm(TfrmAcaoList, frmAcaoList);
  if chbAlfa.checked then
     with frmAcaoList.qry do begin
       close;
       SQL[8] := 'ORDER BY descricao';
       open;
     end;
  frmAcaoList.report.preview;
  frmAcaoList.free;
 }
end;

procedure TfrmVereadores.DBGridDblClick(Sender: TObject);
begin
  keyExit();
  txtLogin.readOnly := false;
{  txtSenha.readOnly := false;
  cmbStatus.Enabled := True;}
  txtNome.Enabled := True;
  txtPartido.Enabled := True;
  cmbTipo.Enabled := True;
  txtComentario.Enabled := True;

end;

procedure TfrmVereadores.FormCreate(Sender: TObject);
begin
  txtLogin.readOnly := True;
{  txtSenha.readOnly := True;
  cmbStatus.Enabled := False;}
  txtNome.Enabled := False;
  txtPartido.Enabled := False;
  cmbTipo.Enabled := False;
  txtComentario.Enabled := False;
end;

end.
