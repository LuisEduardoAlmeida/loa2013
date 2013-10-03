unit unorc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids;

type
  TfrmUnorc = class(TForm)
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
    DBGrid: TDBGrid;
    qry: TADOQuery;
    sQry: TDataSource;
    chbAll: TCheckBox;
    btnRefresh: TSpeedButton;
    chbAlfa: TCheckBox;
    Bevel3: TBevel;
    DBGrid1: TDBGrid;
    qryUnorc: TADOQuery;
    sQryUnorc: TDataSource;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure clearControls();
    procedure txtCodigoConsultaExit(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure txtConsultaExit(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure qryUnorcBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnorc: TfrmUnorc;

implementation

uses data, acaoList, unorcList, unorcStructure;

{$R *.dfm}

procedure TfrmUnorc.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmUnorc.FormActivate(Sender: TObject);
begin
  btnRefreshClick(nil);
  clearControls();
  dbGrid.setFocus;
end;

procedure TfrmUnorc.clearControls;
begin
  txtCodigoConsulta.text := '';
  txtConsulta.text := '';
end;

procedure TfrmUnorc.txtCodigoConsultaExit(Sender: TObject);
begin
  if trim(txtCodigoConsulta.text) = '' then exit;
  if not qry.Locate('codigo',txtCodigoConsulta.text,[]) then begin
     showMessage('Código do Orgão Inválido');
     txtCodigoConsulta.setFocus;
     exit;
  end;
end;

procedure TfrmUnorc.btnRefreshClick(Sender: TObject);
begin
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM orgao ORDER BY descricao');
    open;
  end;
end;

procedure TfrmUnorc.txtConsultaExit(Sender: TObject);
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

procedure TfrmUnorc.btnCancelClick(Sender: TObject);
begin
  qryUnorc.cancel;
end;

procedure TfrmUnorc.btnDeleteClick(Sender: TObject);
begin
  if application.messageBox('Você tem certeza que deseja excluir o registro corrente?','Confirmação de Exclusão',MB_ICONQUESTION+MB_YESNO) = IDNO then exit
  else qryUnorc.delete;
end;

procedure TfrmUnorc.btnPrintClick(Sender: TObject);
begin
  if chbAlfa.checked then begin
     Application.CreateForm(TfrmUnorcList, frmUnorcList);
     frmUnorcList.report.preview;
     frmUnorcList.free;
  end
  else begin
     Application.CreateForm(TfrmUnorcStructure, frmUnorcStructure);
     frmUnorcStructure.report.preview;
     frmUnorcStructure.free;
  end;

end;

procedure TfrmUnorc.btnSaveClick(Sender: TObject);
begin
  if qryUnorc.state in [dsInsert, dsEdit] then qryUnorc.post;
end;

procedure TfrmUnorc.qryUnorcBeforePost(DataSet: TDataSet);
begin
  if copy(qryUnorc.fieldByname('codigo').asString,1,2) <> qry.fieldByName('codigo').asString then begin
     showMessage('Código da Unidade Orçamentária Inconsistente com o Código do Órgão');
     abort;
  end;
end;

end.
