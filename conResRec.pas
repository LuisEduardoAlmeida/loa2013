unit conResRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmConsResRec = class(TForm)
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
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    catOutras: TQRDBText;
    QRLabel1: TQRLabel;
    catTesouro: TQRDBText;
    QRLabel2: TQRLabel;
    catTotal: TQRDBText;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    qryElReceita: TADOQuery;
    qryCatcat: TStringField;
    qryCatcatD: TStringField;
    qryCattotal: TBCDField;
    qryCattesouro: TBCDField;
    qryCatoutras: TBCDField;
    qryCatreceitaD: TStringField;
    qryCatliquida: TBCDField;
    qryCatliqOutras: TBCDField;
    qryCatliqTesouro: TBCDField;
    sQryCat: TDataSource;
    qry: TADOQuery;
    qrycat2: TStringField;
    qrygrupo: TStringField;
    qrygrupoD: TStringField;
    qrytotal: TBCDField;
    qrytesouro: TBCDField;
    qryoutras: TBCDField;
    qryreceitaD: TStringField;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsResRec: TfrmConsResRec;

implementation

uses data;

{$R *.DFM}

procedure TfrmConsResRec.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  catTotal.mask := '#,###,###,###';
  catTesouro.mask := '#,###,###,###';
  catOutras.mask := '#,###,###,###';
  if qryCat.fieldByName('cat').asString = '9' then begin
     if qryCat.fieldByName('total').value > 0 then catTotal.mask := '(#,###,###,###)';
     if qryCat.fieldByName('tesouro').value > 0 then catTesouro.mask := '(#,###,###,###)';
     if qryCat.fieldByName('outras').value > 0 then catOutras.mask := '(#,###,###,###)';
  end;
end;

procedure TfrmConsResRec.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printBand := qry.fieldByName('cat').asString <> '9';
end;

end.
