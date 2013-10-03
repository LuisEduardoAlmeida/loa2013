unit RelDetalhado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, QRPDFFilter, DB, ADODB;

type
  TFrmRelDetalhado = class(TForm)
    report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    lblEsfera: TQRLabel;
    QRShape11: TQRShape;
    QRLabel4: TQRLabel;
    QRShape21: TQRShape;
    QRLabel61: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel3: TQRLabel;
    qryEsfera: TADOQuery;
    sQryEsfera: TDataSource;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRGroup2: TQRGroup;
    QRDBText20: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    qryEsferaUnorc: TStringField;
    qryEsferaUnorcd: TStringField;
    qryEsferaFuncao: TStringField;
    qryEsferaSubFuncao: TStringField;
    qryEsferaPrograma: TStringField;
    qryEsferaAcao: TStringField;
    qryEsferaLocalis: TStringField;
    qryEsferaDescricao: TStringField;
    qryEsferaelDespesaD: TStringField;
    qryEsferaeldespesa: TStringField;
    qryEsferainduso: TStringField;
    qryEsferafonte: TStringField;
    qryEsferatotal: TBCDField;
    QRBand1: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    qrySoma: TADOQuery;
    QRBand3: TQRBand;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel51: TQRLabel;
    qrySomaCOLUMN1: TBCDField;
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Unorc,funcao,subfuncao,programa,acao,iu,fonte,eldespesa,descricao : string;
  end;

var
  FrmRelDetalhado: TFrmRelDetalhado;

implementation

uses data;

{$R *.dfm}

procedure TFrmRelDetalhado.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('  SELECT distinct e.descricao,o.eldespesa, o.induso,o.fonte,total = sum(o.valor) ');
    qry.SQL.Add(' FROM ORCAMENTO o left join eldespesa e on e.codigo = o.eldespesa ');
    qry.SQL.Add(' WHERE unorc = :unorc and funcao = :funcao and subfuncao = :subfuncao ');
    qry.SQL.Add(' and programa = :programa and acao = :acao and localis = :localis ');
    qry.SQL.Add(' group by o.eldespesa,e.descricao, o.induso,o.fonte,o.valor ');
    qry.SQL.Add(' order by o.eldespesa, o.induso,o.fonte ');
    qry.ExecSQL;
    qry.Open;
    qry.First;}
end;

procedure TFrmRelDetalhado.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    qrySoma.Close;
    qrySoma.SQL.Clear;
    qrySoma.SQL.Add(' SELECT SUM(VALOR) FROM ORCAMENTO ');
    qrySoma.SQL.Add(' WHERE codigo is not null and unorc = :unorc ');
    if  funcao <> '' then qrySoma.SQL.Add(' and Funcao ='+funcao );
    if  subfuncao <> '' then qrySoma.SQL.Add(' and SubFuncao ='+subfuncao );
    if  programa <> '' then qrySoma.SQL.Add(' and Programa ='+Programa );
    if  acao <> '' then qrySoma.SQL.Add(' and Acao ='+Acao );
    if  iu <> '' then  qrySoma.SQL.Add(' and indUso ='+iu );
    if  fonte <> '' then  qrySoma.SQL.Add(' and Fonte ='+fonte );
    if  eldespesa <> '' then  qrySoma.SQL.Add(' and Eldespesa ='+eldespesa );
    qrySoma.ExecSQL;
    qrySoma.Open;

end;

end.
