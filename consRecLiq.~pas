unit consRecLiq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmConsRecLiq = class(TForm)
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
    qryCat: TADOQuery;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
    qryGrupo: TADOQuery;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    qryTot: TADOQuery;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRExpr2: TQRExpr;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel5: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel6: TQRLabel;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsRecLiq: TfrmConsRecLiq;

implementation

uses data;

{$R *.DFM}

procedure TfrmConsRecLiq.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printBand := qryGrupo.fieldByName('cat').asString = qryCat.fieldByName('cat').asString;
end;

end.
