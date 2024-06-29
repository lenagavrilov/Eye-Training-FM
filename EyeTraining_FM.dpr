program EyeTraining_FM;

uses
  System.StartUpCopy,
  FMX.Forms,
  f_EyeTraining in '..\f_EyeTraining.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
