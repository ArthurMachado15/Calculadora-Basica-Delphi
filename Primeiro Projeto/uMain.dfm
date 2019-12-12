object frmMain: TfrmMain
  Left = 0
  Top = 0
  ClientHeight = 294
  ClientWidth = 632
  Color = 16775399
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 392
    Top = 43
    Width = 8
    Height = 13
    Caption = '='
  end
  object visor1: TEdit
    Left = 92
    Top = 40
    Width = 75
    Height = 21
    TabOrder = 0
    OnEnter = visor1Enter
    OnKeyPress = visor1KeyPress
  end
  object visor2: TEdit
    Left = 280
    Top = 40
    Width = 75
    Height = 21
    TabOrder = 1
    OnEnter = visor2Enter
    OnKeyPress = visor2KeyPress
  end
  object visor3: TEdit
    Left = 436
    Top = 40
    Width = 137
    Height = 21
    Alignment = taCenter
    TabOrder = 2
  end
  object botaoSoma: TButton
    Left = 436
    Top = 100
    Width = 57
    Height = 25
    Caption = '+'
    TabOrder = 3
    OnClick = botaoSomaClick
  end
  object subtraiBotao: TButton
    Left = 516
    Top = 100
    Width = 57
    Height = 25
    Caption = '-'
    TabOrder = 4
    OnClick = subtraiBotaoClick
  end
  object multiplicaBotao: TButton
    Left = 516
    Top = 140
    Width = 57
    Height = 25
    Caption = '*'
    TabOrder = 5
    OnClick = multiplicaBotaoClick
  end
  object divideBotao: TButton
    Left = 436
    Top = 140
    Width = 57
    Height = 25
    Caption = '/'
    TabOrder = 6
    OnClick = divideBotaoClick
  end
  object numero7Botao: TButton
    Left = 92
    Top = 100
    Width = 75
    Height = 25
    Caption = '7'
    TabOrder = 7
    OnClick = numero7BotaoClick
  end
  object numero5Botao: TButton
    Left = 184
    Top = 140
    Width = 75
    Height = 25
    Caption = '5'
    TabOrder = 8
    OnClick = numero5BotaoClick
  end
  object numero4Botao: TButton
    Left = 92
    Top = 140
    Width = 75
    Height = 25
    Caption = '4'
    TabOrder = 9
    OnClick = numero4BotaoClick
  end
  object numero0Botao: TButton
    Left = 92
    Top = 220
    Width = 75
    Height = 25
    Caption = '0'
    TabOrder = 10
    OnClick = numero0BotaoClick
  end
  object numero8Botao: TButton
    Left = 184
    Top = 100
    Width = 75
    Height = 25
    Caption = '8'
    TabOrder = 11
    OnClick = numero8BotaoClick
  end
  object numero1Botao: TButton
    Left = 92
    Top = 180
    Width = 75
    Height = 25
    Caption = '1'
    TabOrder = 12
    OnClick = numero1BotaoClick
  end
  object numero2Botao: TButton
    Left = 184
    Top = 180
    Width = 75
    Height = 25
    Caption = '2'
    TabOrder = 13
    OnClick = numero2BotaoClick
  end
  object numero9Botao: TButton
    Left = 280
    Top = 100
    Width = 75
    Height = 25
    Caption = '9'
    TabOrder = 14
    OnClick = numero9BotaoClick
  end
  object numero6Botao: TButton
    Left = 280
    Top = 140
    Width = 75
    Height = 25
    Caption = '6'
    TabOrder = 15
    OnClick = numero6BotaoClick
  end
  object numero3Botao: TButton
    Left = 280
    Top = 180
    Width = 75
    Height = 25
    Caption = '3'
    TabOrder = 16
    OnClick = numero3BotaoClick
  end
  object apagarBotao: TButton
    Left = 280
    Top = 220
    Width = 75
    Height = 25
    Caption = 'Apagar'
    TabOrder = 17
    OnClick = apagarBotaoClick
  end
  object visor4: TEdit
    Left = 207
    Top = 40
    Width = 34
    Height = 21
    Alignment = taCenter
    TabOrder = 18
  end
  object porcentagemBotao: TButton
    Left = 436
    Top = 180
    Width = 57
    Height = 25
    Caption = '%'
    TabOrder = 19
    OnClick = porcentagemBotaoClick
  end
  object virgulaBotao: TButton
    Left = 184
    Top = 220
    Width = 75
    Height = 25
    Caption = ','
    TabOrder = 20
    OnClick = virgulaBotaoClick
  end
end
