unit CALCULADORA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TTELA_CALCULADORA = class(TForm)
    painel_Resultado: TPanel;
    painel_numeros: TPanel;
    label_DireitosAutorais: TLabel;
    BTN_01: TButton;
    BTN_04: TButton;
    BTN_07: TButton;
    BTN_0: TButton;
    BTN_02: TButton;
    BTN_05: TButton;
    BTN_08: TButton;
    BTN_00: TButton;
    BTN_03: TButton;
    BTN_06: TButton;
    BTN_09: TButton;
    BTN_PONTO: TButton;
    BTN_DIVIDIR: TButton;
    BTN_MULTIPLICAR: TButton;
    BTN_SUBTRAIR: TButton;
    BTN_SOMAR: TButton;
    BTN_IGUAL: TButton;
    BTN_LIMPAR: TButton;
    painel_result: TEdit;
    procedure BTN_SOMARClick(Sender: TObject);
    procedure BTN_SUBTRAIRClick(Sender: TObject);
    procedure BTN_MULTIPLICARClick(Sender: TObject);
    procedure BTN_DIVIDIRClick(Sender: TObject);
    procedure numerosClick(Sender: TObject);
    procedure Calcular;
  private
    { Private declarations }

    var FOperacao: string;
    var FTotal: Double;
    var FUltimoNumero: Double;
    
  public
    { Public declarations }
  end;

var
  TELA_CALCULADORA: TTELA_CALCULADORA;

implementation

{$R *.dfm}

procedure TTELA_CALCULADORA.numerosClick(Sender: TObject);
begin

  if FUltimoNumero = 0 then
    painel_result.Text :=  TButton(Sender).Caption
  else
    painel_result.Text := painel_result.Text + TButton(Sender).Caption;

  FUltimoNumero := StrToFloat(painel_result.Text);

end;

procedure TTELA_CALCULADORA.BTN_DIVIDIRClick(Sender: TObject);
begin

  FOperacao := '/';

end;

procedure TTELA_CALCULADORA.BTN_MULTIPLICARClick(Sender: TObject);
begin

  FOperacao := '*';

end;

procedure TTELA_CALCULADORA.BTN_SOMARClick(Sender: TObject);
begin

  FOperacao := '+';

end;

procedure TTELA_CALCULADORA.BTN_SUBTRAIRClick(Sender: TObject);
begin

  FOperacao := '-';

end;

procedure TTELA_CALCULADORA.Calcular;
begin

  case FOperacao of
    '+' : FTotal := FTotal + StrToFloat(painel_result.Text)
  end;  

end;

end.
