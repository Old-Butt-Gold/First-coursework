unit UnitSound;

interface

type
  TSound = class
  private
    FMusicName: string;
    FIsDownloaded: Boolean;
    Procedure LoadMusic;
  public
    Constructor Create(AMusicName: string);
    Procedure PlayMusic;
    Procedure StopMusic;
    Property Available: Boolean read FIsDownloaded;
  end;

implementation

uses
  MMSystem;

Constructor TSound.Create(AMusicName: string);
Begin
    FMusicName := AMusicName;
    LoadMusic;
End;

Procedure TSound.LoadMusic;
Var
    SoundFile: file;
    Extension: String;
begin
    Try
        AssignFile(SoundFile, FMusicName);
        Reset(SoundFile);
        Extension := Copy(FMusicName, Length(FMusicName) - 3, 4);
        If Extension = '.wav' Then
            FIsDownloaded := True
        Else
            FIsDownloaded := False;
    Except
        FIsDownloaded := False;
    End;
end;

Procedure TSound.PlayMusic;
Begin
    PlaySound(PChar(FMusicName), 0, SND_ASYNC);
End;

Procedure TSound.StopMusic;
Begin
    PlaySound(nil, 0, SND_PURGE); //SND_PURGE //0, 0, Snd_Purge
End;

end.
