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


Writeln('Ol� ',nome,' Atualmente voc� possui ',idade,' anos. Daqui a 5 anos voc� ter� ',Idade + 5,' anos');


Readln;

end.
