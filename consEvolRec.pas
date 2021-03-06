unit consEvolRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmConsEvolRec = class(TForm)
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
    sQryGrupo: TDataSource;
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
    qryMod: TADOQuery;
    sQryMod: TDataSource;
    sdtmod: TQRSubDetail;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    qry: TADOQuery;
    sdtElem: TQRSubDetail;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    sQry: TDataSource;
    qryAlinea: TADOQuery;
    sdtAlinea: TQRSubDetail;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRLabel4: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure reportStartPage(Sender: TCustomQuickRep);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsEvolRec: TfrmConsEvolRec;

implementation

uses data;

{$R *.DFM}

procedure TfrmConsEvolRec.reportStartPage(Sender: TCustomQuickRep);
begin
   with qryParametro.fieldByName('exercicio') do begin
     lblEx_4.caption := intToStr(asInteger - 4);
     lblEx_3.caption := intToStr(asInteger - 3);
     lblEx_2.caption := intToStr(asInteger - 2);
     lblEx_1.caption := intToStr(asInteger - 1);
     lblRevisao.caption := 'OR�AMENTO '+intToStr(asInteger - 1);
     lblOrcamento.caption := intToStr(asInteger);
  end;
end;

end.
