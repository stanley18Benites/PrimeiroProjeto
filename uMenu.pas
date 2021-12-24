unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCarregaBanco;

type
  TfrmMenuRecibo = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuRecibo: TfrmMenuRecibo;

implementation
uses uCadastro;
{$R *.dfm}

procedure TfrmMenuRecibo.Button1Click(Sender: TObject);
begin
  frmCadastro := TfrmCadastro.Create(application);
  try
    frmCadastro.ShowModal;
  finally
    frmCadastro.Free;
  end;
end;

procedure TfrmMenuRecibo.Button2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMenuRecibo.Button3Click(Sender: TObject);
begin
  frmCarregaBanco := TfrmCarregaBanco.Create(Application);
  try
    frmCarregaBanco.ShowModal;
  finally

  end;
end;

end.
