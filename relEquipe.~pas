unit relEquipe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, QRPDFFilter, ADODB;

type
  TfrmRelEquipe = class(TForm)
    report: TQuickRep;
    detail: TQRBand;
    entidade: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    qyEquipe_: TADOQuery;
    qyEquipe_Tipo: TStringField;
    qyEquipe_Titulo: TStringField;
    qyEquipe_Titular: TStringField;
    qyEquipe_tam: TStringField;
    qyEquipe_Negrito: TStringField;
    procedure detailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEquipe: TfrmRelEquipe;

implementation

uses main, PrincipalFolha;

{$R *.DFM}

procedure TfrmRelEquipe.detailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  entidade.font.style := [];
  entidade.font.size := 11;
  with qyEquipe_ do begin
     if fieldByName('negrito').asBoolean then begin
        entidade.font.style := [fsBold];
     end;
     if fieldByName('tam').asBoolean then begin
        entidade.font.size := 12;
     end;
  end;
end;

end.
