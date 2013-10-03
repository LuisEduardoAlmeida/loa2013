unit OrgImpRelat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids, QRexport, dxCore, dxButton;

type
  TfrmOrgImpRelat = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Shape3: TShape;
    SpeedButton1: TSpeedButton;
    Shape4: TShape;
    Bevel2: TBevel;
    qry: TADOQuery;
    sQry: TDataSource;
    Shape6: TShape;
    RichEdit1: TRichEdit;
    ADOQuery1: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DataSource1: TDataSource;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    RgTipo_: TRadioGroup;
    Bevel1: TBevel;
    CkB_: TCheckListBox;
    btTodos: TdxButton;
    btTirar: TdxButton;
    ckSelecao: TCheckBox;
    qrycodigo: TStringField;
    qrydescricao: TStringField;
    qryorgaoS: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btTodosClick(Sender: TObject);
    procedure btTirarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CkB_Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CExportFilter : TQRCSVFilter;
    Lista_SQL : String;
    Procedure ListaOrgaos();
    Procedure Pesquisa(Parametro: String);
  end;

var
  frmOrgImpRelat: TfrmOrgImpRelat;
implementation

uses data, acaoList, orgSintFun, orgFonte, orgSintUnorc, orgCatDesp,
  orgNatDesp, unoSintFun, unoFonte, unoCatDesp, unoNatDesp, unoDet, unoQDD,
  main, UnoIndUsoFonte, UnoQDDTodos;

{$R *.dfm}

procedure TfrmOrgImpRelat.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmOrgImpRelat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmOrgImpRelat := nil;
end;

procedure TfrmOrgImpRelat.Button2Click(Sender: TObject);
Var
  i : integer;
