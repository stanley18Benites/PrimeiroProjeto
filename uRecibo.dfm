object frmRecibo: TfrmRecibo
  Left = 0
  Top = 0
  Caption = 'Recibo'
  ClientHeight = 530
  ClientWidth = 842
  Color = 10132122
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 24
    Top = 8
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object pDados: TRLPanel
      Left = 41
      Top = 40
      Width = 684
      Height = 80
      Alignment = taCenter
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedLeft = True
      Borders.FixedTop = True
      Borders.FixedRight = True
      Borders.FixedBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Layout = tlCenter
      ParentFont = False
      object lb: TLabel
        Left = 16
        Top = 4
        Width = 3
        Height = 15
      end
      object edtEndereco: TRLLabel
        Left = 16
        Top = 23
        Width = 432
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object edtFone: TRLLabel
        Left = 16
        Top = 40
        Width = 432
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object edtCidade: TRLLabel
        Left = 16
        Top = 57
        Width = 432
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbNomEmpresa: TRLLabel
        Left = 16
        Top = 6
        Width = 432
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 570
        Top = 4
        Width = 105
        Height = 26
        AutoSize = False
        Caption = 'R E C I B O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
    end
    object RLPanel1: TRLPanel
      Left = 41
      Top = 119
      Width = 684
      Height = 398
      Alignment = taCenter
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedLeft = True
      Borders.FixedRight = True
      Borders.FixedBottom = True
      Layout = tlCenter
      object Label1: TLabel
        Left = 16
        Top = 4
        Width = 4
        Height = 16
      end
      object RLLabel5: TRLLabel
        Left = 416
        Top = 6
        Width = 77
        Height = 26
        AutoSize = False
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object lbValor: TRLLabel
        Left = 499
        Top = 6
        Width = 176
        Height = 26
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Color = clMedGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 14
        Top = 42
        Width = 125
        Height = 26
        AutoSize = False
        Caption = 'Recebemos de: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object lbNome: TRLLabel
        Left = 140
        Top = 42
        Width = 535
        Height = 22
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Style = bsHorizontal
        Borders.FixedBottom = True
        Caption = ' '
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object memoValorExtenso: TRLMemo
        Left = 145
        Top = 70
        Width = 530
        Height = 21
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedLeft = True
        Borders.FixedTop = True
        Borders.FixedRight = True
        Borders.FixedBottom = True
        Color = clMedGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 14
        Top = 70
        Width = 129
        Height = 26
        AutoSize = False
        Caption = 'a import'#226'ncia de: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 400
        Top = 232
        Width = 276
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itFullDate
        Layout = tlCenter
        ParentFont = False
        Text = ''
        BeforePrint = RLSystemInfo1BeforePrint
      end
      object lbNomeEmpresa: TRLLabel
        Left = 337
        Top = 317
        Width = 338
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCnpj: TRLLabel
        Left = 337
        Top = 332
        Width = 338
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 338
        Top = 310
        Width = 337
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
      end
      object memoRef: TRLMemo
        Left = 107
        Top = 159
        Width = 568
        Height = 20
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 14
        Top = 154
        Width = 87
        Height = 28
        AutoSize = False
        Caption = 'referente a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object lbInscEstadual: TRLLabel
        Left = 338
        Top = 353
        Width = 338
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCidade: TRLLabel
        Left = 261
        Top = 233
        Width = 124
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbEstado: TRLLabel
        Left = 378
        Top = 233
        Width = 40
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
