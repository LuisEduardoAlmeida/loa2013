unit banco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxCore, dxButton, Grids, DBGrids, StdCtrls, Menus,
  ExtCtrls,Clipbrd, DBTables;

type
  TfrmBanco = class(TForm)
    mm_: TMemo;
    DBGrid1: TDBGrid;
    btExecutar: TdxButton;
    btApagar: TdxButton;
    qy_: TADOQuery;
    ds: TDataSource;
    PopupMenu1: TPopupMenu;
    ExecutarSQL1: TMenuItem;
    ApagarSQL1: TMenuItem;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    dxButton1: TdxButton;
    qk_: TADOQuery;
    qk_TABLE_CATALOG: TWideStringField;
    qk_TABLE_SCHEMA: TWideStringField;
    qk_TABLE_NAME: TWideStringField;
    qk_TABLE_TYPE: TStringField;
    dsqk_: TDataSource;
    DBGrid2: TDBGrid;
    AtualizarTabelas1: TMenuItem;
    procedure btExecutarClick(Sender: TObject);
    procedure btApagarClick(Sender: TObject);
    procedure ExecutarSQL1Click(Sender: TObject);
    procedure ApagarSQL1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AtualizarTabelas1Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBanco: TfrmBanco;

implementation

uses data, HWarning;

{$R *.dfm}

procedure TfrmBanco.btExecutarClick(Sender: TObject);
begin

   If Trim(mm_.Text) = '' Then
   Begin
      ShowMessage('Pesquisa deve ser informada!!!!');
      Exit;
   End;

   ShowWarning('Pesquisando, aguarde...');
   qy_.Close;
   qy_.SQL.Clear;
   qy_.SQL.Add(mm_.Text);
   qy_.ExecSQL;
   qy_.Open;

   HideWarning;

end;

procedure TfrmBanco.btApagarClick(Sender: TObject);
var
  i : integer;
begin
   ShowWarning('Pesquisando, aguarde...');
   mm_.Clear;

   qy_.Active := FALSE;
   HideWarning;

   mm_.SetFocus;
end;

procedure TfrmBanco.ExecutarSQL1Click(Sender: TObject);
begin
   btExecutar.OnClick(nil);   
end;

procedure TfrmBanco.ApagarSQL1Click(Sender: TObject);
begin
   btApagar.OnClick(nil);
end;

procedure TfrmBanco.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  t: String;
  Z, i  : Integer;
  NumberColumn : Integer;
begin
    i := Column.Index;
    if DBGrid1.Columns.Items[i].Field.IsBlob then
    begin
        with DBGrid1.Canvas do
        begin
            // cor do fundo
            Pen.Style:=psClear;
            Brush.Style:=bsSolid;
            Brush.Color:=clYellow;
            Rectangle(Rect);

            // pega o texto do campo memo
            t:=Column.Field.Value;

            Font.Color:=clRed;
            Font.Style:=[];
            TextOut(Rect.Left+2,Rect.Top+2,t);
        end;
    end;
end;

procedure TfrmBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action   := caFree;
    frmBanco := nil;
end;

procedure TfrmBanco.dxButton1Click(Sender: TObject);
var Linhas: TStringList;
i, posicao: integer;
s: string;
begin
    If Trim(mm_.Text) = '' Then
    Begin
       ShowMessage('Pesquisa deve ser informada e consultada!!!!');
       Exit;
    End;
    
    Linhas := TStringList.Create;
    Clipboard.Open;
    try
        with DBGrid1 do
        begin
            DataSource.DataSet.DisableControls;
            Posicao := DataSource.DataSet.RecNo;
            DataSource.DataSet.First;
            while not DataSource.DataSet.Eof do
            begin
                s := '';
                for i := 0 to Columns.Count - 1 do
                begin
                if i > 0 then s := s + #9; // Tabulação
                s := s + Columns.Items[i].Field.Text;
                end;
                Linhas.Add(s);
                DataSource.DataSet.Next;
            end;
            DataSource.DataSet.RecNo := Posicao;
            DataSource.DataSet.EnableControls;
        end;

        Clipboard.SetTextBuf(Pointer(Linhas.Text));
    finally
        Linhas.Free;
        Clipboard.Close;
    end;
end;

procedure TfrmBanco.FormCreate(Sender: TObject);
begin
   ShowWarning('ABRINDO AS TABELAS DO BANDO DE DADOS, AGUARDE...');
   if dsqk_.State in [dsinactive] then qk_.Open;
   HideWarning;
end;

procedure TfrmBanco.AtualizarTabelas1Click(Sender: TObject);
begin
   ShowWarning('ATUALIZANDO TABELAS DE BANCO DE DADOS, AGUARDE...');
   qk_.Close;
   qk_.Open;
   HideWarning;
end;

procedure TfrmBanco.DBGrid2DblClick(Sender: TObject);
begin
   mm_.Lines.Add('SELECT * FROM '+qk_TABLE_NAME.Value);
end;

end.
