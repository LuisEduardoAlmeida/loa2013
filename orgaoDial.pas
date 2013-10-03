unit orgaoDial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids;

type
  TfrmOrgaoDial = class(TForm)
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
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    qrycodigo: TStringField;
    qrydescricao: TStringField;
    qryorgaoS: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrgaoDial: TfrmOrgaoDial;
implementation

uses data, acaoList, orgSintFun, orgFonte, orgSintUnorc, orgCatDesp,
  orgNatDesp;

{$R *.dfm}

procedure TfrmOrgaoDial.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmOrgaoDial.btnPrintClick(Sender: TObject);
var i, selecteds : integer;
begin
  selecteds := 0;
  with chkRelato do begin
     for i := 0 to (count - 1) do begin
       if checked[i] then selecteds := selecteds + 1;
     end;
     for i := 0 to (count - 1) do begin
        if (checked[i]) AND (items[i] = 'Quadro Síntese - Função, SubFunção e Programa') then begin
           Application.CreateForm(TfrmOrgSintFun, frmOrgSintFun);
           if selecteds > 1 then frmOrgSintFun.report.print
           else frmOrgSintFun.report.preview;
           frmOrgSintFun.free;
        end;

        if (checked[i]) AND (items[i] = 'Total por Fonte/Grupo de Despesas') then begin
           Application.CreateForm(TfrmOrgFonte, frmOrgFonte);
           if selecteds > 1 then frmOrgFonte.report.print
           else frmOrgFonte.report.preview;
           frmOrgFonte.free;
        end;

        if (checked[i]) AND (items[i] = 'Síntese por Unidade Orçamentária') then begin
           Application.CreateForm(TfrmOrgSintUnorc, frmOrgSintUnorc);
           if selecteds > 1 then frmOrgSintUnorc.report.print
           else frmOrgSintUnorc.report.preview;
           frmOrgSintUnorc.free;
        end;

        if (checked[i]) AND (items[i] = 'Demonstrativo da Despesa por Categoria Econômica e Grupo de Despesas') then begin
           Application.CreateForm(TfrmOrgCatDesp, frmOrgCatDesp);
           if selecteds > 1 then frmOrgCatDesp.report.print
           else frmOrgCatDesp.report.preview;
           frmOrgCatDesp.free;
        end;

        if (checked[i]) AND (items[i] = 'Natureza da Despesa') then begin
           Application.CreateForm(TfrmOrgNatDesp, frmOrgNatDesp);
           if selecteds > 1 then frmOrgNatDesp.report.print
           else frmOrgNatDesp.report.preview;
           frmOrgNatDesp.free;
        end;

     end;
  end;
end;

procedure TfrmOrgaoDial.Button1Click(Sender: TObject);
begin
   qry.First;
   while not qry.Eof do
   Begin
      Application.CreateForm(TfrmOrgSintFun, frmOrgSintFun);
      frmOrgSintFun.report.print;
      qry.Next;
   End;

end;

procedure TfrmOrgaoDial.Button2Click(Sender: TObject);
begin
   qry.First;
   while not qry.Eof do
   Begin
       Application.CreateForm(TfrmOrgFonte, frmOrgFonte);
       frmOrgFonte.report.print;
       qry.Next;
   End;

end;

procedure TfrmOrgaoDial.Button3Click(Sender: TObject);
begin
   qry.First;
   while not qry.Eof do
   Begin
      Application.CreateForm(TfrmOrgSintUnorc, frmOrgSintUnorc);
      frmOrgSintUnorc.report.print;
      qry.Next;
   End;

end;

procedure TfrmOrgaoDial.Button4Click(Sender: TObject);
begin
   qry.First;
   while not qry.Eof do
   Begin
      Application.CreateForm(TfrmOrgCatDesp, frmOrgCatDesp);
      frmOrgCatDesp.report.print;
      qry.Next;
   End;

end;

procedure TfrmOrgaoDial.Button5Click(Sender: TObject);
begin
   qry.First;
   while not qry.Eof do
   Begin
      Application.CreateForm(TfrmOrgNatDesp, frmOrgNatDesp);
      frmOrgNatDesp.report.print;
      qry.Next;
   End;

end;

end.
