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
   'Acre, Rio Branco', 'Alagoas, Maceió', 'Amapá, Macapá', 'Amazonas, Manaus',
    'Bahia, Salvador', 'Ceará, Fortaleza', 'Distrito Federal, Brasília', 'Espírito Santo, Vitória',
    'Goiás, Goiânia', 'Maranhão, São Luís', 'Mato Grosso, Cuiabá', 'Mato Grosso do Sul, Campo Grande',
    'Minas Gerais, Belo Horizonte', 'Pará, Belém', 'Paraíba, João Pessoa', 'Paraná, Curitiba',
    'Pernambuco, Recife', 'Piauí, Teresina', 'Rio de Janeiro, Rio de Janeiro', 'Rio Grande do Norte, Natal',
    'Rio Grande do Sul, Porto Alegre', 'Rondônia, Porto Velho', 'Roraima, Boa Vista', 'Santa Catarina, Florianópolis',
    'São Paulo, São Paulo', 'Sergipe, Aracaju', 'Tocantins, Palmas'
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
