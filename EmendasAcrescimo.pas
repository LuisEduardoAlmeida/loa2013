unit EmendasAcrescimo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, QRPDFFilter;

type
  TfrmEmendasAcrescimo = class(TQuickRep)
    QRBand1: TQRBand;
    qry: TADOQuery;
    sQry: TDataSource;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand4: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape11: TQRShape;
    QRLabel11: TQRLabel;
    QRShape12: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    lbTit01: TQRLabel;
    lbTit02: TQRLabel;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRLabel15: TQRLabel;
    ADOQuery1: TADOQuery;
    ADOQuery1Rvalor: TBCDField;
    ADOQuery1Avalor: TBCDField;
    QRBand5: TQRBand;
    QRSysData1: TQRSysData;
    QRPDFFilter1: TQRPDFFilter;
    QRSysData2: TQRSysData;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape8: TQRShape;
    qryEmenda: TStringField;
    qryNome: TStringField;
    qryunorc: TStringField;
    qrySIGLA: TStringField;
    qryfuncao: TStringField;
    qrysubFuncao: TStringField;
    qryprograma: TStringField;
    qryacao: TStringField;
    qrylocali: TStringField;
    qrydescricao: TStringField;
    qryainduso: TStringField;
    qryaFonte: TStringField;
    qryaValor: TBCDField;
    qryFPa: TStringField;
  private

  public

  end;

var
  frmEmendasAcrescimo: TfrmEmendasAcrescimo;

implementation

uses data;

{$R *.DFM}

end.
