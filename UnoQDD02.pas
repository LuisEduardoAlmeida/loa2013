unit UnoQDD02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, QRPDFFilter;

type
  TfrmUnoQDD02 = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    qyQDD: TADOQuery;
    dsQDD: TDataSource;
    QRShape11: TQRShape;
    qyQDDVALORTOTAL_ORC: TBCDField;
    qyQDDLOCALI: TIntegerField;
    qyQDDELDESPESA: TStringField;
    qyQDDINDUSO: TStringField;
    qyQDDFONTE: TStringField;
    qyQDDESFERA: TStringField;
    qyQDDUNORC: TStringField;
    qyQDDFUNCAO: TStringField;
    qyQDDSUBFUNCAO: TStringField;
    qyQDDPROGRAMA: TStringField;
    qyQDDACAO: TStringField;
    qyQDDREGIONAL: TStringField;
    qyQDDDESCRICAO: TStringField;
    qyQDDMETAFISICA: TBCDField;
    qyQDDLOCALIS: TStringField;
    qyQDDFUNCAOD: TStringField;
    qyQDDSUBFUNCAOD: TStringField;
    qyQDDCAT: TStringField;
    qyQDDCATD: TStringField;
    qyQDDGRUPO: TStringField;
    qyQDDGRUPOD: TStringField;
    qyQDDMOD: TStringField;
    qyQDDMODD: TStringField;
    qyQDDELEM: TStringField;
    qyQDDORGAO: TStringField;
    qyQDDORGAOS: TStringField;
    qyQDDORGAOD: TStringField;
    qyQDDACAOD: TStringField;
    qyQDDPROGRAMAD: TStringField;
    qyQDDUNORCD: TStringField;
    qyQDDRECURSO: TStringField;
    qyQDDESFERAD: TStringField;
    qyQDDTIPOLOCALD: TStringField;
    qyQDDPODER: TStringField;
    qyQDDPODERD: TStringField;
    qyQDDRECURSOD: TStringField;
    qyQDDPRODUTO: TStringField;
    qyQDDMETA: TStringField;
    qyQDDFISCAL: TBCDField;
    qyQDDSEGURIDADE: TBCDField;
    qyQDDTESOURO: TBCDField;
    qyQDDOUTRASF: TBCDField;
    qyQDDFISTESOURO: TBCDField;
    qyQDDSEGTESOURO: TBCDField;
    qyQDDSEGOUTRAS: TBCDField;
    qyQDDPESSOAL: TBCDField;
    qyQDDJUROS: TBCDField;
    qyQDDOUTRAS: TBCDField;
    qyQDDINVEST: TBCDField;
    qyQDDINVFIN: TBCDField;
    qyQDDAMORTIZA: TBCDField;
    qyQDDDETACAO1: TStringField;
    qyQDDDETACAO2: TStringField;
    QRPDFFilter1: TQRPDFFilter;
    lblEsfera: TQRLabel;
    QRDBText3: TQRDBText;
    lbano: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    rdbCatOutras: TQRDBText;
  private

  public

  end;

var
  frmUnoQDD02: TfrmUnoQDD02;

implementation

{$R *.DFM}

end.
