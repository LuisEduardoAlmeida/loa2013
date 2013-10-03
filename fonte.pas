unit fonte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids;

type
  TfrmFonte = class(TForm)
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
  frmFonte: TfrmFonte;

implementation

uses data, acaoList, elDespesaList, fonteList;

{$R *.dfm}

procedure TfrmFonte.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmFonte.FormActivate(Sender: TObject);
begin
  btnRefresh.click;
end;

procedure TfrmFonte.txtCodigoConsultaExit(Sender: TObject);
begin
  if trim(txtCodigoConsulta.text) = '' then exit;
  if not qry.Locate('codigo',txtCodigoConsulta.text,[]) then begin
     showMessage('Código da Fonte de Recurso Inválido');
     txtCodigoConsulta.setFocus;
     exit;
  end;
end;

procedure TfrmFonte.txtConsultaExit(Sender: TObject);
begin
  if trim(txtConsulta.text) = '' then exit;
  with qry, qry.SQL do begin
    close;
    clear;
    if chbAll.checked then
       add('SELECT * FROM fonte WHERE descricao LIKE(''%'+txtConsulta.text+'%'')')
    else add('SELECT * FROM fonte WHERE descricao LIKE('''+txtConsulta.text+'%'')');
    open;
    if qry.eof then begin
       showMessage('Consulta Inválida');
       exit;
    end;
  end;
end;

procedure TfrmFonte.btnSaveClick(Sender: TObject);
begin
  if qry.state in [dsEdit, dsInsert] then qry.post;
end;

procedure TfrmFonte.btnCancelClick(Sender: TObject);
begin
  qry.cancel;
end;

procedure TfrmFonte.btnDeleteClick(Sender: TObject);
begin
  if application.messageBox('Você tem certeza que deseja excluir o registro corrente?','Confirmação de Exclusão',MB_ICONQUESTION+MB_YESNO) = IDNO then exit
  else begin
       qry.delete;
  end;
end;

procedure TfrmFonte.btnPrintClick(Sender: TObject);
begin
  Application.CreateForm(TfrmFonteList, frmFonteList);
  if chbAlfa.checked then
     with frmFonteList.qry do begin
       close;
       SQL[1] := 'ORDER BY descricao';
       open;
     end;
  frmFonteList.report.preview;
  frmFonteList.free;
end;

procedure TfrmFonte.btnRefreshClick(Sender: TObject);
begin
  txtCodigoConsulta.text := '';
  txtConsulta.text := '';
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM fonte ORDER BY codigo');
    open;
  end;

end;

end.
