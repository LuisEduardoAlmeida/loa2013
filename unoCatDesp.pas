unit unoCatDesp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmUnoCatDesp = class(TForm)
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
    QRDBText3: TQRDBText;
    rdbSegOutras: TQRDBText;
    rdbSegTesouro: TQRDBText;
    QRLabel2: TQRLabel;
    rdbSegTotal: TQRDBText;
    sQryTot: TDataSource;
    rdbFisOutras: TQRDBText;
    rdbFisTesouro: TQRDBText;
    rdbFisTotal: TQRDBText;
    rdbOutras: TQRDBText;
    QRLabel13: TQRLabel;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr1: TQRExpr;
    qry: TADOQuery;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    rdbTesouro: TQRDBText;
    rdbTotal: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    rdb1: TQRDBText;
    rdb2: TQRDBText;
    rdb3: TQRDBText;
    rdb4: TQRDBText;
    rdb5: TQRDBText;
    rdb6: TQRDBText;
    rdb7: TQRDBText;
    rdb8: TQRDBText;
    rdb9: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel1: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    qryCatunorc: TStringField;
    qryCatcat: TStringField;
    qryCatcatD: TStringField;
    qryCatdespesaD: TStringField;
    qryCattotal: TBCDField;
    qryCattesouro: TBCDField;
    qryCatoutras: TBCDField;
    qryCatfisTotal: TBCDField;
    qryCatfisTesouro: TBCDField;
    qryCatfisOutras: TBCDField;
    qryCatsegTotal: TBCDField;
    qryCatsegTesouro: TBCDField;
    qryCatsegOutras: TBCDField;
    TitleBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    pulapage : Boolean;
  end;

var
  frmUnoCatDesp: TfrmUnoCatDesp;

implementation

uses data, unoDial;

{$R *.DFM}

procedure TfrmUnoCatDesp.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with qryCat.fieldByName('cat') do begin
    rdbTotal.mask := '#,###,###,###';
    rdbTesouro.mask := '#,###,###,###';
    rdbOutras.mask := '#,###,###,###';

    rdbFisTotal.mask := '#,###,###,###';
    rdbFisTesouro.mask := '#,###,###,###';
    rdbFisOutras.mask := '#,###,###,###';

    rdbSegTotal.mask := '#,###,###,###';
    rdbSegTesouro.mask := '#,###,###,###';
    rdbSegOutras.mask := '#,###,###,###';

    if asString = '9' then
    begin
       if qry.fieldByName('total').asFloat > 0 then rdbTotal.mask := '#,###,###,###';
       if qry.fieldByName('tesouro').asFloat > 0 then rdbTesouro.mask := '#,###,###,###';
       if qry.fieldByName('outras').asFloat > 0 then rdbOutras.mask := '#,###,###,###';

       if qry.fieldByName('fisTotal').asFloat > 0 then rdbFisTotal.mask := '#,###,###,###';
       if qry.fieldByName('fisTesouro').asFloat > 0 then rdbFisTesouro.mask := '#,###,###,###';
       if qry.fieldByName('fisOutras').asFloat > 0 then rdbFisOutras.mask := '#,###,###,###';

       if qry.fieldByName('segTotal').asFloat > 0 then rdbSegTotal.mask := '#,###,###,###';
       if qry.fieldByName('segTesouro').asFloat > 0 then rdbSegTesouro.mask := '#,###,###,###';
       if qry.fieldByName('segOutras').asFloat > 0 then rdbSegOutras.mask := '#,###,###,###';
    end;

  end;
end;

procedure TfrmUnoCatDesp.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printBand := qry.fieldByName('cat').asString <> '9'
end;

procedure TfrmUnoCatDesp.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   //if frmUnoCatDesp.pulapage = True then report.NewPage;
end;

procedure TfrmUnoCatDesp.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   //if frmUnoCatDesp.pulapage = True then report.NewPage;
end;

procedure TfrmUnoCatDesp.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if frmUnoCatDesp.pulapage = True then
      TitleBand1.Enabled := true  else   TitleBand1.Enabled := False;
       report.NewPage;

end;

end.
