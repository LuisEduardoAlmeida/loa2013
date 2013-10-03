unit UnoQDDProposta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmUnoQDDProposta = class(TForm)
    report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    lblEsfera: TQRLabel;
    qryParametro: TADOQuery;
    QRDBText1: TQRDBText;
    qryEsfera: TADOQuery;
    sQryEsfera: TDataSource;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    qryProg: TADOQuery;
    sQryProg: TDataSource;
    sdtPrograma: TQRSubDetail;
    QRDBText2: TQRDBText;
    rdbCatOutras: TQRDBText;
    footerBand: TQRBand;
    QRDBText6: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    qryAcao: TADOQuery;
    sQryAcao: TDataSource;
    ssdtAcao: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    ChildBand1: TQRChildBand;
    lblProduto: TQRLabel;
    qryLocali: TADOQuery;
    sQryLocali: TDataSource;
    sdtLocal: TQRSubDetail;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    ChildBand2: TQRChildBand;
    QRDBText14: TQRDBText;
    qry: TADOQuery;
    sdtElemento: TQRSubDetail;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText21: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRShape11: TQRShape;
    QRLabel4: TQRLabel;
    QRShape21: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRPDFFilter2: TQRPDFFilter;
    lbano: TQRLabel;
    qryParametroprefeitura: TStringField;
    qryParametrobanco: TStringField;
    qryParametroexercicio: TIntegerField;
    qryParametroevolRec: TStringField;
    qryParametroevolDesp: TStringField;
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ColumnHeaderBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnoQDDProposta: TfrmUnoQDDProposta;

implementation

uses data, unoDial, proposta;

{$R *.DFM}

procedure TfrmUnoQDDProposta.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 if qryAcao.fieldByName('meta').asFloat < 1 then
    printBand := false
 else
    begin
       printBand := true;
       lblProduto.caption := qryAcao.fieldByName('produto').asString + '='+ qryAcao.fieldByName('meta').asString;
    end;

end;

procedure TfrmUnoQDDProposta.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printBand := qryLocali.fieldByname('meta').asString <> '';
end;

procedure TfrmUnoQDDProposta.ColumnHeaderBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   lbano.Caption := ' - Exercício '+qryParametroexercicio.AsString;
end;

procedure TfrmUnoQDDProposta.ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   lbano.Caption := ' - Exercício '+qryParametroexercicio.AsString;
end;

end.
