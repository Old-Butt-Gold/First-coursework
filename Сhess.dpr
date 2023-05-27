program Ñhess;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {FMainForm},
  Vcl.Themes,
  Vcl.Styles,
  ChessBoard in 'ChessBoard.pas',
  UnitSound in 'UnitSound.pas',
  UnitLoadScreen in 'UnitLoadScreen.pas' {StartForm},
  DateUnit in 'DateUnit.pas',
  LinkedListUnit in 'LinkedListUnit.pas',
  UnitChoosePiece in 'UnitChoosePiece.pas' {FChooseForm};

{$R *.res}

begin
  Application.Initialize;

  StartForm := TStartForm.Create(Application);
  StartForm.Show;
  StartForm.Update;
  While StartForm.TTimerLoadScreen.Enabled do
      Application.ProcessMessages;
  StartForm.Hide;
  StartForm.Free;

  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Tablet Dark');
  Application.CreateForm(TFMainForm, FMainForm);
  Application.CreateForm(TFChooseForm, FChooseForm);
  Application.Run;
end.
