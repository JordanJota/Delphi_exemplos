program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  a,b:Integer;

begin
Readln(a,b);
Writeln(a-b);
Writeln(a+b);
Writeln(a*b);

if a>b then
Writeln(a)
else
Writeln(b);

Readln;

end.
