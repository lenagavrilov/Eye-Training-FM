unit f_EyeTraining;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.MultiView, FMX.Objects, FMX.Media, FMX.StdCtrls,
  FMX.Ani;

type
  TForm1 = class(TForm)
    MultiView1: TMultiView;
    Ex1: TButton;
    ex2: TButton;
    Line1: TLine;
    Circle1: TCircle;
    Panel2: TPanel;
    btnStart: TButton;
    btnStop: TButton;
    FloatAnimation1: TFloatAnimation;
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}



procedure TForm1.btnStartClick(Sender: TObject);
begin
  FloatAnimation1.StartValue := Line1.Position.X;
  FloatAnimation1.StopValue := Line1.Position.X + line1.Width;
  FloatAnimation1.Enabled := True;
end;

procedure TForm1.btnStopClick(Sender: TObject);
begin
  FloatAnimation1.Enabled := False;
end;

end.
