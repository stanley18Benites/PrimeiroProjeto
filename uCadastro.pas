unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, MaskUtils;

type
  TfrmCadastro = class(TForm)
    Panel1: TPanel;
    Label11: TLabel;
    Label4: TLabel;
    edtEstado: TEdit;
    Label12: TLabel;
    edtRua: TEdit;
    Label13: TLabel;
    edtBairro: TEdit;
    edtNumCasa: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    edtNomeCliente: TEdit;
    edtValorRecebido: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    edtNomeEmp: TEdit;
    Label8: TLabel;
    edtCidadeEmpresa: TEdit;
    Label10: TLabel;
    Label17: TLabel;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    boxTipoPessoa: TComboBox;
    lbNomePessoa: TLabel;
    Label5: TLabel;
    memo: TMemo;
    boxTelefone: TComboBox;
    boxTelOpcional: TComboBox;
    edtNumeroCel: TMaskEdit;
    MaskEdit1: TMaskEdit;
    ComboBox1: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure boxTipoPessoaClick(Sender: TObject);
    procedure edtValorRecebidoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure boxTelefoneClick(Sender: TObject);
    procedure boxTelOpcionalClick(Sender: TObject);
    procedure edtValorRecebidoKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure edtNumeroCelKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure edtNumCasaKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Click(Sender: TObject);
  private
    procedure RetiraPontos(s: String);
    procedure checkBoxTelOpc;
    var st : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

uses uRecibo, UnExtenso,  uCarregaBanco;
{$R *.dfm}


procedure TfrmCadastro.Button1Click(Sender: TObject);
var s, str : String;
{
begin
  frmrecibo := TfrmRecibo.Create(application);
  try
  if boxTipoPessoa.ItemIndex = 0 then
    begin
      ShowMessage('Selecione o tipo de pessoa.');
      exit;
    end;

    frmRecibo.edtEndereco.Caption := edtRua.Text + ', '+ edtNumCasa.Text + ' - ' + edtBairro.Text  ;
    str := 'TELEFONE: ' + edtNumeroCel.Text;
    frmRecibo.edtCidade.Caption := edtCidadeEmpresa.Text + ' - '+ edtEstado.Text ;
    frmRecibo.lbNomeEmpresa.Caption := edtNomeEmp.Text;
    frmRecibo.lbValor.Caption := edtValorRecebido.Text;
    RetiraPontos(edtValorRecebido.Text);
    if edtValorRecebido.text = EmptyStr then
      begin
        ShowMessage('Informe o valor.');
        exit;
      end;
    frmRecibo.memoValorExtenso.lines.text := Extenso(StrToFloat(edtValorRecebido.Text));
    frmRecibo.memoRef.Lines.Text := memo.Text;
    frmRecibo.lbNome.Caption := edtNomeCliente.Text;
    frmRecibo.lbNomeEmpresa.Caption := edtNomeEmp.Text;
  if boxTipoPessoa.ItemIndex = 1 then
    begin
      edtNumeroCel.EditMask := '\(##\)####\-####;1;';
      frmRecibo.lbCnpj.Caption := 'CPF : ' + maskedit2.Text;
    end;
  if boxTipoPessoa.ItemIndex = 2 then
    begin
      edtNumeroCel.EditMask := '\(##\)#####\-####;1;';
      frmRecibo.lbCnpj.Caption := 'CNPJ: ' + maskedit2.Text;
    end;
    checkBoxTelOpc();
    if MaskEdit1.Text <> EmptyStr then
      str := str + '/ ' + MaskEdit1.Text;
    if MaskEdit3.Text <> EmptyStr then
      frmRecibo.lbInscEstadual.Caption := MaskEdit3.Text;
      frmRecibo.edtFone.Caption := str;
    frmRecibo.RLReport1.Preview;
    boxTelOpcional.ItemIndex := 0;
  finally
    frmRecibo.Free;
  end;
end;
}
begin
  frmCarregaBanco := TfrmCarregaBanco.create(application);
  try

  finally

  end;

end;

procedure TfrmCadastro.Button2Click(Sender: TObject);
begin
  close;
end;
procedure TfrmCadastro.edtNumCasaKeyPress(Sender: TObject; var Key: Char);
begin
  Case Key of
  'a'..'z':
  Key:=#0;
  'A'..'Z':
  Key:= '0';
  '/':
  Key:= '0';
  end;
end;
procedure TfrmCadastro.edtNumeroCelKeyPress(Sender: TObject; var Key: Char);
begin
  Case Key of
  'a'..'z':
  Key:=#0;
  'A'..'Z':
  Key:= '0';
  '/':
  Key:= '0';
  end;
end;
procedure TfrmCadastro.edtValorRecebidoKeyPress(Sender: TObject; var Key: Char);
begin
  Case Key of
  'a'..'z':
  Key:=#0;
  'A'..'Z':
  Key:= '0';
  '/':
  Key:= '0';
  end;
end;
procedure TfrmCadastro.edtValorRecebidoKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
var
  s: String;
