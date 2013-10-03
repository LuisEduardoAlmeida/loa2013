unit EmendaAprovada1;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, QRPDFFilter;

type
  TfrmEmendaAprovada1 = class(TQuickRep)
    qry: TADOQuery;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    qryEmendaG: TStringField;
    qryVALORTOTAL: TBCDField;
    qrynumemenda: TStringField;
    qryRVALOR: TBCDField;
    qryNOME: TStringField;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
  private

  public

  end;

var
  frmEmendaAprovada1: TfrmEmendaAprovada1;

implementation

{$R *.DFM}

end.
