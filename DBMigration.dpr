program DBMigration;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  Datamodule in 'Datamodule.pas' {DModule: TDataModule},
  Config in 'Config.pas' {FormConfiguration},
  Datamigration in 'Datamigration.pas' {DatamigrationForm},
  Structuremigration in 'Structuremigration.pas' {FormStructureMigration};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDModule, DModule);
  Application.Run;
end.
