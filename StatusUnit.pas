unit StatusUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, BDUnit;

type
  TStatusRef = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StatusRef: TStatusRef;

implementation

{$R *.dfm}

end.
