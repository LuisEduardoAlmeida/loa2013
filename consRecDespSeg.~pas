unit consRecDespSeg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmConsRecDespSeg = class(TForm)
    report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel44: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel61: TQRLabel;
    DetailBand1: TQRBand;
    QRShape11: TQRShape;
    QRLabel71: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel23: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel35: TQRLabel;
    QRShape6: TQRShape;
    QRLabel24: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel39: TQRLabel;
    QRDBText24: TQRDBText;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel40: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel46: TQRLabel;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRExpr8: TQRExpr;
    QRLabel49: TQRLabel;
    QRDBText14: TQRDBText;
    qry: TADOQuery;
    QRDBText5: TQRDBText;
    QRLabel31: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr3: TQRExpr;
    QRDBText18: TQRDBText;
    parametro: TADOQuery;
    QRDBText20: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText32: TQRDBText;
    qrytransferencia: TCurrencyField;
    qrysuperAvit: TCurrencyField;
    qryrecCorr: TBCDField;
    qryrecCTri: TBCDField;
    qryrecCCon: TBCDField;
    qryrecCPatr: TBCDField;
    qryrecCServ: TBCDField;
    qryrecCTransf: TBCDField;
    qryrecCOutra: TBCDField;
    qrydespCorr: TBCDField;
    qrydespCPess: TBCDField;
    qrydespCJuros: TBCDField;
    qrydespCOutras: TBCDField;
    qrydespCap: TBCDField;
    qrydespAInv: TBCDField;
    qrydespAInFin: TBCDField;
    qrydespAAmor: TBCDField;
    qryrecCorr10: TBCDField;
    qryrecCap10: TBCDField;
    qryrecDeducao10: TBCDField;
    qrydespCorr10: TBCDField;
    qrydespCap10: TBCDField;
    qryreserva10: TBCDField;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel3: TQRLabel;
    QRDBText33: TQRDBText;
    qryrecIntCor: TBCDField;
    qryrecAOper: TBCDField;
    qryrecAAlien: TBCDField;
    qryrecATransf: TBCDField;
    qryAmortEmp: TBCDField;
    QRLabel1: TQRLabel;
    QRDBText26: TQRDBText;
    qryrecCap20: TBCDField;
    QRLabel32: TQRLabel;
    QRDBText35: TQRDBText;
    qryrecIntCor10: TBCDField;
    procedure qryCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsRecDespSeg: TfrmConsRecDespSeg;

implementation

uses data;

{$R *.DFM}

procedure TfrmConsRecDespSeg.qryCalcFields(DataSet: TDataSet);
begin
  with qry do begin
    fieldByName('transferencia').value := qry.fieldByName('recCap10').value +
                                          fieldByName('RecIntCor10').value +
                                          qry.fieldByName('recCorr10').value -
                                          qry.fieldByName('despCorr10').value -
                                          qry.fieldByName('recDeducao10').value -
                                          qry.fieldByName('despCap10').value -
                                          qry.fieldByName('reserva10').value;

    fieldByName('superAvit').value := fieldByName('recCorr').value  +
                                      fieldByName('transferencia').value
                                      + fieldByName('RecIntCor').value -
                                      fieldByName('despCorr').value;

  end;

end;

end.
