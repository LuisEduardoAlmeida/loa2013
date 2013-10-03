unit backup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, DB, ADODB,
  DBTables;

type
  TfrmBackup = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Shape3: TShape;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    txtBDName: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    txtFileName: TEdit;
    stp: TADOStoredProc;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackup: TfrmBackup;

implementation

uses data;

{$R *.dfm}

procedure TfrmBackup.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmBackup.BitBtn1Click(Sender: TObject);
begin
  with stp.parameters do begin
    paramByName('@p_BDName').value := txtBDName.text;
    paramByName('@p_fileName').value := txtFileName.text;
  end;

  try
    stp.execProc;
  except
    showMessage('Erro na operação de backup');
    exit;
  end;

  showMessage('Backup gravado com sucesso!');
end;

procedure TfrmBackup.FormActivate(Sender: TObject);
begin
  txtBDName.text := dmtData.adoCon.defaultDataBase;
  txtFileName.text := 'c:\orcamento 2005\backup\'+txtBDName.text+'_'+formatDateTime('mm"_"dd"_"hhnn',now)+'.bak';
end;

end.
