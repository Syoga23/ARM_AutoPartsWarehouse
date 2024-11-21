unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TMainForm = class(TForm)
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
