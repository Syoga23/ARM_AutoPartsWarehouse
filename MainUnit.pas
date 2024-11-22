unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ToolWin;

type
  TMainForm = class(TForm)
    TreeView1: TTreeView;
    TreePanel: TPanel;
    GridPanel: TPanel;
    Splitter1: TSplitter;
    DetailsPanel: TPanel;
    Splitter2: TSplitter;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  closeVar: integer;

implementation

{$R *.dfm}

uses StartupUnit, BDUnit;

procedure TMainForm.FormShow(Sender: TObject);
begin
  StartupForm:= TStartupForm.Create(Self);
 StartupForm.ShowModal;
 closeVar:=StartupForm.closeVar;
 if(closeVar = 0) then Application.Terminate;
 //BDUnit.RefReviewer.Active:= True;
end;

end.
