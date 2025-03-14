program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
x,y :Integer;

begin
Readln(x,y);

Writeln(Format('0 valor de %d + %d = %d',[x,y,x+y]));
Writeln(Format('O valor de %d - %d = %d',[x,y,x-y]));
Writeln(Format('O valor de %d * %d = %d',[x,y,x*y]));
Writeln(Format('O valor de %d / %d = %f',[x,y,x/y]));
Readln;
end.
