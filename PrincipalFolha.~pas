unit PrincipalFolha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons,
  StdCtrls, ADODB;

type
  TfrmPrincipalFolha = class(TForm)
    pgSecretario: TPageControl;
    pgCapa: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet1: TTabSheet;
    DBGrid3: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid4: TDBGrid;
    TabSheet4: TTabSheet;
    Label1: TLabel;
    adFolha: TADOConnection;
    qyfolha_: TADOQuery;
    qyfolha_Codigo: TAutoIncField;
    qyfolha_Tipo: TStringField;
    qyfolha_Titulo: TStringField;
    qyfolha_Titular: TStringField;
    qyfolha_Tam: TStringField;
    qyfolha_Negrito: TStringField;
    dsFolha: TDataSource;
    qyfolha_LEI: TStringField;
    qyfolha_SUPLEMENTO: TStringField;
    DBGrid1: TDBGrid;
    pn1: TPanel;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBNavigator3: TDBNavigator;
    SpeedButton2: TSpeedButton;
    DBNavigator2: TDBNavigator;
    DBNavigator5: TDBNavigator;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1Codigo: TAutoIncField;
    ADOQuery1Tipo: TStringField;
    ADOQuery1Titulo: TStringField;
    ADOQuery1Titular: TStringField;
    ADOQuery1Tam: TStringField;
    ADOQuery1Negrito: TStringField;
    ADOQuery1LEI: TStringField;
    ADOQuery1SUPLEMENTO: TStringField;
    qyfolha_Ordem: TIntegerField;
    ADOQuery1Ordem: TIntegerField;
    SpeedButton6: TSpeedButton;
    procedure pgCapaShow(Sender: TObject);
    procedure folhaBeforePost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid4ColExit(Sender: TObject);
    procedure qyfolha_BeforePost(DataSet: TDataSet);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipalFolha: TfrmPrincipalFolha;
  theType : string;

implementation

uses relCapa, relSecretario, relEquipe, relUnorc, relParte, relCapaQdd,
  main, logIn;

{$R *.DFM}

procedure TfrmPrincipalFolha.pgCapaShow(Sender: TObject);
begin
  theType := 'C';
  qyfolha_.filter := 'tipo = ''C''';
  qyfolha_.filtered := true;
  qyfolha_.first;
end;

procedure TfrmPrincipalFolha.folhaBeforePost(DataSet: TDataSet);
begin
 //FolhaTipo.asString := theType;
end;

procedure TfrmPrincipalFolha.SpeedButton1Click(Sender: TObject);
begin
  frmRelCapa := nil;
  If frmRelCapa = nil then
     frmRelCapa := TfrmRelCapa.Create(self);

  frmRelCapa.qyLei_.Close;
  frmRelCapa.qyLei_.Open;
  frmRelCapa.qyExercicio_.Close;
  frmRelCapa.qyExercicio_.OPEN;

  frmRelCapa.report.preview;
  frmRelCapa.report.Free;

end;

procedure TfrmPrincipalFolha.TabSheet2Show(Sender: TObject);
begin
  theType := 'S';
  qyfolha_.filter := 'tipo = ''S''';
  qyfolha_.filtered := true;
  qyfolha_.first;
end;

procedure TfrmPrincipalFolha.SpeedButton2Click(Sender: TObject);
begin
   frmrelSecretario := nil;
   if frmrelSecretario = nil then
      frmrelSecretario := TfrmRelSecretario.Create(self);
  frmrelSecretario.qySecretario_.Close;
  frmrelSecretario.qySecretario_.Open;
  frmrelSecretario.report.preview;
  frmrelSecretario.report.Free;
end;

procedure TfrmPrincipalFolha.TabSheet1Show(Sender: TObject);
begin
  theType := 'E';
  qyfolha_.filter := 'tipo = ''E''';
  qyfolha_.filtered := true;
  qyfolha_.first;

end;

procedure TfrmPrincipalFolha.SpeedButton3Click(Sender: TObject);
begin
  frmRelEquipe := nil;
  If frmRelEquipe = nil Then
     frmRelEquipe := TfrmRelEquipe.Create(self);
  frmRelEquipe.qyEquipe_.Close;
  frmRelEquipe.qyEquipe_.Open;
  frmRelEquipe.report.preview;
  frmRelEquipe.report.Free;

end;

procedure TfrmPrincipalFolha.TabSheet3Show(Sender: TObject);
begin
  theType := 'U';
  qyfolha_.filter := 'tipo = ''U''';
  qyfolha_.filtered := true;
  qyfolha_.first;
end;

