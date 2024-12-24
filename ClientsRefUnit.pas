unit ClientsRefUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BDUnit, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TClientsRef = class(TForm)
    Splitter1: TSplitter;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientsRef: TClientsRef;

implementation

{$R *.dfm}

end.
