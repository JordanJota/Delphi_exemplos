program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  N, i: Integer;
  Custo, Venda, SomaCusto, SomaVenda, MediaCusto, MediaVenda: Real;

begin
    Write('Digite a quantidade de produtos: ');
    ReadLn(N);

    for i := 1 to N do
    begin
      Write('Digite o pre�o de custo do produto ', i, ': ');
      ReadLn(Custo);
      Write('Digite o pre�o de venda do produto ', i, ': ');
      ReadLn(Venda);

      SomaCusto := SomaCusto + Custo;
      SomaVenda := SomaVenda + Venda;
    end;

      MediaCusto := SomaCusto / N;
      MediaVenda := SomaVenda / N;

    WriteLn(Format('M�dia do pre�o de custo: R$ %.2f', [MediaCusto]));
    WriteLn(Format('M�dia do pre�o de venda: R$ %.2f', [MediaVenda]));

    if MediaVenda > MediaCusto then
      WriteLn('A ind�stria obteve LUCRO.')
    else if MediaVenda < MediaCusto then
      WriteLn('A ind�stria teve PREJU�ZO.')
    else
      WriteLn('A ind�stria ficou no ZERO A ZERO (sem lucro nem preju�zo).');
  ReadLn;


end.
