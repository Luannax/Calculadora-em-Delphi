# 🧮 Calculadora em Delphi

Calculadora desktop desenvolvida em **Delphi (VCL)** como projeto de estudo da linguagem Object Pascal e do ambiente RAD Studio.

![Calculadora em Delphi](docs/calculadora.png)

## ✨ Funcionalidades

- Operações básicas: **soma, subtração, multiplicação e divisão**
- Suporte a **números decimais**, com bloqueio de pontos duplicados
- Visor mostra a **expressão completa** enquanto você digita (ex: `7 + 5`)
- **Operações encadeadas**: em `7 + 5`, ao clicar em `x`, o resultado parcial é calculado automaticamente (`12 x`)
- Troca de operação antes de digitar o segundo número
- Tratamento de **divisão por zero**
- Botão **Limpar** para reiniciar o cálculo

## 🛠️ Tecnologias

- **Delphi** / Object Pascal
- **VCL** (Visual Component Library)
- **RAD Studio 13**

## 💡 Conceitos praticados

- **Eventos compartilhados**: um único `OnClick` atende todos os botões numéricos, usando o parâmetro `Sender` para identificar qual botão foi clicado
- **Controle de estado** com campos privados do formulário (`FValor1`, `FOperacao`, `FNumeroAtual`, `FNovoNumero`)
- **Separação de responsabilidades** em métodos privados (`Calcular`, `AtualizarVisor`, `Limpar`)
- Conversão de números com **`TFormatSettings`**, garantindo o ponto como separador decimal independentemente da configuração regional do Windows

## 🚀 Como executar

### Opção 1: Baixar o executável (sem precisar do Delphi)
1. Acesse a página de [Releases](https://github.com/Luannax/Calculadora-em-Delphi/releases)
2. Baixe o arquivo `TCalculadora.exe` da versão mais recente
3. Dê dois cliques no arquivo para abrir a calculadora

> ⚠️ Como o executável não possui assinatura digital, o Windows pode exibir o aviso **"O Windows protegeu o computador"**. Para abrir, clique em **Mais informações** → **Executar assim mesmo**.

### Opção 2: Compilar pelo código-fonte
1. Clone o repositório:
   ```bash
   git clone https://github.com/Luannax/Calculadora-em-Delphi.git
   ```
2. Abra o arquivo `TCalculadora.dproj` no RAD Studio
3. Pressione **F9** para compilar e executar
4. O executável gerado fica em `Win32\Debug\TCalculadora.exe`

**Requisitos:** Windows. Para compilar, RAD Studio / Delphi (a Community Edition funciona).
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/luannabahia)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/Luannax)
