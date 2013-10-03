unit EmendasApro2Doe;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, QRPDFFilter;

type
  TfrmEmendasApro2Doe = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    qry: TADOQuery;
    QRBand3: TQRBand;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    qryCodigo: TAutoIncField;
    qryEmendaG: TStringField;
    qryVotacao: TStringField;
    qryStatus: TStringField;
    qryTipo: TStringField;
    qryVereador: TIntegerField;
    qryValorTotal: TBCDField;
    qrynome: TStringField;
    qrystatusdetalhe: TStringField;
    qrytipos: TStringField;
    QRDBText4: TQRDBText;
    qryemenda: TStringField;
    QRBand4: TQRBand;
    QRExpr2: TQRExpr;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel7: TQRLabel;
  private

  public

  end;

var
  frmEmendasApro2Doe: TfrmEmendasApro2Doe;

implementation

uses data;

{$R *.DFM}

end.
