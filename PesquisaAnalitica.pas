unit PesquisaAnalitica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, DB, ADODB, Grids, DBGrids,
  ExtCtrls, dxCore, dxButton, Buttons,Clipbrd;

type
  TfrmPesqAnalitica = class(TForm)
    DBGrid1: TDBGrid;
    lbValorElemento: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Shape3: TShape;
    btnFechar: TSpeedButton;
    Bevel3: TBevel;
    qyExcl_: TADOQuery;
    dsExcl_: TDataSource;
    qy_: TADOQuery;
    qy_TOTAL_ELEMENTO: TBCDField;
    qyLocalizacao_: TADOQuery;
    qyLocalizacao_Codigo: TAutoIncField;
    qyLocalizacao_locali: TIntegerField;
    qyLocalizacao_elDespesa: TStringField;
    qyLocalizacao_indUso: TStringField;
    qyLocalizacao_fonte: TStringField;
    qyLocalizacao_valor: TBCDField;
    qyExecOrc_: TADOQuery;
    dsExecOrc_: TDataSource;
    qyExcl_Eldespesa: TStringField;
    qyExcl_Fonte: TStringField;
    qyExcl_IU: TStringField;
    qyExcl_Unorc: TStringField;
    qyExcl_Unorcd: TStringField;
    qyExcl_Funcao: TStringField;
    qyExcl_Subfuncao: TStringField;
    qyExcl_Prog: TStringField;
    qyExcl_Acao: TStringField;
    qyExcl_Localis: TStringField;
    qyExcl_locali: TIntegerField;
    qyExcl_Descricao: TStringField;
    qyExcl_Valor: TBCDField;
    qyExecOrc_Eldespesa: TStringField;
    qyExecOrc_Fonte: TStringField;
    qyExecOrc_IU: TStringField;
    qyExecOrc_Unorc: TStringField;
    qyExecOrc_Unorcd: TStringField;
    qyExecOrc_Funcao: TStringField;
    qyExecOrc_SubFuncao: TStringField;
    qyExecOrc_Prog: TStringField;
    qyExecOrc_Acao: TStringField;
    qyExecOrc_Localis: TStringField;
    qyExecOrc_locali: TIntegerField;
    qyExecOrc_Descricao: TStringField;
    qyExecOrc_Valor: TBCDField;
    Shape1: TShape;
    Shape2: TShape;
    btPesquisa: TdxButton;
    btRenovar: TdxButton;
    btImprimir: TdxButton;
    dxButton1: TdxButton;
    Label5: TLabel;
    edUnorc: TEdit;
    Label7: TLabel;
    edprograma: TEdit;
    Label1: TLabel;
    edElemento: TEdit;
    Label10: TLabel;
    edDesc: TEdit;
    edacao: TEdit;
    Label6: TLabel;
    Label4: TLabel;
    edIndUso: TEdit;
    Label3: TLabel;
    edFonte: TEdit;
    Label8: TLabel;
    edFuncao: TEdit;
    Label9: TLabel;
    edSubFuncao: TEdit;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnFecharClick(Sender: TObject);
    procedure edElementoKeyPress(Sender: TObject; var Key: Char);
    procedure edUnorcKeyPress(Sender: TObject; var Key: Char);
    procedure edIndUsoKeyPress(Sender: TObject; var Key: Char);
    procedure btPesquisaClick(Sender: TObject);
    procedure btRenovarClick(Sender: TObject);
    procedure edUnorcKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
    procedure FullDBGridToClipBoard(DBGrid :TDBGrid; PastHeader :Boolean);
    procedure SelDBGridToClipBoard(DBGrid :TDBGrid; PastHeader :Boolean);
    procedure dxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    


  private
    { Private declarations }
  public
    { Public declarations }
    Status : String;
    Pesq : String;
    Procedure TotaisElemento();
    Procedure Revona();
  end;

var
  frmPesqAnalitica: TfrmPesqAnalitica;

implementation

uses data, ListaOrgaos, HWarning, SelRelatorio;

