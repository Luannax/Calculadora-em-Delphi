object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'CALCULADORA'
  ClientHeight = 615
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelDados: TPanel
    Left = 0
    Top = 0
    Width = 497
    Height = 161
    Align = alTop
    Color = clAppWorkSpace
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 505
    object PanelMostrar: TPanel
      Left = 16
      Top = 24
      Width = 457
      Height = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object BotaoLimpar: TButton
        Left = 384
        Top = 1
        Width = 72
        Height = 119
        Align = alRight
        Caption = 'Limpar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = LimparClick
      end
    end
  end
  object PanelTeclas: TPanel
    Left = 0
    Top = 161
    Width = 497
    Height = 454
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 505
    ExplicitHeight = 448
    object Botao7: TButton
      Left = 16
      Top = 24
      Width = 89
      Height = 81
      Caption = '7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = NumeroClick
    end
    object Botao8: TButton
      Left = 136
      Top = 24
      Width = 89
      Height = 81
      Caption = '8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = NumeroClick
    end
    object Botao9: TButton
      Left = 264
      Top = 24
      Width = 89
      Height = 81
      Caption = '9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = NumeroClick
    end
    object BotaoDivisao: TButton
      Left = 384
      Top = 24
      Width = 89
      Height = 81
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = OperacaoClick
    end
  end
  object BotaoMultiplicacao: TButton
    Left = 384
    Top = 296
    Width = 89
    Height = 81
    Caption = 'x'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = OperacaoClick
  end
  object Botao4: TButton
    Left = 16
    Top = 296
    Width = 89
    Height = 81
    Caption = '4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = NumeroClick
  end
  object Botao5: TButton
    Left = 136
    Top = 296
    Width = 89
    Height = 81
    Caption = '5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = NumeroClick
  end
  object Botao6: TButton
    Left = 264
    Top = 296
    Width = 89
    Height = 81
    Caption = '6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = NumeroClick
  end
  object BotaoSubtracao: TButton
    Left = 384
    Top = 400
    Width = 89
    Height = 81
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = OperacaoClick
  end
  object Botao1: TButton
    Left = 16
    Top = 400
    Width = 89
    Height = 81
    Caption = '1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = NumeroClick
  end
  object Botao2: TButton
    Left = 136
    Top = 400
    Width = 89
    Height = 81
    Caption = '2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = NumeroClick
  end
  object Botao3: TButton
    Left = 264
    Top = 400
    Width = 89
    Height = 81
    Caption = '3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = NumeroClick
  end
  object BotaoSoma: TButton
    Left = 384
    Top = 504
    Width = 89
    Height = 81
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = OperacaoClick
  end
  object Botao0: TButton
    Left = 16
    Top = 504
    Width = 89
    Height = 81
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = NumeroClick
  end
  object BotaoPonto: TButton
    Left = 136
    Top = 504
    Width = 89
    Height = 81
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = OperacaoClick
  end
  object BotaoIgual: TButton
    Left = 264
    Top = 504
    Width = 89
    Height = 81
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = IgualClick
  end
end
