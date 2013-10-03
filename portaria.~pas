unit portaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids;

type
  TfrmPortaria = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Shape4: TShape;
    btnSave: TSpeedButton;
    btnDelete: TSpeedButton;
    btnCancel: TSpeedButton;
    btnPrint: TSpeedButton;
    DBGrid: TDBGrid;
    qryPortaria: TADOQuery;
    sQryPortaria: TDataSource;
    btnRefresh: TSpeedButton;
    Bevel3: TBevel;
    DBGrid1: TDBGrid;
    qryPortDet: TADOQuery;
    sQryUnorc: TDataSource;
    Shape3: TShape;
    btnPortNew: TBitBtn;
    Bevel1: TBevel;
    StaticText1: TStaticText;
    Bevel4: TBevel;
    SpeedButton2: TSpeedButton;
    Bevel2: TBevel;
    qryPortDetportaria: TIntegerField;
    qryPortDetunorc: TStringField;
    qryPortDetprograma: TStringField;
    qryPortDetacao: TStringField;
    qryPortDetlocali: TStringField;
    qryPortDetindUso: TStringField;
    qryPortDetelemento: TStringField;
    qryPortDetvalor: TBCDField;
    qryUnorc: TADOQuery;
    qryPortDetprtUnorc: TStringField;
    stpPortariaUpdate: TADOStoredProc;
    qry: TADOQuery;
    qryPortDetfonte: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnPortNewClick(Sender: TObject);
    procedure execPortariaProc;
    procedure FormActivate(Sender: TObject);
    procedure qryPortDetBeforePost(DataSet: TDataSet);
    procedure btnCancelClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure qryPortDetunorcValidate(Sender: TField);
    procedure qryPortDetprogramaValidate(Sender: TField);
    procedure qryPortDetacaoValidate(Sender: TField);
    procedure qryPortDetlocaliValidate(Sender: TField);
    procedure qryPortDetindUsoValidate(Sender: TField);
    procedure qryPortDetelementoValidate(Sender: TField);
    procedure qryPortDetfonteValidate(Sender: TField);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPortaria: TfrmPortaria;

implementation

uses data, acaoList, unorcList, unorcStructure, portariaList;

{$R *.dfm}

procedure TfrmPortaria.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPortaria.btnSaveClick(Sender: TObject);
begin
  if qryPortDet.state in [dsInsert, dsEdit] then qryPortDet.post;
end;

procedure TfrmPortaria.btnPortNewClick(Sender: TObject);
begin
  with stpPortariaUpdate.Parameters do begin
     paramByName('@p_operation').value := 'i';
     paramByName('@p_codigo').value := 0;
  end;
  execPortariaProc;
  qryPortaria.Close;
  qryPortaria.Open;
end;

procedure TfrmPortaria.execPortariaProc;
begin
  stpPortariaUpdate.execProc;
  with stpPortariaUpdate.Parameters.paramByName('@RETURN_VALUE') do
     if value = 0 then
        application.messageBox('Erro no Servidor de Dados. Operação não Completada','ERRO E/S',MB_ICONSTOP);

{  with qryPortaria do begin
    close;
    open;
    last;
  end;}
end;

procedure TfrmPortaria.FormActivate(Sender: TObject);
begin
{  with qryPortaria do begin
    close;
    open;
  end;

  with qryPortDet do begin
    close;
    open;
  end;

  with qryUnorc do begin
    close;
    open;
  end;
 }
end;


procedure TfrmPortaria.btnCancelClick(Sender: TObject);
begin
  qryPortDet.cancel;
end;

procedure TfrmPortaria.SpeedButton2Click(Sender: TObject);
begin
//  if (qryPortaria.eof) AND (qryPortaria.bof) then exit;
  if application.messageBox('Você tem certeza que deseja excluir o registro corrente?','Confirmação de Exclusão',MB_ICONQUESTION+MB_YESNO) = IDNO then exit;
  with stpPortariaUpdate.Parameters do begin
     paramByName('@p_operation').value := 'e';
     paramByName('@p_codigo').value := qryPortaria.fieldByName('codigo').value;
  end;
  execPortariaProc;
  qryPortaria.Close;
  qryPortaria.Open;
end;

procedure TfrmPortaria.btnDeleteClick(Sender: TObject);
begin
  if qryPortDetunorc.Value = '' then exit;
  if application.messageBox('Você tem certeza que deseja excluir o registro corrente?','Confirmação de Exclusão',MB_ICONQUESTION+MB_YESNO) = IDNO then exit
  else qryPortDet.delete;
end;

