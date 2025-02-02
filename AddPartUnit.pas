unit AddPartUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TAddPartForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBImagePanel: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    WarehouseLookup: TDBLookupComboBox;
    SupplierLookup: TDBLookupComboBox;
    PartTypeLookup: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBImage1: TDBImage;
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
  AddPartForm: TAddPartForm;

implementation

{$R *.dfm}

 Uses BDUnit;

procedure TAddPartForm.Button1Click(Sender: TObject);
begin
BDForm.Parts.Post;
BDForm.PartTypes.Refresh;
Close();
end;

procedure TAddPartForm.Button2Click(Sender: TObject);
begin
BDForm.Parts.Cancel;
Close;
end;

procedure TAddPartForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
BDForm.Parts.Cancel;
end;

procedure TAddPartForm.FormShow(Sender: TObject);
begin
BDForm.Parts.Append;
end;

end.
