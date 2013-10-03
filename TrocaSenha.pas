unit TrocaSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ADODB;

type
  TFrmTrocaSenha = class(TForm)
    edusuario: TEdit;
    edsenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsqy: TDataSource;
    qy: TADOQuery;
    ednovasenha: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    qyCodigo: TIntegerField;
    qyNome: TStringField;
    qyUsuario: TStringField;
    qySenha: TStringField;
    qyPermite: TStringField;
    qyPerfil: TStringField;
    qyAltera: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTrocaSenha: TFrmTrocaSenha;

implementation

uses data;

{$R *.dfm}

procedure TFrmTrocaSenha.Button1Click(Sender: TObject);
begin
   qy.close;
   qy.Parameters.ParamByName('usuario').Value := edusuario.Text;
   qy.Parameters.ParamByName('senha').Value := edsenha.Text;
   qy.ExecSQL;
   qy.Open;


   If qy.RecordCount = 0 Then
   Begin
      ShowMessage('Usuário Incorreto');
      edusuario.SetFocus;
   End;

   if qyAltera.Value = 'S'  then
   Begin
         qy.Edit;
         qySenha.Value := ednovasenha.Text;
         qy.Post;
         ShowMessage('Troca de Senha efetuada com sucesso!');
         edsenha.Clear;
         edusuario.Clear;
         ednovasenha.Clear;
         edusuario.SetFocus;
   End
   Else
      ShowMessage('Troca de Senha não permitida!!!!');

end;

procedure TFrmTrocaSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action        := cafree;
   FrmTrocaSenha := nil;
end;

procedure TFrmTrocaSenha.Button2Click(Sender: TObject);
begin
   close;
end;

end.


