program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  quantidade,codigo : Integer;
  pre�os:array[1..6] of Double = (4.00,2.50,2.00,5.00,3.50,4.50);
  total : string;


begin

Writeln('1 - Refrigerante: R$ 4,00 ');
Writeln('2 - �gua: R$ 2,50');
Writeln('3 - Caf�: R$ 2,00');
Writeln('4 - Sandu�che: 5,00');
Writeln('5 - P�o de queijo: R$ 3,50');
Writeln('6 - Pastel: R$ 4,50');
readln(quantidade,codigo);
total := FloatToStr(pre�os[codigo]*quantidade);
Writeln(total);



Readln;

end.
