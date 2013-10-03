unit consReceita;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmConsReceita = class(TForm)
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
    qryCatcat: TStringField;
    qryCatcatD: TStringField;
    qryCatreceitaD: TStringField;
    qryCattotal: TBCDField;
    qryCattesouro: TBCDField;
    qryCatoutras: TBCDField;
    qryCatliquida: TBCDField;
    qryCatliqTesouro: TBCDField;
    qryCatliqOutras: TBCDField;
    qryGrupo: TADOQuery;
    sQryGrupo: TDataSource;
    sdtGrupo: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    rdbGrupoTotal: TQRDBText;
    rdbGrupoTesouro: TQRDBText;
    rdbGrupoOutras: TQRDBText;
    qryGrupocat: TStringField;
    qryGrupogrupo: TStringField;
    qryGrupogrupoD: TStringField;
    qryGruporeceitaD: TStringField;
    qryGrupototal: TBCDField;
    qryGrupotesouro: TBCDField;
    qryGrupooutras: TBCDField;
    qrySubGrupo: TADOQuery;
    sQrySubGrupo: TDataSource;
    sdtSubGrupo: TQRSubDetail;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    rdbSubGrupoTotal: TQRDBText;
    rdbSubGrupoTesouro: TQRDBText;
    rdbSubGrupoOutras: TQRDBText;
    qrySubGrupocat: TStringField;
    qrySubGrupogrupo: TStringField;
    qrySubGruposubGrupo: TStringField;
    qrySubGruposubGrupoD: TStringField;
    qrySubGruporeceitaD: TStringField;
    qrySubGrupototal: TBCDField;
    qrySubGrupotesouro: TBCDField;
    qrySubGrupooutras: TBCDField;
    qryRubrica: TADOQuery;
    sQryRubrica: TDataSource;
    qryRubricacat: TStringField;
    qryRubricagrupo: TStringField;
    qryRubricasubGrupo: TStringField;
    qryRubricarubrica: TStringField;
    qryRubricarubricaD: TStringField;
    qryRubricareceitaD: TStringField;
    qryRubricatotal: TBCDField;
    qryRubricatesouro: TBCDField;
    qryRubricaoutras: TBCDField;
    sdtRubrica: TQRSubDetail;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    rdbRubricaTotal: TQRDBText;
    rdbRubricaTesouro: TQRDBText;
    rdbRubricaOutras: TQRDBText;
    qryAlinea: TADOQuery;
    sQryAlinea: TDataSource;
    qryAlineacat: TStringField;
    qryAlineagrupo: TStringField;
    qryAlineasubGrupo: TStringField;
    qryAlinearubrica: TStringField;
    qryAlineaalinea: TStringField;
    qryAlineaalineaD: TStringField;
    qryAlineareceitaD: TStringField;
    qryAlineatotal: TBCDField;
    qryAlineatesouro: TBCDField;
    qryAlineaoutras: TBCDField;
    sdtAlinea: TQRSubDetail;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    rdbAlineaTotal: TQRDBText;
    rdbAlineaTesouro: TQRDBText;
    rdbAlineaOutras: TQRDBText;
    qry: TADOQuery;
    sdtDesdobra: TQRSubDetail;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    rdbTotal: TQRDBText;
    rdbTesouro: TQRDBText;
    rdbOutras: TQRDBText;
    qryelReceita: TStringField;
    qryreceitaD: TStringField;
    qryvalor: TBCDField;
    qrytesouro: TBCDField;
    qryoutras: TBCDField;
    QRLabel4: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure detailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sdtGrupoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sdtSubGrupoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sdtRubricaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sdtAlineaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sdtDesdobraBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsReceita: TfrmConsReceita;

implementation

uses data;

{$R *.DFM}

procedure TfrmConsReceita.detailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printBand := qryCat.fieldByName('cat').asString <> '0';
  rdbCatTotal.mask := '#,###,###,###';
  rdbCatTesouro.mask := '#,###,###,###';
  rdbCatOutras.mask := '#,###,###,###';

  with qryCat do begin
    if fieldByName('cat').asString <> '9' then exit;
    if fieldByName('total').asFloat > 0 then rdbCatTotal.mask := '(#,###,###,###)';
    if fieldByName('tesouro').asFloat > 0 then rdbCatTesouro.mask := '(#,###,###,###)';
    if fieldByName('outras').asFloat > 0 then rdbCatOutras.mask := '(#,###,###,###)';
  end;
