unit mkscCustomFrame;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms;

type
  TmkscCustomFrame = class(TCustomFrame)
  private
    { Private éŒ¾ }
  protected
    { Protected éŒ¾ }
  public
    { Public éŒ¾ }
  published
    { Published éŒ¾ }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('mksc components', [TmkscCustomFrame]);
end;

end.
