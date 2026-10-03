//NAMA:DZIKRI BAGUS NUGROHO
//NIM:261401025
//LAB:3
program GajiKaryawan;
uses crt;
var
  golongan: char;
  jamKerja, lembur: integer;
  gajiPokok, gajiLembur, bonus, totalGaji: real;

begin
clrscr;
  write('Masukkan golongan (A/B/C): ');
  readln(golongan);

  write('Masukkan jumlah jam kerja: ');
  readln(jamKerja);

  case golongan of
    'A', 'a':
      gajiPokok := 1500000;

    'B', 'b':
      gajiPokok := 2000000;

    'C', 'c':
      gajiPokok := 2500000;

  else
    begin
      writeln('Golongan tidak valid.');
      exit;
    end;
  end;

  lembur := 0;
  bonus := 0;

  if jamKerja > 40 then
    lembur := jamKerja - 40;

  gajiLembur := lembur * 20000;

  if (golongan = 'C') or (golongan = 'c') then
  begin
    if jamKerja > 50 then
      bonus := 100000;
  end;

  totalGaji := gajiPokok + gajiLembur + bonus;

  writeln;
  writeln('===== RINCIAN GAJI =====');
  writeln('Gaji Pokok : Rp', gajiPokok:0:0);
  writeln('Gaji Lembur: Rp', gajiLembur:0:0);
  writeln('Bonus      : Rp', bonus:0:0);
  writeln('Total Gaji : Rp', totalGaji:0:0);
  
end.