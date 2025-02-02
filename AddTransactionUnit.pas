unit AddTransactionUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TAddTransactionForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBLookupComboBox3: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
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
  AddTransactionForm: TAddTransactionForm;
implementation

{$R *.dfm}

Uses BDUnit;

procedure TAddTransactionForm.Button1Click(Sender: TObject);
begin
BDForm.Transactions.Post;
BDForm.Transactions.Refresh;
Close();
end;

procedure TAddTransactionForm.Button2Click(Sender: TObject);
begin
BDForm.Transactions.Cancel;
Close;
end;

procedure TAddTransactionForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
BDForm.Transactions.Cancel;
end;

procedure TAddTransactionForm.FormShow(Sender: TObject);
begin
BDForm.Transactions.Append;
end;

end.
