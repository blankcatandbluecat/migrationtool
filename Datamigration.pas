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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TDatamigrationForm = class(TForm)
    DBGridTables: TDBGrid;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxComboBox2: TcxComboBox;
    cxComboBoxFrom: TcxComboBox;
    DBGridFields: TDBGrid;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxComboBoxFromPropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    fromMethod: integer;
    toMethod: integer;
  public
    { Public declarations }
  end;

var DatamigrationForm: TDatamigrationForm;

implementation

{$R *.dfm}

procedure TDatamigrationForm.cxButton2Click(Sender: TObject);
begin
  RESTClient.BaseURL := cxTextEditServiceURL.Text;
  RESTResponseDataSetAdapter1.RootElement := cxTextEditJSONRootNodeName.Text;
  RESTRequest.Execute;

  cxGrid1DBTableView1.DataController.CreateAllItems;
  cxGrid1DBTableView1.OptionsView.ColumnAutoWidth := True;
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

procedure TDatamigrationForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

end.