procedure TfrmPortaria.qryPortDetBeforePost(DataSet: TDataSet);
begin
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM unorc WHERE codigo = '''+qryPortDet.fieldByName('unorc').asString+'''');
    qry.open;
    if eof then begin
       application.messageBox('Unidade Orçamentária não Existe','Erro no Fornecimento dos Dados',MB_ICONSTOP);
       abort;
    end;
  end;

  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM programa WHERE codigo = '''+qryPortDet.fieldByName('programa').asString+'''');
    open;
    if eof then begin
       application.messageBox('Programa não Existe','Erro no Fornecimento dos Dados',MB_ICONSTOP);
       abort;
    end;
  end;

  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM acao WHERE codigo = '''+qryPortDet.fieldByName('acao').asString+'''');
    open;
    if eof then begin
       application.messageBox('Ação não Existe','Erro no Fornecimento dos Dados',MB_ICONSTOP);
       abort;
    end;
  end;

  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM locali WHERE unorc = '''+qryPortDet.fieldByName('unorc').asString+'''');
    add('                     AND   programa = '''+qryPortDet.fieldByName('programa').asString+'''');
    add('                     AND   acao     = '''+qryPortDet.fieldByName('acao').asString+'''');
    add('                     AND   locali   = '''+qryPortDet.fieldByName('locali').asString+'''');
    open;
    if eof then begin
       application.messageBox('Localização não Existe','Erro no Fornecimento dos Dados',MB_ICONSTOP);
       abort;
    end;
  end;

  with qryPortDet.fieldByName('indUso') do
    if (asString < '0') OR (asString > '5') then begin
       application.messageBox('Indicador de uso inválido','Erro no Fornecimento dos Dados',MB_ICONSTOP);
       abort;
    end;

  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM fonte WHERE codigo = '''+qryPortDet.fieldByName('fonte').asString+'''');
    open;
    if eof then begin
       application.messageBox('Fonte não Existe','Erro no Fornecimento dos Dados',MB_ICONSTOP);
       abort;
    end;
  end;

  with qryPortDet.fieldByName('valor') do
     try
        if asFloat < 1 then begin
           application.messageBox('Valor Inválido','Erro no Fornecimento dos Dados',MB_ICONSTOP);
           abort;
        end;
      except
        application.messageBox('Valor Inválido','Erro no Fornecimento dos Dados',MB_ICONSTOP);
        abort;
     end;

  qryPortDet.fieldByName('portaria').value := qryPortaria.fieldByName('codigo').value;
end;



procedure TfrmPortaria.qryPortDetunorcValidate(Sender: TField);
begin
  if trim(sender.asString) = '' then exit;
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM unorc WHERE codigo = '''+sender.asString+'''');
    qry.open;
    if eof then begin
       application.messageBox('Unidade Orçamentária não Existe','Erro no Fornecimento dos Dados',MB_ICONSTOP);
       abort;
    end;
  end;
end;

procedure TfrmPortaria.qryPortDetprogramaValidate(Sender: TField);
begin
  if trim(sender.asString) = '' then exit;
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM programa WHERE codigo = '''+sender.asString+'''');
    qry.open;
    if eof then begin
       application.messageBox('Programa não Existe','Erro no Fornecimento dos Dados',MB_ICONSTOP);
       abort;
    end;
  end;
end;

procedure TfrmPortaria.qryPortDetacaoValidate(Sender: TField);
begin
  if trim(sender.asString) = '' then exit;
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM acao WHERE codigo = '''+sender.asString+'''');
    qry.open;
    if eof then begin
       application.messageBox('Acao não Existe','Erro no Fornecimento dos Dados',MB_ICONSTOP);
       abort;
    end;
  end;
end;

procedure TfrmPortaria.qryPortDetlocaliValidate(Sender: TField);
begin
  if trim(sender.asString) = '' then exit;
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM locali WHERE unorc = '''+qryPortDet.fieldByName('unorc').asString+'''');
    add('                     AND   programa = '''+qryPortDet.fieldByName('programa').asString+'''');
    add('                     AND   acao     = '''+qryPortDet.fieldByName('acao').asString+'''');
    add('                     AND   locali   = '''+sender.asString+'''');
    open;
    if eof then begin
       application.messageBox('Localização não Existe','Erro no Fornecimento dos Dados',MB_ICONSTOP);
       abort;
    end;
  end;
end;

procedure TfrmPortaria.qryPortDetindUsoValidate(Sender: TField);
begin
  if trim(sender.asString) = '' then exit;
  with sender do
    if (asString < '0') OR (asString > '5') then begin
       application.messageBox('Indicador de uso inválido','Erro no Fornecimento dos Dados',MB_ICONSTOP);
       abort;
    end;
end;

procedure TfrmPortaria.qryPortDetelementoValidate(Sender: TField);
begin
  if trim(sender.asString) = '' then exit;
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM elDespesa WHERE codigo = '''+sender.asString+'''');
    qry.open;
    if eof then begin
       application.messageBox('Elemento não Existe','Erro no Fornecimento dos Dados',MB_ICONSTOP);
       abort;
    end;
  end;
end;

procedure TfrmPortaria.qryPortDetfonteValidate(Sender: TField);
begin
  if trim(sender.asString) = '' then exit;
  with qry, qry.SQL do begin
    close;
    clear;
    add('SELECT * FROM fonte WHERE codigo = '''+sender.asString+'''');
    qry.open;
    if eof then begin
       application.messageBox('Fonte não Existe','Erro no Fornecimento dos Dados',MB_ICONSTOP);
       abort;
    end;
  end;
end;

procedure TfrmPortaria.btnPrintClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPortariaList, frmPortariaList);
  frmPortariaList.report.preview;
  frmPortariaList.free;
end;

end.
