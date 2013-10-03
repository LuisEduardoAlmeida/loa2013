unit LoginEmendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxCore, dxButton, StdCtrls, DB, ADODB;

type
  TFrmLoginEmendas = class(TForm)
    edUsuario: TEdit;
    EdSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btConfirmar: TdxButton;
    dxButton2: TdxButton;
    Bevel1: TBevel;
    qyEL_: TADOQuery;
    qyEL_Codigo: TAutoIncField;
    qyEL_Nome: TStringField;
    qyEL_Usuario: TStringField;
    qyEL_Senha: TStringField;
    qyEL_Permite: TStringField;
    qyEL_Perfil: TStringField;
    procedure dxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLoginEmendas: TFrmLoginEmendas;

implementation

uses data, main;

{$R *.dfm}

procedure TFrmLoginEmendas.dxButton2Click(Sender: TObject);
begin
   frmMain.PermLogon := 'N';
   Close;
end;

procedure TFrmLoginEmendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action          := caFree;
   FrmLoginEmendas := nil;
end;

procedure TFrmLoginEmendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If key = #13 then
   begin
      Perform(WM_NEXTDLGCTL,0,0);
      key :=#0;
   end;
end;

procedure TFrmLoginEmendas.btConfirmarClick(Sender: TObject);
begin
   If Trim(edUsuario.Text) = '' then
   Begin
       ShowMessage('Informe o usuário!!!');
       edUsuario.SetFocus;
       exit;
   End;

   If Trim(EdSenha.Text) = '' then
   Begin
       ShowMessage('Informe a Senha!!!');
       EdSenha.SetFocus;
       exit;
   End;

   qyEL_.Close;
   qyEL_.SQL.Clear;
   qyEL_.SQL.Add('SELECT * FROM USUARIOS');
   qyEL_.SQL.Add('WHERE USUARIO = :USUARIO');
   qyEL_.SQL.Add('AND     SENHA = :SENHA');
   qyEL_.Parameters.ParamByName('USUARIO').Value := edUsuario.Text;
   qyEL_.Parameters.ParamByName('SENHA').  Value := EdSenha.Text;
   qyEL_.ExecSQL;
   qyEL_.Open;

   If qyEL_.RecordCount = 0 Then
   Begin
      ShowMessage('USUÁRIO NÃO CADASTRADO OU SENHA INCORRETA!!!');
      edUsuario.SetFocus;
      frmMain.PermLogon := 'N';
      Exit;
   End;

   frmMain.PermLogon := 'S';
   frmMain.Codigo_Usuario := qyEL_Codigo.Value;
   frmMain.Usuario        := qyEL_Usuario.Value;

   If frmMain.PermLogon = 'S' Then Close;

end;

end.