begin
   // Application.CreateForm(TfrmOrgSintFun, frmOrgSintFun);
   If RgTipo_.ItemIndex = 0 then
      if application.messageBox('Deseja Realmete Visualizar Todos os Relatórios ?','Visualizar',
         MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   If RgTipo_.ItemIndex = 1 then
      if application.messageBox('Deseja Realmete Imprimir Todos os Relatórios ?','Impressão',
         MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   For i := 0 to CkB_.Count -1 do
   Begin
       If CkB_.Checked[i] Then
       Begin

          Pesquisa(Copy(CkB_.Items.Strings[i],1,5));

          Application.CreateForm(TfrmOrgSintFun, frmOrgSintFun);
          frmOrgSintFun.QRDBText2.DataSet := qry;
          frmOrgSintFun.QRDBText3.DataSet := qry;
          //frmOrgSintFun.QRDBText5.DataSet := qry;
          //frmOrgSintFun.QRDBText6.DataSet := qry;
          frmOrgSintFun.qryColUm.DataSource   := sQry;
          frmOrgSintFun.qryColDois.DataSource := sQry;
          frmOrgSintFun.qryColTres.DataSource := sQry;
          frmOrgSintFun.qryTot.DataSource     := sQry;


          If RgTipo_.ItemIndex = 0 then
             frmOrgSintFun.report.Preview
          else
             frmOrgSintFun.report.Print;

          frmOrgSintFun.Free;

          If ckSelecao.Checked then
          Begin
             CkB_.ItemIndex := i;
             CkB_.Checked[i] := false;
          End;


       End;
   End;

end;

procedure TfrmOrgImpRelat.Button4Click(Sender: TObject);
Var
  i : Integer;
begin
   If RgTipo_.ItemIndex = 0 then
      if application.messageBox('Deseja Realmete Visualizar Todos os Relatórios ?','Visualizar',
         MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   If RgTipo_.ItemIndex = 1 then
      if application.messageBox('Deseja Realmete Imprimir Todos os Relatórios ?','Impressão',
         MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   For i := 0 to CkB_.Count -1 do
   Begin
       If CkB_.Checked[i] Then
       Begin

          Pesquisa(Copy(CkB_.Items.Strings[i],1,5));

          Application.CreateForm(TfrmOrgFonte, frmOrgFonte);
          frmOrgFonte.qryTot.DataSource := sQry;
          frmOrgFonte.QRDBText19.DataSet := qry;
          frmOrgFonte.QRDBText20.DataSet := qry;
          //frmOrgFonte.QRDBText21.DataSet := qry;
          //frmOrgFonte.QRDBText22.DataSet := qry;

          If RgTipo_.ItemIndex = 0 then
             frmOrgFonte.report.Preview
          else
             frmOrgFonte.report.print;

          frmOrgFonte.free;

          If ckSelecao.Checked then
          Begin
             CkB_.ItemIndex := i;
             CkB_.Checked[i] := false;
          End;

       End;
   End;
end;

procedure TfrmOrgImpRelat.Button5Click(Sender: TObject);
Var
  i : integer;
begin

   If RgTipo_.ItemIndex = 0 then
      if application.messageBox('Deseja Realmete Visualizar Todos os Relatórios ?','Visualizar',
         MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   If RgTipo_.ItemIndex = 1 then
      if application.messageBox('Deseja Realmete Imprimir Todos os Relatórios ?','Impressão',
         MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   For i := 0 to CkB_.Count -1 do
   Begin
       If CkB_.Checked[i] Then
       Begin

          Pesquisa(Copy(CkB_.Items.Strings[i],1,5));
          Application.CreateForm(TfrmOrgCatDesp, frmOrgCatDesp);
          frmOrgCatDesp.qryCat.DataSource     := sQry;
          frmOrgCatDesp.QRDBText19.DataSet := qry;
          frmOrgCatDesp.QRDBText20.DataSet := qry;
          //frmOrgCatDesp.QRDBText4.DataSet  := qry;
          //frmOrgCatDesp.QRDBText5.DataSet  := qry;

          If RgTipo_.ItemIndex = 0 then
             frmOrgCatDesp.report.Preview
          else
             frmOrgCatDesp.report.print;

          frmOrgCatDesp.free;

          If ckSelecao.Checked then
          Begin
             CkB_.ItemIndex := i;
             CkB_.Checked[i] := false;
          End;


       End;
   End;

end;

procedure TfrmOrgImpRelat.Button6Click(Sender: TObject);
Var
  i : integer;
begin
   If RgTipo_.ItemIndex = 0 then
      if application.messageBox('Deseja Realmete Visualizar Todos os Relatórios ?','Visualizar',
         MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   If RgTipo_.ItemIndex = 1 then
      if application.messageBox('Deseja Realmete Imprimir Todos os Relatórios ?','Impressão',
         MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   For i := 0 to CkB_.Count -1 do
   Begin
       If CkB_.Checked[i] Then
       Begin

          Pesquisa(Copy(CkB_.Items.Strings[i],1,5));

          Application.CreateForm(TfrmOrgSintUnorc, frmOrgSintUnorc);

          // Application.CreateForm(TfrmUnoDet, frmUnoDet);
          // frmUnoDet.QRDBText4.DataSet   := qry;
          // rmUnoDet.QRDBText5.DataSet   := qry;
          
          frmOrgSintUnorc.QRDBText19.DataSet  := qry;
          frmOrgSintUnorc.QRDBText20.DataSet  := qry;
          frmOrgSintUnorc.qry.DataSource  := sQry;

          If RgTipo_.ItemIndex = 0 then
             frmOrgSintUnorc.report.Preview
          else
             frmOrgSintUnorc.report.print;

          frmOrgSintUnorc.free;

          If ckSelecao.Checked then
          Begin
             CkB_.ItemIndex := i;
             CkB_.Checked[i] := false;
          End;


       End;
   End;

end;

procedure TfrmOrgImpRelat.Button7Click(Sender: TObject);
Var
  i : integer;
begin
   If RgTipo_.ItemIndex = 0 then
      if application.messageBox('Deseja Realmete Visualizar Todos os Relatórios ?','Visualizar',
         MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   If RgTipo_.ItemIndex = 1 then
      if application.messageBox('Deseja Realmete Imprimir Todos os Relatórios ?','Impressão',
         MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   For i := 0 to CkB_.Count -1 do
   Begin
       If CkB_.Checked[i] Then
       Begin

          Pesquisa(Copy(CkB_.Items.Strings[i],1,5));
          Application.CreateForm(TfrmOrgNatDesp, frmOrgNatDesp);

          //Application.CreateForm(TfrmUnoQDD, frmUnoQDD);

          frmOrgNatDesp.QRDBText19.DataSet  := qry;
          frmOrgNatDesp.QRDBText20.DataSet  := qry;

          //frmUnoQDD.QRDBText4.DataSet   := qry;
          //frmUnoQDD.QRDBText5.DataSet   := qry;

          frmOrgNatDesp.qryCat.DataSource := sQry;

          If RgTipo_.ItemIndex = 0 then
             frmOrgNatDesp.report.Preview
          else
             frmOrgNatDesp.report.print;

          frmOrgNatDesp.Free;

          If ckSelecao.Checked then
          Begin
             CkB_.ItemIndex := i;
             CkB_.Checked[i] := false;
          End;


       End;
   End;

end;

procedure TfrmOrgImpRelat.ListaOrgaos;
begin
   qry.Close;
   qry.open;
   qry.First;

   while not qry.Eof do
   Begin
      CkB_.Items.Add(qryorgaoS.Value +' - '+qrydescricao.Value);
      qry.Next;
   End;
end;

procedure TfrmOrgImpRelat.FormCreate(Sender: TObject);
begin

   If sQry.State in [dsinactive] then qry.Open;
   Lista_SQL := qry.SQL.Text;

                               
   ListaOrgaos;
end;

procedure TfrmOrgImpRelat.Pesquisa(Parametro: String);
Var
  Lista : String;
begin
   Lista := 'SELECT *,orgaoS = codigo + ''000'''+ 'FROM orgao';
   qry.Close;
   qry.SQL.Clear;
   qry.SQL.Add(Lista);
   qry.SQL.Add('Where codigo + ''000'''+' = :Param');
   qry.Parameters.ParamByName('Param').Value := Parametro;
   qry.SQL.Add('ORDER BY codigo');
   qry.ExecSQL;
   qry.Open;
end;

procedure TfrmOrgImpRelat.btTodosClick(Sender: TObject);
Var
  I : integer;
begin
    For i := 0 to CkB_.Count - 1 do
        CkB_.Checked[i] := True;

end;

procedure TfrmOrgImpRelat.btTirarClick(Sender: TObject);
Var
 i : integer;
begin
    For i := 0 to CkB_.Count - 1 do
        CkB_.Checked[i] := False;
end;

procedure TfrmOrgImpRelat.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If key = #13 Then
   Begin
      Perform(WM_NEXTDLGCTL,0,0);
      key := #0;
   End;
end;

procedure TfrmOrgImpRelat.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If key = vk_F2 Then
      btTodos.OnClick(nil);
   If key = vk_F3 Then
      btTirar.OnClick(nil);
end;

procedure TfrmOrgImpRelat.CkB_Click(Sender: TObject);
Var
  i : integer;
begin
    If CkB_.Checked[CkB_.ItemIndex] then
    Begin
       //CkB_.Checked[CkB_.ItemIndex]
    End;

end;

end.
