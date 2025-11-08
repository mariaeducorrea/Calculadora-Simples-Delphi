unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,Vcl.Styles,Vcl.Themes;

type
  TCalculadora = class(TForm)
    Priemeirovalor: TLabel;
    Label2: TLabel;
    txtResultado: TEdit;
    Resultado: TLabel;
    btSubtrair: TButton;
    btDivisao: TButton;
    btSomar: TButton;
    btMultiplicar: TButton;
    opcVisual: TRadioGroup;
    txtNum2: TEdit;
    txtNum1: TEdit;
    procedure btSubtrairClick(Sender: TObject);
    procedure btSomarClick(Sender: TObject);
    procedure btMultiplicarClick(Sender: TObject);
    procedure btDivisaoClick(Sender: TObject);
    procedure opcVisualClick(Sender: TObject);
  private
    function calcularResultado(num1, num2: Real; operacao: String): Real;
  public
    { Public declarations }
  end;

var
  Calculadora: TCalculadora;

implementation

{$R *.dfm}



{ TCalculadora }

procedure TCalculadora.btDivisaoClick(Sender: TObject);
begin
    txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text),StrToFloat(txtNum2.Text),'dividir'));
end;

procedure TCalculadora.btMultiplicarClick(Sender: TObject);
begin
    txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text),StrToFloat(txtNum2.Text),'multiplicar'));
end;

procedure TCalculadora.btSomarClick(Sender: TObject);
begin
    txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text), StrToFloat(txtNum2.Text), 'somar'));
end;

procedure TCalculadora.btSubtrairClick(Sender: TObject);
begin
    txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text), StrToFloat(txtNum2.Text), 'subtrair'));
end;

function TCalculadora.CalcularResultado(num1, num2: Real; operacao: String): Real;
var
    resultado: Real;

begin
    if operacao = 'dividir' then
        resultado := num1 / num2;

    if operacao = 'multiplicar' then
        resultado := num1 * num2;

    if operacao = 'somar' then
        resultado := num1 + num2;

    if operacao = 'subtrair' then
        resultado := num1 - num2;

    result := resultado

end;


procedure TCalculadora.opcVisualClick(Sender: TObject);
begin
    case opcVisual.ItemIndex of
        0:TStyleManager.SetStyle('Windows');
        1:TStyleManager.SetStyle('Sky');
        2:TStyleManager.SetStyle('Glow');
    end;

end;

end.
