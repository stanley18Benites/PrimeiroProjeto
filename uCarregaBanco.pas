unit uCarregaBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCarregaBanco = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure carregarbancodados;
  private


    { Private declarations }
  public
    { public declarations }

  end;
  var
    frmCarregaBanco: TfrmCarregaBanco;

implementation
{$R *.dfm}

procedure TfrmCarregaBanco.Button1Click(Sender: TObject);
var s : String;
begin
  if DirectoryExists('\PROJETO\mysql50') then
    begin
      if DirectoryExists('\PROJETO\mysql50\mysql50\bins') then
      begin
        ShowMessage('Existe');
      end
      else
        s := GetCurrentDir + '\mysql50';

    end
  else
    begin
      ShowMessage('Inexistente');
    end
    end;

procedure TfrmCarregaBanco.carregarbancodados();
begin
  ShowMessage('oi');

end;
end.
