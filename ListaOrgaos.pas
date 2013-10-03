unit ListaOrgaos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, CheckLst, dxCore, dxButton, ExtCtrls;

type
  TFrmListaOrgaos = class(TForm)
    CkB_: TCheckListBox;
    qry: TADOQuery;
    sQry: TDataSource;
    qrycodigo: TStringField;
    qrydescricao: TStringField;
    qryorgaoS: TStringField;
    qryorgaoD: TStringField;
    btFechar: TdxButton;
    btImprimir: TdxButton;
    qy_: TADOQuery;
    qy_codigo: TStringField;
    qy_descricao: TStringField;
    qy_orgaoS: TStringField;
    qy_orgaoD: TStringField;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    procedure FormShow(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btImprimirClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure ListaCheck();
  end;

var
  FrmListaOrgaos: TFrmListaOrgaos;

implementation

uses data, UnoQDDGerRel, UnoQDDGerRel02;

{$R *.dfm}

{ TForm1 }

procedure TFrmListaOrgaos.ListaCheck;
begin
   qry.Close;
   qry.open;
   qry.First;

   while not qry.Eof do
   Begin
      CkB_.Items.Add(qrycodigo.AsString+' - '+qrydescricao.Value);
      qry.Next;
   End;

end;

procedure TFrmListaOrgaos.FormShow(Sender: TObject);
begin
   ListaCheck;
end;

procedure TFrmListaOrgaos.btFecharClick(Sender: TObject);
begin
   Close;
   
end;

procedure TFrmListaOrgaos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 Then
   Begin
      Perform(WM_NEXTDLGCTL,0,0);
      Key := #0;
   End;
end;

procedure TFrmListaOrgaos.btImprimirClick(Sender: TObject);
Var
  i : Integer;
begin
    For i := 0 to CkB_.Count -1 do
    Begin
       If CkB_.Checked[i] Then
       Begin
          Application.CreateForm(TfrmUnoQDDGerRel02, frmUnoQDDGerRel02);
          frmUnoQDDGerRel02.qryEsfera.Close;
          frmUnoQDDGerRel02.qryEsfera.Parameters.ParamByName('Codigo').Value := Copy(CkB_.Items.Strings[i],1,5);
          frmUnoQDDGerRel02.qryEsfera.ExecSQL;
          frmUnoQDDGerRel02.qryEsfera.Open;

          qy_.Close;
          qy_.Parameters.ParamByName('Unorc').Value := Copy(CkB_.Items.Strings[i],1,5);
          qy_.ExecSQL;
          qy_.Open;          

          frmUnoQDDGerRel02.lborgaos.Caption    := qy_orgaoS.Value;
          frmUnoQDDGerRel02.lborgaoD.Caption    := qy_orgaoD.Value;
          frmUnoQDDGerRel02.lbCodigo.Caption    := qy_codigo.Value;
          frmUnoQDDGerRel02.lbDescricao.Caption := qy_descricao.Value;

          frmUnoQDDGerRel02.report.Preview;
          frmUnoQDDGerRel02.report.Free;

       End;
    End;
end;

procedure TFrmListaOrgaos.dxButton1Click(Sender: TObject);
Var
 I : Integer;
begin
   For i := 0 to CkB_.Count - 1 do
        CkB_.Checked[i] := True;

end;

procedure TFrmListaOrgaos.dxButton2Click(Sender: TObject);
Var
 I : Integer;
begin
   For i := 0 to CkB_.Count - 1 do
        CkB_.Checked[i] := False;
end;

end.
