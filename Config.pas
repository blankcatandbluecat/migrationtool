unit Config;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxRibbonBackstageView;

type
  TFormConfiguration = class(TForm)
    PageControl: TPageControl;
    TabSheetMySQL: TTabSheet;
    TabSheetMSAccess: TTabSheet;
    EditHost: TEdit;
    EditUsername: TEdit;
    EditPassword: TEdit;
    EditDatabase: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LabelStatus: TLabel;
    Panel2: TPanel;
    OpenDialogAccessDB: TOpenDialog;
    ButtonChooseAccessFile: TButton;
    EditAccessFile: TEdit;
    LabelAccessChooseDBStatus: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ButtonChooseAccessFileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var FormConfiguration: TFormConfiguration;

implementation

{$R *.dfm}

uses Datamodule, Main;

procedure TFormConfiguration.Button1Click(Sender: TObject);
var host, username, password, database: string;
begin
  host := EditHost.Text;
  username := EditUsername.Text;
  password := EditPassword.Text;
  database := EditDatabase.Text;
  DModule.FDConnectionMySQL.Params.BeginUpdate;
  DModule.FDConnectionMySQL.Params.Add('Server=' + host);
  DModule.FDConnectionMySQL.Params.username := username;
  DModule.FDConnectionMySQL.Params.password := password;
  DModule.FDConnectionMySQL.Params.database := database;
  DModule.FDConnectionMySQL.Params.DriverID := 'MySQL';
  DModule.FDConnectionMySQL.Params.EndUpdate;
  DModule.FDConnectionMySQL.Connected := true;
  if DModule.FDConnectionMySQL.Connected = true then begin
    LabelStatus.Caption := 'Connected';
    LabelStatus.Color := clGreen;
  end else begin
    LabelStatus.Caption := 'Not Connected';
    LabelStatus.Color := clRed;
  end;
end;

procedure TFormConfiguration.ButtonChooseAccessFileClick(Sender: TObject);
var username, password, database: string;
begin
  if OpenDialogAccessDB.Execute(self.Handle) then begin
    database := OpenDialogAccessDB.filename;
    EditAccessFile.Text := database;
    username := EditUsername.Text;
    password := EditPassword.Text;
    DModule.FDConnectionAccess.Params.BeginUpdate;
    DModule.FDConnectionAccess.Params.username := username;
    DModule.FDConnectionAccess.Params.password := password;
    DModule.FDConnectionAccess.Params.database := database;
    DModule.FDConnectionAccess.Params.DriverID := 'MSAcc';
    DModule.FDConnectionAccess.Params.EndUpdate;
    DModule.FDConnectionAccess.Connected := true;
    if DModule.FDConnectionAccess.Connected = true then begin
      LabelAccessChooseDBStatus.Caption := 'Connected';
      LabelAccessChooseDBStatus.Color := clGreen;
    end else begin
      LabelAccessChooseDBStatus.Caption := 'Not Connected';
      LabelAccessChooseDBStatus.Color := clRed;
    end;
  end;
end;

end.
