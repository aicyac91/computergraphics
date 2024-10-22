unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    EditSX: TEdit;
    EditSY: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EditSYChange(Sender: TObject);
    procedure EditSXChange(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    x, y, x1, y1, sx, sy: Integer;
    procedure kotak;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.EditSXChange(Sender: TObject);
begin

end;

procedure TForm1.EditSYChange(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  sx := StrToInt(EditSX.Text);
  sy := StrToInt(EditSY.Text);

x := 90;
y := 90;
x1 := 120;
y1 := 120;
Canvas.Pen.Color := clred;
kotak;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  sx := StrToInt(EditSX.Text);
sy := StrToInt(EditSY.Text);
x := 120;
y := 120;
x1 := 170;
y1 := 170;
Canvas.Pen.Color := clBlack;
kotak;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   Canvas.Pen.Color := clblue;
x := 110;
y := 110;
x1 := 150;
y1 := 150;
kotak;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.kotak;
begin
Canvas.Rectangle(x,y,x1,y1);
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
Canvas.Pen.Color := clblue;
x := 110;
y := 110;
x1 := 150;
y1 := 150;
kotak;
end;

end.

