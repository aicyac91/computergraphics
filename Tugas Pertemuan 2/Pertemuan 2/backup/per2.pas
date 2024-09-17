unit per2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonPrint: TButton;
    ButtonExit: TButton;
    laukDaging: TCheckBox;
    laukAyam: TCheckBox;
    laukIkan: TCheckBox;
    laukTahu: TCheckBox;
    laukTempe: TCheckBox;
    CheckGroup1: TCheckGroup;
    listMinum: TComboBox;
    hargaNasi: TEdit;
    hargaMinum: TEdit;
    hargaDaging: TEdit;
    hargaAyam: TEdit;
    hargaIkan: TEdit;
    hargaTahu: TEdit;
    hargaTempe: TEdit;
    totalHarga: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    nasiPutih: TRadioButton;
    nasiUduk: TRadioButton;
    nasiKuning: TRadioButton;
    nasiLiwet: TRadioButton;
    nasiGoreng: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure ButtonExitClick(Sender: TObject);
    //procedure ButtonPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure hargaDagingChange(Sender: TObject);
    procedure hargaMinumChange(Sender: TObject);
    procedure hargaNasiChange(Sender: TObject);
    procedure hargaTempeChange(Sender: TObject);
    procedure laukAyamChange(Sender: TObject);
    procedure laukDagingChange(Sender: TObject);
    procedure laukIkanChange(Sender: TObject);
    procedure laukTahuChange(Sender: TObject);
    procedure laukTempeChange(Sender: TObject);
    procedure listMinumChange(Sender: TObject);
    procedure nasiGorengChange(Sender: TObject);
    procedure nasiKuningChange(Sender: TObject);
    procedure nasiLiwetChange(Sender: TObject);
    procedure nasiPutihChange(Sender: TObject);
    procedure nasiUdukChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure totalHargaChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.nasiPutihChange(Sender: TObject);
begin
  hargaNasi.Text := '5000';
end;

procedure TForm1.nasiUdukChange(Sender: TObject);
begin
  hargaNasi.Text := '6000';
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin

end;

procedure TForm1.totalHargaChange(Sender: TObject);
var
  total, nasi, minum, daging, ayam,ikan , tahu, tempe: Double;
begin
   nasi := StrToFloatDef(hargaNasi.Text, 0);
  minum := StrToFloatDef(hargaMinum.Text, 0);
  daging := StrToFloatDef(hargaDaging.Text, 0);
  ayam := StrToFloatDef(hargaAyam.Text, 0);
  ikan := StrToFloatDef(hargaIkan.Text, 0);
  tahu := StrToFloatDef(hargaTahu.Text, 0);
  tempe := StrToFloatDef(hargaTempe.Text, 0);

  total := nasi + minum + daging + ayam + Ikan + tahu + tempe;

  totalHarga.Text := FloatToStr(total);

end;

procedure TForm1.hargaNasiChange(Sender: TObject);
begin

end;

procedure TForm1.hargaTempeChange(Sender: TObject);
begin

end;

procedure TForm1.laukAyamChange(Sender: TObject);
begin
  if laukAyam.Checked then
    hargaAyam.Text := '15000'
  else
    hargaAyam.Text := '0';
end;

procedure TForm1.laukDagingChange(Sender: TObject);
begin
  if laukDaging.Checked then
    hargaDaging.Text := '10000'
  else
    hargaDaging.Text := '0';

end;

procedure TForm1.laukIkanChange(Sender: TObject);
begin
  if laukIkan.Checked then
    hargaIkan.Text := '20000'
  else
    hargaIkan.Text := '0';
end;

procedure TForm1.laukTahuChange(Sender: TObject);
begin
  if laukTahu.Checked then
    hargaTahu.Text := '5000'
  else
    hargaTahu.Text := '0';
end;

procedure TForm1.laukTempeChange(Sender: TObject);
begin
  if laukTempe.Checked then
    hargaTempe.Text := '4000'
  else
    hargaTempe.Text :='0';
end;

