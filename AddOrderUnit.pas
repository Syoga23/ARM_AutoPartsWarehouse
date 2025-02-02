unit AddOrderUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TAddOrderForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    WarehousLookup: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddOrderForm: TAddOrderForm;

implementation

{$R *.dfm}

  Uses BDUnit;

procedure TAddOrderForm.Button1Click(Sender: TObject);
begin
BDForm.Orders.Post;
BDForm.Orders.Refresh;
Close();
end;

procedure TAddOrderForm.Button2Click(Sender: TObject);
begin
BDForm.Orders.Cancel;
Close;
end;

procedure TAddOrderForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
BDForm.Orders.Cancel;
end;

procedure TAddOrderForm.FormShow(Sender: TObject);
begin
BDForm.Orders.Append;
end;

end.
