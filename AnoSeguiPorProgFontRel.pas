unit AnoSeguiPorProgFontRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, QRPDFFilter, DB, ADODB, QRCtrls,
  QuickRpt, jpeg, ExtCtrls;
type
  TFrmAnoSeguiPorProgFontRel=class(TForm)
    report: TQuickRep;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRImage1: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    qry: TADOQuery;
    DataSource2: TDataSource;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    qryprograma: TStringField;
    qrydescricao: TStringField;
    qryfonte: TStringField;
    qryValor: TBCDField;
    QRLabel2: TQRLabel;
    qrySumTotalUnorc: TADOQuery;
    BCDField1: TBCDField;
    QRBand2: TQRBand;
    QRShape3: TQRShape;
    QRDBText12: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  FrmAnoSeguiPorProgFontRel: TFrmAnoSeguiPorProgFontRel;

{This file is generated by DeDe Ver 3.50.04 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

end.
