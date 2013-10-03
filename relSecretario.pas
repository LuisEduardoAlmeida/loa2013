unit relSecretario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, QRPDFFilter, ADODB;

type
  TfrmRelSecretario = class(TForm)
    report: TQuickRep;
    PageHeaderBand1: TQRBand;
    PageHeaderBand2: TQRBand;
    QRLabel4: TQRLabel;
    entidade: TQRDBText;
    titular: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    qySecretario_: TADOQuery;
    qySecretario_Tipo: TStringField;
    qySecretario_Titulo: TStringField;
    qySecretario_Titular: TStringField;
    qySecretario_tam: TStringField;
    qySecretario_Negrito: TStringField;
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelSecretario: TfrmRelSecretario;

implementation

uses main, PrincipalFolha;

{$R *.DFM}

procedure TfrmRelSecretario.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  entidade.font.style := [];
  titular.font.style := [];
  entidade.font.size := 11;
  titular.font.size := 11;
  with qySecretario_ do begin
     if fieldByName('negrito').asBoolean then begin
        entidade.font.style := [fsBold];
        titular.font.style := [fsBold];
     end;
     if fieldByName('tam').asBoolean then begin
        entidade.font.size := 12;
        titular.font.size := 12;
     end;
  end;
end;

end.
