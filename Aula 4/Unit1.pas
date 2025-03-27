unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst, Vcl.ExtCtrls,
  Vcl.NumberBox, Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.Imaging.pngimage, Vcl.Mask,
  Vcl.Samples.Spin, Vcl.FileCtrl;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Button1: TButton;
    CheckListBox1: TCheckListBox;
    ToggleSwitch1: TToggleSwitch;
    ColorListBox1: TColorListBox;
    MonthCalendar1: TMonthCalendar;
    DateTimePicker1: TDateTimePicker;
    ColorBox1: TColorBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    CheckBox2: TCheckBox;
    ComboBox3: TComboBox;
    RichEdit1: TRichEdit;
    DriveComboBox1: TDriveComboBox;
    DriveComboBox2: TDriveComboBox;
    SpinEdit1: TSpinEdit;
    MaskEdit1: TMaskEdit;
    LabeledEdit1: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
