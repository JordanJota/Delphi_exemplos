program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
idade : Integer;

begin

Writeln('digite a sua idade');
Readln(idade);

case idade of
  5 .. 7:
    Writeln('infantil A');
  8 .. 10:
    Writeln('infantil B');
  11 .. 13:
    Writeln('juvenil A');
  14 .. 17:
    Writeln('juvenil B');
  else
     Writeln('adulto');
end;

Readln;



end.
