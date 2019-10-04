unit Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus, cxPC, dxSkinsCore, dxSkinsDefaultPainters,
  dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins,
  dxRibbonCustomizationForm, cxClasses, dxRibbon, dxTabbedMDI, dxScreenTip, dxBar, dxStatusBar, dxSkinsForm,
  dxRibbonMiniToolbar, System.ImageList, Vcl.ImgList, cxImageList;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    ActionConfig: TAction;
    Configuration1: TMenuItem;
    ActionStructureMigration: TAction;
    ActionDataMigration: TAction;
    dxTabbedMDIManager1: TdxTabbedMDIManager;
    dxStatusBar1: TdxStatusBar;
    dxBarScreenTipRepository1: TdxBarScreenTipRepository;
    dxSkinController1: TdxSkinController;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    cxImageList1: TcxImageList;
    procedure ActionConfigExecute(Sender: TObject);
    procedure ActionStructureMigrationExecute(Sender: TObject);
    procedure ActionDataMigrationExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var MainForm: TMainForm;

implementation

{$R *.dfm}

uses Config, Datamodule, Datamigration, Structuremigration;

procedure TMainForm.ActionConfigExecute(Sender: TObject);
begin
  with TFormConfiguration.Create(Application) do begin
    Show;
  end;
end;

procedure TMainForm.ActionDataMigrationExecute(Sender: TObject);
begin
  with TDatamigrationForm.Create(Application) do begin
    Show;
  end;
end;

procedure TMainForm.ActionStructureMigrationExecute(Sender: TObject);
begin
  with TFormStructureMigration.Create(Application) do begin
    initForm;
  end;
end;

end.
