unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus;

type

  { TFormImage }

  TFormImage = class(TForm)
    ButtonCariTas: TButton;
    Warni: TEdit;
    WARNA: TLabel;
    Ukuran: TEdit;
    Merk: TLabel;
    CC: TLabel;
    MerkTas: TEdit;
    FormCariTas: TEdit;
    Deskripsi: TLabel;
    TasBiru: TImage;
    LogoGucci: TImage;
    Background: TImage;
    DeskripsiTas: TMemo;
    TasPutih: TImage;
    TasMerah: TImage;
    TasBiruMuda: TImage;
    TasPink: TImage;
    procedure ButtonCariTasClick(Sender: TObject);
    procedure CCClick(Sender: TObject);
    procedure FormCariTasChange(Sender: TObject);
    procedure LogoGucciClick(Sender: TObject);
    procedure MerkClick(Sender: TObject);
    procedure WARNAClick(Sender: TObject);
    procedure WarniChange(Sender: TObject);
    procedure DeskripsiTasChange(Sender: TObject);
    procedure MerkTasChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UkuranChange(Sender: TObject);
    procedure TasPinkClick(Sender: TObject);
    procedure TasBiruClick(Sender: TObject);
    procedure TasMerahClick(Sender: TObject);
    procedure TasBiruMudaClick(Sender: TObject);
    procedure TasPutihClick(Sender: TObject);
    procedure NamaTasChange(Sender: TObject);
  private
    procedure SembunyikanSemuaTas;
    procedure TampilkanTas(NamaTas: string);
  public

  end;

var
  FormImage: TFormImage;

implementation

{$R *.lfm}

{ TFormImage }

procedure TFormImage.FormCreate(Sender: TObject);
begin
  SembunyikanSemuaTas;
end;

procedure TFormImage.UkuranChange(Sender: TObject);
begin

end;

procedure TFormImage.TasPinkClick(Sender: TObject);
begin

end;

procedure TFormImage.TasBiruClick(Sender: TObject);
begin

end;

procedure TFormImage.TasMerahClick(Sender: TObject);
begin

end;

procedure TFormImage.TasBiruMudaClick(Sender: TObject);
begin

end;

procedure TFormImage.TasPutihClick(Sender: TObject);
begin

end;

procedure TFormImage.NamaTasChange(Sender: TObject);
begin

end;


procedure TFormImage.SembunyikanSemuaTas;
begin
  TasPutih.Visible := False;
  TasMerah.Visible := False;
  TasBiruMuda.Visible := False;
  TasPink.Visible := False;
  TasBiru.Visible := False;
end;

procedure TFormImage.TampilkanTas(NamaTas: string);
begin
  SembunyikanSemuaTas;

  if NamaTas = 'TAS 01' then
  begin
    TasPutih.Visible := True;
    DeskripsiTas.Lines.Text := 'Isi wae';
    MerkTas.Text := 'Tas Sekolah';
    Ukuran.Text := '24 cm';
    Warni.Text := 'Taffeta White';

  end
  else if NamaTas = 'TAS 02' then
  begin
    TasMerah.Visible := True;
    DeskripsiTas.Lines.Text := 'Isi wae';
    MerkTas.Text := 'Tas Belanja';
    Ukuran.Text := '25 cm';
    Warni.Text := 'Canyon River Red';
  end
  else if NamaTas = 'TAS 03' then
  begin
    TasBiruMuda.Visible := True;
    DeskripsiTas.Lines.Text := 'Isi wae';
    MerkTas.Text := 'Tas Belanja';
    Ukuran.Text := '30 cm';
    Warni.Text := 'Sand Blue Glow';
  end
  else if NamaTas = 'TAS 04' then
  begin
    TasPink.Visible := True;
    DeskripsiTas.Lines.Text := 'Isi wae';
    MerkTas.Text := 'Tas Main';
    Ukuran.Text := '30 cm';
    Warni.Text := 'Platinum Pink';
  end
  else if NamaTas = 'TAS 05' then
  begin
    TasBiru.Visible := True;
    DeskripsiTas.Lines.Text := 'Isi wae';
    MerkTas.Text := 'Tas Bebas';
    Ukuran.Text := '25 cm';
    Warni.Text := 'Platinum Blue';
  end
  else
  begin
    DeskripsiTas.Lines.Text := 'Tas tidak ditemukan.';
  end;
end;


procedure TFormImage.ButtonCariTasClick(Sender: TObject);
var
  NamaTas: string;
begin
  NamaTas := FormCariTas.Text;
  TampilkanTas(NamaTas);


end;

procedure TFormImage.CCClick(Sender: TObject);
begin

end;

procedure TFormImage.FormCariTasChange(Sender: TObject);
begin

end;

procedure TFormImage.LogoGucciClick(Sender: TObject);
begin

end;

procedure TFormImage.MerkClick(Sender: TObject);
begin

end;

procedure TFormImage.WARNAClick(Sender: TObject);
begin

end;

procedure TFormImage.WarniChange(Sender: TObject);
begin

end;

procedure TFormImage.DeskripsiTasChange(Sender: TObject);
begin


end;

procedure TFormImage.MerkTasChange(Sender: TObject);
begin

end;

end.

