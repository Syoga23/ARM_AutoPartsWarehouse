unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ToolWin, Data.Win.ADODB, Vcl.DBCtrls,
  Vcl.StdCtrls;

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
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Splitter3: TSplitter;
    DBImage1: TDBImage;
    DBImagePanel: TPanel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure UpdateTreeView(Query: TADOQuery);
  end;

var
  MainForm: TMainForm;
  closeVar: integer;

implementation

{$R *.dfm}

uses StartupUnit, BDUnit;

//temporary first tree code
procedure TMainForm.UpdateTreeView(Query: TADOQuery);
var
  RootNode, FieldNode: TTreeNode;
begin
  TreeView1.Items.Clear;
  RootNode := TreeView1.Items.Add(nil, 'Все');
  if not Query.Active then
    Query.Open;
  Query.First;
  while not Query.Eof do
  begin
    FieldNode := TreeView1.Items.AddChild(RootNode, Query.FieldByName('Type_Name').Value);
    //TreeView1.Items.AddChild(FieldNode, 'TEST');
    Query.Next;
  end;
  RootNode.Expand(True);
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
UpdateTreeView(BDForm.PartTypes);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  StartupForm:= TStartupForm.Create(Self);
 StartupForm.ShowModal;
 closeVar:=StartupForm.closeVar;
 if(closeVar = 0) then Application.Terminate;
 BDForm.PartTypes.Active:= True;
 BDForm.Parts.Active:= True;
 BDForm.Suppliers.Active := True;
 UpdateTreeView(BDForm.PartTypes);
end;



procedure TMainForm.TreeView1Click(Sender: TObject);
begin
  if TreeView1.Selected <> nil then
  begin
    BDForm.PartTypes.First;
    while not BDForm.PartTypes.Eof do
     begin
     if TreeView1.Selected.Text = BDForm.PartTypes.FieldByName('Type_Name').Value then
      begin
        BDForm.Parts.Close;
        BDForm.Parts.Parameters.ParamByName('TypeID').Value := BDForm.PartTypes.FieldByName('Type_ID').Value;
        BDForm.Parts.Open;
        Break;
      end
     else
       BDForm.PartTypes.Next;
     end;
  end;
end;

end.
