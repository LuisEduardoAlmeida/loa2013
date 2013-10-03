unit consEvolDesp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmConsEvolDesp = class(TForm)
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
    SummaryBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRDBText7: TQRDBText;
    lblRevisao: TQRLabel;
    lblOrcamento: TQRLabel;
    lblEx_1: TQRLabel;
    lblEx_2: TQRLabel;
    QRLabel9: TQRLabel;
    lblEx_4: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    lblEx_3: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    sQryCat: TDataSource;
    qryGrupo: TADOQuery;
    sdtGrupo: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel4: TQRLabel;
    qryCatcat: TStringField;
    qryCatdescricao: TStringField;
    qryCatex_4: TBCDField;
    qryCatex_3: TBCDField;
    qryCatex_2: TBCDField;
    qryCatex_1: TBCDField;
    qryCatrevisao: TBCDField;
    qryCatorcamento: TBCDField;
    QRPDFFilter1: TQRPDFFilter;
    ADOQuery1: TADOQuery;
    procedure reportStartPage(Sender: TCustomQuickRep);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure sdtGrupoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsEvolDesp: TfrmConsEvolDesp;

implementation

uses data;

{$R *.DFM}

procedure TfrmConsEvolDesp.reportStartPage(Sender: TCustomQuickRep);
begin
   with qryParametro.fieldByName('exercicio') do begin
     lblEx_4.caption := intToStr(asInteger - 4);
     lblEx_3.caption := intToStr(asInteger - 3);
     lblEx_2.caption := intToStr(asInteger - 2);
     lblEx_1.caption := intToStr(asInteger - 1);
     lblRevisao.caption := 'ORÇAMENTO '+intToStr(asInteger - 1);
     lblOrcamento.caption := intToStr(asInteger);
  end;
end;

procedure TfrmConsEvolDesp.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   IF qryCatdescricao.IsNull THEN
      QRDBText3.Caption := 'Reserva de Contingencia'
end;

procedure TfrmConsEvolDesp.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   IF qryCatdescricao.IsNull THEN
      QRDBText3.Caption := 'Reserva de Contingencia'
end;


procedure TfrmConsEvolDesp.sdtGrupoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   IF qryCatdescricao.IsNull  THEN
      QRDBText2.Caption := 'Reserva de Contigência' 
end;

end.
