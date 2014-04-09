program ChildForm;

uses
  Vcl.Forms,
  fMDIForm in 'fMDIForm.pas' {Form1},
  fChildFormShow in 'fChildFormShow.pas' {fChildForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfChildForm, fChildForm);
  Application.Run;
end.
