unit U_RelConsol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB;

type
  TFrmRelConsul = class(TForm)
    report: TQuickRep;
    QRGroup1: TQRGroup;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    qryConsol: TADOQuery;
    QRDBText4: TQRDBText;
    footerBand: TQRBand;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    qrySoma: TADOQuery;
    dsConsol: TDataSource;
    qrySomaCOLUMN1: TBCDField;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    qryConsolunorc: TStringField;
    qryConsolunorcd: TStringField;
    qryConsoldescricao: TStringField;
    qryConsolOP: TStringField;
    qryConsolCOLUMN1: TBCDField;
    ColumnHeaderBand1: TQRBand;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelConsul: TFrmRelConsul;

implementation

uses data;

{$R *.dfm}

procedure TFrmRelConsul.FormActivate(Sender: TObject);
begin
{   IF ADOQuery1.RecordCount = 0 THEN
   QRLabel8.Caption := 'LISTA SEM VALORES';
{    ADOQuery1.Open;
    ADOQuery2.Open;}
end;

end.
