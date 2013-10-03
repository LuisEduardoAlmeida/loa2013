unit ConsDespCat_Indireto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmConsDespCat_Indireto = class(TForm)
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
    QRPDFFilter1: TQRPDFFilter;
    ADOQuery1: TADOQuery;
    QRLabel3: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel21: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRExpr13: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRShape10: TQRShape;
    QRExpr15: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr14: TQRExpr;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
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
  frmConsDespCat_Indireto: TfrmConsDespCat_Indireto;

implementation

uses data;

{$R *.DFM}

procedure TfrmConsDespCat_Indireto.DetailBand1BeforePrint(Sender: TQRCustomBand;
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
    {
    if asString = '9' then begin
       if qry.fieldByName('total').asFloat > 0 then rdbTotal.mask := '(#,###,###,###)';
       if qry.fieldByName('tesouro').asFloat > 0 then rdbTesouro.mask := '(#,###,###,###)';
       if qry.fieldByName('outras').asFloat > 0 then rdbOutras.mask := '(#,###,###,###)';

       if qry.fieldByName('fisTotal').asFloat > 0 then rdbFisTotal.mask := '(#,###,###,###)';
       if qry.fieldByName('fisTesouro').asFloat > 0 then rdbFisTesouro.mask := '(#,###,###,###)';
       if qry.fieldByName('fisOutras').asFloat > 0 then rdbFisOutras.mask := '(#,###,###,###)';

       if qry.fieldByName('segTotal').asFloat > 0 then rdbSegTotal.mask := '(#,###,###,###)';
       if qry.fieldByName('segTesouro').asFloat > 0 then rdbSegTesouro.mask := '(#,###,###,###)';
       if qry.fieldByName('segOutras').asFloat > 0 then rdbSegOutras.mask := '(#,###,###,###)';
    end;
    }
  end;
end;

procedure TfrmConsDespCat_Indireto.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printBand := qry.fieldByName('cat').asString <> '9'
end;

end.
