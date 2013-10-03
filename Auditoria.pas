unit Auditoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, RXCtrls, Mask, ToolEdit, StdCtrls,
  ExtCtrls, dxCore, dxButton;

type
  TFrmAuditoria = class(TForm)
    DBGrid1: TDBGrid;
    qyAuditoria_: TADOQuery;
    dsAuditoria_: TDataSource;
    qyAuditoria_Codigo: TAutoIncField;
    qyAuditoria_data: TDateTimeField;
    qyAuditoria_Hora: TDateTimeField;
    qyAuditoria_Usuario: TIntegerField;
    qyAuditoria_Tabela: TStringField;
    qyAuditoria_Emenda: TStringField;
    qyAuditoria_Acao: TStringField;
    qyAuditoria_LOGIN: TStringField;
    cbPesq: TComboBox;
    edPesq: TEdit;
    ckPeriodo: TCheckBox;
    gbdata: TGroupBox;
    dtInicial: TDateEdit;
    dtFinal: TDateEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Bevel1: TBevel;
    btPesquisa: TdxButton;
    btRenovar: TdxButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ckPeriodoClick(Sender: TObject);
    procedure btPesquisaClick(Sender: TObject);
    procedure btRenovarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAuditoria: TFrmAuditoria;

implementation

uses main, data, HWarning;

{$R *.dfm}

procedure TFrmAuditoria.FormKeyPress(Sender: TObject; var Key: Char);
begin
   IF KEY = #13 tHEN
   BEGIN
      Perform(WM_NEXTDLGCTL,0,0);
      KEY :=#0;
   END;
end;

procedure TFrmAuditoria.FormCreate(Sender: TObject);
begin
   HideWarning;
   if dsAuditoria_.State in [dsinactive] then qyAuditoria_.Open;
end;

procedure TFrmAuditoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action       := caFree;
   FrmAuditoria := NIL;
end;

procedure TFrmAuditoria.ckPeriodoClick(Sender: TObject);
begin
   If ckPeriodo.Checked then
      gbdata.Enabled := True;
   If ckPeriodo.Checked = false then
      gbdata.Enabled := False;
end;

procedure TFrmAuditoria.btPesquisaClick(Sender: TObject);
Var
  Lt : String;
begin
   Lt := 'SELECT A.*, U.USUARIO AS LOGIN '+
         'FROM AUDITORIA A '+
         'LEFT OUTER JOIN USUARIOS U ON U.CODIGO = A.USUARIO '+
         'Where A.codigo is not null';

   qyAuditoria_.Close;
   qyAuditoria_.SQL.Clear;
   qyAuditoria_.SQL.Add(Lt);

   If Trim(edPesq.Text) <> '' Then
   Begin
      If cbPesq.ItemIndex = 0 then
      Begin
         qyAuditoria_.SQL.Add('and substring(a.emenda,1,3) = :emenda');
         qyAuditoria_.Parameters.ParamByName('emenda').Value := Copy(edPesq.Text,1,3);
      End;
      If cbPesq.ItemIndex = 1 then
      Begin
         qyAuditoria_.SQL.Add('and a.acao = :acao');
         qyAuditoria_.Parameters.ParamByName('acao').Value := edPesq.Text;
      End;
      If cbPesq.ItemIndex = 2 then
      Begin
         qyAuditoria_.SQL.Add('and u.usuario = :login');
         qyAuditoria_.Parameters.ParamByName('login').Value := edPesq.Text;
      End;
   End;

   If ckPeriodo.Checked then
   begin
      qyAuditoria_.SQL.Add('and a.data between :di and :df');
      qyAuditoria_.Parameters.ParamByName('di').Value := dtInicial.Date;
      qyAuditoria_.Parameters.ParamByName('df').Value := dtFinal.Date;
   end;

   qyAuditoria_.SQL.Add('order by a.codigo desc');
   qyAuditoria_.ExecSQL;
   qyAuditoria_.Open;

end;

procedure TFrmAuditoria.btRenovarClick(Sender: TObject);
Var
  Lt : String;
begin
   Lt := 'SELECT A.*, U.USUARIO AS LOGIN '+
         'FROM AUDITORIA A '+
         'LEFT OUTER JOIN USUARIOS U ON U.CODIGO = A.USUARIO '+
         'Where A.Codigo is not null';

   qyAuditoria_.Close;
   qyAuditoria_.SQL.Clear;
   qyAuditoria_.SQL.Add(Lt);
   qyAuditoria_.SQL.Add('order by a.codigo desc');
   qyAuditoria_.ExecSQL;
   qyAuditoria_.Open;

end;

procedure TFrmAuditoria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_F2 then btPesquisa.OnClick(nil);
   if key = VK_F8 then btRenovar.OnClick(nil);  
end;

end.
