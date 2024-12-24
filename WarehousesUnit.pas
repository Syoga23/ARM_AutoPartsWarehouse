unit WarehousesUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls, BDUnit;

type
  TWarehousesRef = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WarehousesRef: TWarehousesRef;

implementation

{$R *.dfm}

end.
