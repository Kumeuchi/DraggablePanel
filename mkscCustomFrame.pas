unit mkscCustomFrame;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms;

type
  TmkscCustomFrame = class(TCustomFrame)
  private
    { Private �錾 }
  protected
    { Protected �錾 }
  public
    { Public �錾 }
  published
    { Published �錾 }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('mksc components', [TmkscCustomFrame]);
end;

end.
