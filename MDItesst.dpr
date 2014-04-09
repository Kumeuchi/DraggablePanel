program MDItesst;

uses
  Vcl.Forms,
  fMain in 'fMain.pas' {frmMain},
  fChild in 'fChild.pas' {frmChild},
  Panel1 in 'Panel1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmChild, frmChild);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
