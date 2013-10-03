unit UnoDialGer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids;

type
  TfrmUnoDialGer = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Shape3: TShape;
    SpeedButton1: TSpeedButton;
    Shape4: TShape;
    btnPrint: TSpeedButton;
    Bevel2: TBevel;
    DBGrid: TDBGrid;
    qry: TADOQuery;
    sQry: TDataSource;
    chkRelato: TCheckListBox;
    Shape6: TShape;
    RichEdit1: TRichEdit;
    Shape5: TShape;
    qrycodigo: TStringField;
    qrydescricao: TStringField;
    qryorgaoS: TStringField;
    qryorgaoD: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnoDialGer: TfrmUnoDialGer;
implementation

uses data, acaoList, orgSintFun, orgFonte, orgSintUnorc, orgCatDesp,
  orgNatDesp, unoSintFun, unoFonte, unoCatDesp, unoNatDesp, unoDet, unoQDD,
  UnoFonteGer;

{$R *.dfm}

procedure TfrmUnoDialGer.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmUnoDialGer.btnPrintClick(Sender: TObject);
var i, selecteds : integer;
begin
  selecteds := 0;
  with chkRelato do begin
     for i := 0 to (count - 1) do begin
       if checked[i] then selecteds := selecteds + 1;
     end;
     for i := 0 to (count - 1) do begin
        if (checked[i]) AND (items[i] = 'Quadro Síntese - Função, SubFunção e Programa') then begin
           Application.CreateForm(TfrmUnoSintFun, frmUnoSintFun);
           if selecteds > 1 then frmUnoSintFun.report.print
           else frmUnoSintFun.report.preview;
           frmUnoSintFun.free;
        end;

        if (checked[i]) AND (items[i] = 'Total por Fonte/Grupo de Despesas') then begin
           Application.CreateForm(TfrmUnoFonteGer, frmUnoFonteGer);
           if selecteds > 1 then frmUnoFonteGer.report.print
           else frmUnoFonteGer.report.preview;
           frmUnoFonteGer.free;
        end;

        if (checked[i]) AND (items[i] = 'Demonstrativo da Despesa por Categoria Econômica e Grupo de Despesas') then begin
           Application.CreateForm(TfrmUnoCatDesp, frmUnoCatDesp);
           if selecteds > 1 then frmUnoCatDesp.report.print
           else frmUnoCatDesp.report.preview;
           frmUnoCatDesp.free;
        end;

        if (checked[i]) AND (items[i] = 'Natureza da Despesa') then begin
           Application.CreateForm(TfrmUnoNatDesp, frmUnoNatDesp);
           if selecteds > 1 then frmUnoNatDesp.report.print
           else frmUnoNatDesp.report.preview;
           frmUnoNatDesp.free;
        end;

        if (checked[i]) AND (items[i] = 'Detalhamento das Ações') then begin
           Application.CreateForm(TfrmUnoDet, frmUnoDet);
           if selecteds > 1 then frmUnoDet.report.print
           else frmUnoDet.report.preview;
           frmUnoDet.free;
        end;

        if (checked[i]) AND (items[i] = 'Quadro de Detalhamento da Despesa') then begin
           //if frmunoqdd =nil then frmUnoQDD := TfrmUnoQDD.Create(self);
           Application.CreateForm(TfrmUnoQDD, frmUnoQDD);
           if selecteds > 1 then frmUnoQDD.report.print
           else frmUnoQDD.report.preview;
           frmUnoQDD.free;
        end;

     end;
  end;
end;

end.
