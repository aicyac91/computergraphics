unit tugaspraktikum5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TFormGeomteriDasar }

  TFormGeomteriDasar = class(TForm)
    ButtonTitik: TButton;
    ButtonHapus: TButton;
    ButtonGaris1: TButton;
    ButtonGaris2: TButton;
    ButtonGaris3: TButton;
    ButtonRectangle: TButton;
    ButtonRoundRect: TButton;
    ButtonEllipse: TButton;
    ButtonEllipse2: TButton;
    ButtonKotak: TButton;
    label1: TLabel;
    PaintBox1: TPaintBox;
    procedure ButtonHapusClick(Sender: TObject);
    procedure ButtonKotakClick(Sender: TObject);
    procedure ButtonEllipse2Click(Sender: TObject);
    procedure ButtonEllipseClick(Sender: TObject);
    procedure ButtonRoundRectClick(Sender: TObject);
    procedure ButtonGaris3Click(Sender: TObject);
    procedure ButtonGaris2Click(Sender: TObject);
    procedure ButtonGaris1Click(Sender: TObject);
    procedure ButtonTitikClick(Sender: TObject);
    procedure ButtonRectangleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure label1Click(Sender: TObject);
  private

  public

  end;

var
  FormGeomteriDasar: TFormGeomteriDasar;

implementation

{$R *.lfm}

{ TFormGeomteriDasar }

procedure TFormGeomteriDasar.ButtonRectangleClick(Sender: TObject);
begin
Canvas.Pen.Color := clMaroon;
Canvas.pen.Width := 3;
Canvas.Brush.Color := clYellow;
Canvas.Brush.Style := bsVertical;
Canvas.Rectangle(120,150,340,260);
end;

procedure TFormGeomteriDasar.ButtonTitikClick(Sender: TObject);
begin
  Canvas.Brush.Color := clRed;
  Canvas.Pen.Color := clRed;
  Canvas.Ellipse(40, 60, 60, 80);
end;

procedure TFormGeomteriDasar.ButtonGaris1Click(Sender: TObject);
var a,b : integer;
begin
b:= 0;
for a := 0 to 100 do
begin

end;
end;

procedure TFormGeomteriDasar.ButtonGaris2Click(Sender: TObject);
begin
  Canvas.MoveTo(130,120);
Canvas.LineTo(130,240);
end;

procedure TFormGeomteriDasar.ButtonGaris3Click(Sender: TObject);
begin

end;

procedure TFormGeomteriDasar.ButtonRoundRectClick(Sender: TObject);
begin
Canvas.RoundRect(120,150,340,260,55,55);
end;

procedure TFormGeomteriDasar.ButtonEllipseClick(Sender: TObject);
begin
 Canvas.Ellipse(145,150,255,268);
end;

procedure TFormGeomteriDasar.ButtonEllipse2Click(Sender: TObject);
begin
  with PaintBox1 do
begin
Canvas.Ellipse(0,0,Width,Height);
end;
end;

procedure TFormGeomteriDasar.ButtonKotakClick(Sender: TObject);
begin
 with PaintBox1 do
begin
Canvas.Rectangle(round(Width/3),round(Height/3),+
round(Width*2/3),round(Height*2/3));
end;
end;

procedure TFormGeomteriDasar.ButtonHapusClick(Sender: TObject);
begin
  Invalidate;
end;

procedure TFormGeomteriDasar.FormCreate(Sender: TObject);
begin

end;

procedure TFormGeomteriDasar.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var w : TColor;
begin
Label1.Caption := 'x = ' + IntToStr(x) + ' y = ' +
IntToStr(y);
w := 5478;
Canvas.Pixels[x,y] := Random(w);
end;

procedure TFormGeomteriDasar.label1Click(Sender: TObject);
begin

end;

end.

