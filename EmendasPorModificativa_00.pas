unit EmendasPorModificativa_00;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, QRPDFFilter;

type
  TFrmEmendasPorModificativa_00 = class(TQuickRep)
    QRBand1: TQRBand;
    ADOQuery1: TADOQuery;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel11: TQRLabel;
    ADOQuery1NumEmenda: TStringField;
    ADOQuery1Nome: TStringField;
    ADOQuery1aUnorc: TStringField;
    ADOQuery1aFuncao: TStringField;
    ADOQuery1aSubFuncao: TStringField;
    ADOQuery1aPrograma: TStringField;
    ADOQuery1aAcao: TStringField;
    ADOQuery1aLocali: TStringField;
    ADOQuery1descricao: TStringField;
    ADOQuery1aFonte: TStringField;
    ADOQuery1aValor: TBCDField;
    sombra: TQRShape;
    QRBand4: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel14: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel15: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape1: TQRShape;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel12: TQRLabel;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  FrmEmendasPorModificativa_00: TFrmEmendasPorModificativa_00;

implementation

uses data;

{$R *.DFM}

procedure TFrmEmendasPorModificativa_00.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   sombra.enabled := not(sombra.enabled); 
end;

procedure TFrmEmendasPorModificativa_00.QRGroup1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   if tRIM(ADOQuery1Nome.VALUE) = '' then QRLabel12.Caption := 'COLETIVA'
   ELSE
      QRLabel12.Caption := '';
end;

end.
