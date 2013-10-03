unit CadEmendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TfrmCadEmendas = class(TForm)
    pndownbar: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEmendas: TfrmCadEmendas;

implementation

{$R *.dfm}

procedure TfrmCadEmendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   frmCadEmendas := nil;
   
end;

procedure TfrmCadEmendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If key = #13 then
   Begin
      Perform(WM_NEXTDLGCTL,0,0);
      key := #0;
   end;
end;

end.
