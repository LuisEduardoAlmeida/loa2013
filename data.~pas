unit data;
//remoto Provider=SQLOLEDB.1;Password="mmc10bpm'";Persist Security Info=True;User ID=sa;Initial Catalog=PProposta2013;Data Source=172.30.124.6;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=ORCAMENTO;Use Encryption for Data=False;Tag with column collation when possible=False
//remoto Provider=SQLOLEDB.1;Password="mmc10bpm'";Persist Security Info=True;User ID=sa;Initial Catalog=Emendas2013;Data Source=172.30.124.6;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=ORCAMENTO;Use Encryption for Data=False;Tag with column collation when possible=False
//remoto Provider=SQLOLEDB.1;Password="mmc10bpm'";Persist Security Info=True;User ID=sa;Initial Catalog=Lei2013;Data Source=172.30.124.6;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=SEPLA32;Use Encryption for Data=False;Tag with column collation when possible=False

//local Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;User ID=sa;Initial Catalog=PProposta2013;Data Source=(local);Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=ORCAMENTO;Use Encryption for Data=False;Tag with column collation when possible=False
//local Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;User ID=sa;Initial Catalog=Emendas2013;Data Source=(local);Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=ORCAMENTO;Use Encryption for Data=False;Tag with column collation when possible=False
//local Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;User ID=sa;Initial Catalog=Lei2013;Data Source=(local);Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=SEPLA32;Use Encryption for Data=False;Tag with column collation when possible=False

//remoto Provider=SQLOLEDB.1;Password="mmc100bpm'";Persist Security Info=True;User ID=sa;Initial Catalog=PProposta2013;Data Source=186.215.108.114;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=ORCAMENTO;Use Encryption for Data=False;Tag with column collation when possible=False
//remoto Provider=SQLOLEDB.1;Password="mmc100bpm'";Persist Security Info=True;User ID=sa;Initial Catalog=Emendas2013;Data Source=186.215.108.114;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=ORCAMENTO;Use Encryption for Data=False;Tag with column collation when possible=False
//remoto Provider=SQLOLEDB.1;Password="mmc100bpm'";Persist Security Info=True;User ID=sa;Initial Catalog=Lei2013;Data Source=186.215.108.114;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=SEPLA32;Use Encryption for Data=False;Tag with column collation when possible=False

interface

uses                                                                 
  SysUtils, stdCtrls, Classes, DB, ADODB;

type
  TdmtData = class(TDataModule)
    adoCon: TADOConnection;
    ADOQuery1: TADOQuery;
    Ado_Lei: TADOConnection;
    qyAuditoria_: TADOQuery;
    dsAuditoria_: TDataSource;
    qyAuditoria_Codigo: TAutoIncField;
    qyAuditoria_Usuario: TIntegerField;
    qyAuditoria_Tabela: TStringField;
    qyAuditoria_Emenda: TStringField;
    qyAuditoria_Acao: TStringField;
    qyEm_: TADOQuery;
    qyEm_Codigo: TAutoIncField;
    qyEm_NumEmenda: TStringField;
    qyAuditoria_Hora: TDateTimeField;
    qyAuditoria_data: TDateTimeField;
    Ado_Emendas: TADOConnection;
    procedure setComboBox(theKey: string; var sender: tComboBox);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Auditoria(Acao : String; Tabela : String; Emenda : String);
    Function RetZero(Num:String):String;
  end;

var
  dmtData: TdmtData;

implementation

uses main, HWarning;

{$R *.dfm}

procedure TdmtData.Auditoria(Acao, Tabela, Emenda: String);
begin
   If dsAuditoria_.State in [dsinactive] then qyAuditoria_.Open;
   ShowWarning('PROCESSANDO AUDITORIA, AGUARDE!!!');
   qyAuditoria_.Insert;            
   qyAuditoria_Usuario.Value  := frmMain.Codigo_Usuario;
   qyAuditoria_data.Value     := date;
   qyAuditoria_Hora.Value     := Time;
   qyAuditoria_Acao.Value     := Acao;
   qyAuditoria_Tabela.Value   := Tabela;
   qyAuditoria_Emenda.Value   := Emenda;
   qyAuditoria_.Post;
   HideWarning;
end;


procedure TdmtData.setComboBox(theKey: string; var sender: tComboBox);
var i, theSize : integer;
begin
  sender.itemIndex := -1;
  theSize := length(theKey);
  for i := 0 to (sender.items.count - 1) do begin
     if theKey = copy(sender.items[i],1,theSize) then begin
        sender.itemIndex := i;                                                                       
        break;
     end;
  end;

end;

function TdmtData.RetZero(Num: String): String;
var
  Lock,Dec,s : String;
begin
   Dec := '.00';
   Lock := FormatFloat('000',StrToFloat(num));
   Result  := Lock+dec;
end;


end.
