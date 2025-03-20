program Project1;
{$APPTYPE CONSOLE}
{$R *.res}
uses
  System.SysUtils,
  System.Generics.Collections;
var
lista_codigo : TList<Integer>;
lista_produto : TList<string>;
lista_valor : TList<string>;
escolha,codigo,indice:Integer;
produto:string;
valor : Double;
begin
lista_codigo := TList<Integer>.Create;
lista_produto := TList<string>.Create;
lista_valor := TList<string>.Create;
while True do
begin
    Writeln('1-Cadastrar um novo produto');
    Writeln('2-Listar produtos cadastrados');
    Writeln('3-Pesquisar produto pelo código');
    Writeln('4-Excluir um produto.');
    Writeln('5-Sair do sistema');
    Writeln('-------------------');
    Readln(escolha);
    case escolha of
    1:
      begin
      Writeln('Digite o codigo');
      Readln(codigo);
      if lista_codigo.Contains(codigo) then
         Writeln('item ja cadastrado')
      else
      begin
      Writeln('Digite a descripçao');
      Readln(produto);
      Writeln('Digite o valor');
      Readln(valor);
      lista_codigo.Add(codigo);
      lista_produto.Add(produto);
      lista_valor.Add(FloatToStr(valor));
      end;
      end;
    2:
      for indice := 0 to lista_codigo.Count - 1 do
          begin
              Writeln('-------------------');
              Writeln(lista_codigo[indice]);
              Writeln(lista_produto[indice]);
              Writeln(lista_valor[indice]);
              Writeln('-------------------');
          end;
    3:
      begin
      Writeln('Digite o codigo');
      Readln(codigo);
      if lista_codigo.Contains(codigo) then
      begin
      Writeln('-------------------');
       indice := lista_codigo.IndexOf(codigo);
       Writeln(lista_codigo[indice]);
       Writeln(lista_produto[indice]);
       Writeln(lista_valor[indice]);
      end
      else
      Writeln('valor no encontrado');
      end;
    4:
      begin
      Writeln('Digite o codigo');
      Readln(codigo);
      if lista_codigo.Contains(codigo) then
       begin
          indice := lista_codigo.IndexOf(codigo);
          lista_codigo.Delete(indice);
          lista_produto.Delete(indice);
          lista_valor.Delete(indice);
       end
       else
       Writeln('nao tem produto com esse codigo');
      end;
    5:
    begin
      break;
    end;
    else
      Writeln('numero invalido')
    end;
end;
end.
