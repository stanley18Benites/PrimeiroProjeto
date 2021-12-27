program recibos;

uses
  Vcl.Forms,
  uMenu in 'uMenu.pas' {frmMenuRecibo},
  uRecibo in 'uRecibo.pas' {frmRecibo},
  uCadastro in 'uCadastro.pas' {frmCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenuRecibo, frmMenuRecibo);
  Application.Run;
end.
