unit conDensEns;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmConsDensEns = class(TForm)
    report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    lblTitulo: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape11: TQRShape;
    QRShape21: TQRShape;
    QRLabel71: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    DBTotUm: TQRDBText;
    DBDescrUm: TQRDBText;
    QRShape3: TQRShape;
    DBCodUm: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    DBCodDois: TQRDBText;
    DBDescrDois: TQRDBText;
    DBTotDois: TQRDBText;
    QRShape4: TQRShape;
    DBCodTres: TQRDBText;
    DBDescrTres: TQRDBText;
    DBTotTres: TQRDBText;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    qryParametro: TADOQuery;
    QRDBText1: TQRDBText;
    qryColUm: TADOQuery;
    qryColDois: TADOQuery;
    qryColTres: TADOQuery;
    QRPDFFilter1: TQRPDFFilter;
    procedure reportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsDensEns: TfrmConsDensEns;

implementation

uses data;

{$R *.DFM}

procedure TfrmConsDensEns.reportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qryColUm.close;
  qryColDois.close;
  qryColTres.close;

  qryColUm.open;
  qryColDois.open;
  qryColTres.open;

  report.dataSet := qryColUm;
  if qryColDois.recordCount > report.dataSet.recordCount then
     report.dataSet := qryColDois;

  if qryColTres.recordCount > report.dataSet.recordCount then
     report.dataSet := qryColTres;

end;

procedure TfrmConsDensEns.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DBCodUm.enabled := true;
  DBDescrUm.enabled := true;
  DBTotUm.enabled := true;

  DBCodDois.enabled := true;
  DBDescrDois.enabled := true;
  DBTotDois.enabled := true;

  DBCodTres.enabled := true;
  DBDescrTres.enabled := true;
  DBTotTres.enabled := true;

  if report.dataSet.RecNo <= qryColUm.recordCount then
     qryColUm.recNo := report.dataSet.recNo
  else begin
     DBCodUm.enabled := false;
     DBDescrUm.enabled := false;
     DBTotUm.enabled := false;
  end;

  if report.dataSet.RecNo <= qryColDois.recordCount then
     qryColDois.recNo := report.dataSet.recNo
  else begin
     DBCodDois.enabled := false;
     DBDescrDois.enabled := false;
     DBTotDois.enabled := false;
  end;

  if report.dataSet.RecNo <= qryColTres.recordCount then
     qryColTres.recNo := report.dataSet.recNo
  else begin
     DBCodTres.enabled := false;
     DBDescrTres.enabled := false;
     DBTotTres.enabled := false;
  end;



end;

end.
