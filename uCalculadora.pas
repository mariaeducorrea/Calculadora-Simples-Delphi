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
    procedure txtNum1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function calcularResultado(num1, num2: Real; operacao: String): Real;
    function validarCampos(): Boolean;
    procedure habilitarBotoes(habilitado: Boolean);
    procedure registrarLog(acao: String);
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
    if validarCampos then
        begin
            if txtNum2.Text = '0' then
                begin
                    ShowMessage('Impossivel dividir por zero!');
                    registrarLog('Erro ao dividir por zero.');
                end
            else
                begin
                    txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text),StrToFloat(txtNum2.Text),'dividir'));
                    registrarLog('Divisão, num1= '+ txtNum1.Text + ', num2= ' + txtNum2.Text + ', Resultado= ' + txtResultado.Text);
                end;
        end;
end;
procedure TCalculadora.btMultiplicarClick(Sender: TObject);
begin
     if validarCampos then
        begin
          txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text),StrToFloat(txtNum2.Text),'multiplicar'));
          registrarLog('Multiplicação, num1= '+ txtNum1.Text + ', num2= ' + txtNum2.Text + ', Resultado= ' + txtResultado.Text);

        end;
end;

procedure TCalculadora.btSomarClick(Sender: TObject);
begin
    if validarCampos then
        begin
            txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text), StrToFloat(txtNum2.Text), 'somar'));
            registrarLog('Somar, num1= '+ txtNum1.Text + ', num2= ' + txtNum2.Text + ', Resultado= ' + txtResultado.Text);
        end;
end;

procedure TCalculadora.btSubtrairClick(Sender: TObject);
begin
     if validarCampos then
        begin
            txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text), StrToFloat(txtNum2.Text), 'subtrair'));
            registrarLog('Subtração, num1= '+ txtNum1.Text + ', num2= ' + txtNum2.Text + ', Resultado= ' + txtResultado.Text);
        end;
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




procedure TCalculadora.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    registrarLog('Aplicação Encerrada');
    registrarlog('--------------------------');
end;

procedure TCalculadora.FormCreate(Sender: TObject);
begin
    registrarlog('--------------------------');
    registrarLog('Aplicação Iniciada');
end;

procedure TCalculadora.habilitarBotoes(habilitado: Boolean);
begin
    btSomar.Enabled := habilitado;
    btSubtrair.Enabled := habilitado;
    btMultiplicar.Enabled := habilitado;
    btDivisao.Enabled := habilitado;
end;

procedure TCalculadora.opcVisualClick(Sender: TObject);
begin
    case opcVisual.ItemIndex of
        0:
        begin
            TStyleManager.SetStyle('Windows');
            registrarLog('Selecionado Style Windows');
        end;
        1:
        begin
            TStyleManager.SetStyle('Sky');
            registrarLog('Selecionado Style Sky');
        end;
        2:
        begin
            TStyleManager.SetStyle('Glow');
            registrarLog('Selecionado Style Glow');
        end;
    end;

end;

procedure TCalculadora.registrarLog(acao: String);
var
    arquivo: TextFile;
begin
    try
        AssignFIle(arquivo, 'Logs.txt');

        if FileExists('Logs.txt') then
            Append(arquivo)
        else
        //criar arquivo não tiver,se já tiver sobreescreve o arquivo existente
            Rewrite(arquivo);

        Writeln(arquivo, '['+DateTimeToStr(now())+'] - ' + acao);
    finally
        CloseFile(arquivo);
    end;

end;

procedure TCalculadora.txtNum1Change(Sender: TObject);
begin
    if validarCampos then
        habilitarBotoes(True)
    else
        habilitarBotoes(False);
end;

function TCalculadora.validarCampos: Boolean;
begin
    if (txtNum1.Text = '') or (txtNum2.Text = '') then
        Result := False
    else
        try
        //tenta converter o valor colocado para float
            StrToFloat(txtNum1.Text);
            StrToFloat(txtNum2.Text);

            Result := True;
        except
        //se ocorrer erro ao tentar converter no bloco de cima, pega erro e armazena na var E
            on E: EConvertError do
             begin
                Result := False;
             end;
        end;

end;

end.
