unit calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    PanelDados: TPanel;
    PanelTeclas: TPanel;
    Botao7: TButton;
    Botao8: TButton;
    Botao9: TButton;
    BotaoDivisao: TButton;
    BotaoMultiplicacao: TButton;
    Botao4: TButton;
    Botao5: TButton;
    Botao6: TButton;
    BotaoSubtracao: TButton;
    Botao1: TButton;
    Botao2: TButton;
    Botao3: TButton;
    BotaoSoma: TButton;
    Botao0: TButton;
    BotaoPonto: TButton;
    BotaoIgual: TButton;
    PanelMostrar: TPanel;
    BotaoLimpar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure NumeroClick(Sender: TObject);
    procedure OperacaoClick(Sender: TObject);
    procedure IgualClick(Sender: TObject);
    procedure LimparClick(Sender: TObject);
  private
    FValor1: Double;        // primeiro número
    FOperacao: string;      // +, -, x, /
    FNumeroAtual: string;   // número que está sendo digitado
    FNovoNumero: Boolean;   // próximo dígito começa um número novo?
    FS: TFormatSettings;
    procedure Limpar;
    procedure AtualizarVisor;
    function Calcular: Boolean;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FS := TFormatSettings.Create;
  FS.DecimalSeparator := '.';
  Limpar;
end;

// Zera tudo
procedure TForm1.Limpar;
begin
  FValor1 := 0;
  FOperacao := '';
  FNumeroAtual := '0';
  FNovoNumero := True;
  AtualizarVisor;
end;

// Monta o texto do visor: "7", "7 + " ou "7 + 5"
procedure TForm1.AtualizarVisor;
begin
  if FOperacao = '' then
    PanelMostrar.Caption := FNumeroAtual
  else
    PanelMostrar.Caption := FloatToStr(FValor1, FS) + ' ' + FOperacao + ' ' + FNumeroAtual;
end;

// Faz a conta e guarda o resultado em FValor1
function TForm1.Calcular: Boolean;
var
  Valor2: Double;
begin
  Result := False;
  Valor2 := StrToFloat(FNumeroAtual, FS);

  if FOperacao = '+' then
    FValor1 := FValor1 + Valor2
  else if FOperacao = '-' then
    FValor1 := FValor1 - Valor2
  else if FOperacao = 'x' then
    FValor1 := FValor1 * Valor2
  else if FOperacao = '/' then
  begin
    if Valor2 = 0 then
    begin
      Limpar;
      PanelMostrar.Caption := 'Erro';
      Exit;
    end;
    FValor1 := FValor1 / Valor2;
  end;

  Result := True;
end;

procedure TForm1.NumeroClick(Sender: TObject);
var
  Digito: string;
begin
  Digito := (Sender as TButton).Caption;

  if FNovoNumero then
  begin
    if Digito = '.' then
      FNumeroAtual := '0.'
    else
      FNumeroAtual := Digito;
    FNovoNumero := False;
  end
  else
  begin
    if (Digito = '.') and (Pos('.', FNumeroAtual) > 0) then
      Exit; // não deixa dois pontos
    FNumeroAtual := FNumeroAtual + Digito;
  end;

  AtualizarVisor;
end;

procedure TForm1.OperacaoClick(Sender: TObject);
var
  NovaOperacao: string;
begin
  NovaOperacao := Trim((Sender as TButton).Caption);

  // Clicou em outra operação sem digitar número: só troca o sinal
  if FNumeroAtual = '' then
  begin
    FOperacao := NovaOperacao;
    AtualizarVisor;
    Exit;
  end;

  // Já tinha uma conta pendente (ex: 7 + 5 e clicou em x): resolve primeiro
  if FOperacao <> '' then
  begin
    if not Calcular then Exit;
  end
  else
    FValor1 := StrToFloat(FNumeroAtual, FS);

  FOperacao := NovaOperacao;
  FNumeroAtual := '';
  FNovoNumero := True;
  AtualizarVisor;
end;

procedure TForm1.IgualClick(Sender: TObject);
begin
  if (FOperacao = '') or (FNumeroAtual = '') then Exit;
  if not Calcular then Exit;

  FNumeroAtual := FloatToStr(FValor1, FS);
  FOperacao := '';
  FNovoNumero := True;
  AtualizarVisor;
end;

procedure TForm1.LimparClick(Sender: TObject);
begin
  Limpar;
end;

end.
