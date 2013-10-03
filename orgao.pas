unit orgao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids;

type
  TfrmOrgao = class(TForm)
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
    Bevel1: TBevel;
    Shape5: TShape;
    btnSave: TSpeedButton;
    btnDelete: TSpeedButton;
    btnCancel: TSpeedButton;
    btnPrint: TSpeedButton;
    Bevel2: TBevel;
    qry: TADOQuery;
    sQry: TDataSource;
    chbAll: TCheckBox;
    chbAlfa: TCheckBox;
    Bevel3: TBevel;
    DBGrid1: TDBGrid;
    btnRefresh: TSpeedButton;
    qryUnorc: TADOQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure txtCodigoConsultaExit(Sender: TObject);
    procedure txtConsultaExit(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure qryBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrgao: TfrmOrgao;

implementation

uses data, acaoList, elDespesaList, orgaoList;

{$R *.dfm}

procedure TfrmOrgao.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmOrgao.FormActivate(Sender: TObject);
begin
  btnRefresh.click;
end;

procedure TfrmOrgao.txtCodigoConsultaExit(Sender: TObject);
begin
  if trim(txtCodigoConsulta.text) = '' then exit;
  if not qry.Locate('codigo',txtCodigoConsulta.text,[]) then begin
     showMessage('Código do Órgão Inválido');
     txtCodigoConsulta.setFocus;
     exit;
  end;
end;

procedure TfrmOrgao.txtConsultaExit(Sender: TObject);
begin
  if trim(txtConsulta.text) = '' then exit;
  with qry, qry.SQL do begin
    close;
    clear;
    if chbAll.checked then
       add('SELECT * FROM orgao WHERE descricao LIKE(''%'+txtConsulta.text+'%'')')
    else add('SELECT * FROM orgao WHERE descricao LIKE('''+txtConsulta.text+'%'')');
    open;
    if qry.eof then begin
       showMessage('Consulta Inválida');
       exit;
    end;
  end;
end;

procedure TfrmOrgao.btnSaveClick(Sender: TObject);
begin
  if qry.state in [dsEdit, dsInsert] then qry.post;
end;

procedure TfrmOrgao.btnCancelClick(Sender: TObject);
begin
  qry.cancel;
end;

procedure TfrmOrgao.btnDeleteClick(Sender: TObject);
begin
  if application.messageBox('Você tem certeza que deseja excluir o registro corrente?','Confirmação de Exclusão',MB_ICONQUESTION+MB_YESNO) = IDNO then exit
  else begin
       qry.delete;
  end;
end;

procedure TfrmOrgao.btnPrintClick(Sender: TObject);
begin
  Application.CreateForm(TfrmOrgaoList, frmOrgaoList);
  if chbAlfa.checked then
     with frmOrgaoList.qry do begin
       close;
       SQL[1] := 'ORDER BY descricao';
       open;
     end;
  frmOrgaoList.report.preview;
  frmOrgaoList.free;
end;

procedure TfrmOrgao.btnRefreshClick(Sender: TObject);
begin
  txtCodigoConsulta.text := '';
  txtConsulta.text := '';
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM orgao ORDER BY codigo');
    open;
  end;

end;

procedure TfrmOrgao.qryBeforeDelete(DataSet: TDataSet);
begin
  with qryUnorc do begin
    parameters.paramByname('codigo').value := qry.fieldByName('codigo').asString;
    execSQL;
  end;
end;

end.
