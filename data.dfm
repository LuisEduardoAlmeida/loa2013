�
 TDMTDATA 0�  TPF0TdmtDatadmtDataOldCreateOrderLeft�Top� Height7Width�  TADOConnectionadoConConnectionString$  Provider=SQLOLEDB.1;Password="mmc10bpm'";Persist Security Info=True;User ID=sa;Initial Catalog=Lei2013;Data Source=172.19.1.39;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=ORCAMENTO;Use Encryption for Data=False;Tag with column collation when possible=FalseLoginPromptProvider
SQLOLEDB.1Left Top  	TADOQuery	ADOQuery1
ConnectionadoCon
CursorTypectStatic
Parameters SQL.StringsSELECT * FROM DOPIF Left� Top  TADOConnectionAdo_LeiConnectionString"  Provider=SQLOLEDB.1;Password="mmc10bpm'";Persist Security Info=True;User ID=sa;Initial Catalog=Lei2013;Data Source=172.19.1.39;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=SEPLA32;Use Encryption for Data=False;Tag with column collation when possible=FalseLoginPromptProvider
SQLOLEDB.1Left Top�   	TADOQueryqyAuditoria_
ConnectionAdo_Emendas
CursorTypectStatic
Parameters SQL.StringsSELECT * FROM AUDITORIA Left� Top�  TAutoIncFieldqyAuditoria_Codigo	FieldNameCodigoReadOnly	  TIntegerFieldqyAuditoria_Usuario	FieldNameUsuario  TStringFieldqyAuditoria_Tabela	FieldNameTabela  TStringFieldqyAuditoria_Emenda	FieldNameEmendaSize
  TStringFieldqyAuditoria_Acao	FieldNameAcao  TDateTimeFieldqyAuditoria_Hora	FieldNameHora  TDateTimeFieldqyAuditoria_data	FieldNamedata   TDataSourcedsAuditoria_DataSetqyAuditoria_Left� Top�   	TADOQueryqyEm_
ConnectionAdo_Emendas
CursorTypectStatic
Parameters SQL.Strings%SELECT Codigo, NumEmenda FROM EmendasOrder By NumEmenda Left� TopH TAutoIncFieldqyEm_Codigo	FieldNameCodigoReadOnly	  TStringFieldqyEm_NumEmenda	FieldName	NumEmenda	FixedChar	Size
   TADOConnectionAdo_EmendasConnectionString(  Provider=SQLOLEDB.1;Password="mmc10bpm'";Persist Security Info=True;User ID=sa;Initial Catalog=Emendas2013;Data Source=172.19.1.39;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=ORCAMENTO;Use Encryption for Data=False;Tag with column collation when possible=FalseLoginPromptProvider
SQLOLEDB.1Left TopH   