unit Funcionalidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, ExtCtrls, RXCtrls, StdCtrls, Mask, ToolEdit,
  CurrEdit, RXDBCtrl, DB, ADODB, Buttons;

type
  TFrmFuncionalidade = class(TForm)
    qyReceita_: TADOQuery;
    qyDespesa_: TADOQuery;
    qyReceita_RECEITA: TBCDField;
    qyDespesa_DESPESA: TBCDField;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    LB: TRxLabel;
    btAtualiza: TdxButton;
    edReceita: TRxLabel;
    edDespesa: TRxLabel;
    edDiferenca: TRxLabel;
    Bevel1: TBevel;
    RxLabel4: TRxLabel;
    btfechar: TSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFecharClick(Sender: TObject);
    procedure btAtualizaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btAtualizaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btFecharMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFuncionalidade: TFrmFuncionalidade;

implementation

uses HWarning, data;

{$R *.dfm}

procedure TFrmFuncionalidade.FormActivate(Sender: TObject);
begin
   HideWarning;
end;

procedure TFrmFuncionalidade.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If key = #13 then
   Begin
      Perform(WM_NEXTDLGCTL,0,0);
      key :=#0;
   End;
end;

procedure TFrmFuncionalidade.btFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TFrmFuncionalidade.btAtualizaClick(Sender: TObject);
begin
   ShowWarning('ATUALIZANDO DADOS, AGUARDE...');
   qyReceita_.Close;
   qyReceita_.open;

   qyDespesa_.Close;
   qyDespesa_.open;

   edReceita.Caption   := FormatCurr('###,###,###',qyReceita_RECEITA.Value);
   edDespesa.Caption   := FormatCurr('###,###,###',qyDespesa_DESPESA.Value);
   edDiferenca.Caption := FormatCurr('###,###,###',qyReceita_RECEITA.Value - qyDespesa_DESPESA.Value);
   //LBM.Caption := 'ATUALIZADO AS '+FormatDateTime('hh:MM:ss',Time)+' -  DATA: '+DateToStr(DATE);
   HideWarning;
end;

procedure TFrmFuncionalidade.FormShow(Sender: TObject);
begin
   btAtualiza.OnClick(nil);
end;

procedure TFrmFuncionalidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF Key = VK_F5 THEN btAtualiza.OnClick(NIL);
   IF Key = VK_F7 THEN btFechar.OnClick(NIL);
end;

procedure TFrmFuncionalidade.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   LB.Caption := '';
end;

procedure TFrmFuncionalidade.btAtualizaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  LB.Caption := 'Atualiza os dados automaticamente. Tecle [F5]';
end;

procedure TFrmFuncionalidade.btFecharMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   LB.Caption := 'Permite a saída deste formulário. Tecle [F7]';
end;

end.
