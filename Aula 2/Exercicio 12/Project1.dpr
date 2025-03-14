program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  quantidade,codigo : Integer;
  preços:array[1..6] of Double = (4.00,2.50,2.00,5.00,3.50,4.50);
  total : string;


begin

Writeln('1 - Refrigerante: R$ 4,00 ');
Writeln('2 - Água: R$ 2,50');
Writeln('3 - Café: R$ 2,00');
Writeln('4 - Sanduíche: 5,00');
Writeln('5 - Pão de queijo: R$ 3,50');
Writeln('6 - Pastel: R$ 4,50');
readln(quantidade,codigo);
total := FloatToStr(preços[codigo]*quantidade);
Writeln(total);



Readln;

end.
