unit UnoDialGerRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids, QRexport;

type
  TfrmUnoDialGerRel = class(TForm)
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
    Button1: TButton;
    Button3: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CExportFilter : TQRCSVFilter;
  end;

var
  frmUnoDialGerRel: TfrmUnoDialGerRel;
implementation

uses data, acaoList, orgSintFun, orgFonte, orgSintUnorc, orgCatDesp,
  orgNatDesp, unoSintFun, unoFonte, unoCatDesp, unoNatDesp, unoDet, unoQDD,
  main, UnoIndUsoFonte, UnoQDDTodos, UnoQDDGerRel;

{$R *.dfm}

procedure TfrmUnoDialGerRel.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmUnoDialGerRel.btnPrintClick(Sender: TObject);
var i, selecteds : integer;
begin
  selecteds := 0;
  with chkRelato do begin
     for i := 0 to (count - 1) do begin
       if checked[i] then selecteds := selecteds + 1;
     end;
     for i := 0 to (count - 1) do begin
        {if (checked[i]) AND (items[i] = 'Quadro Síntese - Função, SubFunção e Programa') then begin
           Application.CreateForm(TfrmUnoSintFun, frmUnoSintFun);
           if selecteds > 1 then frmUnoSintFun.report.print
           else frmUnoSintFun.report.preview;
           frmUnoSintFun.free;
        end;

        if (checked[i]) AND (items[i] = 'Total por Fonte/Grupo de Despesas') then
        begin

           if frmMain.IndUso = 'N' then
           begin
               Application.CreateForm(TfrmUnoFonte, frmUnoFonte);
               if selecteds > 1 then frmUnoFonte.report.print
               else frmUnoFonte.report.preview;
               frmUnoFonte.free;
           end;

           if frmMain.IndUso = 'S' then
           begin
               Application.CreateForm(TfrmUnoIndUsoFonte, frmUnoIndUsoFonte);
               if selecteds > 1 then frmUnoIndUsoFonte.print
               else frmUnoIndUsoFonte.preview;
               frmUnoIndUsoFonte.free;
           end;
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
        }
        if (checked[i]) AND (items[i] = 'Quadro de Detalhamento da Despesa') then begin
           //if frmunoqdd =nil then frmUnoQDD := TfrmUnoQDD.Create(self);
           Application.CreateForm(TfrmUnoQDDGerRel, frmUnoQDDGerRel);
           if selecteds > 1 then frmUnoQDDGerRel.report.print
           else frmUnoQDDGerRel.report.preview;
           //frmUnoQDD.report.ExportToFilter(TQRXLSFilter.Create('c:\teste.xls'));

           ///////////////////////////////
            //CExportFilter := TQRCommaSeparatedFilter.Create('c:\qdd.csv');


          {  try
                frmUnoQDD.report.ExportToFilter(TQRCommaSeparatedFilter.Create(Application.ExeName 'c:\qdd.csv'));
            finally
                CExportFilter.Free;
            end;}


           ///////////////////////////////

           frmUnoQDDGerRel.free;
        end;

     end;
  end;
end;


procedure TfrmUnoDialGerRel.Button1Click(Sender: TObject);

begin
   qry.First;
   while not qry.Eof do
   begin
      //if frmunoqdd =nil then frmUnoQDD := TfrmUnoQDD.Create(self);
      Application.CreateForm(TfrmUnoQDD, frmUnoQDD);
      frmUnoQDD.report.Print;
      frmUnoQDD.free;
      qry.Next;
   end;

end;

procedure TfrmUnoDialGerRel.Button3Click(Sender: TObject);
begin
   qry.First;
   while not qry.Eof do
   begin
      //if frmunoqdd =nil then frmUnoQDD := TfrmUnoQDD.Create(self);
      //Application.CreateForm(TfrmUnoQDD, frmUnoQDD);
      //frmUnoQDD.report.Print;
      //frmUnoQDD.free;
      Application.CreateForm(TfrmUnoDet, frmUnoDet);
      frmUnoDet.report.Print;
      frmUnoDet.free;
      qry.Next;
   end;
end;

end.
