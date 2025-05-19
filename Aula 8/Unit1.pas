unit Unit1;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.Generics.Collections,Vcl.ExtCtrls,System.RegularExpressions;
type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    GroupBox2: TGroupBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    GroupBox3: TGroupBox;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    GroupBox4: TGroupBox;
    ComboBox16: TComboBox;
    ComboBox17: TComboBox;
    ComboBox18: TComboBox;
    ComboBox19: TComboBox;
    ComboBox20: TComboBox;
    GroupBox5: TGroupBox;
    ComboBox21: TComboBox;
    ComboBox22: TComboBox;
    ComboBox23: TComboBox;
    ComboBox24: TComboBox;
    ComboBox25: TComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBoxSelect(Sender: TObject);
  private
    lista : TList<TComboBox>;
    procedure MudaCorDoGroupBox();
    procedure VerificarRespostas();
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
procedure TForm1.MudaCorDoGroupBox();
begin
  GroupBox1.ParentBackground := False;
  GroupBox2.ParentBackground := False;
  GroupBox3.ParentBackground := False;
  GroupBox4.ParentBackground := False;
  GroupBox5.ParentBackground := False;

  if ComboBox1.Text = 'azul' then
    GroupBox1.color := clBlue
  else if ComboBox1.Text = 'branca' then
    GroupBox1.color := clWhite
  else if ComboBox1.Text = 'verde' then
    GroupBox1.color := clGreen
  else if ComboBox1.Text = 'vermelha' then
    GroupBox1.color := clRed
  else if ComboBox1.Text = 'preta' then
    GroupBox1.color := clBlack
  else if ComboBox1.Text = '' then
    GroupBox1.color := clBtnFace;

    if ComboBox6.Text = 'azul' then
    GroupBox2.color := clBlue
  else if ComboBox6.Text = 'branca' then
    GroupBox2.color := clWhite
  else if ComboBox6.Text = 'verde' then
    GroupBox2.color := clGreen
  else if ComboBox6.Text = 'vermelha' then
    GroupBox2.color := clRed
  else if ComboBox6.Text = 'preta' then
    GroupBox2.color := clBlack
  else if ComboBox6.Text = '' then
    GroupBox2.color := clBtnFace;

     if ComboBox11.Text = 'azul' then
    GroupBox3.color := clBlue
  else if ComboBox11.Text = 'branca' then
    GroupBox3.color := clWhite
  else if ComboBox11.Text = 'verde' then
    GroupBox3.color := clGreen
  else if ComboBox11.Text = 'vermelha' then
    GroupBox3.color := clRed
  else if ComboBox11.Text = 'preta' then
    GroupBox3.color := clBlack
  else if ComboBox11.Text = '' then
    GroupBox3.color := clBtnFace;

     if ComboBox16.Text = 'azul' then
    GroupBox4.color := clBlue
  else if ComboBox16.Text = 'branca' then
    GroupBox4.color := clWhite
  else if ComboBox16.Text = 'verde' then
    GroupBox4.color := clGreen
  else if ComboBox16.Text = 'vermelha' then
    GroupBox4.color := clRed
  else if ComboBox16.Text = 'preta' then
    GroupBox4.color := clBlack
  else if ComboBox16.Text = '' then
    GroupBox4.color := clBtnFace;

     if ComboBox21.Text = 'azul' then
    GroupBox5.color := clBlue
  else if ComboBox21.Text = 'branca' then
    GroupBox5.color := clWhite
  else if ComboBox21.Text = 'verde' then
    GroupBox5.color := clGreen
  else if ComboBox21.Text = 'vermelha' then
    GroupBox5.color := clRed
  else if ComboBox21.Text = 'preta' then
    GroupBox5.color := clBlack
  else if ComboBox21.Text = '' then
    GroupBox5.color := clBtnFace;

end;

procedure TForm1.VerificarRespostas();

