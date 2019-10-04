unit Datamigration;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinsDefaultPainters, cxControls, cxContainer, cxEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, REST.Types, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.DBCtrls, cxDBEdit, dxmdaset, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TDatamigrationForm = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxComboBox2: TcxComboBox;
    cxComboBoxFrom: TcxComboBox;
    FDQuery1: TFDQuery;
    FDMetaInfoQuery: TFDMetaInfoQuery;
    DataSourceMeta: TDataSource;
    FDMetaInfoQueryFields: TFDMetaInfoQuery;
    DataSourceFields: TDataSource;
    cxTextEditServiceURL: TcxTextEdit;
    PanelHttpService: TPanel;
    cxTextEditJSONRootNodeName: TcxTextEdit;
    cxButton2: TcxButton;
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    FDTableConnections: TFDTable;
    FDTableConnTypes: TFDTable;
    FDTableConnTypesid: TFDAutoIncField;
    FDTableConnTypesname: TWideMemoField;
    dsConnections: TDataSource;
    cxDBComboBox1: TcxDBComboBox;
    Panel2: TPanel;
    Label1: TLabel;
    cxGrid2DBTableViewFields: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxButtonReetriveFields: TcxButton;
    FDTableAccess: TFDTable;
    dsTables: TDataSource;
    FDMetaInfoQueryFieldsRECNO: TIntegerField;
    FDMetaInfoQueryFieldsCATALOG_NAME: TWideStringField;
    FDMetaInfoQueryFieldsSCHEMA_NAME: TWideStringField;
    FDMetaInfoQueryFieldsTABLE_NAME: TWideStringField;
    FDMetaInfoQueryFieldsCOLUMN_NAME: TWideStringField;
    FDMetaInfoQueryFieldsCOLUMN_POSITION: TIntegerField;
    FDMetaInfoQueryFieldsCOLUMN_DATATYPE: TIntegerField;
    FDMetaInfoQueryFieldsCOLUMN_TYPENAME: TWideStringField;
    FDMetaInfoQueryFieldsCOLUMN_ATTRIBUTES: TLongWordField;
    FDMetaInfoQueryFieldsCOLUMN_PRECISION: TIntegerField;
    FDMetaInfoQueryFieldsCOLUMN_SCALE: TIntegerField;
    FDMetaInfoQueryFieldsCOLUMN_LENGTH: TIntegerField;
    cxGrid2DBTableViewFieldsTABLE_NAME: TcxGridDBColumn;
    cxGrid2DBTableViewFieldsCOLUMN_NAME: TcxGridDBColumn;
    cxGrid2DBTableViewFieldsCATALOG_NAME: TcxGridDBColumn;
    cxGrid2DBTableViewFieldsCOLUMN_TYPENAME: TcxGridDBColumn;
    cxDBComboBox2: TcxDBComboBox;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxButton3: TcxButton;
    cxGrid3DBTableView1CATALOG_NAME: TcxGridDBColumn;
    cxGrid3DBTableView1TABLE_NAME: TcxGridDBColumn;
    cxGrid3DBTableView1COLUMN_NAME: TcxGridDBColumn;
    cxGrid3DBTableView1COLUMN_TYPENAME: TcxGridDBColumn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBComboBox3: TcxDBComboBox;
    FDMetaInfoQueryTables: TFDMetaInfoQuery;
    FDMetaInfoQuery2: TFDMetaInfoQuery;
    cxDBComboBox4: TcxDBComboBox;
    FDMetaInfoQueryTablesRECNO: TIntegerField;
    FDMetaInfoQueryTablesCATALOG_NAME: TWideStringField;
    FDMetaInfoQueryTablesSCHEMA_NAME: TWideStringField;
    FDMetaInfoQueryTablesTABLE_NAME: TWideStringField;
    FDMetaInfoQueryTablesTABLE_TYPE: TIntegerField;
    FDMetaInfoQueryTablesTABLE_SCOPE: TIntegerField;
    FDTableConnectionsid: TFDAutoIncField;
    FDTableConnectionsconn_id: TIntegerField;
    FDTableConnectionsconn_type_id: TIntegerField;
    FDTableConnectionsconn_type_name: TWideStringField;
    FDTableConnectionsconn_name: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxComboBoxFromPropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FDTableConnectionsAfterScroll(DataSet: TDataSet);
    procedure cxButtonReetriveFieldsClick(Sender: TObject);
    procedure cxDBComboBox1PropertiesChange(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    fromMethod: integer;
    toMethod: integer;
    procedure setConnToMetaTables;
  public
    { Public declarations }
    procedure initForm;
  end;

var DatamigrationForm: TDatamigrationForm;

implementation

{$R *.dfm}

uses Datamodule;

procedure TDatamigrationForm.cxButton2Click(Sender: TObject);
begin
  RESTClient.BaseURL := cxTextEditServiceURL.Text;
  RESTResponseDataSetAdapter1.RootElement := cxTextEditJSONRootNodeName.Text;
  RESTRequest.Execute;

  cxGrid1DBTableView1.DataController.CreateAllItems;
  cxGrid1DBTableView1.OptionsView.ColumnAutoWidth := True;
end;

procedure TDatamigrationForm.cxButtonReetriveFieldsClick(Sender: TObject);
begin
  if FDTableConnections.FieldByName('conn_type_id').AsInteger = 1 then begin
    with DModule.FDTableAccess do begin
      Active := True;
      Filtered := False;
      Filter := 'id=' + FDTableConnections.FieldByName('conn_id').AsString;
      Filtered := True;
    end;
    DModule.FDConnectionAccess.Params.BeginUpdate;
    DModule.FDConnectionAccess.Params.username := DModule.FDTableAccess.FieldByName('username').AsString;
    DModule.FDConnectionAccess.Params.password := DModule.FDTableAccess.FieldByName('password').AsString;
    DModule.FDConnectionAccess.Params.database := DModule.FDTableAccess.FieldByName('database').AsString;
    DModule.FDConnectionAccess.Params.DriverID := 'MSAcc';
    DModule.FDConnectionAccess.Params.EndUpdate;
    DModule.FDConnectionAccess.Connected := True;
    if DModule.FDConnectionAccess.Connected = True then begin

      self.FDMetaInfoQueryTables.Connection := DModule.FDConnectionAccess;
      self.FDMetaInfoQueryTables.Active := True;

      self.FDMetaInfoQueryFields.ObjectName := self.FDMetaInfoQueryTables.FieldByName('TABLE_NAME').AsString;
      self.FDMetaInfoQueryFields.Active := True;
      cxGrid1DBTableView1.DataController.CreateAllItems;
      cxGrid1DBTableView1.OptionsView.ColumnAutoWidth := True;
    end else begin
      ShowMessage('Something went wrong');
    end;
  end;
end;

procedure TDatamigrationForm.cxDBComboBox1PropertiesChange(Sender: TObject);
begin
  //
end;

procedure TDatamigrationForm.DBComboBox1Change(Sender: TObject);
begin
  ShowMessage(self.FDTableConnections.FieldByName('conn_name').AsString);
end;

procedure TDatamigrationForm.setConnToMetaTables;
begin
  if FDTableConnections.FieldByName('conn_type_id').AsInteger = 1 then begin // MS Access
    with DModule.FDTableAccess do begin
      Active := True;
      Filtered := False;
      Filter := 'id=' + FDTableConnections.FieldByName('conn_id').AsString;
      Filtered := True;
    end;
    DModule.FDConnectionAccess.Params.BeginUpdate;
    DModule.FDConnectionAccess.Params.username := DModule.FDTableAccess.FieldByName('username').AsString;
    DModule.FDConnectionAccess.Params.password := DModule.FDTableAccess.FieldByName('password').AsString;
    DModule.FDConnectionAccess.Params.database := DModule.FDTableAccess.FieldByName('database').AsString;
    DModule.FDConnectionAccess.Params.DriverID := 'MSAcc';
    DModule.FDConnectionAccess.Params.EndUpdate;
    DModule.FDConnectionAccess.Connected := True;
    if DModule.FDConnectionAccess.Connected = True then begin
      self.FDMetaInfoQueryTables.Connection := DModule.FDConnectionAccess;
      self.FDMetaInfoQueryTables.Active := True;
    end else begin
      ShowMessage('Something went wrong');
    end;
  end else if FDTableConnections.FieldByName('conn_type_id').AsInteger = 2 then begin // MySQL
    with DModule.FDTableMySQL do begin
      Active := True;
      Filtered := False;
      Filter := 'id=' + FDTableConnections.FieldByName('conn_id').AsString;
      Filtered := True;
    end;
    DModule.FDConnectionMySQL.Params.BeginUpdate;
    DModule.FDConnectionMySQL.Params.username := DModule.FDTableMySQL.FieldByName('username').AsString;
    DModule.FDConnectionMySQL.Params.password := DModule.FDTableMySQL.FieldByName('password').AsString;
    DModule.FDConnectionMySQL.Params.database := DModule.FDTableMySQL.FieldByName('database').AsString;
    DModule.FDConnectionMySQL.Params.DriverID := 'MySQL';
    DModule.FDConnectionMySQL.Params.EndUpdate;
    DModule.FDConnectionMySQL.Connected := True;
    if DModule.FDConnectionMySQL.Connected = True then begin
      self.FDMetaInfoQueryTables.Connection := DModule.FDConnectionMySQL;
      self.FDMetaInfoQueryTables.Active := True;
    end else begin
      ShowMessage('Something went wrong');
    end;
  end else if FDTableConnections.FieldByName('conn_type_id').AsInteger = 3 then begin // Restful JSON data
    with DModule.FDTableAccess do begin
      Active := True;
      Filtered := False;
      Filter := 'id=' + FDTableConnections.FieldByName('conn_id').AsString;
      Filtered := True;
    end;
    DModule.FDConnectionAccess.Params.BeginUpdate;
    DModule.FDConnectionAccess.Params.username := DModule.FDTableAccess.FieldByName('username').AsString;
    DModule.FDConnectionAccess.Params.password := DModule.FDTableAccess.FieldByName('password').AsString;
    DModule.FDConnectionAccess.Params.database := DModule.FDTableAccess.FieldByName('database').AsString;
    DModule.FDConnectionAccess.Params.DriverID := 'MSAcc';
    DModule.FDConnectionAccess.Params.EndUpdate;
    DModule.FDConnectionAccess.Connected := True;
    if DModule.FDConnectionAccess.Connected = True then begin
      self.FDMetaInfoQueryTables.Connection := DModule.FDConnectionAccess;
      self.FDMetaInfoQueryTables.Active := True;
    end else begin
      ShowMessage('Something went wrong');
    end;
  end;
end;

procedure TDatamigrationForm.cxComboBoxFromPropertiesChange(Sender: TObject);
begin
  if TcxComboBox(Sender).SelectedItem = 0 then begin
    self.fromMethod := 1;
    PanelHttpService.Visible := False;
  end else if TcxComboBox(Sender).SelectedItem = 1 then begin
    self.fromMethod := 2;
    PanelHttpService.Visible := False;
  end else if TcxComboBox(Sender).SelectedItem = 2 then begin
    self.fromMethod := 3;
    PanelHttpService.Visible := True;
  end;
end;

procedure TDatamigrationForm.FDTableConnectionsAfterScroll(DataSet: TDataSet);
begin
  if DataSet.FieldByName('conn_type_id').AsInteger = 1 then begin
    //
  end;
end;

procedure TDatamigrationForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TDatamigrationForm.initForm;
begin
  self.Show;
  self.FDTableConnections.Active := True;
end;

end.
