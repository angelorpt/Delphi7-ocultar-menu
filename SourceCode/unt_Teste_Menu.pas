unit unt_Teste_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls;

type
  TfrmMenu = class(TForm)
    btnOK: TButton;
    opt_Enabled: TRadioButton;
    opt_Visible: TRadioButton;
    txt_Botao: TLabeledEdit;
    opt_True: TRadioButton;
    opt_False: TRadioButton;
    group1: TGroupBox;
    group2: TGroupBox;
    MenuPrincipal: TMainMenu;
    btnArquivo: TMenuItem;
    btnAbrir: TMenuItem;
    btnSalvar: TMenuItem;
    btnOpcao1: TMenuItem;
    btnFechar: TMenuItem;
    N1: TMenuItem;
    subMenu1: TMenuItem;
    subMenu2: TMenuItem;
    subMenu3: TMenuItem;
    subMenu4: TMenuItem;
    btnNovo1: TMenuItem;
    btnNovo2: TMenuItem;
    btnSubMenuNivel4: TMenuItem;
    btnMenu2: TMenuItem;
    btnSobre: TMenuItem;
    btnAjuda: TMenuItem;
    btnSubAjuda: TMenuItem;
    procedure btnOKClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOpcao1Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure submenu1Click(Sender: TObject);
    procedure submenu2Click(Sender: TObject);
    procedure submenu4Click(Sender: TObject);
    procedure btnNovo1Click(Sender: TObject);
    procedure btnSubMenuNivel4Click(Sender: TObject);
    procedure btnSobreClick(Sender: TObject);
    procedure btnSubAjudaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//    procedure ocultarItemMenu(menu: TMenu; nameItem: String);
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

// --------------
// FUNCTION
// --------------

procedure subItemMenu_VE(menu: TMenuItem; nomeItem: String; propriedade: integer; valor_Propriedade: Boolean);
var
  i: integer;
begin
{ propriedade:  1 - Visible / 2 - Enabled  }
  for i:= 0 to menu.Count-1 do begin
    subItemMenu_VE(menu[i], nomeItem, propriedade, valor_Propriedade);
    if UpperCase(menu[i].Name) = UpperCase(nomeItem) then begin
      case propriedade of
        1: menu.Items[i].Visible := valor_Propriedade;
        2: menu.Items[i].Enabled := valor_Propriedade;
      end;
      break;
    end;
  end;
end;

procedure itemMenu_VE(menu: TMenu; nomeItem: String; propriedade: integer; valor_Propriedade: Boolean);
var
  i: integer;
begin

{ propriedade:  1 - Visible / 2 - Enabled  }

  for i:= 0 to menu.Items.Count-1 do begin
    subItemMenu_VE(menu.Items[i], nomeItem, propriedade, valor_Propriedade);
    if UpperCase(menu.Items[i].Name) = UpperCase(nomeItem) then begin
      case propriedade of
        1: menu.Items[i].Visible := valor_Propriedade;
        2: menu.Items[i].Enabled := valor_Propriedade;
      end;
      break;
    end;
  end;
end;


// --------------
// BUTTONS
// --------------

procedure TfrmMenu.btnOKClick(Sender: TObject);
begin

  if opt_Visible.Checked = True then begin
    if opt_True.Checked = True then begin
      itemMenu_VE(MenuPrincipal, txt_Botao.Text, 1, True);
    end else begin
      itemMenu_VE(MenuPrincipal, txt_Botao.Text, 1, False);
    end;
  end;

  if opt_Enabled.Checked = True then begin
    if opt_True.Checked = True then begin
      itemMenu_VE(MenuPrincipal, txt_Botao.Text, 2, True);
    end else begin
      itemMenu_VE(MenuPrincipal, txt_Botao.Text, 2, False);
    end;
  end;

end;


// --------------
// FORM
// --------------

procedure TfrmMenu.FormShow(Sender: TObject);
begin
  opt_Enabled.Checked := True;
  opt_True.Checked := True;
end;



// --------------
// MENU
// --------------

procedure TfrmMenu.btnAbrirClick(Sender: TObject);
begin
  txt_Botao.Text := btnAbrir.Name;
end;

procedure TfrmMenu.btnOpcao1Click(Sender: TObject);
begin
  txt_Botao.Text := btnOpcao1.Name;
end;

procedure TfrmMenu.btnFecharClick(Sender: TObject);
begin
  txt_Botao.Text := btnFechar.Name; 
end;

procedure TfrmMenu.submenu1Click(Sender: TObject);
begin
  txt_Botao.Text := submenu1.Name;
end;

procedure TfrmMenu.submenu2Click(Sender: TObject);
begin
    txt_Botao.Text := submenu2.name;
end;

procedure TfrmMenu.submenu4Click(Sender: TObject);
begin
  txt_Botao.Text := submenu4.Name; 
end;

procedure TfrmMenu.btnNovo1Click(Sender: TObject);
begin
    txt_Botao.Text := btnNovo1.Name;
end;

procedure TfrmMenu.btnSubMenuNivel4Click(Sender: TObject);
begin
    txt_Botao.Text := btnSubMenuNivel4.Name;
end;

procedure TfrmMenu.btnSobreClick(Sender: TObject);
begin
  txt_Botao.Text := btnSobre.Name;
end;

procedure TfrmMenu.btnSubAjudaClick(Sender: TObject);
begin
  txt_Botao.Text := btnSubAjuda.Name; 
end;

end.
