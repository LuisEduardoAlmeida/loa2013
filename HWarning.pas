unit HWarning;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, Animate, RxGrdCpt;

type
  THWarningForm = class(TForm)
    AnimatedImage: TAnimatedImage;
    lbWarning: TLabel;
    RxGradientCaption1: TRxGradientCaption;
    procedure FormCreate(Sender: TObject);
  end;

var
	HWarningForm: THWarningForm;

procedure ShowWarning(Warning: String);
procedure HideWarning;

implementation

{$R *.DFM}

procedure ShowWarning(Warning: String);
begin
//  exit;
  try
     screen.Cursor := crSQLWait;
     if (HWarningForm = nil) then HWarningForm := THWarningForm.Create(Application);
         HWarningForm.AnimatedImage.Active := True;
         HWarningForm.lbWarning.Caption := '[ '+ Warning + ' ]';
         //HWarningForm.Show;
         ShowWindow(HWarningForm.Handle, SW_SHOWNOACTIVATE);
         HWarningForm.Update;
  except
  end;
end;

procedure HideWarning;
begin
  try
    // if (HWarningForm <> nil) and (HWarningForm.Visible) then
    if (HWarningForm <> nil) then
    begin
      HWarningForm.AnimatedImage.Active := False;
      //HWarningForm.Hide;
      ShowWindow(HWarningForm.Handle, SW_HIDE);
      screen.Cursor := crDefault;
    end;
  except
  end;
end;

procedure THWarningForm.FormCreate(Sender: TObject);
begin
   Left := (Screen.Width - Width) div 2;
   Top := (Screen.Height - Height) div 2;
end;

initialization
    HWarningForm := nil;
end.
