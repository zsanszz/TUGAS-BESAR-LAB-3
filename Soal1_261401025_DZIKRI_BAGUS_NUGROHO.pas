//Nama:DZIKRI BAGUS NUGROHO
//NIM:261401025
//LAB:3
program DaftarBelanja;
uses crt;
var
  N, i: integer;
  harga: real;
  total, diskon, totalBayar: real;

begin
clrscr;
  total := 0;

  write('Masukkan jumlah barang: ');
  readln(N);

  for i := 1 to N do
  begin
    write('Masukkan harga barang ke-', i, ': Rp');
    readln(harga);
    total := total + harga;
  end;

  { Menentukan diskon }
  if total < 100000 then
    diskon := 0
  else if total < 500000 then
    diskon := total * 0.10
  else
    diskon := total * 0.20;

  totalBayar := total - diskon;

  writeln;
  writeln('===== RINCIAN BELANJA =====');
  writeln('Total Sebelum Diskon : Rp', total:0:2);
  writeln('Besar Diskon         : Rp', diskon:0:2);
  writeln('Total Bayar Akhir    : Rp', totalBayar:0:2);
end.