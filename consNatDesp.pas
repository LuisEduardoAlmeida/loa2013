unit consNatDesp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmConsNatDesp = class(TForm)
    report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    lblEsfera: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape11: TQRShape;
    QRShape21: TQRShape;
    QRLabel71: TQRLabel;
    qryParametro: TADOQuery;
    QRDBText1: TQRDBText;
    qryCat: TADOQuery;
    detail: TQRBand;
    QRDBText3: TQRDBText;
    rdbCatOutras: TQRDBText;
    QRLabel1: TQRLabel;
    rdbCatTesouro: TQRDBText;
    sQryCAt: TDataSource;
    QRLabel3: TQRLabel;
    rdbCatTotal: TQRDBText;
    QRLabel16: TQRLabel;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr10: TQRExpr;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    qryGrupo: TADOQuery;
    sQryGrupo: TDataSource;
    sdtGrupo: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    rdbGrupoTotal: TQRDBText;
    rdbGrupoTesouro: TQRDBText;
    rdbGrupoOutras: TQRDBText;
    qrySubGrupo: TADOQuery;
    sQrySubGrupo: TDataSource;
    sdtSubGrupo: TQRSubDetail;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    rdbSubGrupoTotal: TQRDBText;
    rdbSubGrupoTesouro: TQRDBText;
    rdbSubGrupoOutras: TQRDBText;
    qry: TADOQuery;
    sdtRubrica: TQRSubDetail;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    rdbRubricaTotal: TQRDBText;
    rdbRubricaTesouro: TQRDBText;
    rdbRubricaOutras: TQRDBText;
    qryCatcat: TStringField;
    qryCatcatD: TStringField;
    qryCatdespesaD: TStringField;
    qryCattotal: TBCDField;
    qryCatfiscal: TBCDField;
    qryCatseguridade: TBCDField;
    qryGrupocat: TStringField;
    qryGrupogrupo: TStringField;
    qryGrupogrupoD: TStringField;
    qryGrupodespesaD: TStringField;
    qryGrupototal: TBCDField;
    qryGrupofiscal: TBCDField;
    qryGruposeguridade: TBCDField;
    qrySubGrupocat: TStringField;
    qrySubGrupogrupo: TStringField;
    qrySubGrupomod: TStringField;
    qrySubGrupomodD: TStringField;
    qrySubGrupodespesaD: TStringField;
    qrySubGrupototal: TBCDField;
    qrySubGrupofiscal: TBCDField;
    qrySubGruposeguridade: TBCDField;
    qrycat2: TStringField;
    qrygrupo2: TStringField;
    qrymod: TStringField;
    qryelDespesa: TStringField;
    qrydespesaD: TStringField;
    qrytotal: TBCDField;
    qryfiscal: TBCDField;
    qryseguridade: TBCDField;
    QRLabel4: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure detailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sdtGrupoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sdtSubGrupoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsNatDesp: TfrmConsNatDesp;

implementation

uses data;

{$R *.DFM}

procedure TfrmConsNatDesp.detailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printBand := qryCat.fieldByName('cat').asString <> '0';
end;

procedure TfrmConsNatDesp.sdtGrupoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printBand := qryGrupo.fieldByName('grupo').asString <> '0';
end;

procedure TfrmConsNatDesp.sdtSubGrupoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printBand := qrySubGrupo.fieldByName('mod').asString <> '00';
end;

end.
