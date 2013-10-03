unit relModelo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmRelModel = class(TForm)
    report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape11: TQRShape;
    QRShape21: TQRShape;
    QRLabel71: TQRLabel;
    QRLabel1: TQRLabel;
    qryParametro: TADOQuery;
    QRDBText1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelModel: TfrmRelModel;

implementation

uses data;

{$R *.DFM}

end.
