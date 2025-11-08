program CalculadoraFinalprincipal;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Calculadora},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TCalculadora, Calculadora);
  Application.Run;
end.
