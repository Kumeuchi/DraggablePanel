unit fChild;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmChild = class(TForm)
    Panel1: TPanel;
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  frmChild: TfrmChild;

implementation

{$R *.dfm}

const
  BebelWidth = 4;

type
  TCursorPosision = (cpTopLeft, cpMiddleLeft, cpBottomLeft,
                     cpTopCenter, cpMiddleCenter, cpBottomCenter,
                     cpTopRight, cpMiddleRight, cpBottomRight);

var
  orgX, orgY: integer;
  bMouseDown: boolean;
  cursorPosision: TCursorPosision;

procedure TfrmChild.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  bmousedown := true;
  //SetCapture(self.Handle);
  orgX :=  X;
  orgY :=  Y;
  with Panel1 do
  begin
    if (X < BevelWidth) and (Y < BevelWidth) then
      cursorPosision := cpTopLeft
    else if (x < BevelWidth) and ( Y < Height - BevelWidth) then
      cursorPosision := cpMiddleLeft
    else if (x < BevelWidth) then
      cursorPosision := cpBottomLeft
    else if (BevelWidth < Width - x) and (Y < BevelWidth) then
      cursorPosision := cpTopRight;

  end;

end;

procedure TfrmChild.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if bmousedown = true then
    with Panel1 do begin
    left := X + left - orgX;
    top := Y + top - orgY;
  end;
  self.Caption := (IntToStr(x) + ', ' + IntToStr(y));
  panel1.update;
  //orgX := orgX + X;
  //orgY := orgY + Y;
end;

procedure TfrmChild.Panel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  bMouseDown := false;
end;

end.
