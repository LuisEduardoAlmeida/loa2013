unit seaLocali;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons;

type
  TfrmSeaLocali = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    dbGrid: TDBGrid;
    sQry: TDataSource;
    qry: TADOQuery;
    qy_: TADOQuery;
    ds_: TDataSource;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSeaLocali: TfrmSeaLocali;

implementation

uses data, proposta, Emendas, EmendasNew;

{$R *.dfm}

procedure TfrmSeaLocali.FormActivate(Sender: TObject);
begin
  If frmEmendasNew <> nil then exit;
  
  with qry, qry.parameters, frmProposta do begin
    close;
    clear;
    SQL.add('SELECT * FROM locali');
    SQL.add(' WHERE programa = :programa AND');
    SQL.add('       acao = :acao');
    SQL.add('   ORDER BY locali');
    paramByName('programa').value := copy(cmbPrograma.text,1,4);
    paramByName('acao').value := copy(cmbAcao.text,1,4);
    ExecSQL;
    open;
  end;



end;

end.
