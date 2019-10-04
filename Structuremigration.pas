unit Structuremigration;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFormStructureMigration = class(TForm)
    FDQuery1: TFDQuery;
    FDMetaInfoQuery: TFDMetaInfoQuery;
    DataSourceMeta: TDataSource;
    cxComboBoxFrom: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxButton1: TcxButton;
    DBGridTables: TDBGrid;
    Panel1: TPanel;
    DBGridFields: TDBGrid;
    FDMetaInfoQueryFields: TFDMetaInfoQuery;
    DataSourceFields: TDataSource;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure initForm;
  end;

var FormStructureMigration: TFormStructureMigration;

implementation

{$R *.dfm}

uses Datamodule;

procedure TFormStructureMigration.cxButton1Click(Sender: TObject);
begin
  if cxComboBoxFrom.SelectedItem = 0 then begin
    FDMetaInfoQuery.Connection := DModule.FDConnectionAccess;
    FDMetaInfoQueryFields.Connection := DModule.FDConnectionAccess;
  end else begin
    FDMetaInfoQuery.Connection := DModule.FDConnectionMySQL;
    FDMetaInfoQueryFields.Connection := DModule.FDConnectionMySQL;
  end;
  FDMetaInfoQuery.Active := true;
end;

procedure TFormStructureMigration.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TFormStructureMigration.initForm;
begin
  self.Show;
end;

end.
