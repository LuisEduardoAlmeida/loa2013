unit FonteCons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmFonteCons = class(TForm)
    Bevel1: TBevel;
    btFechar: TButton;
    btFonte101: TButton;
    btFonte102: TButton;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFecharClick(Sender: TObject);
    procedure btFonte101Click(Sender: TObject);
    procedure btFonte102Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFonteCons: TFrmFonteCons;

implementation

uses FonteConsRel;

{$R *.dfm}

procedure TFrmFonteCons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action       := caFree;
   FrmFonteCons := nil;
end;

procedure TFrmFonteCons.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If key = #13 Then
   Begin
      Perform(WM_NEXTDLGCTL,0,0);
      key := #0;
   End;
end;

procedure TFrmFonteCons.btFecharClick(Sender: TObject);
begin
   close;
end;

procedure TFrmFonteCons.btFonte101Click(Sender: TObject);
begin
   frmFonteConsRel := nil;

   If frmFonteConsRel = nil Then
      frmFonteConsRel := TfrmFonteConsRel.Create(self);

   frmFonteConsRel.qyF_.Close;
   frmFonteConsRel.qyF_.SQL.Clear;
   frmFonteConsRel.qyF_.SQL.Add('SELECT * FROM ORCAMENTO WHERE CODIGO IS NOT NULL');
   frmFonteConsRel.qyF_.SQL.Add('AND FONTE  = :FONTE');
   frmFonteConsRel.qyF_.SQL.Add('AND FUNCAO <> :FUNCAO');
   frmFonteConsRel.qyF_.Parameters.ParamByName('FONTE').Value  := '101';
   frmFonteConsRel.qyF_.Parameters.ParamByName('FUNCAO').Value := '12';
   frmFonteConsRel.qyF_.SQL.Add('order by unorc,programa, acao, locali');
   frmFonteConsRel.qyF_.ExecSQL;
   frmFonteConsRel.qyF_.Open;

   frmFonteConsRel.lbFonte.Caption := 'Fonte igual a 101 e Função diferente de 12';

   frmFonteConsRel.Preview;
   frmFonteConsRel.Free;
end;

procedure TFrmFonteCons.btFonte102Click(Sender: TObject);
begin
   frmFonteConsRel := nil;            

   If frmFonteConsRel = nil Then
      frmFonteConsRel := TfrmFonteConsRel.Create(self);

   frmFonteConsRel.qyF_.Close;
   frmFonteConsRel.qyF_.SQL.Clear;
   frmFonteConsRel.qyF_.SQL.Add('SELECT * FROM ORCAMENTO WHERE CODIGO IS NOT NULL');
   frmFonteConsRel.qyF_.SQL.Add('AND FONTE  = :FONTE');
   frmFonteConsRel.qyF_.SQL.Add('AND FUNCAO <> :FUNCAO');
   frmFonteConsRel.qyF_.Parameters.ParamByName('FONTE').Value  := '102';
   frmFonteConsRel.qyF_.Parameters.ParamByName('FUNCAO').Value := '10';
   frmFonteConsRel.qyF_.SQL.Add('order by unorc,programa, acao, locali');
   frmFonteConsRel.qyF_.ExecSQL;
   frmFonteConsRel.qyF_.Open;

   frmFonteConsRel.lbFonte.Caption := 'Fonte igual a 102 e Função diferente de 10';

   frmFonteConsRel.Preview;
   frmFonteConsRel.Free;
end;

procedure TFrmFonteCons.Button1Click(Sender: TObject);
begin
   frmFonteConsRel := nil;

   If frmFonteConsRel = nil Then
      frmFonteConsRel := TfrmFonteConsRel.Create(self);

   frmFonteConsRel.qyF_.Close;
   frmFonteConsRel.qyF_.SQL.Clear;
   frmFonteConsRel.qyF_.SQL.Add('SELECT * FROM ORCAMENTO WHERE CODIGO IS NOT NULL');
   frmFonteConsRel.qyF_.SQL.Add('AND FUNCAO  = :FUNCAO');
   frmFonteConsRel.qyF_.SQL.Add('AND ESFERA  = :ESFERA');
   frmFonteConsRel.qyF_.Parameters.ParamByName('FUNCAO').Value  := '08';
   frmFonteConsRel.qyF_.Parameters.ParamByName('ESFERA').Value  := '10';
   frmFonteConsRel.qyF_.SQL.Add('order by unorc,programa, acao, locali');
   frmFonteConsRel.qyF_.ExecSQL;
   frmFonteConsRel.qyF_.Open;

   frmFonteConsRel.lbFonte.Caption := 'Função igual a 08 e Esfera igual de 10';

   frmFonteConsRel.Preview;
   frmFonteConsRel.Free;
end;

procedure TFrmFonteCons.Button2Click(Sender: TObject);
begin
    frmFonteConsRel := nil;

   If frmFonteConsRel = nil Then
      frmFonteConsRel := TfrmFonteConsRel.Create(self);

   frmFonteConsRel.qyF_.Close;
   frmFonteConsRel.qyF_.SQL.Clear;
   frmFonteConsRel.qyF_.SQL.Add('SELECT * FROM ORCAMENTO WHERE CODIGO IS NOT NULL');
   frmFonteConsRel.qyF_.SQL.Add('AND FUNCAO  = :FUNCAO');
   frmFonteConsRel.qyF_.SQL.Add('AND ESFERA  = :ESFERA');
   frmFonteConsRel.qyF_.Parameters.ParamByName('FUNCAO').Value  := '10';
   frmFonteConsRel.qyF_.Parameters.ParamByName('ESFERA').Value  := '10';
   frmFonteConsRel.qyF_.SQL.Add('order by unorc,programa, acao, locali');
   frmFonteConsRel.qyF_.ExecSQL;
   frmFonteConsRel.qyF_.Open;

   frmFonteConsRel.lbFonte.Caption := 'Função igual a 10 e Esfera igual de 10';

   frmFonteConsRel.Preview;
   frmFonteConsRel.Free;
end;

end.
