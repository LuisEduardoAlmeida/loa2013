unit Autoriza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, ExtCtrls, StdCtrls, DB, ADODB;

type
  TFrmAutoriza = class(TForm)
    edUsuario: TEdit;
    edSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    btConfirmar: TdxButton;
    dxButton2: TdxButton;
    qyParam_: TADOQuery;
    qyParam_Ano: TStringField;
    qyParam_usuario: TStringField;
    qyParam_senha: TStringField;
    qyUs_: TADOQuery;
    qyUs_Codigo: TAutoIncField;
    qyUs_Nome: TStringField;
    qyUs_Usuario: TStringField;
    qyUs_Senha: TStringField;
    qyUs_Permite: TStringField;
    qyUs_Perfil: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btConfirmarClick(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAutoriza: TFrmAutoriza;

implementation

uses data, main;

{$R *.dfm}

procedure TFrmAutoriza.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If key = #13 then
   begin
      Perform(WM_NEXTDLGCTL,0,0);
      key :=#0;
   end;
end;

procedure TFrmAutoriza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   FrmAutoriza := nil;
end;

procedure TFrmAutoriza.btConfirmarClick(Sender: TObject);
begin
   If Trim(edUsuario.Text) ='' then
   Begin
      ShowMessage('Informe o Usuario!!!');
      edUsuario.SetFocus;
      Exit;
   End;

   If Trim(edSenha.Text) ='' then
   Begin
      ShowMessage('Informe a Senha!!!');
      edSenha.SetFocus;
      Exit;
   End;

   qyUs_.Close;
   qyUs_.SQL.Clear;
   qyUs_.sql.Add('SELECT * FROM USUARIOS');
   qyUs_.sql.Add('WHERE USUARIO = :USUARIO');
   qyUs_.sql.Add('AND SENHA = :SENHA');
   qyUs_.Parameters.ParamByName('USUARIO').Value := edUsuario.Text;
   qyUs_.Parameters.ParamByName('SENHA').Value   := edSenha.Text;
   qyUs_.ExecSQL;
   qyUs_.Open;

   If qyUs_.RecordCount > 0 Then
   If qyUs_Permite.Value = 'N' Then
   Begin
      ShowMessage('Usuário existe mas não tem permissão para executar este procedimento!');
      frmMain.Autoriza := 'N';
      exit;
   End;

   If qyUs_.RecordCount > 0 Then
   Begin
      frmMain.Autoriza := 'S';
      Close;
   End
   Else
   Begin
      ShowMessage('USUARIO OU SENHA NÃO CADASTRADO. VERIFIQUE!!!');
      edUsuario.SetFocus;
      frmMain.Autoriza := 'N';
      EXIT;
   END;

end;

procedure TFrmAutoriza.dxButton2Click(Sender: TObject);
begin
   frmMain.Autoriza := 'N';
   Close;
end;

end.
