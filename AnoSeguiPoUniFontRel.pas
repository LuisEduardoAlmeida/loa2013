unit AnoSeguiPoUniFontRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, QRPDFFilter, DB, ADODB, jpeg,
  QRCtrls, QuickRpt, ExtCtrls;
type
  TFrmAnoSeguiPoUniFontRel=class(TForm)
    report: TQuickRep;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    qry: TADOQuery;
    qryValor: TBCDField;
    DataSource2: TDataSource;
    QRPDFFilter1: TQRPDFFilter;
    qryunorc: TStringField;
    qrydescricao: TStringField;
    qryfonte: TStringField;
    QRLabel2: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRImage1: TQRImage;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    qrySumTotalUnorc: TADOQuery;
    BCDField1: TBCDField;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  FrmAnoSeguiPoUniFontRel: TFrmAnoSeguiPoUniFontRel;

{This file is generated by DeDe Ver 3.50.04 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

end.
