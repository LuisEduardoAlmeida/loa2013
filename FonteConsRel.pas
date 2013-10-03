unit FonteConsRel;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TfrmFonteConsRel = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    lbFonte: TQRLabel;
    QRShape11: TQRShape;
    QRLabel4: TQRLabel;
    QRShape21: TQRShape;
    qyF_: TADOQuery;
    dsF_: TDataSource;
    qyF_codigo: TIntegerField;
    qyF_locali: TIntegerField;
    qyF_elDespesa: TStringField;
    qyF_indUso: TStringField;
    qyF_fonte: TStringField;
    qyF_valor: TBCDField;
    qyF_esfera: TStringField;
    qyF_unorc: TStringField;
    qyF_funcao: TStringField;
    qyF_subFuncao: TStringField;
    qyF_programa: TStringField;
    qyF_acao: TStringField;
    qyF_regional: TStringField;
    qyF_descricao: TStringField;
    qyF_metafisica: TBCDField;
    qyF_localiS: TStringField;
    qyF_funcaoD: TStringField;
    qyF_subFuncaoD: TStringField;
    qyF_fonteD: TStringField;
    qyF_cat: TStringField;
    qyF_catD: TStringField;
    qyF_grupo: TStringField;
    qyF_grupoD: TStringField;
    qyF_mod: TStringField;
    qyF_modD: TStringField;
    qyF_elem: TStringField;
    qyF_orgao: TStringField;
    qyF_orgaoS: TStringField;
    qyF_orgaoD: TStringField;
    qyF_acaoD: TStringField;
    qyF_programaD: TStringField;
    qyF_unorcD: TStringField;
    qyF_recurso: TStringField;
    qyF_esferaD: TStringField;
    qyF_tipoLocalD: TStringField;
    qyF_Poder: TStringField;
    qyF_PoderD: TStringField;
    qyF_recursoD: TStringField;
    qyF_produto: TStringField;
    qyF_meta: TStringField;
    qyF_fiscal: TBCDField;
    qyF_seguridade: TBCDField;
    qyF_tesouro: TBCDField;
    qyF_outrasF: TBCDField;
    qyF_fisTesouro: TBCDField;
    qyF_fisOutras: TBCDField;
    qyF_segTesouro: TBCDField;
    qyF_segOutras: TBCDField;
    qyF_pessoal: TBCDField;
    qyF_juros: TBCDField;
    qyF_outras: TBCDField;
    qyF_invest: TBCDField;
    qyF_invFin: TBCDField;
    qyF_amortiza: TBCDField;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel11: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel12: TQRLabel;
  private

  public

  end;

var
  frmFonteConsRel: TfrmFonteConsRel;

implementation

uses data, FonteCons;

{$R *.DFM}

end.
