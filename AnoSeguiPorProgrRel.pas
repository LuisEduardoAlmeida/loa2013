unit AnoSeguiPorProgrRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, QRPDFFilter, ADODB, QRCtrls,
  QuickRpt, jpeg, ExtCtrls;
type
  TFrmAnoSeguiPorProgrRel=class(TForm)
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
    qry: TADOQuery;
    QRPDFFilter1: TQRPDFFilter;
    QRGroup1: TQRGroup;
    qryprograma: TStringField;
    qrydescricao: TStringField;
    qryValor: TBCDField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    DataSource2: TDataSource;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;

  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  FrmAnoSeguiPorProgrRel: TFrmAnoSeguiPorProgrRel;

{This file is generated by DeDe Ver 3.50.04 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

end.
