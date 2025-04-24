unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,IOUtils,Generics.Collections;

type
  TForm1 = class(TForm)
    Pesquica: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure PesquicaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FPaises : TList<string>;
    incremento : Integer;
    Flista_paises : TList<TLabel>;
    Flista_paises_minuscula : TList<string>;
    procedure CriarObjetosPaises;
    function CriptografarPalavra(APalavra :string): string;
    procedure pesquisar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CriarObjetosPaises;
const

PALAVRAS_POR_PANEL = 25;

var
 Panel : TPanel;
 Pais : TLabel;

begin

   for var I:= 0 to FPaises.Count - 1  do
    begin
      if (I=0) OR ((I+1) MOD 25 = 0) then

      begin
        Panel:= TPanel.Create(Self);
        Panel.Parent  := Panel2;
        Panel.Align := alLeft;
        Panel.Width := 200;

       end;
       Pais := TLabel.Create(Self);
       Pais.Parent := Panel;
       Pais.Align :=alTop;
       Pais.Alignment := taLeftJustify;
       Pais.Font.Size := 12;
       Pais.Caption := CriptografarPalavra(FPaises.Items[I]);
       Flista_paises.Add(Pais);

    end;

end;

function TForm1.CriptografarPalavra(APalavra: string): string;
var

ConjuntoPalavras :  TArray<string>;
begin
Result := '';
ConjuntoPalavras := APalavra.Trim.Split([' ','-']);

for var palavra in ConjuntoPalavras do
  begin
    var
    PalavraCriptograda := UpperCase(palavra[1]) + String.empty.PadLeft(palavra.Length -1,'?');
    if Result.IsEmpty then
      Result := PalavraCriptograda
    else
      Result := Result + ' ' +  PalavraCriptograda;
  end;


end;

procedure TForm1.FormCreate(Sender: TObject);

var
  ListaPaises : TArray<string>;


begin
  incremento := 0;

  ListaPaises := TFile.ReadAllLines('C:\Users\laris\Documents\GitHub\Delphi\Aula 7\Paises.txt');

  FPaises := TList<string>.Create(ListaPaises);
  Flista_paises_minuscula :=  TList<string>.Create(ListaPaises);


  for var i := 0 to (Flista_paises_minuscula.Count - 1) do
    begin
       Flista_paises_minuscula[i] := LowerCase(Flista_paises_minuscula[i]);
    end;

  Flista_paises :=  TList<TLabel>.Create;
  CriarObjetosPaises;


end;

procedure TForm1.PesquicaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 if Key = VK_RETURN then

  begin
     pesquisar;
  end;

end;

procedure TForm1.pesquisar;

var
indice : integer;

begin
     if (Trim(Pesquica.Text) <> '') and (Flista_paises_minuscula.IndexOf(LowerCase(Trim(Pesquica.Text))) >= 0) then
     begin

        indice := Flista_paises_minuscula.IndexOf(LowerCase(Trim(Pesquica.Text)));

        if Flista_paises[indice].Caption = FPaises[indice] then
              Exit;

        Flista_paises[indice].Caption :=  FPaises[indice];
        Flista_paises[indice].Font.Color := clGreen;
        Pesquica.Clear;

        if incremento = 175 then
        begin
          Label1.Font.Color := clGreen;
          Exit;
        end;
        inc(incremento);
        Label1.Caption := incremento.ToString() + ' de 175 acertos';

     end;

end;

end.
