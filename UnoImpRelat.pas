unit UnoImpRelat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables, Grids, DBGrids, QRexport, dxCore, dxButton, QuickRpt;

type
  TfrmUnoImpRelat = class(TForm)
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
    qrycodigo: TStringField;
    qrydescricao: TStringField;
    qryorgaoS: TStringField;
    qryorgaoD: TStringField;
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
    RgTipo_: TRadioGroup;
    Bevel1: TBevel;
    CkB_: TCheckListBox;
    btTodos: TdxButton;
    btTirar: TdxButton;
    ckSelecao: TCheckBox;
    Button7: TButton;
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
  frmUnoImpRelat: TfrmUnoImpRelat;
implementation

uses data, acaoList, orgSintFun, orgFonte, orgSintUnorc, orgCatDesp,
  orgNatDesp, unoSintFun, unoFonte, unoCatDesp, unoNatDesp, unoQDD,
  main, UnoIndUsoFonte, UnoQDDTodos, unoDetAcoes, unoDet;

{$R *.dfm}

procedure TfrmUnoImpRelat.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmUnoImpRelat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmUnoImpRelat := nil;
end;

procedure TfrmUnoImpRelat.Button2Click(Sender: TObject);
Var
  i ,c : integer;
  todos : string;
begin
   For c := 0 to CkB_.Count -1 do
   Begin
       If CkB_.Checked[c] Then
           todos := 'Sim'
       else
       begin
           todos := 'Nao';
       //    Abort;
       end;

   end;
   if Todos= 'Sim' then
   begin
      If RgTipo_.ItemIndex = 0 then
         if application.messageBox('Deseja Realmete Visualizar Todos os Relatórios ?','Visualizar',
            MB_ICONQUESTION+MB_YESNO) = IDno then Exit;
      If RgTipo_.ItemIndex = 1 then
         if application.messageBox('Deseja Realmete Imprimir Todos os Relatórios ?','Impressão',
            MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   end;
   For i := 0 to CkB_.Count -1 do
   Begin
       If CkB_.Checked[i] Then
       Begin

          Pesquisa(Copy(CkB_.Items.Strings[i],1,5));

          Application.CreateForm(TfrmUnoSintFun, frmUnoSintFun);
          frmUnoSintFun.QRDBText2.DataSet := qry;
          frmUnoSintFun.QRDBText3.DataSet := qry;
          frmUnoSintFun.QRDBText5.DataSet := qry;
          frmUnoSintFun.QRDBText6.DataSet := qry;
          frmUnoSintFun.qryColUm.DataSource   := sQry;
          frmUnoSintFun.qryColDois.DataSource := sQry;
          frmUnoSintFun.qryColTres.DataSource := sQry;
          frmUnoSintFun.qryTot.DataSource     := sQry;

 
          If RgTipo_.ItemIndex = 0 then
             frmUnoSintFun.report.Preview
          else
             frmUnoSintFun.report.Print;

          frmUnoSintFun.Free;

          If ckSelecao.Checked then
          Begin
             CkB_.ItemIndex := i;
             CkB_.Checked[i] := false;
          End;


       End;
   End;

end;

procedure TfrmUnoImpRelat.Button4Click(Sender: TObject);
Var
  i,c : integer;
  todos : string;
begin
   For c := 0 to CkB_.Count -1 do
   Begin
       If CkB_.Checked[c] Then todos := 'Sim'
       else
       begin
           todos := 'Nao';

       end;

   end;
   if Todos= 'Sim' then
   begin
      If RgTipo_.ItemIndex = 0 then
         if application.messageBox('Deseja Realmete Visualizar Todos os Relatórios ?','Visualizar',
            MB_ICONQUESTION+MB_YESNO) = IDno then Exit;
      If RgTipo_.ItemIndex = 1 then
         if application.messageBox('Deseja Realmete Imprimir Todos os Relatórios ?','Impressão',
            MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   end;
   For i := 0 to CkB_.Count -1 do
   Begin
       If CkB_.Checked[i] Then
       Begin

          Pesquisa(Copy(CkB_.Items.Strings[i],1,5));

          Application.CreateForm(TfrmUnoFonte, frmUnoFonte);
          frmUnoFonte.qryTot.DataSource := sQry;
          frmUnoFonte.QRDBText19.DataSet := qry;
          frmUnoFonte.QRDBText20.DataSet := qry;
          frmUnoFonte.QRDBText21.DataSet := qry;
          frmUnoFonte.QRDBText22.DataSet := qry;
          frmUnoFonte.pulapage := false;
          If RgTipo_.ItemIndex = 0 then
             frmUnoFonte.report.Preview
          else
             frmUnoFonte.report.print;

          frmUnoFonte.free;

          If ckSelecao.Checked then
          Begin
             CkB_.ItemIndex := i;
             CkB_.Checked[i] := false;
          End;

       End;
   End;
end;

procedure TfrmUnoImpRelat.Button5Click(Sender: TObject);
Var
  i ,c : integer;
  todos : string;
begin
   For c := 0 to CkB_.Count -1 do
   Begin
       If CkB_.Checked[c] Then todos := 'Sim'
       else
       begin
           todos := 'Nao';

       end;

   end;
   if Todos= 'Sim' then
   begin
      If RgTipo_.ItemIndex = 0 then
         if application.messageBox('Deseja Realmete Visualizar Todos os Relatórios ?','Visualizar',
            MB_ICONQUESTION+MB_YESNO) = IDno then Exit;
      If RgTipo_.ItemIndex = 1 then
         if application.messageBox('Deseja Realmete Imprimir Todos os Relatórios ?','Impressão',
            MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   end;
   For i := 0 to CkB_.Count -1 do
   Begin
       If CkB_.Checked[i] Then
       Begin

          Pesquisa(Copy(CkB_.Items.Strings[i],1,5));

          Application.CreateForm(TfrmUnoCatDesp, frmUnoCatDesp);
          frmUnoCatDesp.qryCat.DataSource     := sQry;
          frmUnoCatDesp.QRDBText19.DataSet := qry;
          frmUnoCatDesp.QRDBText20.DataSet := qry;
          frmUnoCatDesp.QRDBText4.DataSet  := qry;
          frmUnoCatDesp.QRDBText5.DataSet  := qry;
          frmUnoCatDesp.pulapage := false;
          If RgTipo_.ItemIndex = 0 then
             frmUnoCatDesp.report.Preview
          else
             frmUnoCatDesp.report.print;

          frmUnoCatDesp.free;

          If ckSelecao.Checked then
          Begin
             CkB_.ItemIndex := i;
             CkB_.Checked[i] := false;
          End;


       End;
   End;

end;

procedure TfrmUnoImpRelat.Button6Click(Sender: TObject);
Var
  i ,c : integer;
  todos : string;
begin
   For c := 0 to CkB_.Count -1 do
   Begin
       If CkB_.Checked[c] Then todos := 'Sim'
       else
       begin
           todos := 'Nao';

       end;

   end;
   if Todos= 'Sim' then
   begin
      If RgTipo_.ItemIndex = 0 then
         if application.messageBox('Deseja Realmete Visualizar Todos os Relatórios ?','Visualizar',
            MB_ICONQUESTION+MB_YESNO) = IDno then Exit;
      If RgTipo_.ItemIndex = 1 then
         if application.messageBox('Deseja Realmete Imprimir Todos os Relatórios ?','Impressão',
            MB_ICONQUESTION+MB_YESNO) = IDno then Exit;

   end;
   For i := 0 to CkB_.Count -1 do
   Begin
       If CkB_.Checked[i] Then
       Begin

          Pesquisa(Copy(CkB_.Items.Strings[i],1,5));

          Application.CreateForm(TfrmUnoDetAcoes, frmUnoDetAcoes);
          frmUnoDetAcoes.QRDBText19.DataSet  := qry;
          frmUnoDetAcoes.QRDBText20.DataSet  := qry;
          frmUnoDetAcoes.QRDBText4.DataSet   := qry;
          frmUnoDetAcoes.QRDBText5.DataSet   := qry;
          frmUnoDetAcoes.qryProg.DataSource  := sQry;
          frmUnoDetAcoes.pulapage := false;
          frmUnoDetAcoes.TitleBand1.Enabled  := False;
          If RgTipo_.ItemIndex = 0 then
             frmUnoDetAcoes.report.Preview
          else
             frmUnoDetAcoes.report.print;

          frmUnoDet.free;

          If ckSelecao.Checked then
          Begin
             CkB_.ItemIndex := i;
             CkB_.Checked[i] := false;
          End;


       End;
   End;

end;

procedure TfrmUnoImpRelat.Button7Click(Sender: TObject);
Var   i : integer;
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

          Application.CreateForm(TfrmUnoQDD, frmUnoQDD);
          frmUnoQDD.QRDBText19.DataSet  := qry;
          frmUnoQDD.QRDBText20.DataSet  := qry;
          frmUnoQDD.QRDBText4.DataSet   := qry;
          frmUnoQDD.QRDBText5.DataSet   := qry;
          frmUnoQDD.qryEsfera.DataSource := sQry;
          frmUnoQDD.pulapage := false;
          If RgTipo_.ItemIndex = 0 then
             frmUnoQDD.report.Preview
          else
             frmUnoQDD.report.print;

          frmUnoQDD.Free;

          If ckSelecao.Checked then
          Begin
             CkB_.ItemIndex := i;
             CkB_.Checked[i] := false;
          End;

       End;
   End;

end;

procedure TfrmUnoImpRelat.ListaOrgaos;
begin
   qry.Close;
   qry.open;
   qry.First;

   while not qry.Eof do
   Begin
      CkB_.Items.Add(qrycodigo.Value +' - '+qrydescricao.Value);
      qry.Next;
   End;
end;

procedure TfrmUnoImpRelat.FormCreate(Sender: TObject);
begin
   If sQry.State in [dsinactive] then qry.Open;
   Lista_SQL := qry.SQL.Text;
   ListaOrgaos;
end;

procedure TfrmUnoImpRelat.Pesquisa(Parametro: String);
begin
   qry.Close;
   qry.SQL.Clear;
   qry.SQL.Add(Lista_SQL);
   qry.SQL.Add('Where U.Codigo = :Param');
   qry.Parameters.ParamByName('Param').Value := Parametro;
   qry.ExecSQL;
   qry.Open;
end;

procedure TfrmUnoImpRelat.btTodosClick(Sender: TObject);
Var
  I : integer;
begin
    For i := 0 to CkB_.Count - 1 do
        CkB_.Checked[i] := True;

end;

procedure TfrmUnoImpRelat.btTirarClick(Sender: TObject);
Var
 i : integer;
begin
    For i := 0 to CkB_.Count - 1 do
        CkB_.Checked[i] := False;
end;

procedure TfrmUnoImpRelat.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If key = #13 Then
   Begin
      Perform(WM_NEXTDLGCTL,0,0);
      key := #0;
   End;
end;

procedure TfrmUnoImpRelat.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If key = vk_F2 Then
      btTodos.OnClick(nil);
   If key = vk_F3 Then
      btTirar.OnClick(nil);
end;

procedure TfrmUnoImpRelat.CkB_Click(Sender: TObject);
Var
  i : integer;
begin
    If CkB_.Checked[CkB_.ItemIndex] then
    Begin
       //CkB_.Checked[CkB_.ItemIndex]
    End;

end;

end.
