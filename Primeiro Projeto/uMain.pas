unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Classes;

type
  TfrmMain = class(TForm)
    visor1: TEdit;
    visor2: TEdit;
    visor3: TEdit;
    botaoSoma: TButton;
    Label1: TLabel;
    subtraiBotao: TButton;
    multiplicaBotao: TButton;
    divideBotao: TButton;
    numero7Botao: TButton;
    numero5Botao: TButton;
    numero4Botao: TButton;
    numero0Botao: TButton;
    numero8Botao: TButton;
    numero1Botao: TButton;
    numero2Botao: TButton;
    numero9Botao: TButton;
    numero6Botao: TButton;
    numero3Botao: TButton;
    apagarBotao: TButton;
    visor4: TEdit;
    porcentagemBotao: TButton;
    virgulaBotao: TButton;
    procedure botaoSomaClick(Sender: TObject);
    procedure subtraiBotaoClick(Sender: TObject);
    procedure multiplicaBotaoClick(Sender: TObject);
    procedure divideBotaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure numero1BotaoClick(Sender: TObject);
    procedure numero2BotaoClick(Sender: TObject);
    procedure numero3BotaoClick(Sender: TObject);
    procedure numero4BotaoClick(Sender: TObject);
    procedure numero5BotaoClick(Sender: TObject);
    procedure numero6BotaoClick(Sender: TObject);
    procedure numero7BotaoClick(Sender: TObject);
    procedure numero8BotaoClick(Sender: TObject);
    procedure numero9BotaoClick(Sender: TObject);
    procedure numero0BotaoClick(Sender: TObject);
    procedure visor1Enter(Sender: TObject);
    procedure visor2Enter(Sender: TObject);
    procedure apagarBotaoClick(Sender: TObject);
    procedure porcentagemBotaoClick(Sender: TObject);
    procedure virgulaBotaoClick(Sender: TObject);
    procedure visor1KeyPress(Sender: TObject; var Key: Char);
    procedure visor2KeyPress(Sender: TObject; var Key: Char);

  private  { Private declarations }

    procedure somaDoisValores;
    procedure subtraiDoisValores;
    procedure multiplicaDoisValores;
    procedure divideDoisValores;
    procedure procentagemValores;
    procedure armazenaLog (operador : string; result : string);
    procedure valorAosVisores (valorNumerico : string);
    procedure realizaCalculos (operadorS : string);
    function verificaValores : integer;

  public  { Public declarations }

  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

{===============INICIALIZATE===============}

procedure TfrmMain.FormShow(Sender: TObject);
begin
  visor3.ReadOnly := True;
  visor4.Enabled := False;
  visor1.Text := '';
  visor2.Text := '';
  visor3.Text := '';
  visor4.Text := '';
  visor1.Tag := 1;
end;
{===============VERIIFICAÇÃO SE CAMPOS ESTÃO VAZIOS===============}

function TfrmMain.verificaValores : integer;
begin
  if (visor1.Text = '') and (visor2.Text = '') then
  begin
    ShowMessage('Prezado cliente, ambos os campos estão vazios.');
    Result := 1;
  end
  else if (visor1.Text = '') or (visor2.Text = '') then
  begin
    ShowMessage('Prezado cliente, um dos campos está vazio.');
    Result := 1;
  end
  else
  begin
    Result := 0;
  end;
end;

{===============CHAMADA PROCEADURES===============}

procedure TfrmMain.botaoSomaClick(Sender: TObject);
begin
  somaDoisValores;
end;

procedure TfrmMain.subtraiBotaoClick(Sender: TObject);
begin
  subtraiDoisValores;
end;

procedure TfrmMain.multiplicaBotaoClick(Sender: TObject);
begin
  multiplicaDoisValores;
end;

procedure TfrmMain.divideBotaoClick(Sender: TObject);
begin
  divideDoisValores;
end;

procedure TfrmMain.porcentagemBotaoClick(Sender: TObject);
begin
  procentagemValores;
