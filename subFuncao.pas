unit subFuncao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids;

type
  TfrmSubFuncao = class(TForm)
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure txtCodigoConsultaExit(Sender: TObject);
    procedure txtConsultaExit(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSubFuncao: TfrmSubFuncao;

implementation

uses data, acaoList, elDespesaList, subFuncaoList;

{$R *.dfm}

procedure TfrmSubFuncao.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmSubFuncao.FormActivate(Sender: TObject);
begin
  btnRefresh.click;
end;

procedure TfrmSubFuncao.txtCodigoConsultaExit(Sender: TObject);
begin
  if trim(txtCodigoConsulta.text) = '' then exit;
  if not qry.Locate('codigo',txtCodigoConsulta.text,[]) then begin
     showMessage('Código da SubFunção Inválido');
     txtCodigoConsulta.setFocus;
     exit;
  end;
end;

procedure TfrmSubFuncao.txtConsultaExit(Sender: TObject);
begin
  if trim(txtConsulta.text) = '' then exit;
  with qry, qry.SQL do begin
    close;
    clear;
    if chbAll.checked then
       add('SELECT * FROM subFuncao WHERE descricao LIKE(''%'+txtConsulta.text+'%'')')
    else add('SELECT * FROM subFuncao WHERE descricao LIKE('''+txtConsulta.text+'%'')');
    open;
    if qry.eof then begin
       showMessage('Consulta Inválida');
       exit;
    end;
  end;
end;

procedure TfrmSubFuncao.btnSaveClick(Sender: TObject);
begin
  if qry.state in [dsEdit, dsInsert] then qry.post;
end;

procedure TfrmSubFuncao.btnCancelClick(Sender: TObject);
begin
  qry.cancel;
end;

procedure TfrmSubFuncao.btnDeleteClick(Sender: TObject);
begin
  if application.messageBox('Você tem certeza que deseja excluir o registro corrente?','Confirmação de Exclusão',MB_ICONQUESTION+MB_YESNO) = IDNO then exit
  else begin
       qry.delete;
  end;
end;

procedure TfrmSubFuncao.btnPrintClick(Sender: TObject);
begin
  Application.CreateForm(TfrmSubFuncaoList, frmSubFuncaoList);
  if chbAlfa.checked then
     with frmSubFuncaoList.qry do begin
       close;
       SQL[1] := 'ORDER BY descricao';
       open;
     end;
  frmSubFuncaoList.report.preview;
  frmSubFuncaoList.free;
end;

procedure TfrmSubFuncao.btnRefreshClick(Sender: TObject);
begin
  txtCodigoConsulta.text := '';
  txtConsulta.text := '';
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM subFuncao ORDER BY codigo');
    open;
  end;

end;

end.
