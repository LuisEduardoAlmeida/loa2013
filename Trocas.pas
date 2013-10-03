unit Trocas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TfrmTrocas = class(TForm)
    edVelha: TEdit;
    Button1: TButton;
    qyemendas_: TADOQuery;
    edNova: TEdit;
    qyEv: TADOQuery;
    qyEL: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrocas: TfrmTrocas;

implementation

uses data;

{$R *.dfm}

procedure TfrmTrocas.Button1Click(Sender: TObject);
begin
    qyemendas_.Close;
    qyemendas_.sql.clear;
    qyemendas_.sql.Add('UPDATE EMENDAS SET NUMEMENDA=:novaemenda WHERE NUMEMENDA=:velhaemenda');
    qyemendas_.Parameters.ParamByName('VelhaEmenda').Value := edVelha.Text;
    qyemendas_.Parameters.ParamByName('NovaEmenda').Value := edNova.Text;
    qyemendas_.ExecSQL;


    qyEV.Close;
    qyEV.SQL.clear;
    qyEV.SQL.Add('UPDATE EMENDAS_VALOR SET EMENDA=:velhaemenda WHERE EMENDA=:novaemenda');
    qyEV.Parameters.ParamByName('VelhaEmenda').Value := edVelha.Text;
    qyEV.Parameters.ParamByName('NovaEmenda').Value := edNova.Text;
    qyEV.ExecSQL;


    qyEL.Close;
    qyEL.sql.Clear;
    qyEL.sql.Add('UPDATE vereadores_emendas SET EMENDA=:velhaemenda WHERE EMENDA=:novaemenda');
    qyEL.Parameters.ParamByName('VelhaEmenda').Value := edVelha.Text;
    qyEL.Parameters.ParamByName('NovaEmenda').Value := edNova.Text;
    qyEL.ExecSQL;

    qyEL.Close;
    qyEL.sql.Clear;
    qyEL.sql.Add('UPDATE emendas_locali SET EMENDA=:velhaemenda WHERE EMENDA=:novaemenda');
    qyEL.Parameters.ParamByName('VelhaEmenda').Value := edVelha.Text;
    qyEL.Parameters.ParamByName('NovaEmenda').Value := edNova.Text;
    qyEL.ExecSQL;


    ShowMessage('Transação OK!!!');
end;

end.


