unit UnitChoosePiece;

interface

uses
  Vcl.Graphics, Vcl.Forms, Vcl.Buttons, System.Classes, Vcl.Controls;

type
  TFChooseForm = class(TForm)
    RookButton, KnightButton, BishopButton, QueenButton: TSpeedButton;
    procedure Click(Sender: TObject);
  end;

var
  FChooseForm: TFChooseForm;

implementation

{$R *.dfm}

uses UnitMain;

procedure TFChooseForm.Click(Sender: TObject);
begin
    FChooseForm.Caption := TSpeedButton(Sender).Caption;
    FChooseForm.Close;
end;

end.
