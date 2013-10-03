unit Emendareducao;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TfrmEmendasReducao = class(TQuickRep)
    QRBand1: TQRBand;
    qry: TADOQuery;
    sQry: TDataSource;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    qryCodigo: TAutoIncField;
    qryEmenda: TStringField;
    qryrelemento: TStringField;
    qryrIndUso: TStringField;
    qryrFonte: TStringField;
    qryrValor: TBCDField;
    qryaelemento: TStringField;
    qryaIndUso: TStringField;
    qryaFonte: TStringField;
    qryaValor: TBCDField;
    qryStatus: TStringField;
    qryCodigo_1: TAutoIncField;
    qryNumEmenda: TStringField;
    qryVotacao: TStringField;
    qryStatus_1: TStringField;
    qryTipo: TStringField;
    qryTexto: TMemoField;
    qryUnorc: TStringField;
    qryFuncao: TStringField;
    qrySubFuncao: TStringField;
    qryPrograma: TStringField;
    qryAcao: TStringField;
    qryLocali: TIntegerField;
    qryEsfera: TStringField;
    qryRegional: TStringField;
    qryMetaFisica: TIntegerField;
    qryProduto: TStringField;
    qryaUnorc: TStringField;
    qryaFuncao: TStringField;
    qryaSubFuncao: TStringField;
    qryaPrograma: TStringField;
    qryaAcao: TStringField;
    qryaLocali: TStringField;
    qryaGrupo: TStringField;
    qryaEsfera: TStringField;
    qryaRegional: TStringField;
    qryaMetaFisica: TIntegerField;
    qryaGrupoDesp: TStringField;
    qryrUnorc: TStringField;
    qryrFuncao: TStringField;
    qryrSubFuncao: TStringField;
    qryrPrograma: TStringField;
    qryrAcao: TStringField;
    qryrLocali: TStringField;
    qryrGrupo: TStringField;
    qryrEsfera: TStringField;
    qryrRegional: TStringField;
    qryrMetaFisica: TIntegerField;
    qryrGrupoDesp: TStringField;
    qryNome: TStringField;
    qrySigla: TStringField;
    qryFPr: TStringField;
    qryFPa: TStringField;
    qryGrupor: TStringField;
    qryGrupoa: TStringField;
    QRBand4: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape11: TQRShape;
    QRLabel11: TQRLabel;
    QRShape12: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    lbTit01: TQRLabel;
    lbTit02: TQRLabel;
    qryProposicao: TStringField;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRLabel15: TQRLabel;
    ADOQuery1: TADOQuery;
    ADOQuery1Rvalor: TBCDField;
    ADOQuery1Avalor: TBCDField;
    QRBand5: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel16: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape8: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
  private

  public

  end;

var
  frmEmendasReducao: TfrmEmendasReducao;

implementation

uses data;

{$R *.DFM}

end.
