unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ToolWin, Data.Win.ADODB, Vcl.DBCtrls,
  Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    TreePanel: TPanel;
    Splitter1: TSplitter;
    DetailsPanel: TPanel;
    Splitter2: TSplitter;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    DBImage1: TDBImage;
    DBImagePanel: TPanel;
    Edit1: TEdit;
    DBGrid2: TDBGrid;
    GridPanel: TPanel;
    PageControl1: TPageControl;
    Tab1: TTabSheet;
    DBGrid1: TDBGrid;
    Tab2: TTabSheet;
    DBGrid3: TDBGrid;
    Tab3: TTabSheet;
    DBGrid4: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  MainForm: TMainForm;
  closeVar: integer;

implementation

{$R *.dfm}

uses StartupUnit, BDUnit;

procedure ActivateQueries();
begin
  BDForm.PartTypes.Active:= True;
  BDForm.Parts.Active:= True;
  BDForm.Suppliers.Active := True;
  BDForm.Locations.Active := True;
  BDForm.Warehouses.Active := True;
  BDForm.TransactionTypes.Active := True;
  BDForm.Orders.Active := True;
  BDForm.Transactions.Active := True;
  BDForm.Employee.Active := True;
  BDForm.Clients.Active := True;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  StartupForm:= TStartupForm.Create(Self);
 StartupForm.ShowModal;
 closeVar:=StartupForm.closeVar;
 if(closeVar = 0) then Application.Terminate;
 ActivateQueries();

end;

end.
