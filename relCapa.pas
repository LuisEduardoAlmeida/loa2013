unit relCapa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, QRPDFFilter, ADODB;

type
  TfrmRelCapa = class(TForm)
    report: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    lblExecFin: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    qyLei_: TADOQuery;
    qyExercicio_: TADOQuery;
    qyLei_Tipo: TStringField;
    qyLei_Titulo: TStringField;
    qyLei_Titular: TStringField;
    qyLei_Tam: TStringField;
    qyLei_Negrito: TStringField;
    qyExercicio_Tipo: TStringField;
    qyExercicio_Titulo: TStringField;
    qyExercicio_Titular: TStringField;
    qyExercicio_tam: TStringField;
    qyExercicio_Negrito: TStringField;
    qyLei_LEI: TStringField;
    qyLei_SUPLEMENTO: TStringField;
    LBLEI: TQRLabel;
    LBSUPLEMENTO: TQRLabel;
    qyExercicio_LEI: TStringField;
    qyExercicio_SUPLEMENTO: TStringField;
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCapa: TfrmRelCapa;

implementation

uses main, PrincipalFolha;

{$R *.DFM}

procedure TfrmRelCapa.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lblExecFin.caption := 'Exercício Financeiro de '+qyExercicio_['Titular'];
  LBLEI.Caption        := qyExercicio_LEI.AsString;
  LBSUPLEMENTO.Caption := qyExercicio_SUPLEMENTO.AsString;
end;

end.
