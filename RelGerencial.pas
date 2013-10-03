unit RelGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, QRPDFFilter, DB, ADODB;

type
  TFrmRelGerencial = class(TForm)
    report: TQuickRep;
    qryEsfera: TADOQuery;
    sQryEsfera: TDataSource;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRGroup2: TQRGroup;
    QRDBText20: TQRDBText;
    QRDBText10: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    lblEsfera: TQRLabel;
    QRShape11: TQRShape;
    QRLabel4: TQRLabel;
    QRShape21: TQRShape;
    QRLabel61: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel51: TQRLabel;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    qrySoma: TADOQuery;
    QRDBText3: TQRDBText;
    qrySomaCOLUMN1: TBCDField;
    qryEsferaUnorc: TStringField;
    qryEsferaUnorcd: TStringField;
    qryEsferaFuncional: TStringField;
    qryEsferaFuncao: TStringField;
    qryEsferaSubFuncao: TStringField;
    qryEsferaPrograma: TStringField;
    qryEsferaAcao: TStringField;
    qryEsferaLocalis: TStringField;
    qryEsferaCOLUMN1: TBCDField;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
     Unorc,funcao,subfuncao,programa,acao,iu,fonte,eldespesa,descricao : string;
  end;

var
  FrmRelGerencial: TFrmRelGerencial;

implementation

uses data;

{$R *.dfm}

procedure TFrmRelGerencial.QRBand1BeforePrint(Sender: TQRCustomBand;
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
