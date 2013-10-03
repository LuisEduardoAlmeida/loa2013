unit recUnoList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmRecUnoList = class(TForm)
    report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel44: TQRLabel;
    QRShape11: TQRShape;
    QRShape21: TQRShape;
    QRLabel71: TQRLabel;
    qryParametro: TADOQuery;
    QRDBText1: TQRDBText;
    qryUnorc: TADOQuery;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    sQryUnorc: TDataSource;
    qryReceita: TADOQuery;
    sQryReceita: TDataSource;
    sdtReceita: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    qry: TADOQuery;
    QRSubDetail2: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel5: TQRLabel;
    SummaryBand1: TQRBand;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecUnoList: TfrmRecUnoList;

implementation

uses data;

{$R *.DFM}

end.
