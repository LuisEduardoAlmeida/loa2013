unit EmendasValorReduzido;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, QRPDFFilter, DB, ADODB;

type
  TFrmEmendasValorReduzido = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    qry: TADOQuery;
    qryrUnorc: TStringField;
    qryDescricao: TStringField;
    qryValorReduzido: TBCDField;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
  private

  public

  end;

var
  FrmEmendasValorReduzido: TFrmEmendasValorReduzido;

implementation

uses data;

{$R *.DFM}

end.
