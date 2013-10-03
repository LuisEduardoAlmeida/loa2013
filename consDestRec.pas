unit consDestRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmConsDestRec = class(TForm)
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
    qryTot: TADOQuery;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    sQryTot: TDataSource;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel16: TQRLabel;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr10: TQRExpr;
    qryFonte: TADOQuery;
    sdtFonte: TQRSubDetail;
    QRDBText2: TQRDBText;
    sQryFonte: TDataSource;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    qry: TADOQuery;
    QRSubDetail1: TQRSubDetail;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel2: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsDestRec: TfrmConsDestRec;

implementation

uses data;

{$R *.DFM}

end.