procedure TfrmPrincipalFolha.SpeedButton4Click(Sender: TObject);
begin
  frmRelUnorc := nil;
  if frmrelUnorc = nil Then
     frmrelUnorc := TfrmrelUnorc.Create(self);
  with frmRelUnorc.qyUnorc_, frmrelUnorc.qyUnorc_.SQL do
  begin
     Close;
     add(' SELECT Tipo, Titulo, Titular, tam, Negrito ');
     add(' FROM Folhas ');
     add(' WHERE   (Tipo = ''U'')  ');
     add(' ORDER BY titulo ');
     ExecSQL;
     Open;
  end;
  frmrelUnorc.QRLabel1.Caption := frmMain.Ano_Exercicio;
  frmRelUnorc.report.preview;
  frmRelUnorc.report.Free;
end;

procedure TfrmPrincipalFolha.SpeedButton5Click(Sender: TObject);
begin


frmRelUnorc := nil;
  if frmrelUnorc = nil Then
     frmrelUnorc := TfrmrelUnorc.Create(self);
  frmRelUnorc.qyUnorc_.Close;
  frmRelUnorc.qyUnorc_.Open;
  frmrelUnorc.QRLabel1.Caption := frmMain.Ano_Exercicio;
  frmRelUnorc.report.preview;
  frmRelUnorc.report.Free;


  frmRelParte := nil;
  if frmRelParte = nil Then
     frmRelParte := TfrmRelParte.Create(self);
     frmRelParte.QRLabel1.Caption := frmMain.Ano_Exercicio;
  frmRelParte.lblTitulo.caption :=
     'PARTE I' + #13 + 'ORÇAMENTOS FISCAL E DA SEGURIDADE SOCIAL' + #13 +
     'PROGRAMAÇÃO A CARGO DOS ÓRGÃOS';
  frmRelParte.report.preview;

  frmRelParte.lblTitulo.caption :=
     'PARTE II' + #13 + 'ORÇAMENTO DE INVESTIMENTO' + #13 +
     'PROGRAMAÇÃO A CARGO DOS ÓRGÃOS';
  frmRelParte.report.preview;

  frmRelParte.lblTitulo.caption :=
     'PARTE III' + #13 + 'LEGISLAÇÃO';
  frmRelParte.report.preview;

  frmRelParte.lblTitulo.caption :=
     'ORÇAMENTOS FISCAL E DA SEGURIDADE SOCIAL' + #13 +
     'PROGRAMAÇÃO A CARGO DOS ÓRGÃOS';
  frmRelParte.report.preview;

end;

procedure TfrmPrincipalFolha.Button1Click(Sender: TObject);
begin
   frmRelCapaQDD := nil;
   If frmRelCapaQdd = nil Then
      frmRelCapaQdd := TfrmRelCapaQdd.Create(self);
   frmRelCapaQDD.qyLei_.Close;
   frmRelCapaQDD.qyLei_.Open;
   frmRelCapaQDD.qyExercicio_.Close;
   frmRelCapaQDD.qyExercicio_.Open;
   frmRelCapaQDD.report.preview;
   frmRelCapaQDD.report.Free;

end;

procedure TfrmPrincipalFolha.FormShow(Sender: TObject);
begin
   pgSecretario.ActivePageIndex := 0;
end;

procedure TfrmPrincipalFolha.DBGrid4ColExit(Sender: TObject);
begin      
   IF DataSource1.State IN [DSINSERT, DSEDIT] THEN ADOQuery1Tipo.Value := 'U';
end;

procedure TfrmPrincipalFolha.qyfolha_BeforePost(DataSet: TDataSet);
begin
    if pgSecretario.ActivePage.TabIndex = 1 then
        qyfolha_.FieldByName('tipo').Value := 'S';
    if pgSecretario.ActivePage.TabIndex = 2 then
        qyfolha_.FieldByName('tipo').Value := 'E';
end;

procedure TfrmPrincipalFolha.ADOQuery1BeforePost(DataSet: TDataSet);
begin
    ADOQuery1.FieldByName('tipo').Value := 'U';
end;

procedure TfrmPrincipalFolha.DBGrid4DblClick(Sender: TObject);
begin
    ADOQuery1.Edit;
    DBGrid4.ReadOnly := False;
end;

procedure TfrmPrincipalFolha.SpeedButton6Click(Sender: TObject);
begin

  frmRelUnorc := nil;
  if frmrelUnorc = nil Then
     frmrelUnorc := TfrmrelUnorc.Create(self);
     frmrelUnorc.QRLabel1.Caption := frmMain.Ano_Exercicio;
  with frmRelUnorc.qyUnorc_, frmrelUnorc.qyUnorc_.SQL do
  begin
     Close;
     clear;
     add(' SELECT Tipo, Titulo, Titular, tam, Negrito ');
     add(' FROM Folhas ');
     add(' WHERE   (Tipo = ''U'') and substring(titulo,3,3) <>''000''  ');
     add(' ORDER BY titulo ');
     ExecSQL;
     Open;
  end;
  frmrelUnorc.QRLabel1.Caption := frmMain.Ano_Exercicio;
  frmRelUnorc.report.preview;
  frmRelUnorc.report.Free;
end;

end.

