unit portariaList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB;

type
  TfrmPortariaList = class(TForm)
    report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel44: TQRLabel;
    QRShape11: TQRShape;
    QRShape21: TQRShape;
    QRLabel71: TQRLabel;
    qryParametro: TADOQuery;
    qryOrgao: TADOQuery;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    SDTUnorc: TQRSubDetail;
    SQryOrgao: TDataSource;
    qryUnorc: TADOQuery;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    qryOrgaoportaria: TIntegerField;
    qryOrgaoorgao: TStringField;
    qryOrgaoorgaoD: TStringField;
    qryOrgaovalor: TBCDField;
    SQryUnorc: TDataSource;
    qryLocal: TADOQuery;
    SDTLocal: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    SQryLocal: TDataSource;
    qry: TADOQuery;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText13: TQRDBText;
    qrycodigo: TAutoIncField;
    qryportaria: TIntegerField;
    qryunorc2: TStringField;
    qryprograma: TStringField;
    qryacao: TStringField;
    qrylocali: TStringField;
    qryelemento: TStringField;
    qryindUso: TStringField;
    qryfonte: TStringField;
    qryvalor: TBCDField;
    qryesferaD: TStringField;
    qrydescricao: TStringField;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPortariaList: TfrmPortariaList;

implementation

uses data, portaria;

{$R *.DFM}

end.
