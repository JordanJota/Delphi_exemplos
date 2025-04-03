unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids,DateUtils;

type
  TForm1 = class(TForm)
    Nome: TEdit;
    Email: TEdit;
    SenhaConfirmar: TEdit;
    Senha: TEdit;
    Data: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Tipo: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Label6: TLabel;
    Panel1: TPanel;
    Telefone: TMaskEdit;
    Label7: TLabel;
    Tabela: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
     fcodigo : Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

begin

if Trim(Nome.Text) = '' then
  begin
    ShowMessage('Informe um nome');
    Nome.SetFocus;
    Exit
  end
else if Trim(Email.Text) = '' then
  begin
    ShowMessage('Informe um email');
    Email.SetFocus;
    Exit
  end
else if Telefone.Text = '(   )   -    ' then
  begin
    ShowMessage('Informe um telefone');
    telefone.SetFocus;
    Exit
  end
else if DaysBetween(Data.Date,Now) < 6574.5 then
  begin
    ShowMessage('Tem que ser maior de 18');
    Data.SetFocus;
    Exit
  end
else if Tipo.Text = '' then
  begin
    ShowMessage('Informe o tipo de usuario');
    Tipo.SetFocus;
  end

else if (Trim(Senha.Text) = '') or (Length(Trim(Senha.Text)) < 4)  then
  begin
    ShowMessage('O campo senha nao pode estar vazio e tem que conter no minimo 4 caractere');
    Senha.SetFocus;
  end
else if Trim(SenhaConfirmar.Text) = '' then
  begin
    ShowMessage('Confirme sua senha');
    SenhaConfirmar.SetFocus;
  end

else if Senha.Text <> SenhaConfirmar.Text then
  begin
    ShowMessage('Senha nao coincidem');
    Senha.Clear;
    SenhaConfirmar.Clear;
    Senha.SetFocus;
  end;




Inc(fcodigo);
Tabela.Cells[0,fcodigo] := fcodigo.ToString;
Tabela.Cells[1,fcodigo] := Nome.Text;
Tabela.Cells[2,fcodigo] := Email.Text;
Tabela.Cells[3,fcodigo] := Telefone.Text;
Tabela.Cells[4,fcodigo] := DateToStr(Data.Date);
Tabela.Cells[5,fcodigo] := Tipo.Text;
ShowMessage('Usuario cadastrado');
Nome.Clear;
Email.Clear;
Telefone.Clear;
Data.Date := Now;
Tipo.Clear;
Senha.Clear;
SenhaConfirmar.Clear;
Nome.SetFocus;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
fcodigo := 0;
Data.Date := Now;
Tabela.Cells[0,0] := 'ID';
Tabela.Cells[1,0] := 'Nome';
Tabela.Cells[2,0] := 'Email';
Tabela.Cells[3,0] := 'Telefone';
Tabela.Cells[4,0] := 'Aniversario';
Tabela.Cells[5,0] := 'Tipo de usuario';

end;

end.
