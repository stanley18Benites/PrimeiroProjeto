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
    lbNomEmpresa: TRLLabel;
    RLLabel6: TRLLabel;
    lbCidade: TRLLabel;
    lbEstado: TRLLabel;
    procedure RLSystemInfo1BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecibo: TfrmRecibo;

implementation

{$R *.dfm}



procedure TfrmRecibo.RLSystemInfo1BeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
  var
    PrimeiraLetra : string;
    Primeira : AnsiString;
  begin
   PrimeiraLetra := Copy(AText,1,1);
   //ShowMessage(PrimeiraLetra);
end ;
end.
