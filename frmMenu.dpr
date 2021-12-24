program frmMenu;

uses
  Vcl.Forms,
  uMenu in 'uMenu.pas' {frmMenuRecibo},
  uRecibo in 'uRecibo.pas' {frmRecibo},
  uCadastro in 'uCadastro.pas' {frmCadastro},
  uCarregaBanco in 'uCarregaBanco.pas' {frmCarregaBanco};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenuRecibo, frmMenuRecibo);
  Application.Run;
end.
