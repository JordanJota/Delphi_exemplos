unit Unit1;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.Generics.Collections,
  Vcl.Buttons,IOUtils;
type
  TForm1 = class(TForm)
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    lista_button: TList<TButton>;
    lista_opcoes: TList<TButton>;
    lista_label: TList<TLabel>;
    lista_posicoes_letra: TArray<Char>;
    Lista_palavras:  TArray<string>;
    Tentativas : Integer;
    Acertos : Integer;
    procedure Trocar(Sender: TObject);
    procedure Selecionar_letra(Sender: TObject);
    procedure Dica(Sender : TObject);
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
boton : TButton;

begin
for boton in lista_button do
  boton.Enabled := True;
Edit1.Clear();
lista_opcoes[0].Enabled := True;
BitBtn1.Visible := False;
end;

procedure TForm1.Dica(Sender: TObject);
var
N1,contador : Integer;
begin
contador := 0;
if Acertos < 30  then
   begin
     if Tentativas < 3 then
     begin
     while contador < 1 do
      begin
       N1 := Random(29);
  //     N1 := Random(63);
       if lista_label[N1].Caption <> Lista_palavras[N1] then
          begin
          lista_label[N1].Caption := Lista_palavras[N1];
          Acertos:= Acertos + 1;
          if Acertos = 30 then
              lista_opcoes[1].Enabled := False;
          contador := 1;
          Tentativas:= Tentativas + 1;
          if Tentativas = 3 then
            lista_opcoes[1].Enabled := False;
          end;
      end;
     end
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
const
  MaxPorColuna = 16;
  TotalColunas = 4;
var
Botao : TButton;
Campo : TEdit;
palavras_tela : TLabel;
Lista_posicoes_botones : array[1..10] of Integer;
I, Coluna, Linha: Integer;

begin
 lista_opcoes := TList<TButton>.Create;
 lista_button := TList<TButton>.Create;
 lista_label := TList<TLabel>.Create;
 Lista_palavras := ['ARTE', 'RATO', 'MESA', 'POTE', 'SOL', 'MAR', 'PARTE', 'LEMA', 'SALE', 'RISO', 'TOPO', 'TIPO', 'LESTE', 'PORTE', 'PISTA', 'PERLA', 'ESTAL', 'SALTO', 'PASTEL', 'MORAL', 'PAPEL', 'PORA', 'STARE', 'PIOR', 'LITRO', 'MORSE', 'MITO', 'SERRA', 'SOPRAR', 'PESAR', 'OPIAR', 'ESPIO', 'LIMAR', 'ROMPER', 'ATIRO', 'ARMEI', 'PILAS', 'PISAR', 'TIOS', 'TOLE', 'SOAL', 'SALMO', 'MOER', 'ROLAR', 'ESPIA', 'SOPRE', 'TROPE', 'MOLAR', 'PRATO', 'SOLAR', 'LISTAR', 'ESTOPA', 'ALISTO', 'PORTAIS', 'MOLESTO', 'ESTREL', 'TAMPO', 'POLIR', 'SELAR', 'IMPAR', 'TERÇO', 'RAPTO', 'TROMA', 'PILAR'];
 lista_posicoes_letra := ['A', 'R', 'T', 'E', 'S', 'M', 'O', 'L', 'P', 'I'];
 Tentativas :=0;
 Acertos := 0;
  Randomize;
  for I := 1 to 30 do
  begin
    palavras_tela := TLabel.Create(Self);
    palavras_tela.Parent := Self;
    Coluna := (I - 1) mod TotalColunas;
    Linha := (I - 1) div TotalColunas;
    palavras_tela.Left := 70 + (Coluna * 200);
    palavras_tela.Top := 230 + (Linha * 25);
    palavras_tela.Width := 100;
    palavras_tela.Height := 20;
    palavras_tela.Name := 'Label' + IntToStr(I);
    palavras_tela.Caption :=  StringOfChar('@', Length(Lista_palavras[I-1]));
    lista_label.Add(palavras_tela);
  end;
 for I := 1 to 10 do
    Lista_posicoes_botones[I] := (70) + (70 * I)   ;

 for I := 1 to 10 do
 begin
    Botao := TButton.Create(Self);
    Botao.Parent := Self;
    Botao.Left := Lista_posicoes_botones[I];
    Botao.Top := 100;
    Botao.Width := 60;
    Botao.Height := 60;
    Botao.Font.Size := Botao.Height div 3;
    Botao.Name := 'Button' + IntToStr(I);
    Botao.Caption := lista_posicoes_letra[I-1];
    Botao.OnClick := Selecionar_letra;
    lista_button.Add(Botao);
 end;

  for I := 11 to 12 do
  begin
  Botao := TButton.Create(Self);
  Botao.Parent := Self;
  Botao.Width := 100;
  Botao.Height := 40;
  if I = 11 then
    begin
    Botao.Caption := 'Trocar';
    Botao.Font.Size := Botao.Height div 3;
    Botao.Left := (400);
    Botao.Top := (170);
    Botao.OnClick := Trocar;
    end
  else
   begin
    Botao.Caption := 'Dica';
    Botao.Font.Size := Botao.Height div 3;
    Botao.Left := (400 + 100);
    Botao.Top := (170);
    Botao.OnClick := Dica;
    end;
  Botao.Name := 'Button' + IntToStr(I);
  lista_opcoes.Add(Botao);
  end;
  BitBtn1.Visible := False;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
lista_button.Free;
lista_opcoes.Free;
lista_label.Free;



end;

procedure TForm1.Selecionar_letra(Sender: TObject);
var
I: Integer;
Boton : TButton;

begin
Boton := (Sender as TButton);
Boton.Enabled := False;
BitBtn1.Visible := True;
lista_opcoes[0].Enabled := False;
Edit1.Text := Edit1.Text + Boton.Caption;

if Length(Edit1.Text) > 1 then
begin
  for I := 0 to lista_label.Count - 1 do
   begin
     if (Edit1.Text = Lista_palavras[I]) and (Lista_palavras[I] <> lista_label[I].Caption) then
      begin
      lista_label[I].Caption :=  Lista_palavras[I];
      Acertos := Acertos + 1;
      if Acertos = 30 then
        lista_opcoes[1].Enabled:=False;
      BitBtn1Click(BitBtn1);
      Exit;
      end;
   end;
end
end;

procedure TForm1.Trocar(Sender: TObject);
var
  i, j: Integer;
  temp: Char;
begin
  Randomize;
  for i := High(lista_posicoes_letra) downto 1 do
  begin
    j := Random(i + 1);
    temp := lista_posicoes_letra[i];
    lista_posicoes_letra[i] := lista_posicoes_letra[j];
    lista_posicoes_letra[j] := temp;
  end;
  for i := 0 to 9 do
    lista_button[i].Caption := lista_posicoes_letra[i]
end;
end.
