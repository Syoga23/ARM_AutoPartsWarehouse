unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ToolWin, Data.Win.ADODB, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask,  ShellAPI;

type
  TMainForm = class(TForm)
    TreePanel: TPanel;
    Splitter1: TSplitter;
    DetailsPanel: TPanel;
    Splitter2: TSplitter;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    DBImage1: TDBImage;
    DBImagePanel: TPanel;
    DBGrid2: TDBGrid;
    GridPanel: TPanel;
    PageControl1: TPageControl;
    Tab1: TTabSheet;
    DetailsGrid: TDBGrid;
    Tab2: TTabSheet;
    OrdersGrid: TDBGrid;
    Tab3: TTabSheet;
    TransactionsGrid: TDBGrid;
    DetTypesTitle: TLabel;
    DBEdit1: TDBEdit;
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
    Label8: TLabel;
    Label9: TLabel;
    ItemsGrid2: TDBGrid;
    Splitter3: TSplitter;
    ItemsGrid1: TDBGrid;
    Splitter4: TSplitter;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  MainForm: TMainForm;
  closeVar: integer;

implementation

{$R *.dfm}

uses StartupUnit, BDUnit, AddOrderUnit;

procedure ActivateQueries();
begin
  BDForm.PartTypes.Active:= True;
  BDForm.Suppliers.Active := True;
  BDForm.Parts.Active:= True;
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
  BDForm.OrdersLookup.Active := True;
  BDForm.SuppliersLookup.Active := True;
end;

procedure updatetab(page:integer);
begin
if page = 1 then
  begin
  BDForm.OrderItems.Close;
  BDForm.OrderItems.Parameters.ParamByName('OrderKey').Value := BDForm.Orders.FieldByName('OrderID').Value;
  BDForm.OrderItems.Open;
  end
 else if page = 2 then
  begin
  BDForm.OrderItems.Close;
  BDForm.OrderItems.Parameters.ParamByName('OrderKey').Value := BDForm.Transactions.FieldByName('Order_ID').Value;
  BDForm.OrderItems.Open;
  end;

end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
PageControl1.TabIndex := 0;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  StartupForm:= TStartupForm.Create(Self);
 StartupForm.ShowModal;
 closeVar:=StartupForm.closeVar;
 if(closeVar = 0) then Application.Terminate;
 ActivateQueries();

end;

procedure TMainForm.PageControl1Change(Sender: TObject);
begin
updatetab(Pagecontrol1.TabIndex);
end;

procedure TMainForm.ToolButton1Click(Sender: TObject);
begin
BDForm.N13.Click;
end;

procedure TMainForm.ToolButton3Click(Sender: TObject);
begin
AddOrderForm.Show();
end;

procedure TMainForm.ToolButton4Click(Sender: TObject);
begin
  ShellExecute(0,Pchar('Open'),PChar('help.chm'),nil,nil,SW_SHOW);
end;

end.
