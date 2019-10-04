unit Config;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxRibbonBackstageView, cxContainer, cxEdit, cxTextEdit,
  Vcl.Menus, cxButtons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, Vcl.ActnList, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxSplitter;

type
  TFormConfiguration = class(TForm)
    PageControl: TPageControl;
    TabSheetMySQL: TTabSheet;
    TabSheetMSAccess: TTabSheet;
    EditHost: TEdit;
    EditUsername: TEdit;
    EditPassword: TEdit;
    EditDatabase: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LabelStatus: TLabel;
    Panel2: TPanel;
    OpenDialogAccessDB: TOpenDialog;
    EditAccessFile: TEdit;
    LabelAccessChooseDBStatus: TLabel;
    cxTextEditConnName: TcxTextEdit;
    cxButton1: TcxButton;
    FDTableMySQL: TFDTable;
    FDTableMySQLid: TFDAutoIncField;
    FDTableMySQLhost_name: TWideMemoField;
    FDTableMySQLusername: TWideMemoField;
    FDTableMySQLpassword: TWideMemoField;
    FDTableMySQLdatabase: TWideMemoField;
    ActionList1: TActionList;
    ActionNewConn: TAction;
    PanelConnList: TPanel;
    cxGridConnectionsDBTableView1: TcxGridDBTableView;
    cxGridConnectionsLevel1: TcxGridLevel;
    cxGridConnections: TcxGrid;
    FDTableConnections: TFDTable;
    dsConnections: TDataSource;
    FDQueryConnections: TFDQuery;
    FDQueryConnectionsid: TFDAutoIncField;
    FDQueryConnectionsconn_type_id: TIntegerField;
    FDQueryConnectionsconn_name: TWideMemoField;
    FDQueryConnectionsconnection_type: TWideMemoField;
    cxGridConnectionsDBTableView1id: TcxGridDBColumn;
    cxGridConnectionsDBTableView1conn_name: TcxGridDBColumn;
    cxGridConnectionsDBTableView1connection_type: TcxGridDBColumn;
    FDTableConnectionsid: TFDAutoIncField;
    FDTableConnectionsconn_type_id: TIntegerField;
    FDTableConnectionsconn_name: TWideMemoField;
    FDTableAccess: TFDTable;
    FDTableAccessid: TFDAutoIncField;
    FDTableAccessusername: TWideMemoField;
    FDTableAccesspassword: TWideMemoField;
    FDTableAccessdatabase: TWideMemoField;
    cxTextEditAccessConnName: TcxTextEdit;
    cxButtonSaveAccessConn: TcxButton;
    TabSheetRest: TTabSheet;
    Panel3: TPanel;
    cxTextEditRestfulURL: TcxTextEdit;
    cxButton2: TcxButton;
    ActionSaveRestfulURL: TAction;
    ActionSaveMySQL: TAction;
    ActionSaveAccessConn: TAction;
    FDTableRestfulConns: TFDTable;
    FDTableRestfulConnsid: TFDAutoIncField;
    FDTableRestfulConnsrestful_url: TWideMemoField;
    FDTableRestfulConnsroot_key: TWideMemoField;
    FDTableConnectionsconn_id: TIntegerField;
    Panel4: TPanel;
    cxButton3: TcxButton;
    Panel5: TPanel;
    cxTextEditAccUsername: TcxTextEdit;
    cxTextEditAccPass: TcxTextEdit;
    cxSplitter1: TcxSplitter;
    cxButtonAddNewConn: TcxButton;
    cxTextEditRestfulConnName: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure ActionNewConnExecute(Sender: TObject);
    procedure cxButtonSaveAccessConnClick(Sender: TObject);
    procedure ActionSaveRestfulURLExecute(Sender: TObject);
    procedure ActionSaveMySQLExecute(Sender: TObject);
    procedure ActionSaveAccessConnExecute(Sender: TObject);
  private
    { Private declarations }
    FAccessDBFile: String;
  public
    { Public declarations }
    procedure initForm;
  end;

var FormConfiguration: TFormConfiguration;

implementation

{$R *.dfm}

uses Datamodule, Main;

procedure TFormConfiguration.ActionNewConnExecute(Sender: TObject);
begin
  PanelConnList.Visible := False;
  PageControl.Visible := True;
end;

