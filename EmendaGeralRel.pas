unit EmendaGeralRel;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, QRPDFFilter;

type
  TfrmEmendaGeralRel = class(TQuickRep)
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
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRExpr1: TQRExpr;
    qryStatus: TStringField;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRGroup2: TQRGroup;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRBand4: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape2: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    qryAVALOR: TBCDField;
    QRPDFFilter1: TQRPDFFilter;
  private

  public

  end;

var
  frmEmendaGeralRel: TfrmEmendaGeralRel;

implementation

{$R *.DFM}

end.
