unit PaymentTypesUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, BDUnit;

type
  TPaymentTypesRef = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentTypesRef: TPaymentTypesRef;

implementation

{$R *.dfm}

end.
