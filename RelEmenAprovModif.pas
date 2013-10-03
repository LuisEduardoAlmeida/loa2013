unit RelEmenAprovModif;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TqrRelEmenAprovModif = class(TQuickRep)
    qry: TADOQuery;
    QRBand1: TQRBand;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    qryNumEmenda: TStringField;
    qryNome: TStringField;
    qryaUnorc: TStringField;
    qryaFuncao: TStringField;
    qryaSubFuncao: TStringField;
    qryaPrograma: TStringField;
    qryaAcao: TStringField;
    qryaLocali: TStringField;
    qrydescricao: TStringField;
    qryaFonte: TStringField;
    qryaValor: TBCDField;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText4: TQRDBText;
    QRBand4: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
  private

  public

  end;

var
  qrRelEmenAprovModif: TqrRelEmenAprovModif;

implementation

{$R *.DFM}

end.
