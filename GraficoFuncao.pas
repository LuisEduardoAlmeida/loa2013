unit GraficoFuncao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, DB, ADODB, ExtCtrls, TeeProcs, Chart, DbChart,
  StdCtrls;

type
  TfrmGraficoFuncao = class(TForm)
    DBChart1: TDBChart;
    qryFuncao: TADOQuery;
    Series1: TPieSeries;
    pn: TPanel;
    Button1: TButton;
    qyParametro: TADOQuery;
    qyParametroprefeitura: TStringField;
    qyParametrobanco: TStringField;
    qyParametroexercicio: TIntegerField;
    qyParametroevolRec: TStringField;
    qyParametroevolDesp: TStringField;
    qyParametroAcesso: TStringField;
    qyParametroMenssagem: TMemoField;
    qyParametroVersao: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraficoFuncao: TfrmGraficoFuncao;

implementation

uses data;

{$R *.dfm}

procedure TfrmGraficoFuncao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmGraficoFuncao := nil;

end;

procedure TfrmGraficoFuncao.FormShow(Sender: TObject);
begin
   if qryFuncao.Active = false   then qryFuncao.Open;
   if qyParametro.Active = false then qyParametro.Open;

   pn.Caption := 'LEI ORÇAMENTÁRIA - '+qyParametroexercicio.AsString;
end;

procedure TfrmGraficoFuncao.Button1Click(Sender: TObject);
begin
   DBChart1.Print;
end;

end.
