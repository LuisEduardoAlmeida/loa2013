unit unorcStructure;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmUnorcStructure = class(TForm)
    report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel44: TQRLabel;
    QRShape11: TQRShape;
    QRShape21: TQRShape;
    QRLabel71: TQRLabel;
    qryParametro: TADOQuery;
    QRDBText1: TQRDBText;
    qry: TADOQuery;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    sQry: TDataSource;
    QryUnorc: TADOQuery;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnorcStructure: TfrmUnorcStructure;

implementation

uses data;

{$R *.DFM}

procedure TfrmUnorcStructure.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qryUnorc.recNo = 1 then printBand := false;
end;

end.