end;

procedure TfrmMain.apagarBotaoClick(Sender: TObject);
begin
  if visor1.Tag = 1 then
    visor1.Text := Copy(visor1.Text, 1, Length(visor1.Text)-1)
  else
    visor2.Text := Copy(visor2.Text, 1, Length(visor2.Text)-1);
end;


{===============CHAMA CALCULOS E PORCENTAGEM===============}

procedure TfrmMain.somaDoisValores;
begin
  realizaCalculos('+');
end;

procedure TfrmMain.subtraiDoisValores;
begin
  realizaCalculos('-');
end;

procedure TfrmMain.multiplicaDoisValores;
begin
  realizaCalculos('*');
end;

procedure TfrmMain.divideDoisValores;
begin
  realizaCalculos('/');
end;

procedure TfrmMain.procentagemValores;
begin
  if (visor1.Text <> '') then
  begin
    if (visor2.Text = '') then
    begin
      visor3.Text := FloatToStr(StrToFloat(visor1.Text)/100);
      visor2.Text := '100';
      visor4.Text := '/';
      armazenaLog('%', visor3.Text);
    end
    else if (visor1.Text = '') then
    begin
      ShowMessage('Prezado cliente, não é possivel realizar porcentagem em caso de primeiro campo vazio.');
    end
    else
    begin
      visor3.Text := FloatToStr((StrToFloat(visor1.Text) * StrToFloat(visor2.Text))/100);
      visor4.Text := '%';
      armazenaLog('%', visor3.Text);
    end;
  end
  else
    ShowMessage('Prezado cliente, o primeiro campo está vazio.');
end;

{===============NUMEROS===============}


procedure TfrmMain.numero0BotaoClick(Sender: TObject);
begin
  valorAosVisores('0');
end;

procedure TfrmMain.numero1BotaoClick(Sender: TObject);
begin
  valorAosVisores('1');
end;

procedure TfrmMain.numero2BotaoClick(Sender: TObject);
begin
  valorAosVisores('2');
end;

procedure TfrmMain.numero3BotaoClick(Sender: TObject);
begin
  valorAosVisores('3');
end;

procedure TfrmMain.numero4BotaoClick(Sender: TObject);
begin
  valorAosVisores('4');
end;

procedure TfrmMain.numero5BotaoClick(Sender: TObject);
begin
  valorAosVisores('5');
end;

procedure TfrmMain.numero6BotaoClick(Sender: TObject);
begin
  valorAosVisores('6');
end;

procedure TfrmMain.numero7BotaoClick(Sender: TObject);
begin
  valorAosVisores('7');
end;

procedure TfrmMain.numero8BotaoClick(Sender: TObject);
begin
  valorAosVisores('8');
end;

procedure TfrmMain.numero9BotaoClick(Sender: TObject);
begin
  valorAosVisores('9');
end;

{=============VIRGULA BUTTON=============}

procedure TfrmMain.virgulaBotaoClick(Sender: TObject);
begin
  if (visor1.Tag = 1) then
  begin
    if (visor1.Text = '') then
    begin
      ShowMessage('Prezado Cliente, não há numeros para se adicionar virgula.');
      Exit;
    end;

    if Pos(',', visor1.Text) <> 0 then
      ShowMessage('Prezado Cliente, não é possivel adicionar mais de uma virgula a um número.')
    else
      visor1.Text := visor1.Text + ',';
  end
  else
  begin
    if (visor2.Text = '') then
    begin
      ShowMessage('Prezado Cliente, não há numeros para se adicionar virgula.');
      Exit;
    end;

    if Pos(',', visor2.Text) <> 0 then
      ShowMessage('Prezado Cliente, não é possivel adicionar mais de uma virgula a um número.')
    else
      visor1.Text := visor2.Text + ',';
  end;
end;


{===============VISORES===============}

procedure TfrmMain.visor1Enter(Sender: TObject);
begin
  visor1.Tag := 1;
  visor4.Text := '';