begin
  if (Key in [96..107]) or (Key in [48..57]) then
     begin
      S := edtValorRecebido.Text;
      S := StringReplace(S,',','',[rfReplaceAll]);
      S := StringReplace(S,'.','',[rfReplaceAll]);
      if Length(s) = 3 then
        begin
          s := Copy(s,1,1)+','+Copy(S,2,15);
          edtValorRecebido.Text := S;
          edtValorRecebido.SelStart := Length(S);
        end
      else
        if (Length(s) > 3) and (Length(s) < 6) then
          begin
            s := Copy(s,1,length(s)-2)+','+Copy(S,length(s)-1,15);
            edtValorRecebido.Text := s;
            edtValorRecebido.SelStart := Length(S);
          end
        else
          if (Length(s) >= 6) and (Length(s) < 9) then
            begin
              s := Copy(s,1,length(s)-5)+'.'+Copy(s,length(s)-4,3)+','+Copy(S,length(s)-1,15);
              edtValorRecebido.Text := s;
              edtValorRecebido.SelStart := Length(S);
            end
          else
            if (Length(s) >= 9) and (Length(s) < 12) then
              begin
                s := Copy(s,1,length(s)-8)+'.'+Copy(s,length(s)-7,3)+'.'+
                       Copy(s,length(s)-4,3)+','+Copy(S,length(s)-1,15);
                edtValorRecebido.Text := s;
                edtValorRecebido.SelStart := Length(S);
              end
            else
              if (Length(s) >= 12) and (Length(s) < 15)  then
                begin
                  s := Copy(s,1,length(s)-11)+'.'+Copy(s,length(s)-10,3)+'.'+
                          Copy(s,length(s)-7,3)+'.'+Copy(s,length(s)-4,3)+','+Copy(S,length(s)-1,15);
                  edtValorRecebido.Text := s;
                  edtValorRecebido.SelStart := Length(S);
                end;
      end;
end;
procedure TfrmCadastro.FormCreate(Sender: TObject);
begin
  MaskEdit2.Enabled := false;
  edtNumeroCel.Enabled := false;
  MaskEdit3.Enabled := False;
  MaskEdit1.Enabled := false;
end;
procedure TfrmCadastro.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  Case Key of
  'a'..'z':
  Key:=#0;
  'A'..'Z':
  Key:= '0';
  '/':
  Key:= '0';
  end;
end;
procedure TfrmCadastro.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  Case Key of
  'a'..'z':
  Key:=#0;
  'A'..'Z':
  Key:= '0';
  '/':
  Key:= '0';
  end;
end;
procedure TfrmCadastro.MaskEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  Case Key of
  'a'..'z':
  Key:=#0;
  'A'..'Z':
  Key:= '0';
  '/':
  Key:= '0';
  end;
end;
procedure TfrmCadastro.RetiraPontos( s : String);
var
 i:Integer;
 texto:String;
 tamanho:Integer;
begin
 Texto:= s;
 tamanho:=Length(texto);
 i:=1;
 while i <= tamanho do
 begin
   if (pos(Texto[i],'.') > 0)or
      (pos(Texto[i],'/') > 0) Then
     begin
      delete(texto,i,1);
      i:=i-1;
      tamanho:=tamanho-1;
     end;
   i:=i+1;
 end;
 edtValorRecebido.Text:=Texto;
end;
procedure TfrmCadastro.checkBoxTelOpc(); //verifica o tipo de telefone opcional selecionado
begin
  if boxTelOpcional.ItemIndex = 0 then
    MaskEdit1.EditMask := '';
  if boxTelOpcional.ItemIndex = 1 then
    begin
      MaskEdit1.EditMask := '\(##\)####\-####;1;';
      st := st + ' / '+ MaskEdit1.Text;
    end;
  if boxTelOpcional.ItemIndex = 2 then
    begin
      MaskEdit1.EditMask := '\(##\)#####\-####;1;';
      st := st + ' / '+ MaskEdit1.Text;
    end;

end;
procedure TfrmCadastro.ComboBox1Click(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 1 then
    begin
      MaskEdit3.Enabled := true;
      MaskEdit3.EditMask := '######.###.##;1;_';
    end;
  if ComboBox1.ItemIndex = 0 then
    begin
      MaskEdit3.Enabled := false;
      MaskEdit3.EditMask := '';
      MaskEdit3.Text := '';
    end;
end;

procedure TfrmCadastro.boxTelOpcionalClick(Sender: TObject);
begin
  if boxTelOpcional.ItemIndex = 1 then
    begin
      MaskEdit1.Enabled := true;
      MaskEdit1.EditMask := '\(##\)####\-####;1;';
    end;
  if boxTelOpcional.ItemIndex = 2 then
    begin
      MaskEdit1.Enabled := true;
      MaskEdit1.EditMask := '\(##\)#####\-####;1;';
    end;
  if boxTelOpcional.ItemIndex = 0 then
    begin
      MaskEdit1.Enabled := false;
      MaskEdit1.Text := '';
      MaskEdit1.EditMask := '';
    end;

end;
procedure TfrmCadastro.boxTelefoneClick(Sender: TObject);
begin
  if boxTelefone.ItemIndex = 0 then
    begin
      edtNumeroCel.EditMask := '';
      edtNumeroCel.Enabled := false;
    end;
  if boxTelefone.ItemIndex = 1 then
    begin
      edtNumeroCel.Enabled := true;
      edtNumeroCel.EditMask := '\(##\)####\-####;1;';
    end;
  if boxTelefone.ItemIndex = 2 then
    begin
      edtNumeroCel.Enabled := true;
      edtNumeroCel.EditMask := '\(##\)#####\-####;1;'
    end;
end;
procedure TfrmCadastro.boxTipoPessoaClick(Sender: TObject);
begin
  if boxTipoPessoa.ItemIndex = 0 then
    Begin
      lbNomePessoa.Caption := 'Selecionar';
      MaskEdit2.Enabled := false;
    End;
  if boxTipoPessoa.ItemIndex = 1 then
    begin
      MaskEdit2.Enabled := true;
      lbNomePessoa.Caption := 'CPF';
      MaskEdit2.EditMask := '###.###.###-##;1;_' ;

    end;
  if boxTipoPessoa.ItemIndex = 2 then
    begin
      MaskEdit2.Enabled := true;
      lbNomePessoa.Caption := 'CNPJ';
      MaskEdit2.EditMask := '##.###.###/####-##;1;_' ;
    end;
end;

end.
