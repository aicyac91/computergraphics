unit Unit1;

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    BtnGeserKanan: TButton;
    BtnGeserKiri: TButton;
    BtnGeserAtas: TButton;
    BtnGeserBawah: TButton;
    BtnGantiWarna: TButton;
    StaticText1: TStaticText;
    procedure BtnGeserAtasClick(Sender: TObject);
    procedure BtnGeserBawahClick(Sender: TObject);
    procedure BtnGeserKananClick(Sender: TObject);
    procedure BtnGeserKiriClick(Sender: TObject);
    procedure BtnGantiWarnaClick(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
  private
    OffsetX, OffsetY: Integer;
    RumahColor, AtapColor, PintuColor, JendelaColor: TColor;  // Variabel untuk warna
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  OffsetX := 100;   // Posisi awal rumah
  OffsetY := 100;   // Posisi awal rumah
  RumahColor := clRed;       // Warna awal dinding rumah
  AtapColor := clGray;       // Warna awal atap
  PintuColor := RGBToColor(165, 42, 42);  // Warna coklat untuk pintu
  JendelaColor := clBlue;    // Warna awal jendela
end;

procedure TForm1.StaticText1Click(Sender: TObject);
begin

end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
  with PaintBox1.Canvas do
  begin
    // Membersihkan PaintBox
    Brush.Color := clWhite;
    FillRect(PaintBox1.ClientRect);

    // Menggambar dinding (kotak)
    Brush.Color := RumahColor;
    Rectangle(OffsetX + 50, OffsetY + 100, OffsetX + 200, OffsetY + 250);

    // Menggambar atap (segitiga)
    Brush.Color := AtapColor;
    Polygon([Point(OffsetX + 50, OffsetY + 100), Point(OffsetX + 200, OffsetY + 100), Point(OffsetX + 125, OffsetY + 50)]);

    // Menggambar pintu (persegi panjang)
    Brush.Color := PintuColor;
    Rectangle(OffsetX + 100, OffsetY + 180, OffsetX + 150, OffsetY + 250);

    // Menggambar jendela kiri
    Brush.Color := JendelaColor;
    Rectangle(OffsetX + 60, OffsetY + 120, OffsetX + 90, OffsetY + 150);

    // Menggambar jendela kanan
    Rectangle(OffsetX + 160, OffsetY + 120, OffsetX + 190, OffsetY + 150);
  end;
end;

procedure TForm1.BtnGeserKiriClick(Sender: TObject);
begin
  OffsetX := OffsetX - 10;  // Geser kiri
  PaintBox1.Repaint;        // Menggambar ulang
end;

procedure TForm1.BtnGeserKananClick(Sender: TObject);
begin
  OffsetX := OffsetX + 10;  // Geser kanan
  PaintBox1.Repaint;        // Menggambar ulang
end;

procedure TForm1.BtnGeserAtasClick(Sender: TObject);
begin
  OffsetY := OffsetY - 10;  // Geser atas
  PaintBox1.Repaint;        // Menggambar ulang
end;

procedure TForm1.BtnGeserBawahClick(Sender: TObject);
begin
  OffsetY := OffsetY + 10;  // Geser bawah
  PaintBox1.Repaint;        // Menggambar ulang
end;

procedure TForm1.BtnGantiWarnaClick(Sender: TObject);
begin
  // Ganti warna dinding, atap, pintu, dan jendela secara acak
  RumahColor := TColor(Random($FFFFFF));  // Acak warna
  AtapColor := TColor(Random($FFFFFF));   // Acak warna
  PintuColor := TColor(Random($FFFFFF));  // Acak warna
  JendelaColor := TColor(Random($FFFFFF));// Acak warna
  PaintBox1.Repaint;  // Menggambar ulang
end;

end.

