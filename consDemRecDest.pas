unit consDemRecDest;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmConsDemRecDest = class(TForm)
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
    QRDBText3: TQRDBText;
    rdbSeguridade: TQRDBText;
    QRLabel1: TQRLabel;
    rdbFiscal: TQRDBText;
    QRLabel3: TQRLabel;
    rdbTotal: TQRDBText;
    QRLabel16: TQRLabel;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr10: TQRExpr;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    qryelReceita: TStringField;
    qrydestinacao: TStringField;
    qryreceitaDD: TStringField;
    qryvalor: TBCDField;
    qryfiscal: TBCDField;
    qryseguridade: TBCDField;
    qryliquida: TBCDField;
    qryliqFiscal: TBCDField;
    qryliqSeguridade: TBCDField;
    QRPDFFilter1: TQRPDFFilter;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsDemRecDest: TfrmConsDemRecDest;

implementation

uses data;

{$R *.DFM}

procedure TfrmConsDemRecDest.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with qry.fieldByName('elReceita') do begin
    rdbTotal.mask := '#,###,###,###';
    rdbFiscal.mask := '#,###,###,###';
    rdbSeguridade.mask := '#,###,###,###';

    if copy(asString,1,1) = '9' then begin
       if qry.fieldByName('valor').asFloat > 0 then rdbTotal.mask := '(#,###,###,###)';
       if qry.fieldByName('fiscal').asFloat > 0 then rdbFiscal.mask := '(#,###,###,###)';
       if qry.fieldByName('seguridade').asFloat > 0 then rdbSeguridade.mask := '(#,###,###,###)';
    end;
  end;
end;

end.
