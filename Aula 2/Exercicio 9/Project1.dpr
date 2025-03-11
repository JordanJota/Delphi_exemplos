program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
numero,soma,maior,menor,contador: Integer ;

begin
while True do
begin
  Readln(numero);
  if numero = 0 then
    Break;

  soma := numero + soma;

  if contador = 0 then

    begin
      maior := numero;
      menor := numero;
    end
  else
  begin
    if numero > maior then
    maior := numero;
    if  numero < menor then
    menor := numero;
    end;
  contador := contador + 1;
end;


Writeln('menor ',menor);
Writeln('maior ',maior);

writeln('media ',FormatFloat('0.00',soma/contador));


Readln;
end.
