unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonClose: TButton;
    ButtonBawah: TButton;
    ButtonKiri: TButton;
    ButtonHapus: TButton;
    ButtonMunculObjek: TButton;
    ButtonKanan: TButton;
    ButtonAtas: TButton;
    LabelKoordinat: TLabel;
    Panel1: TPanel;
    procedure ButtonAtasClick(Sender: TObject);
    procedure ButtonBawahClick(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure ButtonHapusClick(Sender: TObject);
    procedure ButtonKananClick(Sender: TObject);
    procedure ButtonKiriClick(Sender: TObject);
    procedure ButtonMunculObjekClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabelKoordinatClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
     x, y: Integer;          // Koordinat posisi objek
    ObjShape: String;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonBawahClick(Sender: TObject);
begin
  if y < Panel1.Height - 100 then
    y := y + 10; // Geser ke bawah
  Invalidate; // Refresh tampilan
end;

procedure TForm1.ButtonCloseClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.ButtonAtasClick(Sender: TObject);
begin
   if y > 0 then
    y := y - 10; // Geser ke atas
  Invalidate; // Refresh tampilan
end;

procedure TForm1.ButtonHapusClick(Sender: TObject);
begin

end;

procedure TForm1.ButtonKananClick(Sender: TObject);
begin
   if x < Panel1.Width - 100 then
    x := x + 10; // Geser ke kanan
  Invalidate; // Refresh tampilan
end;

procedure TForm1.ButtonKiriClick(Sender: TObject);
begin
   if x > 0 then
    x := x - 10; // Geser ke kiri
  Invalidate; // Refresh tampilan
end;

procedure TForm1.ButtonMunculObjekClick(Sender: TObject);
begin
  ObjShape := 'Square';
  Invalidate; // Refresh tampilan
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  x := 100;
  y := 100;
  ObjShape := '';  // Awalnya tidak ada objek
end;

procedure TForm1.LabelKoordinatClick(Sender: TObject);
begin

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

end.

