object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 24
    Top = 24
    Width = 121
    Height = 89
    Caption = 'Panel1'
    TabOrder = 0
  end
  object Button1: TButton
    Left = 376
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnMouseDown = Button1MouseDown
  end
end
