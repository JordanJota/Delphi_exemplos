program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  nome:string;
  idade:Integer;

begin



Readln(nome,idade);


Writeln('Olá ',nome,' Atualmente você possui ',idade,' anos. Daqui a 5 anos você terá ',Idade + 5,' anos');


Readln;

end.