end;

procedure TfrmMain.visor2Enter(Sender: TObject);
begin
  visor1.Tag := 2;
  visor4.Text := '';
end;

 {===============BLOCK LETTERS===============}
procedure TfrmMain.visor1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8, ',', '-']) then
  begin
    Beep;
    key := #0;
  end;
  if (Key = ',') then
  begin
    if (visor1.Text = '') then
    begin
      Beep;
      Key := #0;
    end
    else if Pos(',', visor1.Text) <> 0 then
    begin
      Beep;
      Key := #0;
    end;
  end;
  if (Key = '-') and (Length(visor1.Text) >= 1) then
  begin
    if (Length(visor1.Text) >= 1) then
    begin
      Beep;
      Key := #0;
    end;
  end;
end;

procedure TfrmMain.visor2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['1'..'9', #8, ',', '-']) then
  begin
    Beep;
    key := #0;
  end;
  if (Key = ',') then
  begin
    if (visor2.Text = '') then
    begin
      Beep;
      key := #0;
    end
    else if Pos(',', visor2.Text) <> 0 then
    begin
      Beep;
      key := #0;
    end;
  end;
  if (Key = '-') and (Length(visor2.Text) >= 1) then
  begin
    if (Length(visor2.Text) >= 1) then
    begin
      Beep;
      Key := #0;
    end;
  end;
end;

  {===============GERAR LOG===============}
procedure TfrmMain.armazenaLog(operador : string; result : string);
var
  date : TDateTime;
  lista : TstringList;
begin
  lista := TStringList.Create;
  date := now;
  try

    if (FileExists('OndeGostariaDeSalvarOlog')) then
    begin
      lista.LoadFromFile('OndeGostariaDeSalvarOlog');
      lista.add(visor1.Text + operador + visor2.Text + '=' + result + DateTimeToStr(date));
      lista.SaveToFile('OndeGostariaDeSalvarOlog');
    end
    else
    begin
      lista.add(visor1.Text + operador + visor2.Text + '=' + result + DateTimeToStr(date));
      lista.SaveToFile('OndeGostariaDeSalvarOlog');
    end;

  finally
    lista.Free;
  end;
end;

{===============VALOR AOS VISORES===============}

procedure TfrmMain.valorAosVisores (valorNumerico : string);
begin
  if (visor1.Tag = 1) then
  begin
    visor1.Text := visor1.Text + valorNumerico;
  end
  else
  begin
    visor2.Text := visor2.Text + valorNumerico;
  end;
end;

{===============REALIZA CALCULOS===============}

procedure TfrmMain.realizaCalculos(operadorS: string);
begin
  if (verificaValores = 0) then
  begin
    if (operadorS = '+') then
    begin
      visor3.Text := FloatToStr(StrToFloat(visor1.Text) + StrToFloat(visor2.Text));
      visor4.Text := operadorS;
      armazenaLog(operadorS, visor3.Text);
    end
    else if (operadorS = '-') then
    begin
      visor3.Text := FloatToStr(StrToFloat(visor1.Text) - StrToFloat(visor2.Text));
      visor4.Text := operadorS;
      armazenaLog(operadorS, visor3.Text);
    end
    else if (operadorS = '*') then
    begin
      visor3.Text := FloatToStr(StrToFloat(visor1.Text) * StrToFloat(visor2.Text));
      visor4.Text := operadorS;
      armazenaLog(operadorS, visor3.Text);
    end
    else if (operadorS = '/') then
    begin
      if (StrToFloat(visor2.Text) <> 0) then
      begin
        visor3.Text := FloatToStr(StrToFloat(visor1.Text) / StrToFloat(visor2.Text));
        visor4.Text := operadorS;
        armazenaLog(operadorS, (visor3.Text));
      end
      else
      begin
        ShowMessage('Prezado cliente, infelizmente não é possivel dividir um número por zero.');
      end;
    end;
  end
end;

end.
