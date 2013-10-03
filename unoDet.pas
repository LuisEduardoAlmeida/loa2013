unit unoDet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmUnoDet = class(TForm)
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
    qryProg: TADOQuery;
    detail: TQRBand;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    sQryProg: TDataSource;
    QRLabel3: TQRLabel;
    QRLabel16: TQRLabel;
    QRBand1: TQRBand;
    QRExpr7: TQRExpr;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    qryTipo: TADOQuery;
    sQryTipo: TDataSource;
    sdtTipo: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    qryAcao: TADOQuery;
    sQryAcao: TDataSource;
    sdtAcao: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    ChildBand1: TQRChildBand;
    lblProduto: TQRLabel;
    QRDBText11: TQRDBText;
    qryLocal: TADOQuery;
    sQryLocal: TDataSource;
    sdtLocali: TQRSubDetail;
    GroupHeaderBand1: TQRBand;
    QRShape4: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    ChildBand2: TQRChildBand;
    QRDBText21: TQRDBText;
    qryFonte: TADOQuery;
    sdtValor: TQRSubDetail;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRShape5: TQRShape;
    QRDBText32: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    qryLocalunorc: TStringField;
    qryLocalprograma: TStringField;
    qryLocaltipoLocalD: TStringField;
    qryLocalacao: TStringField;
    qryLocallocali: TIntegerField;
    qryLocallocaliS: TStringField;
    qryLocaldescricao: TStringField;
    qryLocalfuncao: TStringField;
    qryLocalsubFuncao: TStringField;
    qryLocalmeta: TStringField;
    qryLocaltotal: TBCDField;
    QRLabel10: TQRLabel;
    QRDBText22: TQRDBText;
    qryFonteunorc: TStringField;
    qryFonteprograma: TStringField;
    qryFontetipoLocalD: TStringField;
    qryFonteacao: TStringField;
    qryFontelocali: TIntegerField;
    qryFonteesfera: TStringField;
    qryFontegrupoD: TStringField;
    qryFonteindUso: TStringField;
    qryFontefonte: TStringField;
    qryFontedescricao: TStringField;
    qryFonteMA: TStringField;
    qryFonteesferaD: TStringField;
    qryFontetotal: TBCDField;
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnoDet: TfrmUnoDet;

implementation

uses data, unoDial;

{$R *.DFM}

procedure TfrmUnoDet.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with qryAcao do begin
    printBand := fieldByName('meta').asFloat > 0;
    lblProduto.caption := fieldByName('produto').asString + '='+ fieldByName('meta').asString;
  end;
end;

procedure TfrmUnoDet.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    printBand := qryLocal.fieldByName('meta').asString <> '';
end;

end.
