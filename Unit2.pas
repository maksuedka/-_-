unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, System.IOUtils, Vcl.Imaging.jpeg, Vcl.Buttons;

type
  TForm2 = class(TForm)
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  Timer1.Enabled:=True;
  ProgressBar1.Visible:=True;
  Panel1.Visible:=True;
  SpeedButton1.Visible:=False;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + 1;
  Panel1.Caption := inttostr(ProgressBar1.Position) + '%' ;

  if ProgressBar1.Position = ProgressBar1.Max then
  begin
    Timer1.Enabled := False;
    Close;
  end;
end;

end.