begin
  //DICA 1
  if (((ComboBox2.Text = 'grego') and (ComboBox4.Text = '06:00')) or ((ComboBox7.Text = 'grego') and (ComboBox9.Text = '06:00')) or ((ComboBox12.Text = 'grego') and (ComboBox14.Text = '06:00')) or ((ComboBox17.Text = 'grego') and (ComboBox19.Text = '06:00')) or ((ComboBox22.Text = 'grego') and (ComboBox24.Text = '06:00'))) then
    Label6.Font.Color := clGreen
  else if (((ComboBox2.Text = 'grego') and (ComboBox4.Text <> '06:00') and (ComboBox4.Text <> '')) or ((ComboBox7.Text = 'grego') and (ComboBox9.Text <> '06:00') and (ComboBox9.Text <> '')) or ((ComboBox12.Text = 'grego') and (ComboBox14.Text <> '06:00') and (ComboBox14.Text <> '')) or ((ComboBox17.Text = 'grego') and (ComboBox19.Text <> '06:00') and (ComboBox19.Text <> '')) or ((ComboBox22.Text = 'grego') and (ComboBox24.Text <> '06:00') and (ComboBox24.Text <> ''))) then
    Label6.Font.Color := clRed
  else if (((ComboBox2.Text <> 'grego') and (ComboBox2.Text <> '') and (ComboBox4.Text = '06:00')) or ((ComboBox7.Text <> 'grego') and (ComboBox7.Text <> '') and (ComboBox9.Text = '06:00')) or ((ComboBox12.Text <> 'grego') and (ComboBox12.Text <> '') and (ComboBox14.Text = '06:00')) or ((ComboBox17.Text <> 'grego') and (ComboBox17.Text <> '') and (ComboBox19.Text = '06:00')) or  ((ComboBox22.Text <> 'grego') and (ComboBox22.Text <> '') and (ComboBox24.Text = '06:00'))) then
    Label6.Font.Color := clRed
  else
    Label6.Font.Color := clWindowText;

  //DICA 2
  if (((ComboBox3.Text = 'café') and (ComboBox4.Text = '06:00')) or ((ComboBox8.Text = 'café') and (ComboBox9.Text = '06:00')) or ((ComboBox13.Text = 'café') and (ComboBox14.Text = '06:00')) or ((ComboBox18.Text = 'café') and (ComboBox19.Text = '06:00')) or ((ComboBox23.Text = 'café') and (ComboBox24.Text = '06:00'))) then
    Label7.Font.Color := clGreen
  else if (((ComboBox3.Text = 'café') and (ComboBox4.Text <> '06:00') and (ComboBox4.Text <> '')) or ((ComboBox8.Text = 'café') and (ComboBox9.Text <> '06:00') and (ComboBox9.Text <> '')) or ((ComboBox13.Text = 'café') and (ComboBox14.Text <> '06:00') and (ComboBox14.Text <> '')) or ((ComboBox18.Text = 'café') and (ComboBox19.Text <> '06:00') and (ComboBox19.Text <> '')) or ((ComboBox23.Text = 'café') and (ComboBox24.Text <> '06:00') and (ComboBox24.Text <> ''))) then
    Label7.Font.Color := clRed
  else if (((ComboBox3.Text <> 'café') and (ComboBox3.Text <> '') and (ComboBox4.Text = '06:00')) or ((ComboBox8.Text <> 'café') and (ComboBox8.Text <> '') and (ComboBox9.Text = '06:00')) or ((ComboBox13.Text <> 'café') and (ComboBox13.Text <> '') and (ComboBox14.Text = '06:00')) or ((ComboBox18.Text <> 'café') and (ComboBox18.Text <> '') and (ComboBox19.Text = '06:00')) or  ((ComboBox23.Text <> 'café') and (ComboBox23.Text <> '') and (ComboBox24.Text = '06:00'))) then
    Label7.Font.Color := clRed
  else
    Label7.Font.Color := clWindowText;

  /// DICA 3
  if (ComboBox11.Text = 'preta') then
    Label8.Font.color := clGreen
  else if (ComboBox1.Text = 'preta') or (ComboBox6.Text = 'preta') or (ComboBox16.Text = 'preta') or (ComboBox21.Text = 'preta')  then
    Label8.Font.color := clRed
  else if (ComboBox11.Text = '') then
    Label8.Font.color := clWindowText;

  //DICA 4
  if (((ComboBox2.Text = 'ingles') and (ComboBox4.Text = '09:00')) or ((ComboBox7.Text = 'ingles') and (ComboBox9.Text = '09:00')) or ((ComboBox12.Text = 'ingles') and (ComboBox14.Text = '09:00')) or ((ComboBox17.Text = 'ingles') and (ComboBox19.Text = '09:00')) or ((ComboBox22.Text = 'ingles') and (ComboBox24.Text = '09:00'))) then
    Label9.Font.Color := clGreen
  else if (((ComboBox2.Text = 'ingles') and (ComboBox4.Text <> '09:00') and (ComboBox4.Text <> '')) or ((ComboBox7.Text = 'ingles') and (ComboBox9.Text <> '09:00') and (ComboBox9.Text <> '')) or ((ComboBox12.Text = 'ingles') and (ComboBox14.Text <> '09:00') and (ComboBox14.Text <> '')) or ((ComboBox17.Text = 'ingles') and (ComboBox19.Text <> '09:00') and (ComboBox19.Text <> '')) or ((ComboBox22.Text = 'ingles') and (ComboBox24.Text <> '09:00') and (ComboBox24.Text <> ''))) then
    Label9.Font.Color := clRed
  else if (((ComboBox2.Text <> 'ingles') and (ComboBox2.Text <> '') and (ComboBox4.Text = '09:00')) or ((ComboBox7.Text <> 'ingles') and (ComboBox7.Text <> '') and (ComboBox9.Text = '09:00')) or ((ComboBox12.Text <> 'ingles') and (ComboBox12.Text <> '') and (ComboBox14.Text = '09:00')) or ((ComboBox17.Text <> 'ingles') and (ComboBox17.Text <> '') and (ComboBox19.Text = '09:00')) or ((ComboBox22.Text <> 'ingles') and (ComboBox22.Text <> '') and (ComboBox24.Text = '09:00'))) then
    Label9.Font.Color := clRed
  else Label9.Font.Color := clWindowText;

  //DICA 5
  if (((ComboBox2.Text = 'francês') and (ComboBox1.Text = 'azul')) or ((ComboBox7.Text = 'francês') and (ComboBox6.Text = 'azul')) or ((ComboBox12.Text = 'francês') and (ComboBox11.Text = 'azul')) or ((ComboBox17.Text = 'francês') and (ComboBox16.Text = 'azul')) or ((ComboBox22.Text = 'francês') and (ComboBox21.Text = 'azul'))) then
    Label10.Font.Color := clGreen
  else if (((ComboBox2.Text = 'francês') and (ComboBox1.Text <> 'azul') and (ComboBox1.Text <> '')) or ((ComboBox7.Text = 'francês') and (ComboBox6.Text <> 'azul') and (ComboBox6.Text <> '')) or ((ComboBox12.Text = 'francês') and (ComboBox11.Text <> 'azul') and (ComboBox11.Text <> '')) or ((ComboBox17.Text = 'francês') and (ComboBox16.Text <> 'azul') and (ComboBox16.Text <> '')) or ((ComboBox22.Text = 'francês') and (ComboBox21.Text <> 'azul') and (ComboBox21.Text <> ''))) then
    Label10.Font.Color := clRed
  else if (((ComboBox2.Text <> 'francês') and (ComboBox2.Text <> '') and (ComboBox1.Text = 'azul')) or ((ComboBox7.Text <> 'francês') and (ComboBox7.Text <> '') and (ComboBox6.Text = 'azul')) or ((ComboBox12.Text <> 'francês') and (ComboBox12.Text <> '') and (ComboBox11.Text = 'azul')) or ((ComboBox17.Text <> 'francês') and (ComboBox17.Text <> '') and (ComboBox16.Text = 'azul')) or ((ComboBox22.Text <> 'francês') and (ComboBox22.Text <> '') and (ComboBox21.Text = 'azul'))) then
    Label10.Font.Color := clRed
  else
    Label10.Font.Color := clWindowText;

  // DICA 6
  if ((ComboBox23.Text = 'café') and ((ComboBox17.Text = 'francês') or (ComboBox12.Text = 'francês') or (ComboBox7.Text = 'francês') or (ComboBox2.Text = 'francês')))then
    Label11.Font.color := clGreen
  else if((ComboBox18.Text = 'francês') and ((ComboBox12.Text = 'francês') or (ComboBox7.Text = 'francês') or (ComboBox2.Text = 'francês'))) then
    Label11.Font.color := clGreen
  else if((ComboBox13.Text = 'café') and ((ComboBox7.Text = 'francês') or (ComboBox2.Text = 'francês'))) then
    Label11.Font.color := clGreen
  else if((ComboBox8.Text = 'café') and (ComboBox2.Text = 'francês')) then
    Label11.Font.color := clGreen
  else if ((ComboBox3.Text = 'café') and ((ComboBox7.Text = 'francês') or (ComboBox12.Text = 'francês') or (ComboBox17.Text = 'francês') or (ComboBox22.Text = 'francês')))then
    Label11.Font.color := clRed
  else if((ComboBox8.Text = 'café') and ((ComboBox12.Text = 'francês') or (ComboBox17.Text = 'francês') or (ComboBox22.Text = 'francês'))) then
    Label11.Font.color := clRed
  else if((ComboBox13.Text = 'café') and ((ComboBox17.Text = 'francês') or (ComboBox22.Text = 'francês'))) then
    Label11.Font.color := clRed
  else if((ComboBox18.Text = 'café') and (ComboBox22.Text = 'francês')) then
    Label11.Font.color := clRed
  else if ((ComboBox23.Text = 'café') and (((ComboBox17.Text <> 'francês') and (ComboBox17.Text <> '')) and ((ComboBox12.Text <> 'francês') and (ComboBox12.Text <> '')) and ((ComboBox7.Text <> 'francês') and (ComboBox7.Text <> '' )) and ((ComboBox2.Text <> 'francês') and (ComboBox2.Text <> '')))) then
    Label11.Font.color := clRed
  else if ((ComboBox18.Text = 'café') and (((ComboBox12.Text <> 'francês') and (ComboBox12.Text <> '')) and ((ComboBox7.Text <> 'francês') and (ComboBox7.Text <> '')) and ((ComboBox2.Text <> 'francês') and (ComboBox2.Text <> '')))) then
    Label11.Font.Color := clRed
  else if ((ComboBox13.Text = 'café') and (((ComboBox7.Text <> 'francês') and (ComboBox7.Text <> '')) and ((ComboBox2.Text <> 'francês') and (ComboBox2.Text <> '')))) then
    Label11.Font.Color := clRed
  else if ((ComboBox8.Text = 'café') and ((ComboBox2.Text <> 'francês') and (ComboBox2.Text <> ''))) then
    Label11.Font.Color := clRed
  else if (((ComboBox3.Text = 'café') and (ComboBox2.Text = 'francês')) or((ComboBox8.Text = 'café') and (ComboBox7.Text = 'francês')) or((ComboBox13.Text = 'café') and (ComboBox12.Text = 'francês')) or((ComboBox18.Text = 'café') and (ComboBox17.Text = 'francês')) or((ComboBox23.Text = 'café') and (ComboBox22.Text = 'francês')) or ((ComboBox22.Text = 'francês') or (ComboBox3.Text = 'café'))) then
    Label11.Font.Color := clRed
  else
    Label11.Font.color := clWindowText;

  // DICA 7
  if ((ComboBox3.Text = 'cacau') and ((ComboBox10.Text = 'Macau') or (ComboBox15.Text = 'Macau') or (ComboBox20.Text = 'Macau') or (ComboBox25.Text = 'Macau')))then
    Label22.Font.color := clGreen
  else if((ComboBox8.Text = 'cacau') and ((ComboBox15.Text = 'Macau') or (ComboBox20.Text = 'Macau') or (ComboBox25.Text = 'Macau'))) then
    Label22.Font.color := clGreen
  else if((ComboBox13.Text = 'cacau') and ((ComboBox20.Text = 'Macau') or (ComboBox25.Text = 'Macau'))) then
    Label22.Font.color := clGreen
  else if((ComboBox18.Text = 'cacau') and (ComboBox25.Text = 'Macau')) then
    Label22.Font.color := clGreen

  else if ((ComboBox23.Text = 'cacau') and ((ComboBox20.Text = 'Macau') or (ComboBox15.Text = 'Macau') or (ComboBox10.Text = 'Macau') or (ComboBox5.Text = 'Macau')))then
    Label22.Font.color := clRed
  else if((ComboBox18.Text = 'cacau') and ((ComboBox15.Text = 'Macau') or (ComboBox10.Text = 'Macau') or (ComboBox5.Text = 'Macau'))) then
    Label22.Font.color := clRed
  else if((ComboBox13.Text = 'cacau') and ((ComboBox10.Text = 'Macau') or (ComboBox5.Text = 'Macau'))) then
    Label22.Font.color := clRed
  else if((ComboBox8.Text = 'cacau') and (ComboBox5.Text = 'Macau')) then
    Label22.Font.color := clRed

  else if ((ComboBox3.Text = 'cacau') and (((ComboBox10.Text <> 'Macau') and (ComboBox10.Text <> '')) and ((ComboBox15.Text <> 'Macau') and (ComboBox15.Text <> '')) and ((ComboBox20.Text <> 'Macau') and (ComboBox20.Text <> '' )) and ((ComboBox25.Text <> 'Macau') and (ComboBox25.Text <> '')))) then
    Label12.Font.color := clRed
  else if ((ComboBox8.Text = 'cacau') and (((ComboBox15.Text <> 'Macau') and (ComboBox15.Text <> '')) and ((ComboBox20.Text <> 'Macau') and (ComboBox20.Text <> '')) and ((ComboBox25.Text <> 'Macau') and (ComboBox25.Text <> '')))) then
    Label12.Font.Color := clRed
  else if ((ComboBox13.Text = 'cacau') and (((ComboBox20.Text <> 'Macau') and (ComboBox20.Text <> '')) and ((ComboBox25.Text <> 'Macau') and (ComboBox25.Text <> '')))) then
    Label12.Font.Color := clRed
  else if ((ComboBox18.Text = 'cacau') and ((ComboBox22.Text <> 'Macau') and (ComboBox22.Text <> ''))) then
    Label12.Font.Color := clRed

  else if (((ComboBox3.Text = 'cacau') and (ComboBox5.Text = 'Macau')) or  ((ComboBox8.Text = 'cacau') and (ComboBox10.Text = 'Macau')) or  ((ComboBox13.Text = 'cacau') and (ComboBox15.Text = 'Macau')) or  ((ComboBox18.Text = 'cacau') and (ComboBox20.Text = 'Macau')) or  ((ComboBox23.Text = 'cacau') and (ComboBox25.Text = 'Macau')) or ((ComboBox23.Text = 'cacau') or (ComboBox5.Text = 'Macau'))) then
    Label12.Font.Color := clRed
  else
    Label12.Font.color := clWindowText;

  //DICA 8
  if (((ComboBox2.Text = 'brasileiro') and (ComboBox5.Text = 'Manila')) or ((ComboBox7.Text = 'brasileiro') and (ComboBox10.Text = 'Manila')) or ((ComboBox12.Text = 'brasileiro') and (ComboBox15.Text = 'Manila')) or ((ComboBox17.Text = 'brasileiro') and (ComboBox20.Text = 'Manila')) or ((ComboBox22.Text = 'brasileiro') and (ComboBox25.Text = 'Manila'))) then
    Label13.Font.Color := clGreen
  else if (((ComboBox2.Text = 'brasileiro') and (ComboBox5.Text <> 'Manila') and (ComboBox5.Text <> '')) or ((ComboBox7.Text = 'brasileiro') and (ComboBox10.Text <> 'Manila') and (ComboBox10.Text <> '')) or ((ComboBox12.Text = 'brasileiro') and (ComboBox15.Text <> 'Manila') and (ComboBox15.Text <> '')) or ((ComboBox17.Text = 'brasileiro') and (ComboBox20.Text <> 'Manila') and (ComboBox20.Text <> '')) or ((ComboBox22.Text = 'brasileiro') and (ComboBox25.Text <> 'Manila') and (ComboBox25.Text <> ''))) then
    Label13.Font.Color := clRed
  else if (((ComboBox2.Text <> 'brasileiro') and (ComboBox2.Text <> '') and (ComboBox5.Text = 'Manila')) or((ComboBox7.Text <> 'brasileiro') and (ComboBox7.Text <> '') and (ComboBox10.Text = 'Manila')) or ((ComboBox12.Text <> 'brasileiro') and (ComboBox12.Text <> '') and (ComboBox15.Text = 'Manila')) or((ComboBox17.Text <> 'brasileiro') and (ComboBox17.Text <> '') and (ComboBox20.Text = 'Manila')) or((ComboBox22.Text <> 'brasileiro') and (ComboBox22.Text <> '') and (ComboBox25.Text = 'Manila'))) then
    Label13.Font.Color := clRed
  else
    Label13.Font.Color := clWindowText;

  // DICA 9
  if ((ComboBox3.Text = 'arroz') and (ComboBox6.Text = 'verde')) or ((ComboBox23.Text = 'arroz') and (ComboBox16.Text = 'verde')) then
    Label14.Font.color := clGreen
  else if ((ComboBox8.Text = 'arroz') and (ComboBox1.Text = 'verde')) or ((ComboBox8.Text = 'arroz') and (ComboBox11.Text = 'verde')) then
    Label14.Font.color := clGreen
  else if ((ComboBox13.Text = 'arroz') and (ComboBox6.Text = 'verde')) or ((ComboBox13.Text = 'arroz') and (ComboBox16.Text = 'verde')) then
    Label14.Font.color := clGreen
  else if ((ComboBox18.Text = 'arroz') and (ComboBox11.Text = 'verde')) or ((ComboBox18.Text = 'arroz') and (ComboBox21.Text = 'verde')) then
    Label14.Font.color := clGreen

  else  if ((ComboBox3.Text = 'arroz') and (ComboBox6.Text <> 'verde') and (ComboBox6.Text <> '')) or ((ComboBox23.Text = 'arroz') and (ComboBox16.Text <> 'verde') and (ComboBox16.Text <> '') ) then
    Label14.Font.color := clRed
  else  if ((ComboBox8.Text = 'arroz') and (ComboBox1.Text <> 'verde') and (ComboBox1.Text <> '')) and ((ComboBox8.Text = 'arroz') and (ComboBox11.Text <> 'verde') and (ComboBox11.Text <> '') ) then
    Label14.Font.color := clRed
  else  if ((ComboBox13.Text = 'arroz') and (ComboBox6.Text <> 'verde') and (ComboBox6.Text <> '')) and ((ComboBox13.Text = 'arroz') and (ComboBox16.Text <> 'verde') and (ComboBox16.Text <> '') ) then
    Label14.Font.color := clRed
  else  if ((ComboBox18.Text = 'arroz') and (ComboBox11.Text <> 'verde') and (ComboBox11.Text <> '')) and ((ComboBox18.Text = 'arroz') and (ComboBox21.Text <> 'verde') and (ComboBox21.Text <> '') ) then
    Label14.Font.color := clRed

  else if ((ComboBox1.Text = 'verde') and (ComboBox8.Text <> 'arroz') and (ComboBox8.Text <> '')) then
     Label14.Font.color := clRed
  else if ((ComboBox6.Text = 'verde') and (ComboBox3.Text <> 'arroz') and (ComboBox3.Text <> '')) and ((ComboBox6.Text = 'verde') and (ComboBox13.Text <> 'arroz') and (ComboBox13.Text <> '')) then
    Label14.Font.color := clRed
  else if ((ComboBox11.Text = 'verde') and (ComboBox8.Text <> 'arroz') and (ComboBox8.Text <> '')) and ((ComboBox11.Text = 'verde') and (ComboBox18.Text <> 'arroz') and (ComboBox18.Text <> '')) then
    Label14.Font.color := clRed
  else if ((ComboBox16.Text = 'verde') and (ComboBox13.Text <> 'arroz') and (ComboBox13.Text <> '')) and ((ComboBox16.Text = 'verde') and (ComboBox23.Text <> 'arroz') and (ComboBox23.Text <> '')) then
    Label14.Font.color := clRed
  else if ((ComboBox21.Text = 'verde') and (ComboBox18.Text <> 'arroz') and (ComboBox18.Text <> '')) then
    Label14.Font.Color := clRed
  else
    Label14.Font.color := clWindowText;

  //DICA 10
  if (((ComboBox5.Text = 'Santos') and (ComboBox4.Text = '05:00')) or ((ComboBox10.Text = 'Santos') and (ComboBox9.Text = '05:00')) or ((ComboBox15.Text = 'Santos') and (ComboBox14.Text = '05:00')) or ((ComboBox20.Text = 'Santos') and (ComboBox19.Text = '05:00')) or ((ComboBox25.Text = 'Santos') and (ComboBox24.Text = '05:00'))) then
    Label20.Font.color := clGreen
  else  if ((ComboBox5.Text = 'Santos') and (ComboBox4.Text <> '05:00') and (ComboBox4.Text <> '')) or ((ComboBox10.Text = 'Santos') and (ComboBox9.Text <> '05:00') and (ComboBox9.Text <> '')) then
    Label20.Font.color := clRed
  else  if ((ComboBox15.Text = 'Santos') and (ComboBox14.Text <> '05:00') and (ComboBox14.Text <> '')) or ((ComboBox20.Text = 'Santos') and (ComboBox19.Text <> '05:00') and (ComboBox19.Text <> '')) or ((ComboBox25.Text = 'Santos') and (ComboBox24.Text <> '05:00') and (ComboBox24.Text <> '')) then
    Label20.Font.color := clRed
  else
    Label20.Font.color := clWindowText;

  // DICA 11
  if ((ComboBox22.Text = 'espanhol') and (ComboBox24.Text = '07:00')) or ((ComboBox17.Text = 'espanhol') and (ComboBox19.Text = '07:00')) or ((ComboBox12.Text = 'espanhol') and (ComboBox14.Text = '07:00')) then
    Label21.Font.color := clGreen
  else  if ((ComboBox7.Text = 'espanhol') and (ComboBox9.Text = '07:00')) or ((ComboBox2.Text = 'espanhol') and (ComboBox4.Text = '07:00'))then
    Label21.Font.color := clGreen
  else  if ((ComboBox22.Text = 'espanhol') and (ComboBox24.Text <> '07:00') and (ComboBox24.Text <> '')) or ((ComboBox17.Text = 'espanhol') and (ComboBox19.Text <> '07:00') and (ComboBox19.Text <> '')) or ((ComboBox12.Text = 'espanhol') and (ComboBox14.Text <> '07:00') and (ComboBox14.Text <> '')) then
    Label21.Font.color := clRed
  else  if ((ComboBox7.Text = 'espanhol') and (ComboBox9.Text <> '07:00') and (ComboBox9.Text <> '')) or ((ComboBox2.Text = 'espanhol') and (ComboBox4.Text <> '07:00') and (ComboBox4.Text <> '')) then
    Label21.Font.color := clRed
  else  if ((ComboBox22.Text <> 'espanhol') and (ComboBox24.Text = '07:00') and (ComboBox22.Text <> '')) or ((ComboBox17.Text <> 'espanhol') and (ComboBox19.Text = '07:00') and (ComboBox17.Text <> '')) or ((ComboBox12.Text <> 'espanhol') and (ComboBox14.Text = '07:00') and (ComboBox12.Text <> '')) then
    Label21.Font.color := clRed
  else  if ((ComboBox7.Text <> 'espanhol') and (ComboBox9.Text = '07:00') and (ComboBox7.Text <> '')) or ((ComboBox2.Text <> 'espanhol') and (ComboBox4.Text = '07:00') and (ComboBox2.Text <> '')) then
    Label21.Font.color := clRed
  else
     Label21.Font.color := clWindowText;

  // DICA 12
  if ((ComboBox5.Text = 'Macau') and ((ComboBox7.Text = 'espanhol') or (ComboBox12.Text = 'espanhol') or (ComboBox17.Text = 'espanhol') or (ComboBox22.Text = 'espanhol')))then
    Label22.Font.color := clGreen
  else if((ComboBox10.Text = 'Macau') and ((ComboBox12.Text = 'espanhol') or (ComboBox17.Text = 'espanhol') or (ComboBox22.Text = 'espanhol'))) then
    Label22.Font.color := clGreen
  else if((ComboBox15.Text = 'Macau') and ((ComboBox17.Text = 'espanhol') or (ComboBox22.Text = 'espanhol'))) then
    Label22.Font.color := clGreen
  else if((ComboBox20.Text = 'Macau') and (ComboBox22.Text = 'espanhol')) then
    Label22.Font.color := clGreen
  else if ((ComboBox20.Text = 'Macau') and ((ComboBox7.Text = 'espanhol') or (ComboBox12.Text = 'espanhol') or (ComboBox17.Text = 'espanhol') or (ComboBox2.Text = 'espanhol')))then
    Label22.Font.color := clRed
  else if((ComboBox15.Text = 'Macau') and ((ComboBox12.Text = 'espanhol') or (ComboBox17.Text = 'espanhol') or (ComboBox2.Text = 'espanhol'))) then
    Label22.Font.color := clRed
  else if((ComboBox10.Text = 'Macau') and ((ComboBox17.Text = 'espanhol') or (ComboBox2.Text = 'espanhol'))) then
    Label22.Font.color := clRed
  else if((ComboBox5.Text = 'Macau') and (ComboBox2.Text = 'espanhol')) then
    Label22.Font.color := clRed
  else if ((ComboBox5.Text = 'Macau') and (((ComboBox7.Text <> 'espanhol') and (ComboBox7.Text <> '')) and ((ComboBox12.Text <> 'espanhol') and (ComboBox12.Text <> '')) and ((ComboBox17.Text <> 'espanhol') and (ComboBox17.Text <> '' )) and ((ComboBox22.Text <> 'espanhol') and (ComboBox22.Text <> '')))) then
    Label22.Font.color := clRed
  else if ((ComboBox10.Text = 'Macau') and (((ComboBox12.Text <> 'espanhol') and (ComboBox12.Text <> '')) and ((ComboBox17.Text <> 'espanhol') and (ComboBox17.Text <> '')) and ((ComboBox22.Text <> 'espanhol') and (ComboBox22.Text <> '')))) then
    Label22.Font.Color := clRed
  else if ((ComboBox15.Text = 'Macau') and (((ComboBox17.Text <> 'espanhol') and (ComboBox17.Text <> '')) and ((ComboBox22.Text <> 'espanhol') and (ComboBox22.Text <> '')))) then
    Label22.Font.Color := clRed
  else if ((ComboBox20.Text = 'Macau') and ((ComboBox22.Text <> 'espanhol') and (ComboBox22.Text <> ''))) then
    Label22.Font.Color := clRed
  else if (((ComboBox5.Text = 'Macau') and (ComboBox2.Text = 'espanhol')) or  ((ComboBox10.Text = 'Macau') and (ComboBox7.Text = 'espanhol')) or  ((ComboBox15.Text = 'Macau') and (ComboBox12.Text = 'espanhol')) or  ((ComboBox20.Text = 'Macau') and (ComboBox17.Text = 'espanhol')) or  ((ComboBox25.Text = 'Macau') and (ComboBox22.Text = 'espanhol')) or ((ComboBox25.Text = 'Macau') or (ComboBox2.Text = 'espanhol'))) then
    Label22.Font.Color := clRed
  else
    Label22.Font.color := clWindowText;

  //DICA 13
  if (((ComboBox5.Text = 'Hamburgo') and (ComboBox1.Text = 'vermelha')) or((ComboBox10.Text = 'Hamburgo') and (ComboBox6.Text = 'vermelha')) or((ComboBox15.Text = 'Hamburgo') and (ComboBox11.Text = 'vermelha')) or((ComboBox20.Text = 'Hamburgo') and (ComboBox16.Text = 'vermelha')) or((ComboBox25.Text = 'Hamburgo') and (ComboBox21.Text = 'vermelha'))) then
    Label23.Font.Color := clGreen
  else if (((ComboBox5.Text = 'Hamburgo') and (ComboBox1.Text <> 'vermelha') and (ComboBox1.Text <> '')) or((ComboBox10.Text = 'Hamburgo') and (ComboBox6.Text <> 'vermelha') and (ComboBox6.Text <> '')) or ((ComboBox15.Text = 'Hamburgo') and (ComboBox11.Text <> 'vermelha') and (ComboBox11.Text <> '')) or((ComboBox20.Text = 'Hamburgo') and (ComboBox16.Text <> 'vermelha') and (ComboBox16.Text <> '')) or((ComboBox25.Text = 'Hamburgo') and (ComboBox21.Text <> 'vermelha') and (ComboBox21.Text <> ''))) then
    Label23.Font.Color := clRed
  else if (((ComboBox5.Text <> 'Hamburgo') and (ComboBox5.Text <> '') and (ComboBox1.Text = 'vermelha')) or((ComboBox10.Text <> 'Hamburgo') and (ComboBox10.Text <> '') and (ComboBox6.Text = 'vermelha')) or         ((ComboBox15.Text <> 'Hamburgo') and (ComboBox15.Text <> '') and (ComboBox11.Text = 'vermelha')) or ((ComboBox20.Text <> 'Hamburgo') and (ComboBox20.Text <> '') and (ComboBox16.Text = 'vermelha')) or((ComboBox25.Text <> 'Hamburgo') and (ComboBox25.Text <> '') and (ComboBox21.Text = 'vermelha'))) then
    Label23.Font.Color := clRed
  else
    Label23.Font.Color := clWindowText;

  // DICA 14
  if ((ComboBox4.Text = '07:00') and (ComboBox6.Text = 'branca')) or ((ComboBox24.Text = '07:00') and (ComboBox16.Text = 'branca')) then
    Label15.Font.color := clGreen
  else if ((ComboBox9.Text = '07:00') and (ComboBox1.Text = 'branca')) or ((ComboBox9.Text = '07:00') and (ComboBox11.Text = 'branca')) then
    Label15.Font.color := clGreen
  else if ((ComboBox14.Text = '07:00') and (ComboBox6.Text = 'branca')) or ((ComboBox14.Text = '07:00') and (ComboBox16.Text = 'branca')) then
    Label15.Font.color := clGreen
  else if ((ComboBox19.Text = '07:00') and (ComboBox11.Text = 'branca')) or ((ComboBox19.Text = '07:00') and (ComboBox21.Text = 'branca')) then
    Label15.Font.color := clGreen

  else  if ((ComboBox4.Text = '07:00') and (ComboBox6.Text <> 'branca') and (ComboBox6.Text <> '')) or ((ComboBox24.Text = '07:00') and (ComboBox16.Text <> 'branca') and (ComboBox16.Text <> '') ) then
    Label15.Font.color := clRed
  else  if ((ComboBox9.Text = '07:00') and (ComboBox1.Text <> 'branca') and (ComboBox1.Text <> '')) and ((ComboBox9.Text = '07:00') and (ComboBox11.Text <> 'branca') and (ComboBox11.Text <> '') ) then
    Label15.Font.color := clRed
  else  if ((ComboBox14.Text = '07:00') and (ComboBox6.Text <> 'branca') and (ComboBox6.Text <> '')) and ((ComboBox14.Text = '07:00') and (ComboBox16.Text <> 'branca') and (ComboBox16.Text <> '') ) then
    Label15.Font.color := clRed
  else  if ((ComboBox19.Text = '07:00') and (ComboBox11.Text <> 'branca') and (ComboBox11.Text <> '')) and ((ComboBox19.Text = '07:00') and (ComboBox21.Text <> 'branca') and (ComboBox21.Text <> '') ) then
    Label15.Font.color := clRed

  else if ((ComboBox1.Text = 'branca') and (ComboBox9.Text <> '07:00') and (ComboBox9.Text <> '')) then
     Label15.Font.color := clRed
  else if ((ComboBox6.Text = 'branca') and (ComboBox4.Text <> '07:00') and (ComboBox4.Text <> '')) and ((ComboBox6.Text = 'branca') and (ComboBox14.Text <> '07:00') and (ComboBox14.Text <> '')) then
    Label15.Font.color := clRed
  else if ((ComboBox11.Text = 'branca') and (ComboBox9.Text <> '07:00') and (ComboBox9.Text <> '')) and ((ComboBox11.Text = 'branca') and (ComboBox19.Text <> '07:00') and (ComboBox19.Text <> '')) then
    Label15.Font.color := clRed
  else if ((ComboBox16.Text = 'branca') and (ComboBox14.Text <> '07:00') and (ComboBox14.Text <> '')) and ((ComboBox16.Text = 'branca') and (ComboBox24.Text <> '07:00') and (ComboBox24.Text <> '')) then
    Label15.Font.color := clRed
  else if ((ComboBox21.Text = 'branca') and (ComboBox19.Text <> '07:00') and (ComboBox19.Text <> '')) then
    Label15.Font.Color := clRed
  else
    Label15.Font.color := clWindowText;

  // DICA 15
  if (ComboBox23.Text = 'milho') or (ComboBox3.Text = 'milho') then
    Label16.Font.color := clGreen
  else if ((ComboBox23.Text <> 'milho') and (ComboBox23.Text <> '') and (ComboBox3.Text <> 'milho') and (ComboBox3.Text <> ''))  then
    Label16.Font.color := clRed
  else if ((ComboBox8.Text = 'milho') or (ComboBox13.Text = 'milho') or (ComboBox18.Text = 'milho') or (ComboBox3.Text ='milho'))  then
    Label16.Font.color := clRed
  else
    Label16.Font.color := clWindowText;

  // DICA 16
  if ((ComboBox1.Text = 'preta') and (ComboBox4.Text = '08:00')) or ((ComboBox6.Text = 'preta') and (ComboBox9.Text = '08:00'))then
    Label17.Font.color := clGreen
  else if ((ComboBox11.Text = 'preta') and (ComboBox14.Text = '08:00')) or ((ComboBox16.Text = 'preta') and (ComboBox19.Text = '08:00'))then
    Label17.Font.color := clGreen
  else if ((ComboBox21.Text = 'preta') and (ComboBox24.Text = '08:00'))  then
    Label17.Font.color := clGreen

  else if ((ComboBox1.Text = 'preta') and ((ComboBox4.Text <> '08:00') and (ComboBox4.Text <> ''))) or ((ComboBox1.Text <> 'preta') and (ComboBox1.Text <> '') and (ComboBox4.Text = '08:00'))then
    Label17.Font.color := clRed
  else if ((ComboBox6.Text = 'preta') and ((ComboBox9.Text <> '08:00') and (ComboBox9.Text <> ''))) or ((ComboBox6.Text <> 'preta') and (ComboBox6.Text <> '') and (ComboBox9.Text = '08:00'))then
    Label17.Font.color := clRed
  else if ((ComboBox11.Text = 'preta') and ((ComboBox14.Text <> '08:00') and (ComboBox14.Text <> ''))) or ((ComboBox11.Text <> 'preta') and (ComboBox11.Text <> '') and (ComboBox14.Text = '08:00'))then
    Label17.Font.color := clRed
  else if ((ComboBox16.Text = 'preta') and ((ComboBox19.Text <> '08:00') and (ComboBox19.Text <> ''))) or ((ComboBox16.Text <> 'preta') and (ComboBox16.Text <> '') and (ComboBox19.Text = '08:00'))then
    Label17.Font.color := clRed
  else if ((ComboBox21.Text = 'preta') and ((ComboBox24.Text <> '08:00') and (ComboBox24.Text <> ''))) or ((ComboBox21.Text <> 'preta') and (ComboBox21.Text <> '') and (ComboBox24.Text = '08:00'))then
    Label17.Font.color := clRed
  else
    Label17.Font.color := clWindowText;

  // DICA 17
  if ((ComboBox3.Text = 'arroz') and (ComboBox8.Text = 'milho')) or ((ComboBox23.Text = 'arroz') and (ComboBox18.Text = 'milho')) then
    Label18.Font.color := clGreen
  else if ((ComboBox8.Text = 'arroz') and (ComboBox3.Text = 'milho')) or ((ComboBox8.Text = 'arroz') and (ComboBox13.Text = 'milho')) then
    Label18.Font.color := clGreen
  else if ((ComboBox13.Text = 'arroz') and (ComboBox8.Text = 'milho')) or ((ComboBox13.Text = 'arroz') and (ComboBox18.Text = 'milho')) then
    Label18.Font.color := clGreen
  else if ((ComboBox18.Text = 'arroz') and (ComboBox13.Text = 'milho')) or ((ComboBox18.Text = 'arroz') and (ComboBox23.Text = 'milho')) then
    Label18.Font.color := clGreen

  else  if ((ComboBox3.Text = 'arroz') and (ComboBox8.Text <> 'milho') and (ComboBox8.Text <> '')) or ((ComboBox23.Text = 'arroz') and (ComboBox18.Text <> 'milho') and (ComboBox18.Text <> '') ) then
    Label18.Font.color := clRed
  else  if ((ComboBox8.Text = 'arroz') and (ComboBox3.Text <> 'milho') and (ComboBox3.Text <> '')) and ((ComboBox8.Text = 'arroz') and (ComboBox13.Text <> 'milho') and (ComboBox13.Text <> '') ) then
    Label18.Font.color := clRed
  else  if ((ComboBox13.Text = 'arroz') and (ComboBox8.Text <> 'milho') and (ComboBox8.Text <> '')) and ((ComboBox13.Text = 'arroz') and (ComboBox18.Text <> 'milho') and (ComboBox18.Text <> '') ) then
    Label18.Font.color := clRed
  else  if ((ComboBox18.Text = 'arroz') and (ComboBox13.Text <> 'milho') and (ComboBox13.Text <> '')) and ((ComboBox18.Text = 'arroz') and (ComboBox23.Text <> 'milho') and (ComboBox23.Text <> '') ) then
    Label18.Font.color := clRed

  else if ((ComboBox3.Text = 'milho') and (ComboBox8.Text <> 'arroz') and (ComboBox8.Text <> '')) then
     Label18.Font.color := clRed
  else if ((ComboBox8.Text = 'milho') and (ComboBox3.Text <> 'arroz') and (ComboBox3.Text <> '')) and ((ComboBox8.Text = 'milho') and (ComboBox13.Text <> 'arroz') and (ComboBox13.Text <> '')) then
    Label18.Font.color := clRed
  else if ((ComboBox13.Text = 'milho') and (ComboBox8.Text <> 'arroz') and (ComboBox8.Text <> '')) and ((ComboBox13.Text = 'milho') and (ComboBox18.Text <> 'arroz') and (ComboBox18.Text <> '')) then
    Label18.Font.color := clRed
  else if ((ComboBox18.Text = 'milho') and (ComboBox13.Text <> 'arroz') and (ComboBox13.Text <> '')) and ((ComboBox18.Text = 'milho') and (ComboBox23.Text <> 'arroz') and (ComboBox23.Text <> '')) then
    Label18.Font.color := clRed
  else if ((ComboBox23.Text = 'milho') and (ComboBox18.Text <> 'arroz') and (ComboBox18.Text <> '')) then
    Label18.Font.Color := clRed
  else
    Label18.Font.color := clWindowText;

  //DICA 18
  if (((ComboBox5.Text = 'Hamburgo') and (ComboBox4.Text = '06:00')) or ((ComboBox10.Text = 'Hamburgo') and (ComboBox9.Text = '06:00')) or ((ComboBox15.Text = 'Hamburgo') and (ComboBox14.Text = '06:00')) or ((ComboBox20.Text = 'Hamburgo') and (ComboBox19.Text = '06:00')) or ((ComboBox25.Text = 'Hamburgo') and (ComboBox24.Text = '06:00'))) then
    Label19.Font.Color := clGreen
  else if (((ComboBox5.Text = 'Hamburgo') and (ComboBox4.Text <> '06:00') and (ComboBox4.Text <> '')) or ((ComboBox10.Text = 'Hamburgo') and (ComboBox9.Text <> '06:00') and (ComboBox9.Text <> '')) or ((ComboBox15.Text = 'Hamburgo') and (ComboBox14.Text <> '06:00') and (ComboBox14.Text <> '')) or ((ComboBox20.Text = 'Hamburgo') and (ComboBox19.Text <> '06:00') and (ComboBox19.Text <> '')) or ((ComboBox25.Text = 'Hamburgo') and (ComboBox24.Text <> '06:00') and (ComboBox24.Text <> ''))) then
    Label19.Font.Color := clRed
  else if (((ComboBox5.Text <> 'Hamburgo') and (ComboBox5.Text <> '') and (ComboBox4.Text = '06:00')) or ((ComboBox10.Text <> 'Hamburgo') and (ComboBox10.Text <> '') and (ComboBox9.Text = '06:00')) or ((ComboBox15.Text <> 'Hamburgo') and (ComboBox15.Text <> '') and (ComboBox14.Text = '06:00')) or ((ComboBox20.Text <> 'Hamburgo') and (ComboBox20.Text <> '') and (ComboBox19.Text = '06:00')) or  ((ComboBox25.Text <> 'Hamburgo') and (ComboBox25.Text <> '') and (ComboBox24.Text = '06:00'))) then
    Label19.Font.Color := clRed
  else
    Label19.Font.Color := clWindowText;

  //vaidador
  if (ComboBox1.Text = 'azul') and (ComboBox6.Text = 'vermelha') and (ComboBox11.Text = 'preta') and (ComboBox16.Text = 'branca') and (ComboBox21.Text = 'verde')
    and (ComboBox2.Text = 'francês') and (ComboBox7.Text = 'grego') and (ComboBox12.Text = 'brasileiro') and (ComboBox17.Text = 'ingles') and (ComboBox22.Text = 'espanhol')
    and (ComboBox3.Text = 'chá') and (ComboBox8.Text = 'café') and (ComboBox13.Text = 'cacau') and (ComboBox18.Text = 'arroz') and (ComboBox23.Text = 'milho')
    and (ComboBox4.Text = '05:00') and (ComboBox9.Text = '06:00') and (ComboBox14.Text = '08:00') and (ComboBox19.Text = '09:00') and (ComboBox24.Text = '07:00')
    and (ComboBox5.Text = 'Santos') and (ComboBox10.Text = 'Hamburgo') and (ComboBox15.Text = 'Manila') and (ComboBox20.Text = 'Macau') and (ComboBox25.Text = 'Rotterdam') then
  ShowMessage('Parabéns! Você concluiu o teste de Eintes com sucesso!');