end;

procedure TfrmConsReceita.sdtGrupoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printBand := qryGrupo.fieldByName('grupo').asString <> '0';
  rdbGrupoTotal.mask := '#,###,###,###';
  rdbGrupoTesouro.mask := '#,###,###,###';
  rdbGrupoOutras.mask := '#,###,###,###';

  with qryGrupo do begin
    if fieldByName('cat').asString <> '9' then exit;
    if fieldByName('total').asFloat > 0 then rdbGrupoTotal.mask := '(#,###,###,###)';
    if fieldByName('tesouro').asFloat > 0 then rdbGrupoTesouro.mask := '(#,###,###,###)';
    if fieldByName('outras').asFloat > 0 then rdbGrupoOutras.mask := '(#,###,###,###)';
  end;

end;

procedure TfrmConsReceita.sdtSubGrupoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printBand := qrySubGrupo.fieldByName('subGrupo').asString <> '0';
  rdbSubGrupoTotal.mask := '#,###,###,###';
  rdbSubGrupoTesouro.mask := '#,###,###,###';
  rdbSubGrupoOutras.mask := '#,###,###,###';

  with qrySubGrupo do begin
    if fieldByName('cat').asString <> '9' then exit;
    if fieldByName('total').asFloat > 0 then rdbSubGrupoTotal.mask := '(#,###,###,###)';
    if fieldByName('tesouro').asFloat > 0 then rdbSubGrupoTesouro.mask := '(#,###,###,###)';
    if fieldByName('outras').asFloat > 0 then rdbSubGrupoOutras.mask := '(#,###,###,###)';
  end;

end;

procedure TfrmConsReceita.sdtRubricaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printBand := qryRubrica.fieldByName('rubrica').asString <> '0';
  rdbRubricaTotal.mask := '#,###,###,###';
  rdbRubricaTesouro.mask := '#,###,###,###';
  rdbRubricaOutras.mask := '#,###,###,###';

  with qryRubrica do begin
    if fieldByName('cat').asString <> '9' then exit;
    if fieldByName('total').asFloat > 0 then rdbRubricaTotal.mask := '(#,###,###,###)';
    if fieldByName('tesouro').asFloat > 0 then rdbRubricaTesouro.mask := '(#,###,###,###)';
    if fieldByName('outras').asFloat > 0 then rdbRubricaOutras.mask := '(#,###,###,###)';
  end;

end;

procedure TfrmConsReceita.sdtAlineaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printBand := qryAlinea.fieldByName('alinea').asString <> '00';
  rdbAlineaTotal.mask := '#,###,###,###';
  rdbAlineaTesouro.mask := '#,###,###,###';
  rdbAlineaOutras.mask := '#,###,###,###';

  with qryAlinea do begin
    if fieldByName('cat').asString <> '9' then exit;
    if fieldByName('total').asFloat > 0 then rdbAlineaTotal.mask := '(#,###,###,###)';
    if fieldByName('tesouro').asFloat > 0 then rdbAlineaTesouro.mask := '(#,###,###,###)';
    if fieldByName('outras').asFloat > 0 then rdbAlineaOutras.mask := '(#,###,###,###)';
  end;

end;

procedure TfrmConsReceita.sdtDesdobraBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  rdbTotal.mask := '#,###,###,###';
  rdbTesouro.mask := '#,###,###,###';
  rdbOutras.mask := '#,###,###,###';

  with qry do begin
    if copy(fieldByName('elReceita').asString,1,1) <> '9' then exit;
    if fieldByName('valor').asFloat > 0 then rdbTotal.mask := '(#,###,###,###)';
    if fieldByName('tesouro').asFloat > 0 then rdbTesouro.mask := '(#,###,###,###)';
    if fieldByName('outras').asFloat > 0 then rdbOutras.mask := '(#,###,###,###)';
  end;
end;

end.
