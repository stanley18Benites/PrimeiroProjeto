program Recibo;

uses
  Vcl.Forms,
  uMenu in 'uMenu.pas' {frmMenuRecibo},
  uCadastro in 'uCadastro.pas' {frmCadastro},
  uRecibo in 'uRecibo.pas' {frmRecibo},
  UnExtenso in 'UnExtenso.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenuRecibo, frmMenuRecibo);
  Application.Run;
end.