procedure TForm1.hargaMinumChange(Sender: TObject);
begin

end;

procedure TForm1.hargaDagingChange(Sender: TObject);
begin

end;

procedure TForm1.ButtonExitClick(Sender: TObject);
begin
  close;
end;

//procedure TForm1.ButtonPrintClick(Sender: TObject);
//var
//  ResiText: TStringList;
//  i, y: Integer;
//begin
//  ResiText := TStringList.Create;
//  try
//    // Membuat teks resi
//    ResiText.Add('*** Resi Pembayaran ***');
//    ResiText.Add('------------------------');
//    ResiText.Add('Pesanan:');
//
//    // Menambahkan jenis nasi yang dipilih
//    if nasiPutih.Checked then
//      ResiText.Add('Nasi Putih: Rp ' + hargaNasi.Text)
//    else if nasiUduk.Checked then
//      ResiText.Add('Nasi Uduk: Rp ' + hargaNasi.Text)
//    else if nasiKuning.Checked then
//      ResiText.Add('Nasi Kuning: Rp ' + hargaNasi.Text)
//    else if nasiLiwet.Checked then
//      ResiText.Add('Nasi Liwet: Rp ' + hargaNasi.Text)
//    else if nasiGoreng.Checked then
//      ResiText.Add('Nasi Goreng: Rp ' + hargaNasi.Text);
//
//    // Menambahkan lauk yang dipilih
//    if laukAyam.Checked then
//      ResiText.Add('Lauk Ayam: Rp ' + hargaAyam.Text);
//    if laukDaging.Checked then
//      ResiText.Add('Lauk Daging: Rp ' + hargaDaging.Text);
//    if laukIkan.Checked then
//      ResiText.Add('Lauk Ikan: Rp ' + hargaIkan.Text);
//    if laukTahu.Checked then
//      ResiText.Add('Lauk Tahu: Rp ' + hargaTahu.Text);
//    if laukTempe.Checked then
//      ResiText.Add('Lauk Tempe: Rp ' + hargaTempe.Text);
//
//    // Menambahkan minuman yang dipilih
//    ResiText.Add('Minuman: ' + listMinum.Text + ' Rp ' + hargaMinum.Text);
//
//    // Menambahkan total harga
//    ResiText.Add('------------------------');
//    ResiText.Add('Total Harga: Rp ' + totalHarga.Text);
//    ResiText.Add('------------------------');
//    ResiText.Add('Terima Kasih');
//
//    // Mengatur pencetakan
//    Printer.BeginDoc;
//    try
//      // Set font dan ukuran
//      Printer.Canvas.Font.Name := 'Courier New'; // Font monospasi untuk resi
//      Printer.Canvas.Font.Size := 10;
//
//      y := 50; // Mulai dari posisi Y awal
//      for i := 0 to ResiText.Count - 1 do
//      begin
//        Printer.Canvas.TextOut(100, y, ResiText[i]);
//        y := y + Printer.Canvas.TextHeight(ResiText[i]) + 5; // Mengatur jarak antara baris
//      end;
//    finally
//      Printer.EndDoc;
//    end;
//  finally
//    ResiText.Free;
//  end;
//end;



procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.listMinumChange(Sender: TObject);
begin

  if listMinum.Text = 'Es teh' then
    hargaMinum.Text := '3000'
  else if listMinum.Text = 'Air Mineral' then
    hargaMinum.Text := '4000'
  else if listMinum.Text = 'Es kopi' then
    hargaMinum.Text := '5000'
  else if listMinum.Text = 'Jus Jeruk' then
    hargaMinum.Text := '6000'
  else
    hargaMinum.Text := '0';
end;

procedure TForm1.nasiGorengChange(Sender: TObject);
begin
  hargaNasi.Text := '10000';
end;

procedure TForm1.nasiKuningChange(Sender: TObject);
begin
  hargaNasi.Text := '7000';
end;

procedure TForm1.nasiLiwetChange(Sender: TObject);
begin
  hargaNasi.Text := '8000';
end;

end.

