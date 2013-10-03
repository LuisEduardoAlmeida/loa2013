unit Teste;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TfrmTeste = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    qyLei2007_: TADOQuery;
    dsLei2007_: TDataSource;
    qyLei2007_valorlei2007: TBCDField;
    qyProposta2008_: TADOQuery;
    dsProposta2008_: TDataSource;
    qyProposta2008_VProjeto2008: TBCDField;
    qyProposta2008_fonte: TStringField;
    qyLei2007_fonte: TStringField;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ADOQuery1unorc: TStringField;
    ADOQuery1unorcd: TStringField;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qyFonte: TADOQuery;
    dsFonte: TDataSource;
    qyFontecodigo: TStringField;
    qyFontedescricao: TStringField;
  private

  public

  end;

var
  frmTeste: TfrmTeste;

implementation

uses data;

{$R *.DFM}

end.
