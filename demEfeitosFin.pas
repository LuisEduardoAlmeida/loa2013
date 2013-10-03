unit demEfeitosFin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids;

type
  TfrmDemEfeitosFin = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Shape4: TShape;
    Shape5: TShape;
    btnSave: TSpeedButton;
    btnDelete: TSpeedButton;
    btnCancel: TSpeedButton;
    Bevel2: TBevel;
    qry: TADOQuery;
    sQry: TDataSource;
    dbGrid: TDBGrid;
    btnRefresh: TSpeedButton;
    qryElReceita: TADOQuery;
    qryParametro: TADOQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDemEfeitosFin: TfrmDemEfeitosFin;

implementation

uses data, acaoList, elDespesaList;

{$R *.dfm}

procedure TfrmDemEfeitosFin.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmDemEfeitosFin.FormActivate(Sender: TObject);
begin
  btnRefresh.click;
end;

procedure TfrmDemEfeitosFin.btnSaveClick(Sender: TObject);
begin
  if qry.state in [dsEdit, dsInsert] then qry.post;
end;

procedure TfrmDemEfeitosFin.btnCancelClick(Sender: TObject);
begin
  qry.cancel;
end;

procedure TfrmDemEfeitosFin.btnDeleteClick(Sender: TObject);
begin
  if application.messageBox('Você tem certeza que deseja excluir o registro corrente?','Confirmação de Exclusão',MB_ICONQUESTION+MB_YESNO) = IDNO then exit
  else begin
       qry.delete;
  end;
end;

procedure TfrmDemEfeitosFin.btnRefreshClick(Sender: TObject);
begin
  dbGrid.columns[2].title.caption := intToStr(qryParametro.fieldByName('exercicio').asInteger - 4);
  dbGrid.columns[3].title.caption := intToStr(qryParametro.fieldByName('exercicio').asInteger - 3);
  dbGrid.columns[4].title.caption := intToStr(qryParametro.fieldByName('exercicio').asInteger - 2);
  dbGrid.columns[5].title.caption := intToStr(qryParametro.fieldByName('exercicio').asInteger - 1);
  dbGrid.columns[6].title.caption := 'Revisão '+intToStr(qryParametro.fieldByName('exercicio').asInteger - 1);
  dbGrid.columns[7].title.caption := 'Orçamento '+qryParametro.fieldByName('exercicio').asString;
end;

end.
