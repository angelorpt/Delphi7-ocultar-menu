{
  Angelo R. Pinto
  Percorre o menu e seus submenus procurando o nome do ItemMenu passado como parâmetro.
  Quando localiza altera o valor da propriedade Visible ou Enabled
}

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
var
  nomeItem: String;
begin

  // MainMenu1 - Nomo do componente Menu

  nomeItem := "Salvar";

  if opt_Visible.Checked = True then begin
    if opt_True.Checked = True then begin
      itemMenu_VE(MainMenu1, nomeItem, 1, True);
    end else begin
      itemMenu_VE(MainMenu1, nomeItem, 1, False);
    end;
  end;

  if opt_Enabled.Checked = True then begin
    if opt_True.Checked = True then begin
      itemMenu_VE(MainMenu1, nomeItem, 2, True);
    end else begin
      itemMenu_VE(MainMenu1, nomeItem, 2, False);
    end;
  end;

end;