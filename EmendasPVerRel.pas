unit EmendasPVerRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, QRPDFFilter, ADODB, QRCtrls, jpeg;

type
  TfrmEmendaspVerRel = class(TForm)
    QuickRep1: TQuickRep;
    qry: TADOQuery;
    QRPDFFilter1: TQRPDFFilter;
    qryEmendaG: TStringField;
    qryNOME: TStringField;
    qryTotalVer: TBCDField;
    qryReserva: TBCDField;
    qryOutros: TBCDField;
    DataSource1: TDataSource;
    QRGroup1: TQRGroup;
    qryVereador: TADOQuery;
    qryVereadorNOME: TStringField;
    qryVereadorValorTotal: TBCDField;
    qryVereadorReserva: TBCDField;
    qryVereadorOutros: TBCDField;
    PageHeaderBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRImage1: TQRImage;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    DataSource2: TDataSource;
    ColumnHeaderBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape3: TQRShape;
    QRShape1: TQRShape;
    QRBand1: TQRBand;
    QRShape5: TQRShape;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr26: TQRExpr;
    QRLabel5: TQRLabel;
    QRExpr25: TQRExpr;
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmendaspVerRel: TfrmEmendaspVerRel;

implementation

{$R *.dfm}

procedure TfrmEmendaspVerRel.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   qryVereador.Close;
   qryVereador.SQL.Clear;
   qryVereador.SQL.Add('   SELECT EG.VEREADOR,V.NOME,sum(EG.ValorTotal)as ValorTotal,sum(EG.Reserva)as Reserva ');
   qryVereador.SQL.Add(' ,sum(EG.Outros)as Outros FROM EMENDASGERAL EG LEFT OUTER JOIN VEREADORES V ON V.CODIGO = EG.VEREADOR ');
   qryVereador.SQL.Add(' where V.nome = :NOME  and not EG.status =''2'' ');
   qryVereador.SQL.Add(' group by  EG.VEREADOR,V.NOME ');
   qryVereador.SQL.Add(' ORDER by  V.NOME ');
   qryVereador.Parameters.ParamByName('NOME').Value := qryNOME.Value;
   qryVereador.ExecSQL;
   qryVereador.Open;
end;

end.
