unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ToolWin, Data.Win.ADODB, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask;

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
    DBGrid2: TDBGrid;
    GridPanel: TPanel;
    PageControl1: TPageControl;
    Tab1: TTabSheet;
    DBGrid1: TDBGrid;
    Tab2: TTabSheet;
    DBGrid3: TDBGrid;
    Tab3: TTabSheet;
    DBGrid4: TDBGrid;
    DetTypesTitle: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label8: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label9: TLabel;
    DBGrid5: TDBGrid;
    Splitter3: TSplitter;
    DBGrid6: TDBGrid;
    Splitter4: TSplitter;
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
  BDForm.PartTypeLookup.Active := True;
  BDForm.PaymentType.Active := True;
  BDForm.OrderItems.Active := True;
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
