unit uRecibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmRecibo = class(TForm)
    RLReport1: TRLReport;
    pDados: TRLPanel;
    lb: TLabel;
    edtEndereco: TRLLabel;
    edtFone: TRLLabel;
    edtCidade: TRLLabel;
    RLPanel1: TRLPanel;
    Label1: TLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    lbValor: TRLLabel;
    RLLabel7: TRLLabel;
    lbNome: TRLLabel;
    memoValorExtenso: TRLMemo;
    RLLabel8: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbNomeEmpresa: TRLLabel;
    lbCnpj: TRLLabel;
    RLLabel1: TRLLabel;
    memoRef: TRLMemo;
    RLLabel3: TRLLabel;
    lbInscEstadual: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecibo: TfrmRecibo;

implementation

{$R *.dfm}

end.
