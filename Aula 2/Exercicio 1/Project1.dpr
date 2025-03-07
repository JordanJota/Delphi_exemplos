program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
 vetor : array[0..3] of Real;
 valor : Integer;
 total : Real;
 resultado : string;
begin

 for valor := 0  to 2 do
  begin
    Readln(vetor[valor]);
    total := total + vetor[valor];
  end;
  resultado := FormatFloat('0.0000',(total/3));
  Writeln(resultado);
  Readln(valor);







end.
