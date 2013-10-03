unit EmendasIncompletasRel;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, QRPDFFilter;

type
  TFrmEmendasIncompletasRel = class(TQuickRep)
    qry: TADOQuery;
    qryEMENDAG: TStringField;
    qryVALORTOTAL: TBCDField;
    qryTOTALDET: TBCDField;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRPDFFilter1: TQRPDFFilter;
  private

  public

  end;

var
  FrmEmendasIncompletasRel: TFrmEmendasIncompletasRel;

implementation

uses data, main;

{$R *.DFM}

end.
