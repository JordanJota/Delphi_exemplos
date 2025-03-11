program Project1.dpr;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
x,maior,menor,i,valor: Integer;


begin
Writeln('digite um numero');
Readln(x);
for i := 1 to x do
  begin
  Readln(valor);
  if i = 1 then
  begin
  maior := valor;
  menor := valor;
  end
  else
  begin
    if valor > maior then
    maior := valor;
    if valor < menor then
    menor := valor;
  end;
  end;
Writeln(maior);
Writeln(menor);
Readln;
end.