// ActionSaveAccessConn
procedure TFormConfiguration.ActionSaveAccessConnExecute(Sender: TObject);
var connName, username, password: string; connId: integer;
begin
  EditAccessFile.Text := self.FAccessDBFile;
  username := cxTextEditAccUsername.Text;
  password := cxTextEditAccPass.Text;
  connName := cxTextEditAccessConnName.Text;

  with FDTableAccess do begin
    Active := True;
    Insert;
    FieldByName('username').AsString := username;
    FieldByName('password').AsString := password;
    FieldByName('database').AsString := self.FAccessDBFile;
    Post;
  end;

  connId := DModule.FDConnectionLocal.GetLastAutoGenValue('id');

  with FDTableConnections do begin
    Active := True;
    Insert;
    FieldByName('conn_id').AsInteger := connId;
    FieldByName('conn_type_id').AsInteger := 1; // Access
    FieldByName('conn_name').AsString := connName;
    Post;
  end;

  DModule.FDConnectionAccess.Params.BeginUpdate;
  DModule.FDConnectionAccess.Params.username := username;
  DModule.FDConnectionAccess.Params.password := password;
  DModule.FDConnectionAccess.Params.database := self.FAccessDBFile;
  DModule.FDConnectionAccess.Params.DriverID := 'MSAcc';
  DModule.FDConnectionAccess.Params.EndUpdate;
  DModule.FDConnectionAccess.Connected := True;
  if DModule.FDConnectionAccess.Connected = True then begin
    LabelAccessChooseDBStatus.Caption := 'Connected';
    LabelAccessChooseDBStatus.Color := clGreen;
  end else begin
    LabelAccessChooseDBStatus.Caption := 'Not Connected';
    LabelAccessChooseDBStatus.Color := clRed;
  end;
  PanelConnList.Visible := True;
  PageControl.Visible := False;

  FDQueryConnections.Active:=False;
  FDQueryConnections.Active:=True;

end;

// ActionSaveMySQL
procedure TFormConfiguration.ActionSaveMySQLExecute(Sender: TObject);
var connId: integer; connName, host, username, password, database: string;
begin
  connName := cxTextEditConnName.Text;
  host := EditHost.Text;
  username := EditUsername.Text;
  password := EditPassword.Text;
  database := EditDatabase.Text;

  if connName.IsEmpty then begin
    ShowMessage('Set connection name');
    exit;
  end;

  with self.FDTableMySQL do begin
    Active := True;
    Insert;
    FieldByName('host_name').AsString := host;
    FieldByName('username').AsString := username;
    FieldByName('password').AsString := password;
    FieldByName('database').AsString := database;
    Post;
  end;

  connId := DModule.FDConnectionLocal.GetLastAutoGenValue('id');

  with FDTableConnections do begin
    Active := True;
    Insert;
    FieldByName('conn_id').AsInteger := connId;
    FieldByName('conn_type_id').AsInteger := 2; // MySQL
    FieldByName('conn_name').AsString := connName;
    Post;
  end;

  DModule.FDConnectionMySQL.Params.BeginUpdate;
  DModule.FDConnectionMySQL.Params.Add('Server=' + host);
  DModule.FDConnectionMySQL.Params.username := username;
  DModule.FDConnectionMySQL.Params.password := password;
  DModule.FDConnectionMySQL.Params.database := database;
  DModule.FDConnectionMySQL.Params.DriverID := 'MySQL';
  DModule.FDConnectionMySQL.Params.EndUpdate;
  DModule.FDConnectionMySQL.Connected := True;
  if DModule.FDConnectionMySQL.Connected = True then begin
    LabelStatus.Caption := 'Connected';
    LabelStatus.Color := clGreen;
  end else begin
    LabelStatus.Caption := 'Not Connected';
    LabelStatus.Color := clRed;
  end;

  PanelConnList.Visible := True;
  PageControl.Visible := False;

  FDQueryConnections.Active:=False;
  FDQueryConnections.Active:=True;
end;

// ActionSaveRestfulURL
procedure TFormConfiguration.ActionSaveRestfulURLExecute(Sender: TObject);
var connId: integer; connName, host, username, password, database: string;
begin
  connName := cxTextEditRestfulConnName.Text;
  host := cxTextEditRestfulURL.Text;
  // username := EditUsername.Text;
  // password := EditPassword.Text;
  // database := EditDatabase.Text;

  if connName.IsEmpty then begin
    ShowMessage('Set connection name');
    exit;
  end;

  with self.FDTableRestfulConns do begin
    Active := True;
    Insert;
    FieldByName('restful_url').AsString := host;
    FieldByName('root_key').AsString := username;
    Post;
  end;

  connId := DModule.FDConnectionLocal.GetLastAutoGenValue('id');

  with FDTableConnections do begin
    Active := True;
    Insert;
    FieldByName('conn_id').AsInteger := connId;
    FieldByName('conn_type_id').AsInteger := 3; // Restful JSON data
    FieldByName('conn_name').AsString := connName;
    Post;
  end;

  PanelConnList.Visible := True;
  PageControl.Visible := False;
  FDQueryConnections.Active:=False;
  FDQueryConnections.Active:=True;
end;

procedure TFormConfiguration.cxButton1Click(Sender: TObject);
begin
  ActionSaveMySQL.Execute;
end;

procedure TFormConfiguration.cxButtonSaveAccessConnClick(Sender: TObject);
begin
  if OpenDialogAccessDB.Execute(self.Handle) then begin
    self.FAccessDBFile := OpenDialogAccessDB.filename;
    EditAccessFile.Text := self.FAccessDBFile;
  end;
end;

procedure TFormConfiguration.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TFormConfiguration.initForm;
begin
  self.Show;
  FDQueryConnections.Active := True;
end;

end.
