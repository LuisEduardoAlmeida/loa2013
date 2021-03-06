unit acao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids;

type
  TfrmAcao = class(TForm)
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
    txtDescricao: TEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    cmbTipo: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    txtProduto: TEdit;
    Label7: TLabel;
    txtUnidade: TEdit;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure clearControls();
    procedure keyExit();
    procedure DBGridCellClick(Column: TColumn);
    procedure txtCodigoConsultaExit(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure txtConsultaExit(Sender: TObject);
    procedure txtDescricaoChange(Sender: TObject);
    procedure isItChanged();
    procedure save();
    procedure DBGridEnter(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    st_habilita : string;
    procedure habilita_sn(habilita :string);
  end;

var
  frmAcao: TfrmAcao;
  theOperation : char;
  itsChanged : boolean;

implementation

uses data, acaoList;

{$R *.dfm}

procedure TfrmAcao.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmAcao.FormActivate(Sender: TObject);
begin
  habilita_sn('n');
  btnRefreshClick(nil);
  clearControls();
  dbGrid.setFocus;
end;

procedure TfrmAcao.clearControls;
begin
  theOperation := '*';
  txtCodigo.text := '';
  txtCodigoConsulta.text := '';
  txtConsulta.text := '';
  txtDescricao.text := '';
  txtProduto.text := '';
  txtUnidade.text := '';
  cmbTipo.text := '';
  cmbTipo.itemIndex := -1;

  txtCodigo.readOnly := true;
end;

procedure TfrmAcao.keyExit;
begin
  clearControls();
  theOperation := 'a';
  with qry do begin
    txtDescricao.text := fieldByName('descricao').asString;
    txtProduto.text := fieldByName('produto').asString;
    txtUnidade.text := fieldByName('unidade').asString;
    txtCodigo.text := fieldByName('codigo').asString;

    with dmtData do begin
      setComboBox(fieldByName('tipo').asString, cmbTipo);
    end;
  end;
  itsChanged := false;
end;

procedure TfrmAcao.DBGridCellClick(Column: TColumn);
begin
  isItChanged();
  keyExit();
end;

procedure TfrmAcao.txtCodigoConsultaExit(Sender: TObject);
begin
  if trim(txtCodigoConsulta.text) = '' then exit;
  if not qry.Locate('codigo',txtCodigoConsulta.text,[]) then begin
     showMessage('C�digo da A��o Inv�lido');
     txtCodigoConsulta.setFocus;
     exit;
  end;
  keyExit();
end;

procedure TfrmAcao.btnRefreshClick(Sender: TObject);
begin
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM acao ORDER BY descricao');
    open;
  end;
end;

procedure TfrmAcao.txtConsultaExit(Sender: TObject);
begin
  if trim(txtConsulta.text) = '' then exit;
  with qry, qry.SQL do begin
    close;
    clear;
    if chbAll.checked then
       add('SELECT * FROM acao WHERE descricao LIKE(''%'+txtConsulta.text+'%'')')
    else add('SELECT * FROM acao WHERE descricao LIKE('''+txtConsulta.text+'%'')');
    open;
    if qry.eof then begin
       showMessage('Consulta Inv�lida');
       exit;
    end;
  end;
  keyExit();
end;

procedure TfrmAcao.txtDescricaoChange(Sender: TObject);
begin
  itsChanged := true;
end;

procedure TfrmAcao.isItChanged;
begin
  if theOperation = '*' then exit;
  if itsChanged then
     if application.messageBox('Voc� iniciou uma edi��o no registro atual. Deseja salvar as altera��es ?','',MB_ICONQUESTION+MB_YESNO) = IDYES then save();
  end;


procedure TfrmAcao.save;
begin
  if (copy(txtCodigo.text,1,1) = '0') OR
     (copy(txtCodigo.text,1,1) = '1') OR
     (copy(txtCodigo.text,1,1) = '2') OR
     (copy(txtCodigo.text,1,1) = '9') then
  else begin
     showMessage('C�digo da A��o Inv�lido');
     exit;
  end;

  if trim(txtDescricao.text) = '' then begin
     showMessage('Falta preencher campo descri��o');
     exit;
  end;

  if (copy(txtCodigo.text,1,1) = '1') then
     if (copy(cmbTipo.text,1,1) = 'P') then
     else begin
        showMessage('C�digo da A��o Inv�lido para Projetos');
        exit;
     end;

  if (copy(txtCodigo.text,1,1) = '2') then
     if (copy(cmbTipo.text,1,1) = 'A') then
     else begin
        showMessage('C�digo da A��o Inv�lido para Atividade');
        exit;
     end;


  if (copy(cmbTipo.text,1,1) = 'P') OR
     (copy(cmbTipo.text,1,1) = 'A') OR
     (copy(cmbTipo.text,1,1) = 'E') OR
     (copy(cmbTipo.text,1,1) = 'O') then
  else begin
     showMessage('Tipo da A��o Inv�lido');
     exit;
  end;

  if trim(txtProduto.text) = '' then
     if trim(txtUnidade.text) = '' then
     else begin
       showMessage('Falta Preencher Campo Produto da A��o');
       exit;
     end
  else
     if trim(txtUnidade.text) = '' then begin
       showMessage('Falta Preencher Campo Unidade de Medida do Produto da A��o');
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
    if paramByName('@return_value').value = 0 then showMessage('Altera��o Rejeitada');

  end;
  with qry do begin
    close;
    open;
    if theOperation <> 'e' then Locate('codigo',txtCodigo.text,[]); 
  end;

  clearControls();
  habilita_sn('n');
end;

procedure TfrmAcao.DBGridEnter(Sender: TObject);
begin
  isItChanged();
end;

procedure TfrmAcao.btnNewClick(Sender: TObject);
begin
  isItChanged();
  clearControls();
  habilita_sn('s');

end;

procedure TfrmAcao.btnSaveClick(Sender: TObject);
begin
  save();
end;

procedure TfrmAcao.btnCancelClick(Sender: TObject);
begin
  habilita_sn('n');
  clearControls;
end;

procedure TfrmAcao.btnDeleteClick(Sender: TObject);
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

procedure TfrmAcao.btnPrintClick(Sender: TObject);
begin
  Application.CreateForm(TfrmAcaoList, frmAcaoList);
  if chbAlfa.checked then
     with frmAcaoList.qry do begin
       close;
       SQL[8] := 'ORDER BY descricao';
       open;
     end;
  frmAcaoList.report.preview;
  frmAcaoList.free;
end;

procedure TfrmAcao.habilita_sn(habilita: string);
begin
   if habilita = 's' then
   begin
      btnNew.Enabled := False;
      btnSave.Enabled := True;
      btnCancel.Enabled := True;
      btnDelete.Enabled := False;
      btnRefresh.Enabled := False;
      theOperation := 'i';

      txtCodigo.readOnly := False;
      txtCodigo.Enabled := True;
      txtDescricao.readOnly := False;
      txtDescricao.Enabled := True;
      cmbTipo.Enabled := True;
      txtProduto.readOnly := False;
      txtProduto.Enabled := True;
      txtUnidade.readOnly := False;
      txtUnidade.Enabled := True;
      txtCodigo.setFocus;
      itsChanged := True;
   end;
   if habilita = 'n' then
   begin
      btnNew.Enabled := True;
      btnSave.Enabled := False;
      btnCancel.Enabled := False;
      btnDelete.Enabled := True;
      btnRefresh.Enabled := True;
      theOperation := '*';

      txtCodigo.readOnly := True;
      txtCodigo.Enabled := False;
      txtDescricao.readOnly := True;
      txtDescricao.Enabled := False;
      cmbTipo.Enabled := false;
      txtProduto.readOnly := True;
      txtProduto.Enabled := False;
      txtUnidade.readOnly := True;
      txtUnidade.Enabled := False;
      itsChanged := False;
   end;
end;

procedure TfrmAcao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if itsChanged then
     if application.messageBox('Voc� iniciou uma edi��o no registro atual. Deseja salvar as altera��es ?','',MB_ICONQUESTION+MB_YESNO) = IDYES then
     begin
         Action := caNone;
         save();
         exit;
     end else
     begin
       clearControls;
       habilita_sn('n');
       itsChanged := False;
     end;

end;

end.
