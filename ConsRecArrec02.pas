unit ConsRecArrec02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, QRPDFFilter;

type
  TFrmConsRecArrec02 = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    QRLabel44: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape11: TQRShape;
    QRShape21: TQRShape;
    QRLabel71: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    sdtUnorc: TQRSubDetail;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    sdtReceita: TQRSubDetail;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel5: TQRLabel;
    qryOrgao: TADOQuery;
    sQryOrgao: TDataSource;
    qryUnorc: TADOQuery;
    sQryUnorc: TDataSource;
    qry: TADOQuery;
    qryParametro: TADOQuery;
    QRPDFFilter1: TQRPDFFilter;
    qryOrgaoorgaoS: TStringField;
    qryOrgaoorgaoD: TStringField;
    qryOrgaototal: TBCDField;
    qryOrgaof210: TBCDField;
    qryOrgaof212: TBCDField;
    qryOrgaof280: TBCDField;
    qryOrgaof281: TBCDField;
    qryOrgaof284: TBCDField;
    qryOrgaof285: TBCDField;
    qryOrgaof288: TBCDField;
    qryUnorcorgaoS: TStringField;
    qryUnorcunorc: TStringField;
    qryUnorcunorcD: TStringField;
    qryUnorctotal: TBCDField;
    qryUnorcf210: TBCDField;
    qryUnorcf212: TBCDField;
    qryUnorcf280: TBCDField;
    qryUnorcf281: TBCDField;
    qryUnorcf284: TBCDField;
    qryUnorcf285: TBCDField;
    qryUnorcf288: TBCDField;
    qryorgaoS: TStringField;
    qryunorc2: TStringField;
    qryelReceita: TStringField;
    qryreceitaD: TStringField;
    qrytotal: TBCDField;
    qryf210: TBCDField;
    qryf212: TBCDField;
    qryf280: TBCDField;
    qryf281: TBCDField;
    qryf284: TBCDField;
    qryf285: TBCDField;
    qryf288: TBCDField;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRLabel9: TQRLabel;
  private

  public

  end;

var
  FrmConsRecArrec02: TFrmConsRecArrec02;

implementation

uses data;

{$R *.DFM}

end.
