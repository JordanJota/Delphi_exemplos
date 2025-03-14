program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
estados : array[0..26] of string = (
'AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA',
    'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN',
    'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'
);

estados_ciuidad: array[0..26] of string = (
   'Acre, Rio Branco', 'Alagoas, Macei�', 'Amap�, Macap�', 'Amazonas, Manaus',
    'Bahia, Salvador', 'Cear�, Fortaleza', 'Distrito Federal, Bras�lia', 'Esp�rito Santo, Vit�ria',
    'Goi�s, Goi�nia', 'Maranh�o, S�o Lu�s', 'Mato Grosso, Cuiab�', 'Mato Grosso do Sul, Campo Grande',
    'Minas Gerais, Belo Horizonte', 'Par�, Bel�m', 'Para�ba, Jo�o Pessoa', 'Paran�, Curitiba',
    'Pernambuco, Recife', 'Piau�, Teresina', 'Rio de Janeiro, Rio de Janeiro', 'Rio Grande do Norte, Natal',
    'Rio Grande do Sul, Porto Alegre', 'Rond�nia, Porto Velho', 'Roraima, Boa Vista', 'Santa Catarina, Florian�polis',
    'S�o Paulo, S�o Paulo', 'Sergipe, Aracaju', 'Tocantins, Palmas'
);


siglas: string;
encontrou : Boolean;

begin

Writeln('digite uma sigla');
Readln(siglas);
encontrou := False;

for var i := 0 to 26 do
    if siglas = estados[i] then
    begin
      encontrou := True;
      Writeln(estados_ciuidad[i]);
      Break;
    end;

if not encontrou then
Writeln('nao encontrou');

Readln;
end.
