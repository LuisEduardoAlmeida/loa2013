unit evolRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids;

type
  TfrmEvolRec = class(TForm)
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
    qrycodigo: TStringField;
    qryex_4: TBCDField;
    qryex_3: TBCDField;
    qryex_2: TBCDField;
    qryex_1: TBCDField;
    qryrevisao: TBCDField;
    qryorcamento: TBCDField;
    qryelReceitaD: TStringField;
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
  frmEvolRec: TfrmEvolRec;

implementation

uses data, acaoList, elDespesaList;

{$R *.dfm}

procedure TfrmEvolRec.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmEvolRec.FormActivate(Sender: TObject);
begin
  btnRefresh.click;
end;

procedure TfrmEvolRec.btnSaveClick(Sender: TObject);
begin
  if qry.state in [dsEdit, dsInsert] then qry.post;
end;

procedure TfrmEvolRec.btnCancelClick(Sender: TObject);
begin
  qry.cancel;
end;

procedure TfrmEvolRec.btnDeleteClick(Sender: TObject);
begin
  if application.messageBox('Voc� tem certeza que deseja excluir o registro corrente?','Confirma��o de Exclus�o',MB_ICONQUESTION+MB_YESNO) = IDNO then exit
  else begin
       qry.delete;
  end;
end;

procedure TfrmEvolRec.btnRefreshClick(Sender: TObject);
begin
  dbGrid.columns[2].title.caption := intToStr(qryParametro.fieldByName('exercicio').asInteger - 4);
  dbGrid.columns[3].title.caption := intToStr(qryParametro.fieldByName('exercicio').asInteger - 3);
  dbGrid.columns[4].title.caption := intToStr(qryParametro.fieldByName('exercicio').asInteger - 2);
  dbGrid.columns[5].title.caption := intToStr(qryParametro.fieldByName('exercicio').asInteger - 1);
  dbGrid.columns[6].title.caption := 'Revis�o '+intToStr(qryParametro.fieldByName('exercicio').asInteger - 1);
  dbGrid.columns[7].title.caption := 'Or�amento '+qryParametro.fieldByName('exercicio').asString;
end;

end.
