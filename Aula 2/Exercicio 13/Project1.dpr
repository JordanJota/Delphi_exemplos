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
      Write('Digite o preço de custo do produto ', i, ': ');
      ReadLn(Custo);
      Write('Digite o preço de venda do produto ', i, ': ');
      ReadLn(Venda);

      SomaCusto := SomaCusto + Custo;
      SomaVenda := SomaVenda + Venda;
    end;

      MediaCusto := SomaCusto / N;
      MediaVenda := SomaVenda / N;

    WriteLn(Format('Média do preço de custo: R$ %.2f', [MediaCusto]));
    WriteLn(Format('Média do preço de venda: R$ %.2f', [MediaVenda]));

    if MediaVenda > MediaCusto then
      WriteLn('A indústria obteve LUCRO.')
    else if MediaVenda < MediaCusto then
      WriteLn('A indústria teve PREJUÍZO.')
    else
      WriteLn('A indústria ficou no ZERO A ZERO (sem lucro nem prejuízo).');
  ReadLn;


end.