end;

procedure TForm1.ComboBoxSelect(Sender: TObject);
var
  combobox : TComboBox;
  indice,i : Integer;

begin
  combobox := Sender as TComboBox;
  indice := lista.IndexOf(combobox);
  for i := 0 to lista.Count - 1  do
    begin
    if (lista[i].Text = combobox.Text) and (lista[i].Text <> '' )  and (i <> indice)  then
      begin
//      ShowMessage('nao pode ser colocado o valor');
        combobox.ItemIndex := 0;
        Exit;
    end
    end;
  if ((combobox = ComboBox1) or (combobox = ComboBox6) or (combobox = ComboBox11) or (combobox = ComboBox16) or (combobox = ComboBox21)) then
    MudaCorDoGroupBox();

  VerificarRespostas();
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  itens1, itens2, itens3, itens4, itens5: array of string;
  I: Integer;
begin
  itens1 := ['', 'azul', 'branca', 'verde', 'vermelha', 'preta'];
  itens2 := ['', 'brasileiro', 'espanhol', 'francês', 'grego', 'ingles'];
  itens3 := ['', 'arroz', 'cacau', 'café', 'chá', 'milho'];
  itens4 := ['', '05:00', '06:00', '07:00', '08:00', '09:00'];
  itens5 := ['', 'Hamburgo', 'Macau', 'Manila', 'Santos', 'Rotterdam'];
  lista := TList<TComboBox>.Create();
  lista.Add(ComboBox1);
  lista.Add(ComboBox2);
  lista.Add(ComboBox3);
  lista.Add(ComboBox4);
  lista.Add(ComboBox5);
  lista.Add(ComboBox6);
  lista.Add(ComboBox7);
  lista.Add(ComboBox8);
  lista.Add(ComboBox9);
  lista.Add(ComboBox10);
  lista.Add(ComboBox11);
  lista.Add(ComboBox12);
  lista.Add(ComboBox13);
  lista.Add(ComboBox14);
  lista.Add(ComboBox15);
  lista.Add(ComboBox16);
  lista.Add(ComboBox17);
  lista.Add(ComboBox18);
  lista.Add(ComboBox19);
  lista.Add(ComboBox20);
  lista.Add(ComboBox21);
  lista.Add(ComboBox22);
  lista.Add(ComboBox23);
  lista.Add(ComboBox24);
  lista.Add(ComboBox25);
  for I := 0 to High(itens1) do
  begin
    ComboBox1.Items.Add(itens1[I]);
    ComboBox2.Items.Add(itens2[I]);
    ComboBox3.Items.Add(itens3[I]);
    ComboBox4.Items.Add(itens4[I]);
    ComboBox5.Items.Add(itens5[I]);
  end;
  ComboBox6.Items.Text := ComboBox1.Items.Text;
  ComboBox11.Items.Text := ComboBox1.Items.Text;
  ComboBox16.Items.Text := ComboBox1.Items.Text;
  ComboBox21.Items.Text := ComboBox1.Items.Text;
  ComboBox7.Items.Text := ComboBox2.Items.Text;
  ComboBox12.Items.Text := ComboBox2.Items.Text;
  ComboBox17.Items.Text := ComboBox2.Items.Text;
  ComboBox22.Items.Text := ComboBox2.Items.Text;
  ComboBox8.Items.Text := ComboBox3.Items.Text;
  ComboBox13.Items.Text := ComboBox3.Items.Text;
  ComboBox18.Items.Text := ComboBox3.Items.Text;
  ComboBox23.Items.Text := ComboBox3.Items.Text;
  ComboBox9.Items.Text := ComboBox4.Items.Text;
  ComboBox14.Items.Text := ComboBox4.Items.Text;
  ComboBox19.Items.Text := ComboBox4.Items.Text;
  ComboBox24.Items.Text := ComboBox4.Items.Text;
  ComboBox10.Items.Text := ComboBox5.Items.Text;
  ComboBox15.Items.Text := ComboBox5.Items.Text;
  ComboBox20.Items.Text := ComboBox5.Items.Text;
  ComboBox25.Items.Text := ComboBox5.Items.Text;
  ComboBox1.OnSelect := ComboBoxSelect;
  ComboBox2.OnSelect := ComboBoxSelect;
  ComboBox3.OnSelect := ComboBoxSelect;
  ComboBox4.OnSelect := ComboBoxSelect;
  ComboBox5.OnSelect := ComboBoxSelect;
  ComboBox6.OnSelect := ComboBoxSelect;
  ComboBox7.OnSelect := ComboBoxSelect;
  ComboBox8.OnSelect := ComboBoxSelect;
  ComboBox9.OnSelect := ComboBoxSelect;
  ComboBox10.OnSelect := ComboBoxSelect;
  ComboBox11.OnSelect := ComboBoxSelect;
  ComboBox12.OnSelect := ComboBoxSelect;
  ComboBox13.OnSelect := ComboBoxSelect;
  ComboBox14.OnSelect := ComboBoxSelect;
  ComboBox15.OnSelect := ComboBoxSelect;
  ComboBox16.OnSelect := ComboBoxSelect;
  ComboBox17.OnSelect := ComboBoxSelect;
  ComboBox18.OnSelect := ComboBoxSelect;
  ComboBox19.OnSelect := ComboBoxSelect;
  ComboBox20.OnSelect := ComboBoxSelect;
  ComboBox21.OnSelect := ComboBoxSelect;
  ComboBox22.OnSelect := ComboBoxSelect;
  ComboBox23.OnSelect := ComboBoxSelect;
  ComboBox24.OnSelect := ComboBoxSelect;
  ComboBox25.OnSelect := ComboBoxSelect;
end;
procedure TForm1.FormDestroy(Sender: TObject);
begin
 lista.Free;
end;

end.
