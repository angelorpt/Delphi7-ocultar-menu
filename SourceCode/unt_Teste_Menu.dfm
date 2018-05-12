object frmMenu: TfrmMenu
  Left = 449
  Top = 124
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Menu (Visible / Enabled)'
  ClientHeight = 128
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MenuPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TButton
    Left = 256
    Top = 72
    Width = 161
    Height = 41
    Caption = 'Executar'
    TabOrder = 0
    OnClick = btnOKClick
  end
  object group1: TGroupBox
    Left = 16
    Top = 16
    Width = 113
    Height = 97
    Caption = 'Propriedade'
    TabOrder = 1
    object opt_Enabled: TRadioButton
      Left = 16
      Top = 32
      Width = 80
      Height = 17
      Caption = 'Enabled'
      TabOrder = 0
    end
    object opt_Visible: TRadioButton
      Left = 16
      Top = 64
      Width = 80
      Height = 17
      Caption = 'Visible'
      TabOrder = 1
    end
  end
  object txt_Botao: TLabeledEdit
    Left = 256
    Top = 32
    Width = 161
    Height = 28
    EditLabel.Width = 119
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome do Bot'#227'o no Menu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object group2: TGroupBox
    Left = 136
    Top = 16
    Width = 113
    Height = 97
    Caption = 'Valor'
    TabOrder = 3
    object opt_True: TRadioButton
      Left = 16
      Top = 32
      Width = 80
      Height = 17
      Caption = 'True'
      TabOrder = 0
    end
    object opt_False: TRadioButton
      Left = 16
      Top = 64
      Width = 80
      Height = 17
      Caption = 'False'
      TabOrder = 1
    end
  end
  object MenuPrincipal: TMainMenu
    Left = 208
    Top = 16
    object btnArquivo: TMenuItem
      Caption = 'Arquivo'
      object btnAbrir: TMenuItem
        Caption = 'Abrir'
        OnClick = btnAbrirClick
      end
      object btnSalvar: TMenuItem
        Caption = 'Salvar'
        object subMenu1: TMenuItem
          Caption = 'Sub Menu 1'
          OnClick = submenu1Click
        end
        object subMenu2: TMenuItem
          Caption = 'Sub Menu 2'
          OnClick = submenu2Click
        end
        object subMenu3: TMenuItem
          Caption = 'Sub Menu 3'
          object btnNovo1: TMenuItem
            Caption = 'Novo 1'
            OnClick = btnNovo1Click
          end
          object btnNovo2: TMenuItem
            Caption = 'Novo 2'
            object btnSubMenuNivel4: TMenuItem
              Caption = 'Sub Menu Nivel 4'
              OnClick = btnSubMenuNivel4Click
            end
          end
        end
        object subMenu4: TMenuItem
          Caption = 'Sub Menu 4'
          OnClick = submenu4Click
        end
      end
      object btnOpcao1: TMenuItem
        Caption = 'Op'#231#227'o 1'
        OnClick = btnOpcao1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object btnFechar: TMenuItem
        Caption = 'Fechar'
        OnClick = btnFecharClick
      end
    end
    object btnMenu2: TMenuItem
      Caption = 'Menu2'
      object btnSobre: TMenuItem
        Caption = 'Sobre'
        OnClick = btnSobreClick
      end
      object btnAjuda: TMenuItem
        Caption = 'Ajuda'
        object btnSubAjuda: TMenuItem
          Caption = 'Sub Ajuda'
          OnClick = btnSubAjudaClick
        end
      end
    end
  end
end
