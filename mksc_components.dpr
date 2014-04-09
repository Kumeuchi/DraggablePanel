program mksc_components;

uses
  Vcl.Forms,
  mksc_component in 'mksc_component.pas' {mksc_form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmksc_form, mksc_form);
  Application.Run;
end.
