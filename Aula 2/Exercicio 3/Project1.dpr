program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
Nomes: array[0..2] of string;
Valores:array[0..2] of Integer;
I:Integer;

begin

for I := 0 to 2 do
  begin
    Writeln(Format('Informe o %d nome',[I+1]));
    Readln(Nomes[i]);
    Writeln(Format('Informe a idade de %s',[Nomes[i]]));
    Readln(Valores[i]);
  end;

  for I := 0 to 2 do
  begin
    Writeln(Format('%s tem %d anos',[Nomes[i],Valores[i]]));
  end;
   Writeln(Nomes[0],',',Nomes[1],' e ',Nomes[1],' juntos tem ',Valores[0]+Valores[1]+Valores[2] ,' anos');
Readln;

end.
