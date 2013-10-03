unit conProgGov;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, ADODB, QRPDFFilter;

type
  TfrmConsProgGov = class(TForm)
    report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel44: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape11: TQRShape;
    QRShape21: TQRShape;
    qryParametro: TADOQuery;
    QRDBText1: TQRDBText;
    qry: TADOQuery;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    qryPrograma: TADOQuery;
    qryprograma2: TStringField;
    qryprogramaD: TStringField;
    qryprogramaObj: TStringField;
    ChildBand1: TQRChildBand;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    sQRY: TDataSource;
    qryOrgao: TADOQuery;
    QRSubDetail1: TQRSubDetail;
    QRDBText5: TQRDBText;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    qryprogramaT: TBCDField;
    QRLabel5: TQRLabel;
    qryAcao: TADOQuery;
    sdtAcao: TQRSubDetail;
    GroupHeaderBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    sQryAcao: TDataSource;
    qryUnorc: TADOQuery;
    QRSubDetail2: TQRSubDetail;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1metafisica: TIntegerField;
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsProgGov: TfrmConsProgGov;

implementation

uses data;

{$R *.DFM}

procedure TfrmConsProgGov.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if qry.fieldByName('programaObj').asString > '' then printBand := true
  else printBand := false;
end;

procedure TfrmConsProgGov.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

      {
       ADOQuery1.Close;
       ADOQuery1.Parameters.ParamByName('UNORC').Value    := qryUnorcunorc.Value;
       ADOQuery1.Parameters.ParamByName('PROGRAMA').Value := qryUnorcprograma.Value;
       ADOQuery1.Parameters.ParamByName('ACAO').Value     := qryUnorcacao.Value;
       ADOQuery1.ExecSQL;
       ADOQuery1.Open;


   QRLabel9.Caption := ADOQuery1metafisica.AsString;
       }
end;

end.
