program TesteMenu;

uses
  Forms,
  unt_Teste_Menu in 'unt_Teste_Menu.pas' {frmMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