{$R *.dfm}


procedure TfrmPesqAnalitica.FormCreate(Sender: TObject);
begin
   if dsExecOrc_.State in [dsinactive] then qyExecOrc_.Open;
   Pesq   := 'n';
   Status := 'n';
end;

procedure TfrmPesqAnalitica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qyExecOrc_.Active := False;
   Action    := caFree;
   frmPesqAnalitica := nil;
end;

procedure TfrmPesqAnalitica.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL,0,0);
      key :=#0;
   end;
   if Key = #119 then
   BEGIN
       qyExecOrc_.Active := False;
       qyExecOrc_.Close;
       qyExecOrc_.SQL.Clear;
       qyExecOrc_.SQL.Add(' SELECT Eldespesa, Fonte, IndUso as IU, Unorc, Unorcd,Funcao,Subfuncao, ');
       qyExecOrc_.SQL.Add(' Programa as Prog, Acao, Localis,locali, Descricao, Valor');
       qyExecOrc_.SQL.Add(' FROM ORCAMENTO');
       qyExecOrc_.SQL.Add(' where codigo is not null');

       if Trim(edElemento.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and ELDESPESA = :ELDESPESA');   // Elemento de Despesa
          qyExecOrc_.Parameters.ParamByName('ELDESPESA').Value := edElemento.Text;
       End;


       if Trim(edUnorc.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and unorc = :unorc');          // Unorc
          qyExecOrc_.Parameters.ParamByName('unorc').Value := edUnorc.Text;

       End;


       if Trim(edFonte.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and FONTE = :FONTE');          // Fonte
          qyExecOrc_.Parameters.ParamByName('FONTE').Value := edFonte.Text;

       End;

       if Trim(edIndUso.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and IndUso = :IndUso');                // Indicador de Uso
          qyExecOrc_.Parameters.ParamByName('IndUso').Value := edIndUso.Text;
       End;

       if Trim(edprograma.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and Programa = :Programa');                // Indicador de Uso
          qyExecOrc_.Parameters.ParamByName('Programa').Value := edprograma.Text;
       End;

       if Trim(edacao.Text) <> '' Then
       Begin
          qyExecOrc_.SQL.Add('and Acao = :Acao');                // Indicador de Uso
          qyExecOrc_.Parameters.ParamByName('Acao').Value := edacao.Text;
       End;

       qyExecOrc_.SQL.Add(' ORDER BY unorc, programa, acao, funcao, subfuncao, localis, ');
       qyExecOrc_.SQL.Add(' descricao, eldespesa, fonte');
       qyExecOrc_.ExecSQL;
       qyExecOrc_.Open;
       qyExecOrc_.Active := True;
       
       If qyExecOrc_.RecordCount > 0 Then
       Begin
          Pesq   := 's';
          Status := 's';
          TotaisElemento;
       End;

       If qyExecOrc_.RecordCount = 0 Then
       Begin
          Pesq   := 'n';
          Status := 'n';
          //TotaisElemento
       End;
   END;
end;

procedure TfrmPesqAnalitica.btFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmPesqAnalitica.btConfirmarClick(Sender: TObject);
Var
  Calc : Real;
  valdesc : Real;
begin

end;

procedure TfrmPesqAnalitica.TotaisElemento;
begin
   qy_.Close;
   qy_.SQL.Clear;
   qy_.SQL.Add('SELECT SUM(VALOR) AS TOTAL_ELEMENTO FROM ORCAMENTO where codigo is not null');

   if Trim(edElemento.Text) <> '' Then
   Begin
      qy_.SQL.Add('and ELDESPESA = :ELDESPESA');
      qy_.Parameters.ParamByName('eldespesa').Value := edElemento.Text;
   End;

   if Trim(edUnorc.Text) <> '' Then
   Begin
      qy_.SQL.Add('and unorc = :unorc');
      qy_.Parameters.ParamByName('unorc').Value := edUnorc.Text;
   End;


   if Trim(edFonte.Text) <> '' Then
   Begin
      qy_.SQL.Add('and FONTE = :FONTE');
      qy_.Parameters.ParamByName('FONTE').Value := edFonte.Text;
   End;

   if Trim(edIndUso.Text) <> '' Then
   Begin
      qy_.SQL.Add('and IndUso = :IndUso');
      qy_.Parameters.ParamByName('IndUso').Value := edIndUso.Text;
   End;

   if Trim(edprograma.Text) <> '' Then
   Begin
      qy_.SQL.Add('and programa = :programa');
      qy_.Parameters.ParamByName('programa').Value := edprograma.Text;
   End;

   if Trim(edacao.Text) <> '' Then
   Begin
      qy_.SQL.Add('and acao = :acao');
      qy_.Parameters.ParamByName('acao').Value := edacao.Text;
   End;

   qy_.ExecSQL;
   qy_.Open;

   lbValorElemento.Font.Color := clRed;
   lbValorElemento.Caption := 'VALOR DA CONSULTA =>  '+FormatCurr('###,###,###',qy_TOTAL_ELEMENTO.Value);

end;

procedure TfrmPesqAnalitica.Revona;
begin
   qyExecOrc_.Close;
   qyExecOrc_.SQL.Clear;
   qyExecOrc_.SQL.Add(' SELECT Eldespesa, Fonte, IndUso, Unorc, Unorcd,');
   qyExecOrc_.SQL.Add(' Funcao,Subfuncao,Programa, Acao, Localis,locali, Valor');
   qyExecOrc_.SQL.Add(' FROM ORCAMENTO');
   qyExecOrc_.SQL.Add(' ORDER BY unorc, programa, acao, funcao, subfuncao, localis, ');
   qyExecOrc_.SQL.Add(' descricao, eldespesa, fonte');

   qyExecOrc_.ExecSQL;
   qyExecOrc_.Open;
end;

procedure TfrmPesqAnalitica.DBGrid1CellClick(Column: TColumn);
begin
   DBGrid1.Hint := Column.FieldName;
end;

procedure TfrmPesqAnalitica.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmPesqAnalitica.edElementoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not(key in [#8,'0'..'5']) then key :=#0;
end;

procedure TfrmPesqAnalitica.edUnorcKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not(key in [#8,'0'..'9']) then key :=#0;


end;

procedure TfrmPesqAnalitica.edIndUsoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not(key in [#8,'0'..'5']) then key :=#0;

end;

procedure TfrmPesqAnalitica.btPesquisaClick(Sender: TObject);
begin
   ShowWarning('CHECANDO BANCO, AGUARDE...');
   qyExecOrc_.Active := False;
   qyExecOrc_.Close;
   qyExecOrc_.SQL.Clear;
   qyExecOrc_.SQL.Add('SELECT Eldespesa, Fonte, IndUso as IU, Unorc, Unorcd,Funcao,Subfuncao, ');
   qyExecOrc_.SQL.Add('Programa as Prog, Acao, Localis,locali, Descricao, Valor');
   qyExecOrc_.SQL.Add('FROM ORCAMENTO');
   qyExecOrc_.SQL.Add('where codigo is not null');

   if Trim(edUnorc.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and unorc = :unorc');// Unorc
      qyExecOrc_.Parameters.ParamByName('unorc').Value := edUnorc.Text;

   End;

   if Trim(edFuncao.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and Funcao = :Funcao');// Funcao
      qyExecOrc_.Parameters.ParamByName('Funcao').Value := edFuncao.Text;
   End;

   if Trim(edSubFuncao.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and SUBFUNCAO =:SUBFUNCAO'); // SubFuncao
      qyExecOrc_.Parameters.ParamByName('SUBFUNCAO').Value := edSubFuncao.Text;

   End;

   if Trim(edprograma.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and Programa = :Programa');                // Indicador de Uso
      qyExecOrc_.Parameters.ParamByName('Programa').Value := edprograma.Text;
   End;

   if Trim(edacao.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and Acao = :Acao');                // Indicador de Uso
      qyExecOrc_.Parameters.ParamByName('Acao').Value := edacao.Text;
   End;

   if Trim(edIndUso.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and IndUso = :IndUso');                // Indicador de Uso
      qyExecOrc_.Parameters.ParamByName('IndUso').Value := edIndUso.Text;
   End;

   if Trim(edFonte.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and FONTE = :FONTE');          // Fonte
      qyExecOrc_.Parameters.ParamByName('FONTE').Value := edFonte.Text;

   End;

   if Trim(edElemento.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and ELDESPESA = :ELDESPESA');   // Elemento de Despesa
      qyExecOrc_.Parameters.ParamByName('ELDESPESA').Value := edElemento.Text;
   End;

   if Trim(edDesc.Text) <> '' Then
   Begin
      qyExecOrc_.SQL.Add('and Descricao like LIKE(''%'+edDesc.Text+'%'') ');
   End;


   qyExecOrc_.SQL.Add(' ORDER BY unorc, programa, acao, funcao, subfuncao, localis, ');
   qyExecOrc_.SQL.Add(' descricao, eldespesa, fonte');
   qyExecOrc_.ExecSQL;
   qyExecOrc_.Open;
   qyExecOrc_.Active := True;
   If qyExecOrc_.RecordCount > 0 Then
   Begin
      Pesq   := 's';
      Status := 's';
      TotaisElemento;
   End;

   If qyExecOrc_.RecordCount = 0 Then
   Begin
      Pesq   := 'n';
      Status := 'n';
      //TotaisElemento
   End;
   HideWarning;
end;

procedure TfrmPesqAnalitica.btRenovarClick(Sender: TObject);
begin
   qyExecOrc_.Active := False;
   Pesq   := 'n';
   Status := 'n';
   edUnorc.Clear;
   edFuncao.Clear;
   edSubFuncao.Clear;
   edprograma.Clear;
   edacao.Clear;
   edIndUso.Clear;
   edFonte.Clear;
   edElemento.Clear;
   edElemento.Clear;

   lbValorElemento.Caption := 'R$ 0,00';
   edElemento.SetFocus;
   HideWarning;
end;

procedure TfrmPesqAnalitica.edUnorcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vk_f8 then
   BEGIN
      ShowWarning('CHECANDO BANCO, AGUARDE...');
      qyExecOrc_.Active := False;
      qyExecOrc_.Close;
      qyExecOrc_.SQL.Clear;
      qyExecOrc_.SQL.Add('SELECT Eldespesa, Fonte, IndUso as IU, Unorc, Unorcd,Funcao,Subfuncao, ');
      qyExecOrc_.SQL.Add('Programa as Prog, Acao, Localis,locali, Descricao, Valor');
      qyExecOrc_.SQL.Add('FROM ORCAMENTO');
      qyExecOrc_.SQL.Add('where codigo is not null');

      if Trim(edUnorc.Text) <> '' Then
      Begin
         qyExecOrc_.SQL.Add('and unorc = :unorc');// Unorc
         qyExecOrc_.Parameters.ParamByName('unorc').Value := edUnorc.Text;
      End;

      if Trim(edFuncao.Text) <> '' Then
      Begin
         qyExecOrc_.SQL.Add('and Funcao = :Funcao');// Funcao
         qyExecOrc_.Parameters.ParamByName('Funcao').Value := edFuncao.Text;
      End;

      if Trim(edSubFuncao.Text) <> '' Then
      Begin
         qyExecOrc_.SQL.Add('and SUBFUNCAO = :SUBFUNCAO'); // SubFuncao
         qyExecOrc_.Parameters.ParamByName('SUBFUNCAO').Value := edSubFuncao.Text;
      End;

      if Trim(edprograma.Text) <> '' Then
      Begin
         qyExecOrc_.SQL.Add('and Programa = :Programa');                // Indicador de Uso
         qyExecOrc_.Parameters.ParamByName('Programa').Value := edprograma.Text;
      End;

      if Trim(edacao.Text) <> '' Then
      Begin
         qyExecOrc_.SQL.Add('and Acao = :Acao');                // Indicador de Uso
         qyExecOrc_.Parameters.ParamByName('Acao').Value := edacao.Text;
      End;

      if Trim(edIndUso.Text) <> '' Then
      Begin
         qyExecOrc_.SQL.Add('and IndUso = :IndUso');                // Indicador de Uso
         qyExecOrc_.Parameters.ParamByName('IndUso').Value := edIndUso.Text;
      End;

      if Trim(edFonte.Text) <> '' Then
      Begin
         qyExecOrc_.SQL.Add('and FONTE = :FONTE');          // Fonte
         qyExecOrc_.Parameters.ParamByName('FONTE').Value := edFonte.Text;

      End;

      if Trim(edElemento.Text) <> '' Then
      Begin
         qyExecOrc_.SQL.Add('and ELDESPESA = :ELDESPESA');   // Elemento de Despesa
         qyExecOrc_.Parameters.ParamByName('ELDESPESA').Value := edElemento.Text;
      End;


      qyExecOrc_.SQL.Add(' ORDER BY unorc, programa, acao, funcao, subfuncao, localis, ');
      qyExecOrc_.SQL.Add(' descricao, eldespesa, fonte');
      qyExecOrc_.ExecSQL;
      qyExecOrc_.Open;
      qyExecOrc_.Active := True;
      If qyExecOrc_.RecordCount > 0 Then
      Begin
         Pesq   := 's';
         Status := 's';
         TotaisElemento;
      End;

      If qyExecOrc_.RecordCount = 0 Then
      Begin
         Pesq   := 'n';
         Status := 'n';
         //TotaisElemento
      End;
      HideWarning;
   END;
   if key = vk_f9 then
   begin
       qyExecOrc_.Active := False;
       Pesq   := 'n';
       Status := 'n';
       edUnorc.Clear;
       edFuncao.Clear;
       edSubFuncao.Clear;
       edprograma.Clear;
       edacao.Clear;
       edIndUso.Clear;
       edFonte.Clear;
       edElemento.Clear;


       lbValorElemento.Caption := 'R$ 0,00';
       edElemento.SetFocus;
   end;
   if key = vk_f10 then
   begin
      if qyExecOrc_.Active = True then
       begin
           FullDBGridToClipBoard(DBGrid1, True);
           // ou
           SelDBGridToClipBoard(DBGrid1, True);
       end;
   end;

end;

procedure TfrmPesqAnalitica.FullDBGridToClipBoard(DBGrid: TDBGrid;
  PastHeader: Boolean);
var
  StrToCopy :string;
  Idx,
  IdxCol :Integer;
  BookMark,
  SavedBookMark :TBookMark;
begin
  StrToCopy := '';
  if PastHeader then// se for para colar o nome das colunas...
  begin
    StrToCopy := DBGrid.Columns[0].Title.Caption;
    for IdxCol := 1 to DBGrid.Columns.Count -1 do
      StrToCopy := format('%s'#9'%s', [StrToCopy, DBGrid.Columns[IdxCol].Title.Caption]);
    StrToCopy := StrToCopy +#13#10;
  end;
  with DBGrid.DataSource.DataSet do  // utilizaremos o dataset do DBGrid - evidente...
  begin
    SavedBookMark := GetBookmark;  // salvamos a posi��o atual do cursor - linha selecionada no DBGrid
    DisableControls;  // evitamos que a movimenta��o no dataset provoque o scroll do DBGrid
    First;  // posicionamos no primeiro registro do dataset
    while not EOF do  // varremos todas as linhas no DBGrid
    begin
      StrToCopy := StrToCopy +DBGrid.Columns[0].Field.AsString;
      for IdxCol := 1 to DBGrid.Columns.Count -1 do
        StrToCopy := Format('%s'#9'%s', [StrToCopy, DBGrid.Columns[IdxCol].Field.AsString]);
      StrToCopy := StrToCopy +#13#10;
      Next;  // processando pr�xima linha...
    end;
    ClipBoard.Clear;  // limpamos o ClipBoard
    ClipBoard.SetTextBuf(PAnsiChar(StrToCopy));  // Copiamos o texto montado para o ClipBoard
    GotoBookMark(SavedBookMark);  // reposicionamos o cursor na linha em que estava antes do processo
    FreeBookMark(SavedBookMark);  // liberamos a mem�ria alocada pelo BookMark
    EnableControls;
  end;


end;

procedure TfrmPesqAnalitica.SelDBGridToClipBoard(DBGrid: TDBGrid;
  PastHeader: Boolean);
var
  StrToCopy :string;
  Idx,
  IdxCol :Integer;
  BookMark,
  SavedBookMark :TBookMark;
begin
  if DBGrid.SelectedRows.Count = 0 then // s� processamos algo se houver linhas selecionadas
    Exit;
  StrToCopy := '';
  if PastHeader then// se for para colar o nome das colunas...
  begin
    StrToCopy := DBGrid.Columns[0].Title.Caption;
    for IdxCol := 1 to DBGrid.Columns.Count -1 do
      StrToCopy := format('%s'#9'%s', [StrToCopy, DBGrid.Columns[IdxCol].Title.Caption]);
    StrToCopy := StrToCopy +#13#10;
  end;
  with DBGrid.DataSource.DataSet do  // utilizaremos o dataset do DBGrid - evidente...
  begin
    SavedBookMark := GetBookmark;  // salvamos a posi��o atual do cursor - linha selecionada no DBGrid
    DisableControls;  // evitamos que a movimenta��o no dataset provoque o scroll do DBGrid
    for Idx := 0 to DBGrid.SelectedRows.Count -1 do // percorreremos todas as linhas selecionadas
    begin
      GotoBookMark(Pointer(DBGrid.SelectedRows[Idx])); // posicionando na linha a ser exportada
      StrToCopy := StrToCopy +DBGrid.Columns[0].Field.AsString;
      for IdxCol := 1 to DBGrid.Columns.Count -1 do
        StrToCopy := Format('%s'#9'%s', [StrToCopy, DBGrid.Columns[IdxCol].Field.AsString]);
      StrToCopy := StrToCopy +#13#10;
    end;
    ClipBoard.Clear;  // limpamos o ClipBoard
    ClipBoard.SetTextBuf(PAnsiChar(StrToCopy));  // Copiamos o texto montado para o ClipBoard
    GotoBookMark(SavedBookMark);  // reposicionamos o cursor na linha em que estava antes do processo
    FreeBookMark(SavedBookMark);  // liberamos a mem�ria alocada pelo BookMark
    EnableControls;
  end;


end;

procedure TfrmPesqAnalitica.dxButton1Click(Sender: TObject);
begin
   if qyExecOrc_.Active = True then
   begin
       FullDBGridToClipBoard(DBGrid1, True);
       // ou
       SelDBGridToClipBoard(DBGrid1, True);
   end;

end;

procedure TfrmPesqAnalitica.FormShow(Sender: TObject);
begin
     qyExecOrc_.Active := False;
end;

procedure TfrmPesqAnalitica.btImprimirClick(Sender: TObject);
begin
     if FrmTipoDetalhado = nil then FrmTipoDetalhado := TFrmTipoDetalhado.Create(Self);


    FrmTipoDetalhado.Unorc       := edUnorc.Text;
    FrmTipoDetalhado.funcao      := edFuncao.Text;
    FrmTipoDetalhado.subfuncao   := edSubFuncao.Text;
    FrmTipoDetalhado.programa    := edprograma.Text;
    FrmTipoDetalhado.acao        := edacao.Text;
    FrmTipoDetalhado.iu          := edIndUso.Text;
    FrmTipoDetalhado.fonte       := edFonte.Text;
    FrmTipoDetalhado.eldespesa   := edElemento.Text;
    FrmTipoDetalhado.ShowModal;
end;

end.




