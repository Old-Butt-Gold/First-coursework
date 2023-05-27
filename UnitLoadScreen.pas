unit UnitLoadScreen;

interface

uses
  Winapi.Windows, Vcl.Forms, Vcl.ExtCtrls, Vcl.Graphics, Vcl.Imaging.jpeg,
  System.Classes, Vcl.Controls;

type
  TStartForm = class(TForm)
    LoadScreenImage: TImage;
    TTimerLoadScreen: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure TTimerLoadScreenTimer(Sender: TObject);
  end;

var
  StartForm: TStartForm;

implementation

{$R *.dfm}

procedure TStartForm.FormCreate(Sender: TObject);
Begin
    SetWindowRgn(Handle, CreateEllipticRgn(0, 0, 500, 500), False);
End;

procedure TStartForm.TTimerLoadScreenTimer(Sender: TObject);
begin
    TTimerLoadScreen.Enabled := False;
end;

end.
