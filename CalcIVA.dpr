{
   Calculadora de IVA
         v1.5

   Autor: TSU Francisco J. Sáez S.

   Desarrollado en Delphi 7. No se usaron componentes de terceros.

   Calabozo, Guárico. Venezuela
   Septiembre 2010
}

program CalcIVA;

uses
  Forms,
  Calc in 'Calc.pas' {FCalc},
  Acerca in 'Acerca.pas' {FAcerca};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Calculadora del IVA';
  Application.CreateForm(TFCalc, FCalc);
  Application.CreateForm(TFAcerca, FAcerca);
  Application.Run;
end.
