unit GraficoFonte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DbChart,
  StdCtrls;

type
  TfrmGraficoFonte = class(TForm)
    DBChart1: TDBChart;
    Series1: TPieSeries;
    qryFonte: TADOQuery;
    qyParametro: TADOQuery;
    qyParametroprefeitura: TStringField;
    qyParametrobanco: TStringField;
    qyParametroexercicio: TIntegerField;
    qyParametroevolRec: TStringField;
    qyParametroevolDesp: TStringField;
    qyParametroAcesso: TStringField;
    qyParametroMenssagem: TMemoField;
    qyParametroVersao: TStringField;
    pn: TPanel;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraficoFonte: TfrmGraficoFonte;

implementation

uses data;

{$R *.dfm}

procedure TfrmGraficoFonte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmGraficoFonte := nil;
end;

procedure TfrmGraficoFonte.FormShow(Sender: TObject);
begin

   if qryFonte.Active = false then qryFonte.Open;
   if qyParametro.Active = false then qyParametro.Open;

   pn.Caption := 'LEI ORÇAMENTÁRIA - '+qyParametroexercicio.AsString;

end;

procedure TfrmGraficoFonte.Button1Click(Sender: TObject);
begin
   DBChart1.Print;
end;

end.
