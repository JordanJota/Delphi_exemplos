unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    FContador: Integer;
    FImagemSelecionada: TImage;
  private
    function SortearImagem: string;
    procedure EventoAoEntrarNaImagem(Sender: TObject);

  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

Uses
  Math;

procedure TForm2.EventoAoEntrarNaImagem(Sender: TObject);
var
  Stream: TFileStream;
begin
  Stream := TFileStream.Create(SortearImagem, 0);
  try
    TImage(Sender).Picture.Assign(nil);
    TImage(Sender).Picture.LoadFromStream(Stream);
    TImage(Sender).Refresh;
    FImagemSelecionada := TImage(Sender);
    Inc(FContador);
    Self.Caption := 'Trocas ' + FContador.ToString;
  finally
    Stream.Free;
  end;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FContador := 0;
end;

procedure TForm2.FormShow(Sender: TObject);
const
  QTD_COLUNAS = 10;
  QTD_LINHAS = 10;
  BTN_SIZE = 64;
var
  Button: TImage;
  Stream: TFileStream;
begin

  for var ColIndex := 1 to QTD_COLUNAS do
  begin
    for var LinIndex := 1 to QTD_LINHAS do
    begin
      Stream := TFileStream.Create(SortearImagem, 0);
      try
        Button := TImage.Create(Self);
        Button.Parent := Self;
        Button.Height := BTN_SIZE;
        Button.Width := BTN_SIZE;
        Button.Picture.LoadFromStream(Stream);
        Button.Left := (ColIndex - 1) * BTN_SIZE;
        Button.Top := (LinIndex - 1) * BTN_SIZE;
        Button.OnMouseEnter := EventoAoEntrarNaImagem;
      finally
        Stream.Free;
      end;
    end;
  end;
end;

function TForm2.SortearImagem: string;
const
  DIR = 'C:\Users\Gustavo\Desktop\3º Semestre\Delphi\Delphi_Sourcetree\Aula7\Images\';
  EXT = '.PNG';

var
  Index: Integer;

begin
  Index := RandomRange(1, 6);

  Result := DIR + 'Imagem' + Index.ToString + EXT;

end;


procedure TForm2.Timer1Timer(Sender: TObject);

var
Stream: TFileStream;
begin
  if Assigned(FImagemSelecionada) then
begin
    Stream := TFileStream.Create(SortearImagem, 0);
    try
      FImagemSelecionada.Picture.Assign(nil);
      FImagemSelecionada.Picture.LoadFromStream(Stream);
      FImagemSelecionada.Repaint;
      
    finally
      Stream.Free;
  end;
end;
end;

end.
