unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Menus, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabelTotal: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    Memo7: TMemo;
    Memo8: TMemo;
    MemoHasil: TMemo;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure ComboBox1EditingDone(Sender: TObject);
    procedure RadioGroup1Click (Sender: TObject);
  private
       procedure HitungTotal;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ComboBox1EditingDone(Sender: TObject);
begin
Case ComboBox1.ItemIndex of
0 : Memo5.Text := IntToStr(5000);
1 : Memo5.Text := IntToStr(6000);
2 : Memo5.Text := IntToStr(4000);
end;
HitungTotal;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  Memo2.Text := IntToStr(16000)
  else
  Memo2.Text := IntToStr(0);
  HitungTotal;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Case RadioGroup1.ItemIndex of
0 : MemoHasil.Text := MemoHasil.Text + 'Nasi Putih =  Rp' + IntToStr(4000)+ #13#10;
1 : MemoHasil.Text := MemoHasil.Text + 'Nasi Uduk =  Rp' +IntToStr(4500)+ #13#10;
2 : MemoHasil.Text := MemoHasil.Text + 'Nasi Kuning =  Rp' +IntToStr(5000)+#13#10;
3 : MemoHasil.Text := MemoHasil.Text + 'Nasi Liwet =  Rp' +IntToStr(8000)+#13#10;
4 : MemoHasil.Text := MemoHasil.Text + 'Nasi Goreng =  Rp' +IntToStr(12000)+#13#10;
end;
  Case ComboBox1.ItemIndex of
0 : MemoHasil.Text := MemoHasil.Text +'Es Teh Manis =  Rp' +IntToStr(5000)+#13#10;
1 : MemoHasil.Text := MemoHasil.Text +'Es Jeruk =  Rp' + IntToStr(6000)+#13#10;
2 : MemoHasil.Text := MemoHasil.Text +'Air Mineral =  Rp'+IntToStr(4000)+#13#10;
end;
    if CheckBox1.Checked = true then
  MemoHasil.Text := MemoHasil.Text +'Daging =  Rp' +IntToStr(16000)+#13#10;

if CheckBox2.Checked = true then
 MemoHasil.Text := MemoHasil.Text +'Ayam =  Rp' +IntToStr(10000)+#13#10;

   if CheckBox3.Checked = true then
  MemoHasil.Text := MemoHasil.Text +'Ikan =  Rp' +IntToStr(7000)+#13#10;

if CheckBox4.Checked = true then
 MemoHasil.Text := MemoHasil.Text +'Tahu =  Rp' +IntToStr(1000)+#13#10;

if CheckBox5.Checked = true then
 MemoHasil.Text := MemoHasil.Text +'Tempe =  Rp' +IntToStr(1000)+#13#10;
MemoHasil.Text := MemoHasil.Text + #13#10 + 'Total =  Rp' + Memo4.Text + #13#10 ;
   MemoHasil.Text := MemoHasil.Text + #13#10 +'TERIMAKASIH';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex := -1;
  ComboBox1.ItemIndex := -1;
  CheckBox1.Checked := False;
  CheckBox2.Checked := False;
  CheckBox3.Checked := False;
  CheckBox4.Checked := False;
  CheckBox5.Checked := False;
  Memo1.Clear;
  Memo2.Clear;
  Memo3.Clear;
  Memo4.Clear;
  Memo5.Clear;
  Memo6.Clear;
  Memo7.Clear;
  Memo8.Clear;
  MemoHasil.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked = true then
  Memo3.Text := IntToStr(10000)
else
    Memo3.Text := IntToStr(0);
HitungTotal;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
if CheckBox3.Checked = true then
  Memo6.Text := IntToStr(7000)
  else
  Memo6.Text := IntToStr(0);
  HitungTotal;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  if CheckBox4.Checked = true then
  Memo7.Text := IntToStr(1000)
  else
  Memo7.Text := IntToStr(0);
  HitungTotal;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  if CheckBox5.Checked = true then
  Memo8.Text := IntToStr(1000)
  else
  Memo8.Text := IntToStr(0);
  HitungTotal;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  Case RadioGroup1.ItemIndex of
0 : Memo1.Text := IntToStr(4000);
1 : Memo1.Text := IntToStr(4500);
2 : Memo1.Text := IntToStr(5000);
3 : Memo1.Text := IntToStr(8000);
4 : Memo1.Text := IntToStr(12000);
end;
  HitungTotal;
end;

procedure TForm1.HitungTotal;
var
  Nilai1, Nilai2, Nilai3, Nilai4, Nilai5, Nilai6,Nilai7, Total: Integer;
begin
  // Cek dan konversi isi Memo1, Memo2, dan Memo3 menjadi integer
  Nilai1 := StrToIntDef(Memo1.Text, 0); // Menggunakan StrToIntDef untuk menangani nilai kosong
  Nilai2 := StrToIntDef(Memo2.Text, 0);
  Nilai3 := StrToIntDef(Memo3.Text, 0);
  Nilai4 := StrToIntDef(Memo5.Text, 0);
  Nilai5 := StrToIntDef(Memo6.Text, 0);
  Nilai6 := StrToIntDef(Memo7.Text, 0);
  Nilai7 := StrToIntDef(Memo8.Text, 0);

  // Hitung totalnya
  Total := Nilai1 + Nilai2 + Nilai3 + Nilai4 + Nilai5 + Nilai6
  + nilai7;

  // Tampilkan total di Memo4
  Memo4.Text := IntToStr(Total);
end;

end.

