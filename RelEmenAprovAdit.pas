unit RelEmenAprovAdit;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TqrRelEmenAprovAdit = class(TQuickRep)
    qry: TADOQuery;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand4: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    qryEmenda: TStringField;
    qryNome: TStringField;
    qryunorc: TStringField;
    qryfuncao: TStringField;
    qrysubFuncao: TStringField;
    qryprograma: TStringField;
    qryacao: TStringField;
    qrylocali: TStringField;
    qrydescricao: TStringField;
    qryaFonte: TStringField;
    qryaValor: TBCDField;
  private

  public

  end;

var
  qrRelEmenAprovAdit: TqrRelEmenAprovAdit;

implementation

{$R *.DFM}

end.
