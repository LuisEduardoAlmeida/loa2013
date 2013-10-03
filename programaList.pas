unit programaList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB;

type
  TfrmProgramaList = class(TForm)
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
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProgramaList: TfrmProgramaList;

implementation

uses data;

{$R *.DFM}

end.
