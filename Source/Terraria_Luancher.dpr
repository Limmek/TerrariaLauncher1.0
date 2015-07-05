program Terraria_Luancher;

uses
  Forms,
  TerrariaLuancher in 'TerrariaLuancher.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Terraria Luancher 1.0';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
