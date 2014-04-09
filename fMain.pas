unit fMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    MainMenu: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private éŒ¾ }
  public
    { Public éŒ¾ }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  fChild;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  frmChild.Show;
end;

procedure TfrmMain.N1Click(Sender: TObject);
begin
  frmMain.Release;
end;

end.
