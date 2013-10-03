unit SelRelUnorcProgAcaoFonte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, ADODB, DBCtrls, CheckLst,
  Buttons, ExtCtrls;
type
  TFrmSelRelUnorcProgAcaoFonte=class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    QRYUnorc: TADOQuery;
    dsUnorc: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    lista_chk: TCheckListBox;
    QRYUnorccodigo: TStringField;
    QRYUnorcdescricao: TStringField;
    procedure BitBtn1Click(Sender : TObject);
    procedure FormKeyPress(Sender : TObject);
    procedure FormCreate(Sender : TObject);
    procedure lista_chkClickCheck(Sender : TObject);
    procedure BitBtn2Click(Sender : TObject);
    procedure BitBtn4Click(Sender : TObject);
    procedure BitBtn3Click(Sender : TObject);
    procedure qyrPro(Sender : TObject);

  private
    procedure _PROC_005DE438(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    Lista_SQL : String;
    Procedure ListaOrgaos();
    Procedure Pesquisa(Parametro: String);
  end ;

var
  FrmSelRelUnorcProgAcaoFonte: TFrmSelRelUnorcProgAcaoFonte;

{This file is generated by DeDe Ver 3.50.04 Copyright (c) 1999-2002 DaFixer}

implementation

uses AnoSeguiPorUnorProgAcaoFontRel;

{$R *.DFM}

procedure TFrmSelRelUnorcProgAcaoFonte.BitBtn1Click(Sender : TObject);
var lu : string;
    i,chk : integer;
begin
lu :=   ' SELECT distinct a.unorc,u.descricao as UnorcD                                         '+
        ' ,a.programa,p.descricao as programaD,(SELECT valorPrograma = case  when sum(ase.valor)=0 or sum(ase.valor) is null then 0 else sum(ase.valor) end '+
        ' FROM ANOSEGUINTE ase where ase.unorc=a.unorc and ase.programa=a.programa ) as valorPrograma                                                                '+
        ',a.acao,ac.descricao as AcaoD,(SELECT valorPrograma = case  when sum(ase.valor)=0 or sum(ase.valor) is null then 0 else sum(ase.valor) end                  '+
        ' FROM ANOSEGUINTE ase where ase.unorc=a.unorc and ase.programa=a.programa and ase.acao=a.acao ) as valorAcao                                                '+
        ' ,a.fonte,f.descricao as fontD,(SELECT valorPrograma = case  when sum(ase.valor)=0 or sum(ase.valor) is null then 0 else sum(ase.valor) end                  '+
        ' FROM ANOSEGUINTE ase where ase.unorc=a.unorc and ase.programa=a.programa and ase.acao=a.acao and ase.fonte=a.fonte ) as valorFonte                         '+
        ' ,valor = case  when sum(a.valor)=0 or sum(a.valor) is null then 0 else sum(a.valor) end                                                '+
        '  FROM ANOSEGUINTE a                                                                                                                   '+
        ' LEFT JOIN UNORC u on u.codigo = a.unorc                                                                                               '+
        ' LEFT JOIN PROGRAMA p on p.codigo = a.programa                                                                                         '+
        ' LEFT JOIN ACAO ac on ac.codigo = a.acao                                                                                               '+
        ' LEFT JOIN fonte f on a.fonte = f.codigo                                                                                               '+
        ' where 1=1                                                                                                     ';

         FrmAnoSeguiPorUnorProgAcaoFontRel := nil;
         if FrmAnoSeguiPorUnorProgAcaoFontRel = nil then FrmAnoSeguiPorUnorProgAcaoFontRel := TFrmAnoSeguiPorUnorProgAcaoFontRel.Create(Self);
        with  FrmAnoSeguiPorUnorProgAcaoFontRel.qryUnorc, FrmAnoSeguiPorUnorProgAcaoFontRel.qryUnorc.SQL do
        begin
           close;
           clear;
           Add(lu);
           For i := 0 to lista_chk.Count -1 do
           Begin
               If lista_chk.Checked[i] Then
               Begin
                   chk :=chk +1;
                   if chk = 1 then add('and a.unorc = '''+(Copy(lista_chk.Items.Strings[i],1,5))+'''')
                   else add('or a.unorc = '''+(Copy(lista_chk.Items.Strings[i],1,5))+'''');

               end;
            end;
       add(' group by a.unorc,u.descricao,a.programa,p.descricao,a.acao,ac.descricao,a.fonte,f.descricao ');
       add(' order by a.unorc,a.programa,a.acao   ');
       ExecSQL;
       Open;
       First;
    end;
    if FrmAnoSeguiPorUnorProgAcaoFontRel.qryUnorc.RecordCount <> 0 then
    begin
         FrmAnoSeguiPorUnorProgAcaoFontRel.report.Preview;
         FrmAnoSeguiPorUnorProgAcaoFontRel.report.free;
    end else
    begin
        ShowMessage('N�o ha informa��o para o(s) Org�o(os) selecionado(s)!');
        exit;
    end;

end;

procedure TFrmSelRelUnorcProgAcaoFonte.FormKeyPress(Sender : TObject);
begin
(*
005DE6A0   80391B                 cmp     byte ptr [ecx], $1B
005DE6A3   7505                   jnz     005DE6AA

* Reference to : TApplication._PROC_004676D0()
|
005DE6A5   E82690E8FF             call    004676D0
005DE6AA   C3                     ret

*)
end;

procedure TFrmSelRelUnorcProgAcaoFonte.FormCreate(Sender : TObject);
begin
   If dsUnorc.State in [dsinactive] then QRYUnorc.Open;
   Lista_SQL := QRYUnorc.SQL.Text;
   ListaOrgaos;

end;

procedure TFrmSelRelUnorcProgAcaoFonte.lista_chkClickCheck(Sender : TObject);
begin
(*
005DE7F8   55                     push    ebp
005DE7F9   8BEC                   mov     ebp, esp
005DE7FB   6A00                   push    $00
005DE7FD   53                     push    ebx
005DE7FE   56                     push    esi
005DE7FF   57                     push    edi
005DE800   8BD8                   mov     ebx, eax
005DE802   33C0                   xor     eax, eax
005DE804   55                     push    ebp

* Possible String Reference to: '�W����_^[Y]Í@'
|
005DE805   68A0E85D00             push    $005DE8A0

***** TRY
|
005DE80A   64FF30                 push    dword ptr fs:[eax]
005DE80D   648920                 mov     fs:[eax], esp

* Reference to control TFrmSelRelUnorcProgAcaoFonte.lista_chk : TCheckListBox
|
005DE810   8B8310030000           mov     eax, [ebx+$0310]

* Reference to field TCheckListBox.OFFS_0218
|
005DE816   8B8018020000           mov     eax, [eax+$0218]
005DE81C   8B10                   mov     edx, [eax]
005DE81E   FF5214                 call    dword ptr [edx+$14]
005DE821   8BF0                   mov     esi, eax
005DE823   4E                     dec     esi
005DE824   85F6                   test    esi, esi
005DE826   7C62                   jl      005DE88A
005DE828   46                     inc     esi
005DE829   C705142D610000000000   mov     dword ptr [$00612D14], $00000000
005DE833   8B15142D6100           mov     edx, [$00612D14]

* Reference to control TFrmSelRelUnorcProgAcaoFonte.lista_chk : TCheckListBox
|
005DE839   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: CheckLst.Proc_004AE788
|
005DE83F   E844FFECFF             call    004AE788
005DE844   84C0                   test    al, al
005DE846   7439                   jz      005DE881
005DE848   A1142D6100             mov     eax, dword ptr [$00612D14]
005DE84D   8D848320030000         lea     eax, [ebx+eax*4+$0320]
005DE854   50                     push    eax
005DE855   8D4DFC                 lea     ecx, [ebp-$04]

* Reference to control TFrmSelRelUnorcProgAcaoFonte.lista_chk : TCheckListBox
|
005DE858   8B8310030000           mov     eax, [ebx+$0310]

* Reference to field TCheckListBox.OFFS_0218
|
005DE85E   8B8018020000           mov     eax, [eax+$0218]
005DE864   8B15142D6100           mov     edx, [$00612D14]
005DE86A   8B38                   mov     edi, [eax]
005DE86C   FF570C                 call    dword ptr [edi+$0C]
005DE86F   8B45FC                 mov     eax, [ebp-$04]
005DE872   B905000000             mov     ecx, $00000005
005DE877   BA01000000             mov     edx, $00000001

* Reference to: System.Proc_00404C74
|
005DE87C   E8F363E2FF             call    00404C74
005DE881   FF05142D6100           inc     dword ptr [$00612D14]
005DE887   4E                     dec     esi
005DE888   75A9                   jnz     005DE833
005DE88A   33C0                   xor     eax, eax
005DE88C   5A                     pop     edx
005DE88D   59                     pop     ecx
005DE88E   59                     pop     ecx
005DE88F   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[Y]Í@'
|
005DE892   68A7E85D00             push    $005DE8A7
005DE897   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.Proc_00404764
|
005DE89A   E8C55EE2FF             call    00404764
005DE89F   C3                     ret


* Reference to: System.Proc_00404028
|
005DE8A0   E98357E2FF             jmp     00404028
005DE8A5   EBF0                   jmp     005DE897

****** END
|
005DE8A7   5F                     pop     edi
005DE8A8   5E                     pop     esi
005DE8A9   5B                     pop     ebx
005DE8AA   59                     pop     ecx
005DE8AB   5D                     pop     ebp
005DE8AC   C3                     ret

*)
end;

procedure TFrmSelRelUnorcProgAcaoFonte.BitBtn2Click(Sender : TObject);
Var
  I : integer;
begin
    For i := 0 to lista_chk.Count - 1 do
        lista_chk.Checked[i] := True;

end;

procedure TFrmSelRelUnorcProgAcaoFonte.BitBtn4Click(Sender : TObject);
begin
(*
005DE8E4   C3                     ret

*)
end;

procedure TFrmSelRelUnorcProgAcaoFonte.BitBtn3Click(Sender : TObject);
Var
  I : integer;
begin
    For i := 0 to lista_chk.Count - 1 do
        lista_chk.Checked[i] := False;

end;

procedure TFrmSelRelUnorcProgAcaoFonte.qyrPro(Sender : TObject);
begin
(*
005DE91C   C3                     ret

*)
end;

procedure TFrmSelRelUnorcProgAcaoFonte._PROC_005DE438(Sender : TObject);
begin

end;

procedure TFrmSelRelUnorcProgAcaoFonte.ListaOrgaos;
begin
   QRYUnorc.Close;
   QRYUnorc.open;
   QRYUnorc.First;

   while not QRYUnorc.Eof do
   Begin
      lista_chk.Items.Add(QRYUnorccodigo.Value +' - '+QRYUnorcdescricao.Value);
      QRYUnorc.Next;
   End;
end;

procedure TFrmSelRelUnorcProgAcaoFonte.Pesquisa(Parametro: String);
begin
   QRYUnorc.Close;
   qryUnorc.SQL.Clear;
   qryUnorc.SQL.Add(Lista_SQL);
   qryUnorc.SQL.Add('Where U.Codigo = :Param');
   qryUnorc.Parameters.ParamByName('Param').Value := Parametro;
   qryUnorc.ExecSQL;
   qryUnorc.Open;
end;

end.