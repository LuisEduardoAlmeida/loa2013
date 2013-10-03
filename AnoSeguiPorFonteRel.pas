unit AnoSeguiPorFonteRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, QRPDFFilter, ADODB, QRCtrls,
  QuickRpt, jpeg, ExtCtrls;
type
  TFrmAnoSeguiPorFonteRel=class(TForm)
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
    QRPDFFilter1: TQRPDFFilter;
    DataSource2: TDataSource;
    qryfonte: TStringField;
    qrydescricao: TStringField;
    qryValor: TBCDField;
    QRLabel1: TQRLabel;
    qrySumTotalUnorc: TADOQuery;
    BCDField1: TBCDField;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRDBText12: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel9: TQRLabel;
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  FrmAnoSeguiPorFonteRel: TFrmAnoSeguiPorFonteRel;

{This file is generated by DeDe Ver 3.50.04 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TFrmAnoSeguiPorFonteRel.QRGroup1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   if  qry.FieldByName('valor').Value = 0 then QRLabel9.Enabled := true else QRLabel9.Enabled := false;
end;

end.
