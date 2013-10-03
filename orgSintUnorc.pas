unit orgSintUnorc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB;

type
  TfrmOrgSintUnorc = class(TForm)
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
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrgSintUnorc: TfrmOrgSintUnorc;

implementation

uses data, orgaoDial;

{$R *.DFM}

end.
