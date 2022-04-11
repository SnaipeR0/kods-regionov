program regions;

uses
  Forms,
  Region in 'Region.pas' {Form1},
  Unit2 in '..\Form2\Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
