unit VereadoresGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, dxCore, dxButton, ExtCtrls;

type
  TFrmVereadoresGeral = class(TForm)
    edCod: TEdit;
    Label1: TLabel;
    cbPesq: TComboBox;
    qyVereadores_: TADOQuery;
    qyVereadores_Codigo: TAutoIncField;
    qyVereadores_Nome: TStringField;
    qyVereadores_Partido_Sigla: TStringField;
    qyVereadores_Condicao: TStringField;
    qyVereadores_Comentario: TStringField;
    qyVereadores_DtCadastro: TDateTimeField;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label2: TLabel;
    cbStatus: TComboBox;
    btnDelete: TdxButton;
    btClosed: TdxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edCodExit(Sender: TObject);
    procedure cbPesqExit(Sender: TObject);
    procedure btClosedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Pesq(Text:String);
  end;

var
  FrmVereadoresGeral: TFrmVereadoresGeral;

implementation

uses main, data;

{$R *.dfm}

{ TFrmVereadoresGeral }

procedure TFrmVereadoresGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action             := caFree;
   FrmVereadoresGeral := nil;
end;

procedure TFrmVereadoresGeral.Pesq(Text: String);
Var
  I : Integer;
begin
   I := 0;

   qyVereadores_.Close;
   qyVereadores_.SQL.Clear;
   qyVereadores_.SQL.Add('SELECT * FROM VEREADORES');

   If Trim(Text)='' Then
   Begin
      cbPesq.Clear;
      qyVereadores_.SQL.Add('ORDER BY Nome');
      qyVereadores_.ExecSQL;
      qyVereadores_.Open;
      qyVereadores_.FIRST;

      While not qyVereadores_.Eof do
      Begin
         cbPesq.Items.Add(qyVereadores_.Fieldbyname('NOME').AsString);
         qyVereadores_.Next;
      End;
      Exit;
   End;

   If Trim(Text)<>'' Then
   Begin

      Try
          StrToInt(Text);
          qyVereadores_.SQL.Add('WHERE CODIGO = :CODIGO');
          qyVereadores_.Parameters.ParamByName('CODIGO').Value := StrToInt(TEXT);
      Except
          qyVereadores_.SQL.Add('WHERE NOME like :NOME');
          qyVereadores_.Parameters.ParamByName('NOME').Value := '%'+TEXT+'%';
      END;

      qyVereadores_.SQL.Add('Order by nome');
      qyVereadores_.ExecSQL;
      qyVereadores_.Open;

      If qyVereadores_.RecordCount = 0 Then
      Begin
         ShowMessage('OBJETO PESQUISADO NÃO ENCONTRADO. PESQUISE NOVAMENTE!');
         edCod.SetFocus;
         EXIT;
      End;

   End;

   edCod.Text  := qyVereadores_.Fieldbyname('CODIGO').AsString;
   cbPesq.Text := qyVereadores_.Fieldbyname('NOME').AsString;
end;

procedure TFrmVereadoresGeral.edCodExit(Sender: TObject);
begin
   Pesq(edCod.Text);
end;

procedure TFrmVereadoresGeral.cbPesqExit(Sender: TObject);
begin
   Pesq(cbPesq.Text);
end;

procedure TFrmVereadoresGeral.btClosedClick(Sender: TObject);
begin
   Close;
end;

end.
