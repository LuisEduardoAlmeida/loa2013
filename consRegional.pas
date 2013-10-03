unit consRegional;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmConsRegional = class(TForm)
    report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel44: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape11: TQRShape;
    QRShape21: TQRShape;
    QRLabel71: TQRLabel;
    qryParametro: TADOQuery;
    QRDBText1: TQRDBText;
    qry: TADOQuery;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel9: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    ADOQuery1: TADOQuery;
    qryorgao: TStringField;
    qryorgaoD: TStringField;
    qrytotal: TBCDField;
    qryr1: TBCDField;
    qryr2: TBCDField;
    qryr3: TBCDField;
    qryr4: TBCDField;
    qryr5: TBCDField;
    qryr6: TBCDField;
    qryr7: TBCDField;
    qryCentro: TBCDField;
    QRLabel10: TQRLabel;
    QRDBText2: TQRDBText;
    QRExpr9: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsRegional: TfrmConsRegional;

implementation

uses data;

{$R *.DFM}

end.
